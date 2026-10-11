using System;
using System.Collections.Generic;
using System.Diagnostics;
using Process = System.Diagnostics.Process;
using System.IO;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Net;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;
using de.etas.util;

// Persistent exclusive connection; only the bundled template is compiled.
// Transport helpers derive from code-search/CodeSearchBridge and AscetReadProbe.
internal static class ExperimentHost
{
    sealed class GuardException : Exception { public GuardException(string code) : base(code) {} }
    static readonly JavaScriptSerializer Json = new JavaScriptSerializer { MaxJsonLength = 8 * 1024 * 1024 };
    static Ascet Api;
    static Identifiable Block;
    static FileStream Lease;
    static int ToolPort;
    static int Pid;
    static long Started;
    static string Database;
    static string Logs;
    static string Token = "";
    static TextWriter Output;
    static readonly HashSet<string> Operations = new HashSet<string> {
        "inspect", "catalog", "signals", "open", "close", "start", "pause", "stop", "step",
        "read", "write", "read_data", "write_data", "parameters", "record", "configuration", "stimulus", "event", "create_stimulus", "save",
        "start_os", "stop_os", "start_measurement", "stop_measurement"
    };
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

        static object DecodeBulk(object value)
    {
        var map = value as Dictionary<string, object>;
        if (map != null)
        {
            if (map.ContainsKey("$d"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk dictionary");
                var result = new Dictionary<string, object>();
                foreach (object entry in (object[])map["$d"])
                {
                    var pair = (object[])entry;
                    if (pair.Length != 2) throw new Exception("Invalid bulk dictionary pair");
                    result.Add((string)DecodeBulk(pair[0]), DecodeBulk(pair[1]));
                }
                return result;
            }
            if (map.ContainsKey("$f"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk float");
                var codes = (object[])map["$f"]; var bytes = new byte[codes.Length];
                for (int i = 0; i < codes.Length; i++)
                {
                    if (!(codes[i] is int) || (int)codes[i] < 0 || (int)codes[i] > 255) throw new Exception("Invalid bulk float byte");
                    bytes[i] = (byte)(int)codes[i];
                }
                if (bytes.Length == 8) return BitConverter.ToDouble(bytes, 0);
                if (bytes.Length == 4) return (double)BitConverter.ToSingle(bytes, 0);
                throw new Exception("Unexpected bulk float width");
            }
            if (map.ContainsKey("$s"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk string");
                var codes = (object[])map["$s"];
                var bytes = new byte[codes.Length];
                for (int i = 0; i < codes.Length; i++)
                {
                    if (!(codes[i] is int) || (int)codes[i] < 0 || (int)codes[i] > 255) throw new Exception("Invalid bulk text byte");
                    bytes[i] = (byte)(int)codes[i];
                }
                return Encoding.GetEncoding(0).GetString(bytes);
            }
            foreach (var key in new List<string>(map.Keys)) map[key] = DecodeBulk(map[key]);
            return map;
        }
        var items = value as object[];
        if (items != null) for (int i = 0; i < items.Length; i++) items[i] = DecodeBulk(items[i]);
        return value;
    }

    static void Emit(object value) { Output.WriteLine(Json.Serialize(value)); Output.Flush(); }
    static void Release(Identifiable value)
    {
        if (value == null) return;
        var call = Api.createControlMessageCall("destroyObjectForId:");
        call.appendParameter(value.getIdentifier()); Api.call(call); call.getResultVoid(); GC.SuppressFinalize(value);
    }
    static void VerifyProcess()
    {
        if (EndpointProcess() != Pid) throw new InvalidOperationException("ASCET_RESTARTED");
        using (var process = Process.GetProcessById(Pid))
            if (process.StartTime.ToUniversalTime().Ticks != Started) throw new InvalidOperationException("ASCET_RESTARTED");
    }
    static void Initialize(string manifestPath, bool openDatabase)
    {
        var manifest = Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(manifestPath));
        ToolPort = Convert.ToInt32(manifest["port"]);
        Database = Path.GetFullPath((string)manifest["database"]);
        string executable = Path.Combine(Path.GetFullPath((string)manifest["runtime"]), "ASCET.exe");
        Pid = EndpointProcess();
        using (var process = Process.GetProcessById(Pid))
        {
            if (!String.Equals(process.MainModule.FileName, executable, StringComparison.OrdinalIgnoreCase))
                throw new InvalidOperationException("INSTANCE_IDENTITY_MISMATCH");
            Started = process.StartTime.ToUniversalTime().Ticks;
        }
        string directory = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "AscetBdeTools");
        Directory.CreateDirectory(directory);
        Lease = new FileStream(Path.Combine(directory, ToolPort == 32503 ? "local-ascet.lock" : "local-ascet-" + ToolPort + ".lock"), FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);
        try { Lease.Lock(0, 1); } catch (IOException) { throw new InvalidOperationException("ASCET_BUSY"); }
        string logs = Path.Combine((string)manifest["logs"], "experiment-host"); Directory.CreateDirectory(logs);
        Logs = logs;
        Cebra.debug = false; LogFile.enableLogging(false);
        Cebra.cebraLogPath = logs; Cebra.startupLogFile = new LogFile(Path.Combine(logs, "startup.log"));
        typeof(Cebra).GetField("commonLogFile", BindingFlags.NonPublic | BindingFlags.Static).SetValue(null, new LogFile(Path.Combine(logs, "cebra.log")));
        Cebra.initialized = true;
        if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", ToolPort))) throw new InvalidOperationException("ENDPOINT_REGISTER_FAILED");
        Api = new Ascet();
        if (Api.nullHandle()) throw new InvalidOperationException("NO_ASCET_HANDLE");
        VerifyProcess();
        if (openDatabase)
        {
            var database = Api.OpenDataBase(Database);
            if (database == null || database.nullHandle()) throw new InvalidOperationException("PRIVATE_DATABASE_OPEN_FAILED: " + Api.GetToolErrorMessage());
            Release(database);
        }
        string source;
        using (var reader = new StreamReader(Assembly.GetExecutingAssembly().GetManifestResourceStream("native.st"))) source = reader.ReadToEnd();
        var compile = Api.createClassMethodCall("EsCompiler", "evaluate:");
        compile.appendParameter(source); Api.call(compile); Block = compile.ResultRemoteObject;
        string type = Api.getClassName(Block);
        if (type != "BlockContextTemplate")
        {
            var message = new InstanceMethodCall(Block, "message", Api); Api.call(message);
            var position = new InstanceMethodCall(Block, "startPosition", Api); Api.call(position);
            throw new InvalidOperationException("COMPILE_ERROR " + type + " " + message.ResultString + " at " + position.ResultInteger);
        }
    }
    static object Invoke(string op, string[] args)
    {
        VerifyProcess();
        var call = new InstanceMethodCall(Block, "value:value:value:", Api);
        var parameters = new string[args.Length + 2];
        parameters[0] = Database; parameters[1] = Token;
        Array.Copy(args, 0, parameters, 2, args.Length);
        call.appendParameter(Api); call.appendParameter(op); call.appendParameter(parameters);
        Api.call(call);
        string payload = call.ResultString;
        if (payload.StartsWith("EXP_ERROR: guard/")) throw new GuardException(payload.Substring(17).Split(':')[0]);
        if (payload.StartsWith("EXP_ERROR:")) throw new InvalidOperationException(payload);
        var result = (Dictionary<string, object>)DecodeBulk(Json.DeserializeObject(payload));
        Token = (string)result["token"];
        if (Convert.ToInt32(result["pid"]) != Pid || !String.Equals(Path.GetFullPath((string)result["database"]), Database, StringComparison.OrdinalIgnoreCase))
            throw new InvalidOperationException("DATABASE_OR_PROCESS_CHANGED expected=" + Database + " observed=" + Json.Serialize(result));
        if (op == "open" && Convert.ToInt32(((Dictionary<string, object>)result["nativeError"])["code"]) != 0)
        {
            string file = "build-" + Guid.NewGuid().ToString("N") + ".txt";
            if (Api.WriteCodeGenerationErrorsToPathUsingFileName(Logs, file)) result["diagnosticsFile"] = Path.Combine(Logs, file);
        }
        return result;
    }
    public static int Run(string[] args)
    {
        Console.InputEncoding = new UTF8Encoding(false); Console.OutputEncoding = new UTF8Encoding(false);
        Output = Console.Out; Console.SetOut(Console.Error);
        try
        {
            Initialize(args[0], args.Length > 1 && args[1] == "--open-database");
            if (args.Length >= 3 && args[1] == "--fixture-compiler")
            {
                var before = (Dictionary<string, object>)Invoke("inspect", new string[0]);
                if ((bool)before["open"]) throw new InvalidOperationException("CLOSE_EXPERIMENT_BEFORE_SETUP");
                var database = Api.GetCurrentDataBase();
                var component = database.GetItemForOID(args[2]) as AscetDiscreteComponent;
                if (component == null) throw new InvalidOperationException("FIXTURE_COMPONENT_MISSING");
                var project = component.GetDefaultProject(); var target = project.GetCurrentTarget();
                if (args.Length == 4 && (!target.SetCurrentCompiler(args[3]) || !project.SetCurrentTarget(target))) throw new InvalidOperationException("SET_COMPILER_FAILED");
                Emit(new { kind = "fixture", compilers = target.GetAllCompilers(), current = target.GetCurrentCompiler() });
                Release(target); Release(project); Release(component); Release(database);
            }
            if (args.Length == 3 && args[1] == "--import-xml")
            {
                var before = (Dictionary<string, object>)Invoke("inspect", new string[0]);
                if ((bool)before["open"]) throw new InvalidOperationException("CLOSE_EXPERIMENT_BEFORE_IMPORT");
                var database = Api.GetCurrentDataBase();
                var imported = database.ImportXMLFromDirectory(Path.GetFullPath(args[2]), false, true);
                if (imported == null || imported.Length == 0) throw new InvalidOperationException("FIXTURE_IMPORT_FAILED: " + Api.GetToolErrorMessage());
                var importedNames = new List<string>();
                foreach (var item in imported) importedNames.Add(item.GetNameWithPath() + " [" + item.GetOID() + "]");
                Emit(new { kind = "imported", count = imported.Length, source = Path.GetFullPath(args[2]), items = importedNames });
                foreach (var item in imported) Release(item);
                Release(database);
            }
            if (args.Length == 4 && args[1] == "--export-oid")
            {
                var database = Api.GetCurrentDataBase();
                var item = database.GetItemForOID(args[2]);
                if (item == null) throw new InvalidOperationException("EXPORT_ITEM_NOT_FOUND: " + args[2]);
                Directory.CreateDirectory(Path.GetFullPath(args[3]));
                if (!item.ExportXMLToFile(Path.GetFullPath(args[3]), true)) throw new InvalidOperationException("EXPORT_FAILED: " + Api.GetToolErrorMessage());
                Emit(new { kind = "exported", oid = args[2], directory = Path.GetFullPath(args[3]) });
                Release(item); Release(database);
            }
            if (args.Length == 4 && args[1] == "--import-file")
            {
                var database = Api.GetCurrentDataBase();
                var imported = database.ImportXMLFromFile(Path.GetFullPath(args[2]), args[3], false, true);
                if (imported == null) throw new InvalidOperationException("FIXTURE_IMPORT_FILE_FAILED: " + Api.GetToolErrorMessage());
                Emit(new { kind = "imported-file", name = imported.GetNameWithPath(), oid = imported.GetOID(), source = Path.GetFullPath(args[2]) });
                Release(imported); Release(database);
            }
            if (args.Length == 4 && args[1] == "--export-refs")
            {
                var database = Api.GetCurrentDataBase();
                var item = database.GetItemForOID(args[2]);
                if (item == null) throw new InvalidOperationException("EXPORT_ITEM_NOT_FOUND: " + args[2]);
                var dest = Path.GetFullPath(args[3]); Directory.CreateDirectory(dest);
                var refs = item.GetAllReferecedDataBaseItems(); var rows = new List<string>();
                foreach (var reference in refs)
                {
                    var dir = Path.Combine(dest, reference.GetOID()); Directory.CreateDirectory(dir);
                    var ok = reference.ExportXMLToFile(dir, false);
                    rows.Add(reference.GetNameWithPath() + " [" + reference.GetOID() + "] exported=" + ok);
                    Release(reference);
                }
                Emit(new { kind = "exported-refs", oid = args[2], count = rows.Count, items = rows });
                Release(item); Release(database);
            }
            if (args.Length == 3 && args[1] == "--remove-oid")
            {
                var database = Api.GetCurrentDataBase();
                var item = database.GetItemForOID(args[2]);
                if (item == null) throw new InvalidOperationException("REMOVE_ITEM_NOT_FOUND: " + args[2]);
                var component = item as de.etas.cebra.toolAPI.Common.Component;
                if (component == null || !item.GetParentFolder().RemoveComponent(component)) throw new InvalidOperationException("REMOVE_FAILED: " + Api.GetToolErrorMessage());
                Emit(new { kind = "removed", oid = args[2] });
                Release(item); Release(database);
            }
            if ((args.Length == 3 && args[1] == "--inspect-elements") || (args.Length == 4 && args[1] == "--open-database" && args[2] == "--inspect-elements"))
            {
                var database = Api.GetCurrentDataBase();
                var oid = args.Length == 3 ? args[2] : args[3];
                var item = database.GetItemForOID(oid) as CodeComponent;
                if (item == null) throw new InvalidOperationException("INSPECT_COMPONENT_NOT_FOUND: " + oid);
                var rows = new List<object>();
                var elements = item.GetAllComplexModelElements() ?? new ComplexModelElement[0];
                foreach (var element in elements)
                {
                    var represented = element.GetRepresentedClass();
                    rows.Add(new { name = element.GetName(), representedName = represented == null ? null : represented.GetNameWithPath(), representedOid = represented == null ? null : represented.GetOID() });
                    Release(represented); Release(element);
                }
                Emit(new { kind = "elements", oid, count = rows.Count, items = rows });
                Release(item); Release(database);
            }
            if ((args.Length == 5 && args[1] == "--replace-element") || (args.Length == 6 && args[1] == "--open-database" && args[2] == "--replace-element"))
            {
                var database = Api.GetCurrentDataBase();
                var baseIndex = args.Length == 5 ? 2 : 3;
                var item = database.GetItemForOID(args[baseIndex]) as CodeComponent;
                var replacement = database.GetItemForOID(args[baseIndex + 2]) as AscetDiscreteComponent;
                if (item == null || replacement == null) throw new InvalidOperationException("REPLACE_COMPONENT_NOT_FOUND");
                var ok = item.ReplaceComplexModelElementNamed(args[baseIndex + 1], replacement);
                if (!ok) throw new InvalidOperationException("REPLACE_ELEMENT_FAILED: " + Api.GetToolErrorMessage());
                Emit(new { kind = "replaced", container = args[baseIndex], name = args[baseIndex + 1], replacement = args[baseIndex + 2] });
                Release(replacement); Release(item); Release(database);
            }
            if (args.Length == 3 && args[1] == "--import-zip")
            {
                var database = Api.GetCurrentDataBase();
                var imported = database.ImportXMLFromZipFile(Path.GetFullPath(args[2]), false, true);
                if (imported == null || imported.Length == 0) throw new InvalidOperationException("FIXTURE_IMPORT_ZIP_FAILED: " + Api.GetToolErrorMessage());
                var names = new List<string>(); foreach (var item in imported) { names.Add(item.GetNameWithPath() + " [" + item.GetOID() + "]"); Release(item); }
                Emit(new { kind = "imported-zip", count = names.Count, source = Path.GetFullPath(args[2]), items = names });
                Release(database);
            }
            Emit(new { kind = "ready", pid = Pid, started = Started.ToString(), database = Database, result = Invoke("inspect", new string[0]) });
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                var timer = Stopwatch.StartNew();
                var request = Json.Deserialize<Dictionary<string, object>>(line);
                string id = (string)request["id"], op = (string)request["op"];
                if (op == "quit") { Emit(new { id, ok = true }); break; }
                if (!Operations.Contains(op)) { Emit(new { id, ok = false, error = "UNSUPPORTED_OPERATION" }); continue; }
                var items = (System.Collections.IList)request["args"];
                var input = new string[items.Count];
                for (int i = 0; i < input.Length; i++) input[i] = (string)items[i];
                try
                {
                    ValidateInput(op, input);
                    var result = Invoke(op, input);
                    Emit(new { id, ok = true, result, nativeMs = timer.Elapsed.TotalMilliseconds });
                }
                catch (GuardException e) { Emit(new { id, ok = false, code = "PRECONDITION_FAILED", error = e.Message, outcomeUnknown = false }); }
                catch (ArgumentException e) { Emit(new { id, ok = false, code = "INVALID_ARGUMENT", error = e.Message, outcomeUnknown = false }); }
            }
            Release(Block); Api.DisconnectFromTool(); GC.SuppressFinalize(Api);
            Lease.Dispose(); Environment.Exit(0); return 0;
        }
        catch (Exception error)
        {
            var remote = error as ErrorResultException;
            Emit(new { kind = "fatal", error = remote == null ? error.ToString() : remote.ErrorMessage.ToString() });
            // No uncertain operation is replayed and no possibly blocked cleanup is attempted.
            Environment.Exit(1); return 1;
        }
    }
    static void ValidateInput(string op, string[] args)
    {
        foreach (string value in args)
        {
            bool hasStamp = op == "stimulus" || op == "event" || op == "create_stimulus" || op == "save";
            if (value == null || value.Length > (hasStamp ? 32768 : 2048) || value.IndexOf('\0') >= 0 || (!hasStamp && value.IndexOfAny(new char[] { '\r', '\n' }) >= 0)) throw new ArgumentException("Invalid text argument");
        }
        int n = args.Length;
        bool valid = (new HashSet<string> { "inspect", "configuration", "start", "pause", "stop", "close" }.Contains(op) && n == 0)
            || (op == "save" && (n == 0 || (n == 2 && (args[1] == "commit_database" || args[1] == "environment_only"))))
            || (op == "catalog" && n == 1) || (op == "open" && n == 2) || (op == "signals" && n == 4)
            || (op == "stimulus" && n == 7 && (args[1] == "constant" || args[1] == "pulse"))
            || (op == "read" && n >= 2 && n <= 129 && (args[0] == "physical" || args[0] == "hex"))
            || (op == "write" && n >= 3 && n <= 129 && n % 2 == 1 && args[0] == "physical")
            || (op == "read_data" && n == 1)
            || (op == "write_data" && n >= 7 && n <= 2051 && (n - 3) % 4 == 0)
            || (op == "step" && n == 2 && (args[0] == "Steps" || args[0] == "Seconds"))
            || (op == "parameters" && ((n == 1 && new HashSet<string> { "reset_variables", "reset_parameters", "update_dependent" }.Contains(args[0])) || (n == 2 && (args[0] == "load" || args[0] == "save"))))
            || (op == "record" && ((n == 1 && (args[0] == "start" || args[0] == "stop")) || (n == 2 && args[0] == "set_output") || (n >= 1 && n <= 129 && args[0] == "configure")))
            || ((op == "start_os" || op == "stop_os" || op == "start_measurement" || op == "stop_measurement") && n == 0)
            || (op == "event" && n >= 4 && n % 2 == 0 && new HashSet<string> { "enabled", "Delay", "Phase", "Prio", "Mode" }.Contains(args[2]))
            || (op == "create_stimulus" && n == 8 && (args[3] == "constant" || args[3] == "pulse"));
        if (!valid) throw new ArgumentException("Unsupported operation arguments");
        if (op == "write_data")
        {
            int x, y;
            if (!Int32.TryParse(args[1], out x) || x < 1 || x > 4096 || !Int32.TryParse(args[2], out y) || y < 0 || y > 4096 || x * Math.Max(1, y) > 4096) throw new ArgumentException("Invalid structured shape");
            for (int i = 3; i < n; i += 4)
            {
                double value;
                if (!new HashSet<string> { "values", "xAxis", "yAxis" }.Contains(args[i]) || !Int32.TryParse(args[i + 1], out x) || x < 0 || x > 4095 || !Int32.TryParse(args[i + 2], out y) || y < -1 || y > 4095 || !Double.TryParse(args[i + 3], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out value) || Double.IsNaN(value) || Double.IsInfinity(value)) throw new ArgumentException("Invalid structured cell");
            }
        }
        if (op == "step")
        {
            double value;
            if (!Double.TryParse(args[1], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out value) || Double.IsNaN(value) || Double.IsInfinity(value) || value <= 0 || value > (args[0] == "Seconds" ? 10 : 10000) || (args[0] == "Steps" && value != Math.Floor(value)))
                throw new ArgumentException("Invalid bounded step");
        }
        if (op == "signals")
        {
            int offset, limit;
            if ((args[1] != "all" && args[1] != "calibration") || !Int32.TryParse(args[2], out offset) || offset < 0 || offset > 1000000 || !Int32.TryParse(args[3], out limit) || limit < 1 || limit > 200)
                throw new ArgumentException("Invalid signal page");
        }
        if (op == "stimulus" || op == "write")
        {
            for (int i = 2; i < (op == "stimulus" ? 6 : args.Length); i += op == "write" ? 2 : 1)
            {
                double value;
                if (op == "write" && (args[i] == "true" || args[i] == "false" ||
                    (args[i] != "NaN" && args[i] != "Infinity" && System.Text.RegularExpressions.Regex.IsMatch(args[i], "\\A[A-Za-z_][A-Za-z0-9_]{0,127}\\z")))) continue;
                if (!Double.TryParse(args[i], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out value) || Double.IsInfinity(value) || Double.IsNaN(value)) throw new ArgumentException("Finite numeric value required");
                if (op == "stimulus" && ((i == 3 && value < 0) || (i == 4 && (value <= 0 || value > 1000000)))) throw new ArgumentException("Invalid amplitude/frequency");
            }
        }
        if (op == "event")
        {
            var keys = new HashSet<string> { "enabled", "Delay", "Phase", "Prio", "Mode" };
            for (int i = 3; i < args.Length; i += 2)
            {
                var key = args[i - 1];
                if (!keys.Contains(key)) throw new ArgumentException("Unsupported event property");
                if (key == "Delay" || key == "Phase" || key == "Prio")
                {
                    double value;
                    if (!Double.TryParse(args[i], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out value) || Double.IsInfinity(value) || Double.IsNaN(value)) throw new ArgumentException("Finite event value required");
                }
                if (key == "enabled" && args[i] != "true" && args[i] != "false") throw new ArgumentException("Event enabled must be true or false");
                if (key == "Mode" && !new HashSet<string> { "segment", "timeSynchron", "singleShot", "signalled" }.Contains(args[i])) throw new ArgumentException("Unsupported event mode");
                if (key == "Delay" && Double.Parse(args[i], System.Globalization.CultureInfo.InvariantCulture) < 0) throw new ArgumentException("Event delay cannot be negative");
            }
        }
        if (op == "create_stimulus")
        {
            for (int i = 4; i <= 7; i++)
            {
                double value;
                if (!Double.TryParse(args[i], System.Globalization.NumberStyles.Float, System.Globalization.CultureInfo.InvariantCulture, out value) || Double.IsInfinity(value) || Double.IsNaN(value)) throw new ArgumentException("Finite stimulus value required");
                if (i == 5 && value < 0) throw new ArgumentException("Invalid amplitude");
                if (i == 6 && (value <= 0 || value > 1000000)) throw new ArgumentException("Invalid frequency");
            }
        }
    }
}
internal static class Program
{
    [MethodImpl(MethodImplOptions.NoInlining)] static int Execute(string[] args) { return ExperimentHost.Run(args); }
    [STAThread] static int Main(string[] args)
    {
        AppDomain.CurrentDomain.AssemblyResolve += delegate(object sender, ResolveEventArgs e) {
            return new AssemblyName(e.Name).Name == "Etas.AscetNET" ? Assembly.LoadFrom(Environment.GetEnvironmentVariable("ASCET_API_DLL") ?? @"E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll") : null;
        };
        return Execute(args);
    }
}
