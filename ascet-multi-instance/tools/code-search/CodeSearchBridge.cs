using System;
using System.Collections.Generic;
using System.Collections.Concurrent;
using System.Threading;
using System.Diagnostics;
using System.IO;
using System.IO.Compression;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Net;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// One sequential connection. Fixed read-only query; input is never evaluated as code.
internal static class CodeSearchBridge
{
    static Ascet api;
    static Identifiable block;
    static int pid;
    static readonly JavaScriptSerializer json = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue };
    static readonly int ToolPort = Option("ASCET_CODE_SEARCH_PORT", 32503, 1024, 65535);
    static readonly int IdleMs = Option("ASCET_CODE_SEARCH_IDLE_MS", 250, 1, 60000);
    static readonly int LockWaitMs = Option("ASCET_CODE_SEARCH_LOCK_WAIT_MS", 2000, 0, 60000);
    static FileStream lease;
    static readonly bool Trace = Environment.GetEnvironmentVariable("ASCET_CODE_SEARCH_TRACE") == "1";
    [StructLayout(LayoutKind.Sequential)]
    struct ProcessorTimes
    {
        public long idle, kernel, user, dpc, interrupt;
        public uint interruptCount, padding;
    }
    [StructLayout(LayoutKind.Sequential)]
    struct MemoryCounters
    {
        public uint size, faults;
        public UIntPtr peakWorkingSet, workingSet, peakPagedPool, pagedPool, peakNonpagedPool, nonpagedPool,
            pagefile, peakPagefile;
    }
    [DllImport("ntdll.dll")]
    static extern int NtQuerySystemInformation(int kind, [Out] ProcessorTimes[] values, int size, out int returned);
    [DllImport("psapi.dll", SetLastError = true)]
    static extern bool GetProcessMemoryInfo(IntPtr process, ref MemoryCounters counters, uint size);
    static ProcessorTimes? CpuZeroTimes()
    {
        var values = new ProcessorTimes[Environment.ProcessorCount]; int returned;
        return NtQuerySystemInformation(8, values, Marshal.SizeOf(typeof(ProcessorTimes)) * values.Length, out returned) == 0
            && returned >= Marshal.SizeOf(typeof(ProcessorTimes)) ? (ProcessorTimes?)values[0] : null;
    }
    static MemoryCounters? ProcessMemory(System.Diagnostics.Process process)
    {
        var value = new MemoryCounters { size = (uint)Marshal.SizeOf(typeof(MemoryCounters)) };
        return GetProcessMemoryInfo(process.Handle, ref value, value.size) ? (MemoryCounters?)value : null;
    }
    static int Option(string name, int fallback, int min, int max)
    {
        string raw = Environment.GetEnvironmentVariable(name); int value;
        if (raw == null) return fallback;
        if (!Int32.TryParse(raw, out value) || value < min || value > max) throw new ArgumentException("Invalid " + name);
        return value;
    }
    static void AcquireLease()
    {
        if (lease != null || Environment.GetEnvironmentVariable("ASCET_CODE_SEARCH_EXTERNAL_LOCK") == "1") return;
        string directory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "AscetBdeTools");
        Directory.CreateDirectory(directory);
        string path = Path.Combine(directory, ToolPort == 32503 ? "local-ascet.lock" : "local-ascet-" + ToolPort + ".lock");
        var stream = new FileStream(path, FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);
        var timer = Stopwatch.StartNew();
        while (true)
        {
            try { stream.Lock(0, 1); lease = stream; return; }
            catch (IOException) { if (timer.ElapsedMilliseconds >= LockWaitMs) { stream.Dispose(); throw new InvalidOperationException("ASCET_BUSY"); } Thread.Sleep(20); }
        }
    }
    static void ReleaseConnection()
    {
        try { if (api != null) { api.DisconnectFromTool(); GC.SuppressFinalize(api); } }
        finally
        {
            api = null; block = null;
            if (lease != null) { try { lease.Unlock(0, 1); } finally { lease.Dispose(); lease = null; } }
        }
    }
    [DllImport("iphlpapi.dll", SetLastError = true)]
    static extern uint GetExtendedTcpTable(IntPtr table, ref int size, bool order, int family, int tableClass, uint reserved);
    [StructLayout(LayoutKind.Sequential)]
    struct TcpOwnerRow { public uint state, localAddress, localPort, remoteAddress, remotePort, ownerPid; }
    // Identify the already configured local endpoint. Other isolated ASCET
    // instances on different ports must not invalidate this connection's identity.
    static int EndpointProcess()
    {
        int size = 0;
        uint status = GetExtendedTcpTable(IntPtr.Zero, ref size, false, 2, 3, 0); // IPv4, OWNER_PID_LISTENER
        if (status != 122 && status != 0) throw new InvalidOperationException("Cannot inspect ASCET endpoint: " + status);
        for (int attempt = 0; attempt < 3; attempt++)
        {
            IntPtr memory = Marshal.AllocHGlobal(size);
            try
            {
                status = GetExtendedTcpTable(memory, ref size, false, 2, 3, 0);
                if (status == 122) continue;
                if (status != 0) throw new InvalidOperationException("Cannot inspect ASCET endpoint: " + status);
                int count = Marshal.ReadInt32(memory), stride = Marshal.SizeOf(typeof(TcpOwnerRow));
                var owners = new HashSet<int>();
                for (int i = 0; i < count; i++)
                {
                    var row = (TcpOwnerRow)Marshal.PtrToStructure(IntPtr.Add(memory, 4 + i * stride), typeof(TcpOwnerRow));
                    int port = ((int)(row.localPort & 255) << 8) | (int)((row.localPort >> 8) & 255);
                    if (port == ToolPort && (row.localAddress == 0 || new IPAddress((long)row.localAddress).Equals(IPAddress.Loopback)))
                        owners.Add((int)row.ownerPid);
                }
                if (owners.Count != 1) throw new InvalidOperationException("Exactly one local ASCET listener required on port " + ToolPort);
                foreach (int owner in owners)
                {
                    using (var process = System.Diagnostics.Process.GetProcessById(owner))
                        if (!String.Equals(process.ProcessName, "ASCET", StringComparison.OrdinalIgnoreCase))
                            throw new InvalidOperationException("Configured ToolAPI endpoint does not belong to ASCET");
                    return owner;
                }
            }
            finally { Marshal.FreeHGlobal(memory); }
        }
        throw new InvalidOperationException("ASCET endpoint changed while identifying its process");
    }
    static string FilterText(Dictionary<string, object> request)
    {
        object raw;
        if (!request.TryGetValue("filters", out raw)) return "";
        var filters = raw as Dictionary<string, object>;
        if (filters == null) throw new ArgumentException("filters must be an object");
        var tags = new Dictionary<string, char> { { "component_oids", 'C' }, { "member_ids", 'M' },
            { "member_names", 'N' }, { "kinds", 'K' }, { "implementation_oids", 'I' }, { "variants", 'V' },
            { "diagram_ids", 'D' }, { "diagram_visibilities", 'U' } };
        var text = new StringBuilder();
        foreach (var entry in filters)
        {
            char tag;
            if (!tags.TryGetValue(entry.Key, out tag)) throw new ArgumentException("Unsupported filter");
            var values = entry.Value as System.Collections.IList;
            if (values == null || values.Count < 1 || values.Count > 64) throw new ArgumentException("Invalid filter list");
            foreach (object item in values)
            {
                var value = item as string;
                if (value == null || value.Length > 256 || value.IndexOfAny(new char[] { '\r', '\n', '\0' }) >= 0)
                    throw new ArgumentException("Invalid filter value");
                text.Append(tag).Append(value).Append('\n');
            }
        }
        return text.ToString();
    }
    static string DiagramOptions(Dictionary<string, object> request)
    {
        var text = new StringBuilder(); object raw;
        if (request.TryGetValue("read_diagram_ids", out raw))
        {
            var ids = raw as System.Collections.IList;
            if (ids == null || ids.Count > 64) throw new ArgumentException("Invalid Diagram read selection");
            if (ids.Count == 0) text.Append("R-\n");
            foreach (object item in ids)
            {
                var id = item as string;
                if (id == null || !System.Text.RegularExpressions.Regex.IsMatch(id, "^[0-9a-z]{29}/[0-9a-z]{29}$", System.Text.RegularExpressions.RegexOptions.IgnoreCase))
                    throw new ArgumentException("Invalid Diagram pair");
                text.Append('R').Append(id).Append('\n');
            }
        }
        if (request.TryGetValue("diagram_name", out raw))
        {
            var predicate = raw as Dictionary<string, object>;
            if (predicate == null) throw new ArgumentException("Invalid Diagram name predicate");
            var name = predicate["text"] as string; var match = predicate["match"] as string;
            if (String.IsNullOrEmpty(name) || name.Length > 256 || name.IndexOfAny(new char[] { '\r', '\n', '\0' }) >= 0 ||
                (match != "exact" && match != "contains") || !(predicate["case_sensitive"] is bool)) throw new ArgumentException("Invalid Diagram name predicate");
            text.Append('Q').Append(match == "exact" ? 'e' : 'c').Append((bool)predicate["case_sensitive"] ? 's' : 'i').Append(name).Append('\n');
        }
        return text.ToString();
    }
    static InstanceMethodCall Call(Identifiable target, string selector, params object[] args)
    {
        var call = new InstanceMethodCall(target, selector, api);
        foreach (var arg in args)
            if (arg is string) call.appendParameter((string)arg);
            else call.appendParameter((Identifiable)arg);
        api.call(call); return call;
    }
    static string CompressPayload(string payload)
    {
        using (var output = new MemoryStream())
        {
            using (var gzip = new GZipStream(output, CompressionLevel.Fastest, true))
            using (var writer = new StreamWriter(gzip, new UTF8Encoding(false))) writer.Write(payload);
            return Convert.ToBase64String(output.ToArray());
        }
    }
    static void Connect()
    {
        AcquireLease();
        pid = EndpointProcess();
        Cebra.initCebraToolIndependent(false, false, null, null);
        Cebra.initialized = true;
        ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", ToolPort));
        api = new Ascet();
        if (api.nullHandle()) throw new InvalidOperationException("No ASCET API handle; check current database and other active ToolAPI sessions");
        if (EndpointProcess() != pid) throw new InvalidOperationException("ASCET_RESTARTED");
        string source;
        using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("snapshot.st")))
            source = reader.ReadToEnd();
        if (source.Contains("@@STATE_READER@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("state-reader.st")))
                source = source.Replace("@@STATE_READER@@", reader.ReadToEnd());
        if (source.Contains("@@STATE_TOPOLOGY_READER@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("state-topology-reader.st")))
                source = source.Replace("@@STATE_TOPOLOGY_READER@@", reader.ReadToEnd());
        if (source.Contains("@@GRAPH_READER@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("graph-reader.st")))
                source = source.Replace("@@GRAPH_READER@@", reader.ReadToEnd());
        if (source.Contains("@@BDE_READER@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("bde-reader.st")))
                source = source.Replace("@@BDE_READER@@", reader.ReadToEnd());
        if (source.Contains("@@BDE_AUDIT@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("bde-audit.st")))
                source = source.Replace("@@BDE_AUDIT@@", reader.ReadToEnd());
        if (source.Contains("@@BDE_PREFILTER@@"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("bde-prefilter.st")))
                source = source.Replace("@@BDE_PREFILTER@@", "(" + reader.ReadToEnd() + ")");
        if (source.Contains("@@CONTAINER_SOURCE_READER@@"))
        {
            var containerStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("container-source-reader.st");
            var savedStream = Assembly.GetExecutingAssembly().GetManifestResourceStream("saved-container-reader.st");
            if (containerStream != null && savedStream != null)
            {
                using (var containerText = new StreamReader(containerStream))
                using (var savedText = new StreamReader(savedStream))
                    source = source.Replace("@@CONTAINER_SOURCE_READER@@", "(" + containerText.ReadToEnd().Replace(
                        "@@SAVED_CONTAINER_READER@@", "(" + savedText.ReadToEnd() + ")") + ")");
            }
            else
            {
                if (containerStream != null) containerStream.Dispose();
                if (savedStream != null) savedStream.Dispose();
                source = source.Replace("@@CONTAINER_SOURCE_READER@@", "nil");
            }
        }
        if (source.Contains("bdeLoadFactory"))
            using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("bde-load-factory.st")))
                source = "[ | bdeLoadFactory | bdeLoadFactory := (" + reader.ReadToEnd() + "). " + source + " ] value";
        using (var stream = Assembly.GetExecutingAssembly().GetManifestResourceStream("native-transport.st"))
            if (stream != null)
                using (var reader = new StreamReader(stream))
                    source = "[ | transportReader transportEncoder | transportReader := (" + source +
                        "). transportEncoder := (" + reader.ReadToEnd() + "). " +
                        "[:transportDb :transportMode :transportInput | transportEncoder value: transportDb value: " +
                        "(transportReader value: transportDb value: transportMode value: transportInput)] ] value";
        var call = new ClassMethodCall("EsCompiler", "evaluate:", api);
        call.appendParameter(source); api.call(call); block = call.ResultRemoteObject;
        string type = api.getClassName(block);
        if (type != "BlockContextTemplate") throw new InvalidOperationException("Compile: " + type + " " +
            (type == "CompilerError" ? Call(block, "message").ResultString + " at " +
                Call(block, "startPosition").ResultInteger.ToString(System.Globalization.CultureInfo.InvariantCulture) : ""));
    }
    static object Read(Dictionary<string, object> request)
    {
        var timer = Stopwatch.StartNew();
        bool first = api == null;
        if (first) Connect();
        if (EndpointProcess() != pid) throw new InvalidOperationException("ASCET_RESTARTED");
        double setup = timer.Elapsed.TotalMilliseconds;
        var db = api.GetCurrentDataBase();
        if (db == null || db.nullHandle()) throw new InvalidOperationException("No database");
        try
        {
            string location = db.GetName();
            if (String.IsNullOrEmpty(location)) throw new InvalidOperationException("Empty database identity");
            object expected;
            if (request.TryGetValue("expected_database", out expected) && !String.Equals((string)expected, location, StringComparison.OrdinalIgnoreCase))
                throw new InvalidOperationException("DATABASE_CHANGED");
            string mode = request.ContainsKey("mode") ? (string)request["mode"] : "snapshot";
            if (mode != "snapshot" && mode != "catalog" && mode != "reference" && mode != "search_sensitive" && mode != "search_insensitive" && mode != "search_many" && mode != "read_component" && mode != "read_state_machine") throw new ArgumentException("Unsupported reader mode");
            string needle = request.ContainsKey("needle") ? (string)request["needle"] : "";
            if (mode == "read_state_machine" && (String.IsNullOrEmpty(needle) || needle.Length > 256 || needle.IndexOfAny(new char[] { '\r', '\n', '\0' }) >= 0))
                throw new ArgumentException("read_state_machine requires one component OID");
            double before = timer.Elapsed.TotalMilliseconds;
            // ASCET's BlockContextTemplate supports at most three direct arguments.
            // Filter lines end with a blank line; the remaining text is the needle.
            object diagrams;
            bool includeDiagrams = request.TryGetValue("include_diagrams", out diagrams) && diagrams is bool && (bool)diagrams;
            object topology;
            bool includeTopology = request.TryGetValue("include_state_topology", out topology) && topology is bool && (bool)topology;
            object audit;
            bool auditDiagrams = request.TryGetValue("audit_diagrams", out audit) && audit is bool && (bool)audit;
            object disable;
            bool disablePrefilter = request.TryGetValue("disable_diagram_prefilter", out disable) && disable is bool && (bool)disable;
            double ascetCpuMs;
            var diagnostics = new Dictionary<string, double>();
            string payload;
            using (var process = System.Diagnostics.Process.GetProcessById(pid))
            {
                var cpuBeforeZero = Trace ? CpuZeroTimes() : null;
                var memoryBefore = Trace ? ProcessMemory(process) : null;
                double cpuBefore = process.TotalProcessorTime.TotalMilliseconds;
                payload = Call(block, "value:value:value:", db, mode, (includeDiagrams ? "G1\n" : "") + (includeTopology ? "T1\n" : "") + (auditDiagrams ? "A1\n" : "") + (disablePrefilter ? "P1\n" : "") + FilterText(request) + DiagramOptions(request) + "\n" + needle).ResultString;
                process.Refresh();
                ascetCpuMs = process.TotalProcessorTime.TotalMilliseconds - cpuBefore;
                var cpuAfterZero = Trace ? CpuZeroTimes() : null;
                var memoryAfter = Trace ? ProcessMemory(process) : null;
                if (cpuBeforeZero.HasValue && cpuAfterZero.HasValue)
                {
                    var firstCpu = cpuBeforeZero.Value; var lastCpu = cpuAfterZero.Value;
                    diagnostics["cpu0_total_ms"] = (lastCpu.kernel + lastCpu.user - firstCpu.kernel - firstCpu.user) / 10000.0;
                    diagnostics["cpu0_busy_ms"] = diagnostics["cpu0_total_ms"] - (lastCpu.idle - firstCpu.idle) / 10000.0;
                }
                if (memoryBefore.HasValue && memoryAfter.HasValue)
                {
                    diagnostics["ascet_page_faults"] = unchecked(memoryAfter.Value.faults - memoryBefore.Value.faults);
                    diagnostics["ascet_working_set_change_bytes"] = (double)memoryAfter.Value.workingSet.ToUInt64() - memoryBefore.Value.workingSet.ToUInt64();
                }
            }
            double read = timer.Elapsed.TotalMilliseconds - before;
            if (payload == null || payload.StartsWith("PROBE_ERROR:")) throw new InvalidOperationException(payload ?? "Null response");
            var after = api.GetCurrentDataBase();
            try
            {
                if (after == null || !String.Equals(location, after.GetName(), StringComparison.Ordinal))
                    throw new InvalidOperationException("DATABASE_CHANGED_DURING_READ");
            }
            finally { if (after != null) { after.finalize(); GC.SuppressFinalize(after); } }
            string encoding = null; object transport; int? payloadBytes = null;
            if (payload.StartsWith("#ZLIB_BASE64|", StringComparison.Ordinal))
            {
                int delimiter = payload.IndexOf('|', 13), size;
                if (delimiter < 0 || !Int32.TryParse(payload.Substring(13, delimiter - 13), out size) || size < 65536 || size > 536870912)
                    throw new InvalidOperationException("Invalid native compressed payload");
                payloadBytes = size; payload = payload.Substring(delimiter + 1); encoding = "zlib-base64";
            }
            if (encoding == null && request.TryGetValue("transport_encoding", out transport) && (string)transport == "gzip-base64" && payload.Length >= 65536)
            {
                string compressed = CompressPayload(payload);
                if (compressed.Length < payload.Length) { payload = compressed; encoding = "gzip-base64"; }
            }
            diagnostics["setup_ms"] = setup; diagnostics["native_read_transport_ms"] = read;
            diagnostics["ascet_cpu_ms"] = ascetCpuMs; diagnostics["bridge_ms"] = timer.Elapsed.TotalMilliseconds;
            return new { status = "ok", native_protocol_version = 3, database = location, ascet_pid = pid, first_connection = first,
                observed_utc = DateTime.UtcNow.ToString("o"), payload = payload, payload_encoding = encoding, payload_bytes = payloadBytes,
                timings = diagnostics };
        }
        finally { db.finalize(); GC.SuppressFinalize(db); }
    }
    public static int Run()
    {
        string ownerValue = Environment.GetEnvironmentVariable("ASCET_CODE_SEARCH_OWNER_PID");
        if (!String.IsNullOrEmpty(ownerValue))
        {
            int ownerPid;
            if (!Int32.TryParse(ownerValue, out ownerPid) || ownerPid <= 0) throw new ArgumentException("Invalid tool owner PID");
            var owner = System.Diagnostics.Process.GetProcessById(ownerPid);
            IntPtr ownerHandle = owner.Handle;
            // Hold the original process handle: a reused PID must not retain this tool connection.
            var ownerThread = new Thread(delegate() { owner.WaitForExit(); Environment.Exit(2); });
            ownerThread.IsBackground = true; ownerThread.Start();
        }
        Console.InputEncoding = new UTF8Encoding(false); Console.OutputEncoding = new UTF8Encoding(false);
        var output = Console.Out; Console.SetOut(Console.Error);
        // Console input is read off-thread; only this STA thread accesses ASCET.
        var input = new BlockingCollection<string>();
        var inputThread = new Thread(delegate() { try { string next; while ((next = Console.ReadLine()) != null) input.Add(next); } finally { input.CompleteAdding(); } });
        inputThread.IsBackground = true; inputThread.Start();
        string line;
        while (!input.IsCompleted)
        {
            if (!input.TryTake(out line, IdleMs)) { ReleaseConnection(); continue; }
            try { output.WriteLine(json.Serialize(Read(json.Deserialize<Dictionary<string, object>>(line)))); output.Flush(); }
            catch (Exception e)
            {
                var remoteError = e as ErrorResultException;
                string message = remoteError != null && remoteError.ErrorMessage != null ? remoteError.ErrorMessage.ToString() : e.Message;
                bool recoverable = remoteError == null && e is InvalidOperationException && (message == "DATABASE_CHANGED" || message == "ASCET_BUSY");
                string code = message == "DATABASE_CHANGED" || message == "DATABASE_CHANGED_DURING_READ" || message == "ASCET_RESTARTED" || message == "ASCET_BUSY"
                    ? message : "ASCET_READ_FAILED";
                output.WriteLine(json.Serialize(new { status = "error", code = code, message = message, recoverable = recoverable })); output.Flush();
                if (recoverable) continue;
                // A failed transport must not hang in cleanup or continue with stale handles.
                Environment.Exit(1);
            }
        }
        ReleaseConnection();
        Environment.Exit(0); return 0;
    }
}
internal static class CodeSearchProgram
{
    [MethodImpl(MethodImplOptions.NoInlining)] static int Execute() { return CodeSearchBridge.Run(); }
    [STAThread] static int Main()
    {
        AppDomain.CurrentDomain.AssemblyResolve += delegate(object sender, ResolveEventArgs e) {
            if (new AssemblyName(e.Name).Name != "Etas.AscetNET") return null;
            return Assembly.LoadFrom(Environment.GetEnvironmentVariable("ASCET_API_DLL") ?? @"E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll");
        };
        return Execute();
    }
}
