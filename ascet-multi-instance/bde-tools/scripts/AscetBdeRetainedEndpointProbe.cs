using System;
using System.Collections.Generic;
using System.IO;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Research-only read of the existing retained record; never initializes a graph reader.
class AscetBdeRetainedEndpointProbe
{
    static int Main(string[] args)
    {
        if (args.Length != 6 || File.Exists(args[1])) return 2;
        var result = new Dictionary<string, object>();
        var kept = new List<object>();
        Ascet api = null;
        int exit = 1;
        try {
            var manifest = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[0]));
            string basePath = Path.GetDirectoryName(Path.GetFullPath(args[0]));
            string runtime = Path.GetFullPath((string)manifest["runtime"]);
            string databasePath = Path.GetFullPath((string)manifest["database"]);
            if (!runtime.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !databasePath.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !File.Exists(Path.Combine(Path.GetDirectoryName(basePath), "preparation.json")))
                throw new Exception("An owned isolated runtime manifest is required");
            if (!System.Text.RegularExpressions.Regex.IsMatch(args[3], @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(args[5], "^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact isolated owner and retained token required");
            int port = Convert.ToInt32(manifest["port"]);
            Environment.SetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT", port.ToString());
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Isolated endpoint generation changed");
            using (var process = System.Diagnostics.Process.GetProcessById(Int32.Parse(args[2].Split('/')[0])))
                if (!String.Equals(process.MainModule.FileName, Path.Combine(runtime, "ASCET.exe"), StringComparison.OrdinalIgnoreCase))
                    throw new Exception("Listener runtime differs from owned preparation");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port))) throw new Exception("Endpoint already registered");
            api = new Ascet();
            if (api.nullHandle()) throw new Exception("No isolated ASCET handle");
            var database = api.GetCurrentDataBase(); kept.Add(database);
            if (database == null || database.nullHandle() || !String.Equals(database.GetName(), databasePath, StringComparison.OrdinalIgnoreCase))
                throw new Exception("Owned isolated database differs");
            int slash = args[3].LastIndexOf('\\');
            var component = database.GetItemInFolder(args[3].Substring(slash + 1), args[3].Substring(0, slash)) as CodeComponent;
            kept.Add(component);
            if (component == null || component.nullHandle() || component.GetOID() != args[4])
                throw new Exception("Exact retained component unavailable");
            var guard = AscetStructureRead.Compile(component, "bde_edge_restore_guard.st"); kept.Add(guard);
            var kernel = AscetStructureRead.Compile(component, "bde_native_collection_merge.st"); kept.Add(kernel);
            var plannerFactory = AscetStructureRead.Compile(component, "bde_parent_order_inverse.st"); kept.Add(plannerFactory);
            var makePlanner = new InstanceMethodCall(plannerFactory, "value:", component);
            makePlanner.appendParameter(kernel); component.call(makePlanner);
            var planner = makePlanner.ResultRemoteObject; kept.Add(planner);
            var makeHelpers = component.createClassMethodCall("Array", "with:with:");
            makeHelpers.appendParameter(guard); makeHelpers.appendParameter(planner); component.call(makeHelpers);
            var helpers = makeHelpers.ResultRemoteObject; kept.Add(helpers);
            var factory = AscetStructureRead.Compile(component, "bde_retained_endpoint_probe.st"); kept.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(helpers); component.call(bind);
            var block = bind.ResultRemoteObject; kept.Add(block);
            var run = new InstanceMethodCall(block, "value:value:", component);
            run.appendParameter(component); run.appendParameter(args[5]); component.call(run);
            string encoded = run.ResultString;
            if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
            result["observation"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Endpoint changed during diagnostic");
            result["process_epoch"] = args[2]; result["database"] = databasePath;
            result["component"] = args[3]; result["oid"] = args[4]; result["change_id"] = args[5];
            result["structural_reader_called"] = false; result["model_mutation_dispatched"] = false;
            result["passed"] = true; exit = 0;
        } catch (Exception error) { result["passed"] = false; result["error"] = error.ToString(); }
        finally {
            var failures = new List<string>();
            for (int i = kept.Count - 1; i >= 0; --i) {
                try {
                    var wrapper = kept[i] as SmalltalkToolAPI;
                    if (wrapper != null) wrapper.finalize();
                    else {
                        var remote = kept[i] as Identifiable;
                        if (remote != null && api != null) {
                            var release = api.createControlMessageCall("destroyObjectForId:");
                            release.appendParameter(remote.getIdentifier()); api.call(release); release.getResultVoid();
                        }
                    }
                } catch (Exception error) { failures.Add(error.Message); }
                if (kept[i] != null) GC.SuppressFinalize(kept[i]);
            }
            kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (api != null) {
                try { if (!api.nullHandle()) api.DisconnectFromTool(); }
                catch (Exception error) { failures.Add(error.Message); }
                GC.SuppressFinalize(api);
            }
            result["cleanup_errors"] = failures;
            if (failures.Count != 0) { result["passed"] = false; exit = 1; }
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(result));
            using (var stream = new FileStream(args[1], FileMode.CreateNew)) { stream.Write(bytes, 0, bytes.Length); stream.Flush(true); }
        }
        Environment.Exit(exit); return exit;
    }
}
