using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Disposable PRIVATE-heap bridge. The Python coordinator owns the durable WAL.
class AscetPrivateRegistrySession
{
    static Ascet ascet;
    static AscetDataBase database;
    static CodeComponent owner;
    static Identifiable identity, registry, wire;
    static Dictionary<string, object> domain;
    static string token, source;
    static readonly List<Identifiable> blocks = new List<Identifiable>();

    static Identifiable Compile(string name)
    { var block = AscetStructureRead.Compile(owner, name); blocks.Add(block); return block; }
    static Identifiable Bind(Identifiable target, params Identifiable[] values)
    {
        var call = new InstanceMethodCall(target, values.Length == 1 ? "value:" :
            values.Length == 2 ? "value:value:" : "value:value:value:", owner);
        foreach (var value in values) call.appendParameter(value);
        owner.call(call); var block = call.ResultRemoteObject;
        if (owner.getClassName(block) != "BlockContextTemplate") throw new Exception("Private fixed binding failed");
        blocks.Add(block); return block;
    }
    static string[] Binding()
    { return new[] {token, (string)domain["process_epoch"], (string)domain["database_session"],
        (string)domain["oid"], (string)domain["component"], source}; }
    static object Registry(string action, Identifiable replacement)
    {
        var array = owner.createClassMethodCall("Array", "with:with:with:");
        array.appendParameter(action); array.appendParameter(Binding()); array.appendParameter(replacement); owner.call(array);
        var arguments = array.ResultRemoteObject;
        try {
            var call = new InstanceMethodCall(registry, "value:value:value:", owner);
            call.appendParameter(database); call.appendParameter(owner); call.appendParameter(arguments); owner.call(call);
            if (action == "size") return call.ResultInteger;
            if (action == "release") {
                string text = call.ResultString;
                if (text.StartsWith("BDE_")) throw new Exception(text);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
            }
            try {
                var block = call.ResultRemoteObject;
                if (owner.getClassName(block) != "BlockContextTemplate") throw new Exception("Registry did not return exact wire");
                blocks.Add(block); return block;
            } catch (WrongResultTypeException) { throw new Exception(call.ResultString); }
        } finally { ReleaseHandle(arguments); }
    }
    static void ReleaseHandle(Identifiable value)
    {
        var release = owner.createControlMessageCall("destroyObjectForId:");
        release.appendParameter(value.getIdentifier()); owner.call(release); release.getResultVoid();
    }
    static object Request(string action, int index)
    {
        var call = new InstanceMethodCall(wire, "value:", owner);
        call.appendParameter(new[] {token, action, index.ToString(System.Globalization.CultureInfo.InvariantCulture)}); owner.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        var reply = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
        if (reply.ContainsKey("original_projection_json")) {
            reply["original_projection"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)reply["original_projection_json"]));
            reply.Remove("original_projection_json");
        }
        return reply;
    }
    static void Verify()
    {
        if (AscetStructureRead.ProcessEpoch() != (string)domain["process_epoch"])
            throw new Exception("Private registry process epoch changed");
        var current = ascet.GetCurrentDataBase();
        CodeComponent fresh = null;
        try {
            if (current == null || current.nullHandle() || current.GetName() != (string)domain["database"] ||
                AscetStructureRead.DatabaseIdentity(owner, current, identity) != (string)domain["database_session"])
                throw new Exception("Private registry database session changed");
            string path = (string)domain["component"]; int slash = path.LastIndexOf('\\');
            fresh = current.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (fresh == null || fresh.nullHandle() || fresh.GetOID() != (string)domain["oid"] || fresh.GetNameWithPath() != path)
                throw new Exception("Private registry owner identity changed");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Private study requires clean editors");
        } finally {
            if (fresh != null) { fresh.finalize(); GC.SuppressFinalize(fresh); }
            if (current != null) { current.finalize(); GC.SuppressFinalize(current); }
        }
    }
    static object Handle(Dictionary<string, object> request)
    {
        string command = (string)request["cmd"];
        if (command == "open") {
            if (ascet != null) throw new Exception("Private bridge already opened");
            domain = (Dictionary<string, object>)request["domain"];
            token = (string)request["token"]; source = (string)request["source_sha256"];
            string path = (string)domain["component"];
            if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"\ABDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+\z") ||
                !System.Text.RegularExpressions.Regex.IsMatch(token, @"\A[0-9a-f]{32}\z") ||
                !System.Text.RegularExpressions.Regex.IsMatch(source, @"\A[0-9a-f]{64}\z")) throw new Exception("Exact private sandbox binding required");
            if (AscetStructureRead.ProcessEpoch() != (string)domain["process_epoch"]) throw new Exception("Stale private epoch");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT") ?? "32503")));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            database = ascet.GetCurrentDataBase(); int slash = path.LastIndexOf('\\');
            owner = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (owner == null || owner.nullHandle()) throw new Exception("Private owner missing");
            identity = Compile("bde_database_identity.st"); Verify(); registry = Compile("bde_native_private_registry.st");
            return new {opened = true, host_pid = System.Diagnostics.Process.GetCurrentProcess().Id};
        }
        if (owner == null) throw new Exception("Private bridge not opened");
        Verify();
        if (command == "prepare" || command == "prepare_collection") {
            if (wire != null) throw new Exception("Private wire already bound");
            string collection = null;
            if (command == "prepare_collection") {
                collection = (string)request["collection_class"];
                if (Array.IndexOf(new[] {"Dictionary", "Set", "Array"}, collection) < 0)
                    throw new Exception("Unknown fixed private collection preparation");
            }
            // Lookup is separate; preparation is never a fallback for missing material.
            var clone = Compile("bde_native_graph_clone.st");
            var cloneProbe = Bind(Compile("bde_native_graph_clone_probe.st"),
                Compile("bde_class_local_inverse_bindings.st"), clone, Compile("bde_class_detached_projection.st"));
            var plan = Bind(Compile("bde_native_private_collection_plan.st"), Compile("bde_native_collection_merge.st"));
            var prepare = Bind(Compile("bde_native_private_remote_prepare.st"), cloneProbe, plan);
            prepare = Bind(prepare, Compile("bde_native_private_execution.st"), Compile("bde_class_detached_projection.st"));
            prepare = Bind(prepare, Compile("bde_native_private_wire.st"));
            var capture = new InstanceMethodCall(cloneProbe, "value:value:value:", owner);
            capture.appendParameter(owner); capture.appendParameter("capture"); capture.appendParameter((Identifiable)null); owner.call(capture);
            var checkpoint = capture.ResultRemoteObject; blocks.Add(checkpoint);
            var make = new InstanceMethodCall(prepare, "value:value:value:", owner);
            make.appendParameter(owner); make.appendParameter(checkpoint);
            if (collection == null) make.appendParameter(token);
            else make.appendParameter(new[] {token, collection});
            owner.call(make);
            try { wire = make.ResultRemoteObject; }
            catch (WrongResultTypeException) { throw new Exception(make.ResultString); }
            blocks.Add(wire);
            if (owner.getClassName(wire) != "BlockContextTemplate") throw new Exception("Private preparation refused");
            wire = (Identifiable)Registry("register", wire);
            return Request("export", 0);
        }
        if (command == "lookup") {
            wire = (Identifiable)Registry("lookup", null);
            return Request("export", 0);
        }
        if (command == "size") return Registry("size", null);
        if (command == "duplicate_register") return Registry("register", wire);
        if (command == "replacement_lookup") return Registry("lookup", wire);
        if (Array.IndexOf(new[] {"wrong_source_lookup", "wrong_epoch_lookup", "wrong_database_lookup", "wrong_owner_lookup", "missing_token_lookup"}, command) >= 0) {
            string savedSource = source, savedToken = token;
            var savedDomain = new Dictionary<string, object>(domain);
            try {
                if (command == "wrong_source_lookup") source = source == new String('0', 64) ? new String('1', 64) : new String('0', 64);
                if (command == "wrong_epoch_lookup") domain["process_epoch"] = (string)domain["process_epoch"] + "/changed";
                if (command == "wrong_database_lookup") domain["database_session"] = (string)domain["database_session"] + "changed";
                if (command == "wrong_owner_lookup") domain["oid"] = (string)domain["oid"] + "changed";
                if (command == "missing_token_lookup") token = Guid.NewGuid().ToString("N");
                return Registry("lookup", null);
            } finally { source = savedSource; token = savedToken; domain = savedDomain; }
        }
        if (command == "release") return Registry("release", null);
        if (command != "wire" || wire == null) throw new Exception("Unknown fixed private bridge command");
        string action = (string)request["action"]; int index = (int)request["index"];
        if (Array.IndexOf(new[] {"observe", "step", "recover", "perturb", "reset", "physical_begin", "physical_next",
            "physical_fail_before", "physical_fail_after", "physical_reconcile", "physical_disturb", "physical_reset"}, action) < 0)
            throw new Exception("Unknown fixed private action");
        var reply = Request(action, index);
        if (request.ContainsKey("exit_signal")) {
            string signal = Path.GetFullPath((string)request["exit_signal"]);
            // Signal is published after native completion, before stdout or host WAL receipt.
            string pendingSignal = signal + ".writing";
            using (var stream = new FileStream(pendingSignal, FileMode.CreateNew, FileAccess.Write, FileShare.None)) {
                byte[] bytes = Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(new {
                    host_pid = System.Diagnostics.Process.GetCurrentProcess().Id, token = token,
                    action = action, index = index, native_result = reply}));
                stream.Write(bytes, 0, bytes.Length); stream.Flush(true);
            }
            File.Move(pendingSignal, signal);
            System.Threading.Thread.Sleep(30000);
        }
        return reply;
    }
    public static int Main()
    {
        Console.InputEncoding = new UTF8Encoding(false); Console.OutputEncoding = new UTF8Encoding(false);
        var protocol = Console.Out; Console.SetOut(Console.Error);
        try {
            string line;
            while ((line = Console.ReadLine()) != null) {
                if (line.Length > 131072) throw new Exception("Bounded private request required");
                try {
                    var request = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(line);
                    if ((string)request["cmd"] == "close") break;
                    var value = Handle(request);
                    protocol.WriteLine(AscetStructureRead.Json.Serialize(new {ok = true, result = value}));
                } catch (Exception error) { protocol.WriteLine(AscetStructureRead.Json.Serialize(new {ok = false, error = error.ToString()})); }
                protocol.Flush();
            }
        } finally {
            if (owner != null) foreach (var block in blocks) try { ReleaseHandle(block); } catch { }
            if (owner != null) { owner.finalize(); GC.SuppressFinalize(owner); }
            if (database != null) { database.finalize(); GC.SuppressFinalize(database); }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        return 0;
    }
}
