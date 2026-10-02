using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Ascet.AgentConnector
{
    public sealed class ConnectorOptions
    {
        public string ManifestPath { get; set; }
        public string HostExecutable { get; set; }
        public string AgentId { get; set; }
        public TimeSpan ConnectTimeout { get; set; }
        public TimeSpan RequestTimeout { get; set; }
        public int MaxPendingRequests { get; set; }

        public ConnectorOptions()
        {
            AgentId = "agent";
            ConnectTimeout = TimeSpan.FromSeconds(45);
            RequestTimeout = TimeSpan.FromSeconds(15);
            MaxPendingRequests = 32;
        }
    }

    public sealed class AscetConnectorException : Exception
    {
        public string Code { get; private set; }
        public string RequestId { get; private set; }
        public bool OutcomeUnknown { get; private set; }

        internal AscetConnectorException(string code, string message, string requestId = null,
                                         bool outcomeUnknown = false, Exception inner = null)
            : base(message, inner)
        {
            Code = code;
            RequestId = requestId;
            OutcomeUnknown = outcomeUnknown;
        }
    }

    [DataContract]
    public sealed class AscetIdentity
    {
        [DataMember(Name = "database_path", IsRequired = true)] public string DatabasePath { get; set; }
        [DataMember(Name = "database_root", IsRequired = true)] public string DatabaseRoot { get; set; }
        [DataMember(Name = "database_name", IsRequired = true)] public string DatabaseName { get; set; }
        [DataMember(Name = "server_pid", IsRequired = true)] public int ProcessId { get; set; }
        [DataMember(Name = "multi_instance", IsRequired = true)] public bool MultiInstance { get; set; }
    }

    [DataContract]
    internal sealed class InstanceManifest
    {
        [DataMember(Name = "instance_id", IsRequired = true)] public string InstanceId { get; set; }
        [DataMember(Name = "runtime", IsRequired = true)] public string Runtime { get; set; }
        [DataMember(Name = "logs", IsRequired = true)] public string Logs { get; set; }
        [DataMember(Name = "database", IsRequired = true)] public string Database { get; set; }
        [DataMember(Name = "port", IsRequired = true)] public int Port { get; set; }
    }

    [DataContract]
    internal sealed class ProcessIdentity
    {
        [DataMember(Name = "pid", IsRequired = true)] public int Pid { get; set; }
        [DataMember(Name = "start_time_utc", IsRequired = true)] public string StartTime { get; set; }
        [DataMember(Name = "runtime", IsRequired = true)] public string Runtime { get; set; }
        [DataMember(Name = "port", IsRequired = true)] public int Port { get; set; }
    }

    [DataContract]
    internal sealed class Request
    {
        [DataMember(Name = "id")] public string Id;
        [DataMember(Name = "op")] public string Operation;
        [DataMember(Name = "token")] public int Token;
    }

    [DataContract]
    internal sealed class Header
    {
        [DataMember(Name = "id")] public string Id { get; set; }
        [DataMember(Name = "kind")] public string Kind { get; set; }
        [DataMember(Name = "ok")] public bool Ok { get; set; }
        [DataMember(Name = "error")] public string Error { get; set; }
    }

    [DataContract]
    internal sealed class Ready
    {
        [DataMember(Name = "identity", IsRequired = true)] public AscetIdentity Identity { get; set; }
    }

    [DataContract]
    internal sealed class Success<T>
    {
        [DataMember(Name = "result", IsRequired = true)] public T Result { get; set; }
    }

    internal static class Json
    {
        internal static T Read<T>(string text)
        {
            using (var stream = new MemoryStream(Encoding.UTF8.GetBytes(text)))
                return (T)new DataContractJsonSerializer(typeof(T)).ReadObject(stream);
        }

        internal static string Write<T>(T value)
        {
            using (var stream = new MemoryStream())
            {
                new DataContractJsonSerializer(typeof(T)).WriteObject(stream, value);
                return Encoding.UTF8.GetString(stream.ToArray());
            }
        }
    }

    public sealed class AscetConnector : IDisposable
    {
        readonly SemaphoreSlim gate = new SemaphoreSlim(1, 1);
        readonly object cleanupGate = new object();
        readonly List<string> diagnostics = new List<string>();
        readonly InstanceManifest manifest;
        readonly ProcessIdentity generation;
        readonly int requestTimeoutMs, maxPending;
        Process target, host;
        FileStream lease;
        Task stderrReader;
        int closing, pending;

        public string InstanceId { get { return manifest.InstanceId; } }
        public int ProcessId { get { return generation.Pid; } }
        public int Port { get { return manifest.Port; } }
        public string ProcessStartTimeUtc { get { return generation.StartTime; } }
        public string SessionId { get; private set; }
        public string AgentId { get; private set; }
        public AscetIdentity Identity { get; private set; }
        public string[] Diagnostics { get { lock (diagnostics) return diagnostics.ToArray(); } }

        AscetConnector(ConnectorOptions options, InstanceManifest instance, ProcessIdentity process)
        {
            manifest = instance;
            generation = process;
            AgentId = options.AgentId;
            SessionId = Guid.NewGuid().ToString("N");
            requestTimeoutMs = Milliseconds(options.RequestTimeout, "RequestTimeout");
            maxPending = options.MaxPendingRequests;
        }

        static int Milliseconds(TimeSpan timeout, string name)
        {
            if (timeout.TotalMilliseconds < 1 || timeout.TotalMilliseconds > 300000)
                throw new ArgumentOutOfRangeException(name, "Timeout must be between 1 ms and 5 minutes");
            return (int)timeout.TotalMilliseconds;
        }

        static string NormalPath(string path)
        {
            return Path.GetFullPath(path).TrimEnd(Path.DirectorySeparatorChar, Path.AltDirectorySeparatorChar);
        }

        static bool SamePath(string first, string second)
        {
            return String.Equals(NormalPath(first), NormalPath(second), StringComparison.OrdinalIgnoreCase);
        }

        static string Quote(string value)
        {
            if (value.IndexOf('"') >= 0) throw new ArgumentException("Paths cannot contain quotes");
            return "\"" + value + "\"";
        }

        public static async Task<AscetConnector> ConnectAsync(ConnectorOptions options,
                                                              CancellationToken cancellationToken = default(CancellationToken))
        {
            if (options == null) throw new ArgumentNullException("options");
            cancellationToken.ThrowIfCancellationRequested();
            int connectTimeout = Milliseconds(options.ConnectTimeout, "ConnectTimeout");
            if (options.MaxPendingRequests < 1 || options.MaxPendingRequests > 1024)
                throw new ArgumentOutOfRangeException("MaxPendingRequests");
            if (String.IsNullOrWhiteSpace(options.AgentId)) throw new ArgumentException("AgentId is required");
            string path = Path.GetFullPath(options.ManifestPath);
            string directory = Path.GetDirectoryName(path);
            string root = Path.GetDirectoryName(directory);
            if (!File.Exists(Path.Combine(root, "experiment.json")))
                throw new AscetConnectorException("INVALID_INSTANCE", "A prepared private instance is required");
            var manifest = Json.Read<InstanceManifest>(File.ReadAllText(path));
            var record = Json.Read<ProcessIdentity>(File.ReadAllText(Path.Combine(directory, "process.json")));
            if (manifest.Port < 1024 || manifest.Port > 65535 || record.Port != manifest.Port ||
                !SamePath(manifest.Runtime, Path.Combine(directory, "runtime")) ||
                !SamePath(manifest.Runtime, record.Runtime))
                throw new AscetConnectorException("INVALID_INSTANCE", "Runtime or port does not match the prepared instance");
            string executable = String.IsNullOrEmpty(options.HostExecutable)
                ? Path.Combine(root, "EndpointHost.exe") : Path.GetFullPath(options.HostExecutable);
            if (!File.Exists(executable)) throw new FileNotFoundException("EndpointHost.exe is required", executable);
            var connector = new AscetConnector(options, manifest, record);
            try
            {
                connector.target = Process.GetProcessById(record.Pid);
                if (!SamePath(connector.target.MainModule.FileName, Path.Combine(manifest.Runtime, "ASCET.exe")) ||
                    connector.target.StartTime.ToUniversalTime().ToString("o") != record.StartTime)
                    throw new AscetConnectorException("INSTANCE_CHANGED", "ASCET process generation changed");
                // FileShare.None provides a process-wide lease that Windows releases on a crash.
                try
                {
                    connector.lease = new FileStream(Path.Combine(directory, ".connector.lock"),
                        FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.None);
                }
                catch (IOException error)
                {
                    throw new AscetConnectorException("INSTANCE_IN_USE", "Share the existing connector for this instance", inner: error);
                }
                string logs = Path.Combine(manifest.Logs, "connector-" + connector.SessionId);
                var start = new ProcessStartInfo(executable,
                    manifest.Port.ToString(System.Globalization.CultureInfo.InvariantCulture) + " " +
                    Quote(logs) + " " + Quote(manifest.Database) + " " + record.Pid.ToString()) {
                    UseShellExecute = false, CreateNoWindow = true,
                    RedirectStandardInput = true, RedirectStandardOutput = true, RedirectStandardError = true,
                    StandardOutputEncoding = new UTF8Encoding(false), StandardErrorEncoding = new UTF8Encoding(false)
                };
                connector.host = Process.Start(start);
                connector.stderrReader = connector.ReadDiagnosticsAsync();
                string ready = await connector.ReadMessageAsync(null, connectTimeout, cancellationToken).ConfigureAwait(false);
                connector.Identity = Json.Read<Ready>(ready).Identity;
                connector.ValidateIdentity(connector.Identity);
                return connector;
            }
            catch
            {
                connector.Terminate();
                throw;
            }
        }

        void AddDiagnostic(string line)
        {
            lock (diagnostics)
            {
                if (diagnostics.Count == 32) diagnostics.RemoveAt(0);
                diagnostics.Add(line.Length > 2048 ? line.Substring(0, 2048) : line);
            }
        }

        async Task ReadDiagnosticsAsync()
        {
            var reader = host.StandardError;
            try
            {
                string line;
                while ((line = await reader.ReadLineAsync().ConfigureAwait(false)) != null) AddDiagnostic(line);
            }
            catch (IOException) { }
            catch (ObjectDisposedException) { }
        }

        async Task<string> ReadMessageAsync(string requestId, int timeout, CancellationToken cancellationToken)
        {
            var reader = host.StandardOutput;
            var watch = Stopwatch.StartNew();
            while (true)
            {
                int remaining = timeout - (int)watch.ElapsedMilliseconds;
                if (remaining <= 0) throw new TimeoutException("ASCET Host response timed out");
                var read = reader.ReadLineAsync();
                using (var delayCancellation = CancellationTokenSource.CreateLinkedTokenSource(cancellationToken))
                {
                    var delay = Task.Delay(remaining, delayCancellation.Token);
                    if (await Task.WhenAny(read, delay).ConfigureAwait(false) != read)
                    {
                        // Termination closes the pipe; observe the abandoned read's eventual exception.
                        Observe(read);
                        cancellationToken.ThrowIfCancellationRequested();
                        throw new TimeoutException("ASCET Host response timed out");
                    }
                    delayCancellation.Cancel();
                }
                string line = await read.ConfigureAwait(false);
                if (line == null) throw new AscetConnectorException("HOST_EXITED", "ASCET Host closed its output", requestId);
                Header header;
                try { header = Json.Read<Header>(line); }
                catch (SerializationException) { AddDiagnostic(line); continue; }
                if (header.Kind == "error")
                    throw new AscetConnectorException("CONNECTION_FAILED", header.Error, requestId);
                if (requestId == null && header.Kind == "ready") return line;
                if (header.Id != null)
                {
                    if (header.Id != requestId)
                        throw new AscetConnectorException("PROTOCOL_ERROR", "Response request ID did not match", requestId);
                    if (!header.Ok) throw new AscetConnectorException("REMOTE_ERROR", header.Error, requestId);
                    return line;
                }
                AddDiagnostic(line);
            }
        }

        static async void Observe(Task task)
        {
            try { await task.ConfigureAwait(false); } catch { }
        }

        void ValidateIdentity(AscetIdentity identity)
        {
            if (identity == null || identity.ProcessId != ProcessId || !identity.MultiInstance ||
                !SamePath(identity.DatabasePath, manifest.Database) ||
                !SamePath(identity.DatabaseRoot, Path.GetDirectoryName(manifest.Database)))
                throw new AscetConnectorException("DATABASE_CHANGED", "API identity does not match the private instance");
        }

        void CheckConnected()
        {
            if (Volatile.Read(ref closing) != 0)
                throw new ObjectDisposedException("AscetConnector");
            if (target.HasExited)
                throw new AscetConnectorException("INSTANCE_CHANGED", "ASCET exited; connect to its new generation explicitly");
            if (host.HasExited) throw new AscetConnectorException("HOST_EXITED", "ASCET Host exited");
        }

        async Task<T> InvokeAsync<T>(string operation, int token, CancellationToken cancellationToken)
        {
            var elapsed = Stopwatch.StartNew();
            if (Interlocked.Increment(ref pending) > maxPending)
            {
                Interlocked.Decrement(ref pending);
                throw new AscetConnectorException("QUEUE_FULL", "Connector request queue is full");
            }
            bool acquired = false, sent = false;
            string id = SessionId + ":" + Guid.NewGuid().ToString("N");
            try
            {
                acquired = await gate.WaitAsync(requestTimeoutMs, cancellationToken).ConfigureAwait(false);
                if (!acquired) throw new AscetConnectorException("QUEUE_TIMEOUT", "Request expired before dispatch", id);
                CheckConnected();
                cancellationToken.ThrowIfCancellationRequested();
                int remaining = requestTimeoutMs - (int)elapsed.ElapsedMilliseconds;
                if (remaining <= 0)
                    throw new AscetConnectorException("QUEUE_TIMEOUT", "Request expired before dispatch", id);
                sent = true;
                await host.StandardInput.WriteLineAsync(Json.Write(new Request { Id = id, Operation = operation, Token = token })).ConfigureAwait(false);
                await host.StandardInput.FlushAsync().ConfigureAwait(false);
                remaining = requestTimeoutMs - (int)elapsed.ElapsedMilliseconds;
                string message = await ReadMessageAsync(id, Math.Max(1, remaining), cancellationToken).ConfigureAwait(false);
                return Json.Read<Success<T>>(message).Result;
            }
            catch (AscetConnectorException error)
            {
                if (sent && error.Code != "REMOTE_ERROR")
                {
                    Terminate();
                    throw new AscetConnectorException(error.Code, error.Message, id, true, error);
                }
                throw;
            }
            catch (OperationCanceledException)
            {
                if (sent) Terminate();
                throw;
            }
            catch (Exception error)
            {
                if (sent) Terminate();
                if (!sent) throw;
                throw new AscetConnectorException(error is TimeoutException ? "REQUEST_TIMEOUT" : "CONNECTION_LOST",
                    error.Message, id, true, error);
            }
            finally
            {
                if (acquired) gate.Release();
                Interlocked.Decrement(ref pending);
            }
        }

        public async Task<AscetIdentity> GetIdentityAsync(CancellationToken cancellationToken = default(CancellationToken))
        {
            var identity = await InvokeAsync<AscetIdentity>("identity", 0, cancellationToken).ConfigureAwait(false);
            try { ValidateIdentity(identity); }
            catch { Terminate(); throw; }
            Identity = identity;
            return identity;
        }

        public Task<int> EchoAsync(int token, CancellationToken cancellationToken = default(CancellationToken))
        {
            return InvokeAsync<int>("echo", token, cancellationToken);
        }

        void Terminate()
        {
            Interlocked.Exchange(ref closing, 1);
            lock (cleanupGate)
            {
                if (host != null)
                {
                    try
                    {
                        if (!host.HasExited) host.Kill();
                        if (!host.WaitForExit(5000))
                            throw new AscetConnectorException("CLEANUP_FAILED", "Owned Host did not exit; instance lease retained");
                    }
                    catch (InvalidOperationException) { }
                    host.StandardInput.Dispose();
                    host.StandardOutput.Dispose();
                    host.StandardError.Dispose();
                    host.Dispose();
                    host = null;
                }
                if (lease != null) { lease.Dispose(); lease = null; }
                if (target != null) { target.Dispose(); target = null; }
            }
        }

        public async Task DisconnectAsync()
        {
            if (Interlocked.Exchange(ref closing, 1) != 0) return;
            bool acquired = await gate.WaitAsync(2500).ConfigureAwait(false);
            try
            {
                if (acquired && host != null && !host.HasExited)
                {
                    string id = SessionId + ":disconnect";
                    await host.StandardInput.WriteLineAsync(Json.Write(new Request { Id = id, Operation = "quit" })).ConfigureAwait(false);
                    await host.StandardInput.FlushAsync().ConfigureAwait(false);
                    await ReadMessageAsync(id, 2500, CancellationToken.None).ConfigureAwait(false);
                    await Task.Run(() => host.WaitForExit(5000)).ConfigureAwait(false);
                }
            }
            catch (Exception error) { AddDiagnostic(error.Message); }
            finally
            {
                if (acquired) gate.Release();
                Terminate();
            }
        }

        public void Dispose()
        {
            DisconnectAsync().GetAwaiter().GetResult();
        }
    }
}
