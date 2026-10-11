using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed isolated recovery. Durable preparation precedes the separate restore request.
class AscetBdeRetainedRestore
{
    static readonly List<object> Kept = new List<object>();
    static readonly Dictionary<string, object> Result = new Dictionary<string, object>();
    static string Output;
    static int Sequence;
    static Ascet Api;
    static T Keep<T>(T value) { if (value != null) Kept.Add(value); return value; }
    static void Record(string stage)
    {
        Result["stage"] = stage;
        byte[] payload = Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(Result));
        string checksum;
        using (var hash = SHA256.Create()) checksum = BitConverter.ToString(hash.ComputeHash(payload)).Replace("-", "").ToLowerInvariant();
        byte[] bytes = Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(new {
            sequence = Sequence + 1, stage = stage, payload_json = Encoding.UTF8.GetString(payload), payload_sha256 = checksum }));
        using (var stream = new FileStream(Path.Combine(Output, (++Sequence).ToString("D3") + "-" + stage + ".json"), FileMode.CreateNew))
        { stream.Write(bytes, 0, bytes.Length); stream.Flush(true); }
    }
    static object Decode(string encoded)
    {
        if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
    }
    static Dictionary<string, object> Invoke(CodeComponent component, Identifiable block, string[] command)
    {
        var call = new InstanceMethodCall(block, "value:value:", component);
        call.appendParameter(component); call.appendParameter(command); component.call(call);
        return (Dictionary<string, object>)Decode(call.ResultString);
    }
    static object Public(CodeComponent component, Identifiable block)
    {
        var diagram = Keep(component.GetDiagramWithName("Main"));
        if (!(diagram is BlockDiagram)) throw new Exception("Independent ordinary Main graph required");
        var call = new InstanceMethodCall(block, "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(diagram); call.appendParameter("graph"); component.call(call);
        return Decode(call.ResultString);
    }
    static void DirtyCheck()
    {
        var dirty = Api.GetAllEditorsWithUnsavedChanges();
        if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors; restoration deferred");
    }
    static int Main(string[] args)
    {
        if (args.Length != 8 || !Directory.Exists(args[1]) || (args[7] != "preview" && args[7] != "execute")) return 2;
        Output = Path.GetFullPath(args[1]); int exit = 1;
        Result["model_mutation_dispatched"] = false; Result["restored"] = false;
        try {
            var manifest = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[0]));
            string basePath = Path.GetDirectoryName(Path.GetFullPath(args[0]));
            string runtime = Path.GetFullPath((string)manifest["runtime"]), databasePath = Path.GetFullPath((string)manifest["database"]);
            if (!runtime.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !databasePath.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !File.Exists(Path.Combine(Path.GetDirectoryName(basePath), "preparation.json")))
                throw new Exception("Owned isolated preparation required");
            if (!System.Text.RegularExpressions.Regex.IsMatch(args[3], @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(args[5], "^edit_[0-9a-f]{64}$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(args[6], "^edit_[0-9a-f]{64}$") || args[5] == args[6])
                throw new Exception("Exact isolated owner and separate restoration token required");
            int port = Convert.ToInt32(manifest["port"]);
            Environment.SetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT", port.ToString());
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Restoration process generation changed");
            using (var process = System.Diagnostics.Process.GetProcessById(Int32.Parse(args[2].Split('/')[0])))
                if (!String.Equals(process.MainModule.FileName, Path.Combine(runtime, "ASCET.exe"), StringComparison.OrdinalIgnoreCase))
                    throw new Exception("Listener runtime differs from prepared isolation");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port))) throw new Exception("Endpoint already registered");
            Api = new Ascet(); if (Api.nullHandle()) throw new Exception("No isolated ASCET handle");
            var database = Keep(Api.GetCurrentDataBase());
            if (database == null || database.nullHandle() || !String.Equals(database.GetName(), databasePath, StringComparison.OrdinalIgnoreCase))
                throw new Exception("Restoration database differs from manifest");
            DirtyCheck();
            int slash = args[3].LastIndexOf('\\');
            var component = Keep(database.GetItemInFolder(args[3].Substring(slash + 1), args[3].Substring(0, slash)) as CodeComponent);
            if (component == null || component.nullHandle() || component.GetOID() != args[4]) throw new Exception("Original restoration owner unavailable");
            Result["domain"] = new { database = databasePath, process_epoch = args[2], oid = args[4] };
            Result["source_token"] = args[5]; Result["restoration_token"] = args[6]; Result["mode"] = args[7];
            Record("intent");
            var edge = Keep(AscetStructureRead.Compile(component, "bde_edge_restore_guard.st"));
            var kernel = Keep(AscetStructureRead.Compile(component, "bde_native_collection_merge.st"));
            var plannerFactory = Keep(AscetStructureRead.Compile(component, "bde_parent_order_inverse.st"));
            var bindPlanner = new InstanceMethodCall(plannerFactory, "value:", component);
            bindPlanner.appendParameter(kernel); component.call(bindPlanner); var planner = Keep(bindPlanner.ResultRemoteObject);
            var current = Keep(AscetStructureRead.Compile(component, "bde_native_graph_current.st"));
            var currentProbeFactory = Keep(AscetStructureRead.Compile(component, "bde_native_graph_current_probe.st"));
            var bindCurrentProbe = new InstanceMethodCall(currentProbeFactory, "value:", component);
            bindCurrentProbe.appendParameter(current); component.call(bindCurrentProbe);
            var currentProbe = Keep(bindCurrentProbe.ResultRemoteObject);
            var probeCall = new InstanceMethodCall(currentProbe, "value:", component);
            probeCall.appendParameter(component); component.call(probeCall);
            Result["private_current_probe"] = Decode(probeCall.ResultString);
            var projection = Keep(AscetStructureRead.Compile(component, "bde_class_detached_projection.st"));
            var publicReader = Keep(AscetStructureRead.Compile(component, "bde_public_graph_read.st"));
            var makeHelpers = component.createClassMethodCall("Array", "new:"); makeHelpers.appendParameter(4); component.call(makeHelpers);
            var helpers = Keep(makeHelpers.ResultRemoteObject);
            var values = new [] { edge, planner, current, projection };
            for (int i = 0; i < values.Length; ++i) {
                var put = new InstanceMethodCall(helpers, "at:put:", component);
                put.appendParameter(i + 1); put.appendParameter(values[i]); component.call(put); Keep(put.ResultRemoteObject);
            }
            var factory = Keep(AscetStructureRead.Compile(component, "bde_retained_delete_restore.st"));
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(helpers); component.call(bind); var restore = Keep(bind.ResultRemoteObject);
            var prepared = Invoke(component, restore, new [] { "prepare", args[5], args[6] });
            Result["prepared"] = prepared;
            Result["current_graphical_image"] = Decode((string)prepared["current"]);
            Result["public_before"] = Public(component, publicReader);
            Result["prepared_after_public"] = Invoke(component, restore,
                new [] { "check", args[5], args[6], (string)prepared["current"] });
            Record("prepared_current");
            if (args[7] == "execute") {
                DirtyCheck();
                if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Process changed before restoration dispatch");
                Result["model_mutation_dispatched"] = true; Record("restore_started");
                var restored = Invoke(component, restore, new [] { "execute", args[5], args[6], (string)prepared["current"] });
                Result["native_restoration"] = restored;
                Result["actual_graphical_fields"] = Decode((string)restored["actual_graphical_fields"]);
                Record("restore_observed");
                Result["public_after"] = Public(component, publicReader);
                var reader = Keep(AscetStructureRead.Compile(component, "bde_structure_read.st"));
                Result["native_after"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
                Result["restored"] = (string)restored["state"] == "restored";
            }
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Process changed during restoration");
            Result["passed"] = true; Record("finished"); exit = 0;
        } catch (Exception error) { Result["passed"] = false; Result["error"] = error.ToString(); Record("failed"); }
        finally {
            var failures = new List<string>();
            for (int i = Kept.Count - 1; i >= 0; --i) {
                try {
                    var wrapper = Kept[i] as SmalltalkToolAPI;
                    if (wrapper != null) wrapper.finalize();
                    else {
                        var remote = Kept[i] as Identifiable;
                        if (remote != null && Api != null) {
                            var release = Api.createControlMessageCall("destroyObjectForId:");
                            release.appendParameter(remote.getIdentifier()); Api.call(release); release.getResultVoid();
                        }
                    }
                } catch (Exception error) { failures.Add(error.Message); }
                GC.SuppressFinalize(Kept[i]);
            }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (Api != null) {
                try { if (!Api.nullHandle()) Api.DisconnectFromTool(); }
                catch (Exception error) { failures.Add(error.Message); }
                GC.SuppressFinalize(Api);
            }
            Result["cleanup_errors"] = failures;
            if (failures.Count != 0) { Result["passed"] = false; exit = 1; }
            Record("closed");
        }
        Environment.Exit(exit); return exit;
    }
}
