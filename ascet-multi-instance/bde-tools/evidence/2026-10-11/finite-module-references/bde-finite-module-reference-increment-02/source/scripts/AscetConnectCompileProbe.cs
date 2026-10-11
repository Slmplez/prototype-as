using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed template compiler and optional read-only Module reference probe.
// No connection block invocation, setter, store or ASCET lifecycle commands.
class AscetConnectCompileProbe
{
    static readonly string[] Templates = {
        "bde_connect_material.st", "bde_structure_stage_guard.st", "bde_connect_history.st",
        "bde_module_reference_snapshot.st", "bde_module_reference_probe.st",
        "bde_commit_reference_record.st", "bde_module_persistent_references.st", "bde_value_probe.st"
    };

    static object ListTrialModules(AscetDataBase database)
    {
        var modules = database.GetAllComponentsOfType("ModuleBDE");
        if (modules == null || modules.Length > 4096) throw new Exception("Complete bounded ModuleBDE census required");
        var trials = new List<object>();
        try {
            foreach (var module in modules) {
                string path = module.GetNameWithPath().Trim('\\');
                if (path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal))
                    trials.Add(new { component = path, component_oid = module.GetOID() });
            }
            return new { observed_module_count = modules.Length, isolated_modules = trials };
        } finally {
            foreach (var module in modules) { module.finalize(); GC.SuppressFinalize(module); }
        }
    }

    static object ReadReferences(AscetDataBase database, string path, bool persistent)
    {
        path = path.Trim('\\'); int slash = path.LastIndexOf('\\');
        if (slash < 1 || slash == path.Length - 1 || path.Contains(".."))
            throw new Exception("Exact existing Module component path required");
        var component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
        if (component == null || component.nullHandle()) throw new Exception("Existing Module component unavailable");
        var blocks = new List<Identifiable>();
        try {
            if (component.GetNameWithPath().Trim('\\') != path)
                throw new Exception("Resolved Module path differs");
            string oid = component.GetOID();
            var reader = AscetStructureRead.Compile(component, "bde_module_reference_snapshot.st"); blocks.Add(reader);
            var factory = AscetStructureRead.Compile(component, "bde_module_reference_probe.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(reader); component.call(bind);
            var probe = bind.ResultRemoteObject; blocks.Add(probe);
            var images = new List<object>();
            for (int i = 0; i < 2; ++i) {
                var call = new InstanceMethodCall(probe, "value:", component); call.appendParameter(component); component.call(call);
                string encoded = call.ResultString;
                if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                images.Add(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded)));
            }
            if (component.GetOID() != oid || component.GetNameWithPath().Trim('\\') != path)
                throw new Exception("Module component identity changed during read");
            var result = new Dictionary<string, object> {
                { "component", path }, { "component_oid", oid }, { "observations", images },
                { "probe_blocks_invoked", 2 }
            };
            if (persistent) {
                var decoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); blocks.Add(decoder);
                var persistentFactory = AscetStructureRead.Compile(component, "bde_module_persistent_references.st"); blocks.Add(persistentFactory);
                var bindPersistent = new InstanceMethodCall(persistentFactory, "value:", component);
                bindPersistent.appendParameter(decoder); component.call(bindPersistent);
                var persistentReader = bindPersistent.ResultRemoteObject; blocks.Add(persistentReader);
                var serializer = AscetStructureRead.Compile(component, "bde_value_probe.st"); blocks.Add(serializer);
                var bindSerializer = new InstanceMethodCall(serializer, "value:", component);
                bindSerializer.appendParameter(persistentReader); component.call(bindSerializer);
                var persistentProbe = bindSerializer.ResultRemoteObject; blocks.Add(persistentProbe);
                var persistentImages = new List<object>(); result["persistent_observations"] = persistentImages;
                for (int i = 0; i < 2; ++i) {
                    var call = new InstanceMethodCall(persistentProbe, "value:", component);
                    call.appendParameter(component); component.call(call);
                    string encoded = call.ResultString;
                    if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                    persistentImages.Add(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded)));
                }
                result["persistent_probe_blocks_invoked"] = 2;
                if (component.GetOID() != oid || component.GetNameWithPath().Trim('\\') != path)
                    throw new Exception("Persistent Module component identity changed during read");
            }
            return result;
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
            component.finalize(); GC.SuppressFinalize(component);
        }
    }

    static int Main(string[] args)
    {
        int expectedPid;
        if ((args.Length < 2 || args.Length > 4) || !Int32.TryParse(args[0], out expectedPid)
                || expectedPid < 1 || File.Exists(args[1])) return 2;
        bool persistent = args.Length == 4 && args[3] == "--persistent-references";
        if (args.Length == 4 && (!persistent || args[2] == "--list-trials")) return 2;
        var result = new Dictionary<string, object> {
            { "profile", "bde_connect_fixed_compile_probe_v1" }, { "passed", false },
            { "model_setters_called", 0 }, { "store_called", false },
            { "template_blocks_invoked", 0 }, { "connection_edit_dispatched", false }
        };
        var rounds = new List<object>(); result["templates"] = rounds;
        Ascet ascet = null; AscetDataBase database = null;
        var timer = Stopwatch.StartNew();
        try {
            if (String.IsNullOrEmpty(Environment.GetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT")))
                throw new Exception("Explicit verified endpoint required");
            string epoch = AscetStructureRead.ProcessEpoch(); result["process_epoch"] = epoch;
            if (!epoch.StartsWith(expectedPid + "/", StringComparison.Ordinal))
                throw new Exception("Selected endpoint process differs from expected PID");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            int port = Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT")
                ?? Environment.GetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT"));
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0)
                throw new Exception("Unsaved editors; compile probe deferred");
            database = ascet.GetCurrentDataBase();
            if (database == null || database.nullHandle()) throw new Exception("No active database");
            string name = database.GetName(); result["database"] = name;
            foreach (string template in Templates) {
                if (AscetStructureRead.ProcessEpoch() != epoch) throw new Exception("ASCET process changed");
                var row = new Dictionary<string, object> { { "resource", template }, { "compiled", false } };
                rounds.Add(row); var elapsed = Stopwatch.StartNew();
                Identifiable block = null;
                try {
                    block = AscetStructureRead.Compile(database, template);
                    row["compiled"] = true;
                } finally {
                    if (block != null) {
                        var release = database.createControlMessageCall("destroyObjectForId:");
                        release.appendParameter(block.getIdentifier()); database.call(release); release.getResultVoid();
                        row["released"] = true;
                    }
                    row["elapsed_ms"] = elapsed.Elapsed.TotalMilliseconds;
                }
            }
            if (args.Length >= 3) {
                if (args[2] == "--list-trials") result["trial_modules"] = ListTrialModules(database);
                else result["module_read"] = ReadReferences(database, args[2], persistent);
            }
            var current = ascet.GetCurrentDataBase();
            try {
                if (current == null || current.nullHandle() || current.GetName() != name)
                    throw new Exception("Active database changed during compile probe");
            } finally { if (current != null) { current.finalize(); GC.SuppressFinalize(current); } }
            dirty = ascet.GetAllEditorsWithUnsavedChanges();
            result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0 || AscetStructureRead.ProcessEpoch() != epoch)
                throw new Exception("Process or dirty state changed during compile probe");
            result["passed"] = true;
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally {
            try {
                if (database != null) { database.finalize(); GC.SuppressFinalize(database); }
                if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            } catch (Exception error) { result["cleanup_error"] = error.ToString(); result["passed"] = false; }
            result["elapsed_ms"] = timer.Elapsed.TotalMilliseconds;
            File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        }
        return (bool)result["passed"] ? 0 : 1;
    }
}
