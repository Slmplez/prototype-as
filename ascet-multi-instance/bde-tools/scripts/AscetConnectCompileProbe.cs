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
        "bde_commit_reference_record.st", "bde_module_persistent_references.st", "bde_value_probe.st",
        "bde_reference_leaf_noop.st", "bde_detached_value_reader.st", "bde_reference_leaf_lifecycle.st",
        "bde_connect_preparation_guard_probe.st", "bde_finite_reference_patch.st", "bde_finite_reference_patch_probe.st",
        "bde_finite_reference_patch_guard_probe.st", "bde_persistent_owner_records.st", "bde_persistent_owner_noop.st",
        "bde_persistent_owner_patch.st", "bde_persistent_owner_patch_probe.st", "bde_fresh_serializer_prepare.st",
        "bde_fresh_serializer_inventory.st", "bde_fresh_serializer_inventory_reader.st", "bde_fresh_serializer_dump.st"
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

    static object ReadReferences(AscetDataBase database, string path, bool persistent, string[] targets, bool guardControls, bool finiteGuardControls, bool ownerRecords, bool serializerWorkbench, int inventoryIndex)
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
                Identifiable configuration = decoder;
                if (targets.Length != 0) {
                    var configure = component.createClassMethodCall("Array", "with:with:");
                    configure.appendParameter(decoder); configure.appendParameter(targets); component.call(configure);
                    configuration = configure.ResultRemoteObject; blocks.Add(configuration);
                }
                var bindPersistent = new InstanceMethodCall(persistentFactory, "value:", component);
                bindPersistent.appendParameter(configuration); component.call(bindPersistent);
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
                if (ownerRecords) {
                    var ownerFactory = AscetStructureRead.Compile(component, "bde_persistent_owner_records.st"); blocks.Add(ownerFactory);
                    var bindOwner = new InstanceMethodCall(ownerFactory, "value:", component);
                    bindOwner.appendParameter(persistentReader); component.call(bindOwner);
                    var ownerReader = bindOwner.ResultRemoteObject; blocks.Add(ownerReader);
                    var bindOwnerSerializer = new InstanceMethodCall(serializer, "value:", component);
                    bindOwnerSerializer.appendParameter(ownerReader); component.call(bindOwnerSerializer);
                    var ownerProbe = bindOwnerSerializer.ResultRemoteObject; blocks.Add(ownerProbe);
                    var ownerImages = new List<object>(); result["owner_observations"] = ownerImages;
                    for (int i = 0; i < 2; ++i) {
                        var call = new InstanceMethodCall(ownerProbe, "value:", component);
                        call.appendParameter(component); component.call(call);
                        string encoded = call.ResultString;
                        if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                        ownerImages.Add(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded)));
                    }
                    result["owner_probe_blocks_invoked"] = 2;
                    if (serializerWorkbench) {
                        var workbenchFactory = AscetStructureRead.Compile(component, "bde_fresh_serializer_prepare.st"); blocks.Add(workbenchFactory);
                        var bindWorkbench = new InstanceMethodCall(workbenchFactory, "value:", component);
                        bindWorkbench.appendParameter(ownerReader); component.call(bindWorkbench);
                        var workbenchReader = bindWorkbench.ResultRemoteObject; blocks.Add(workbenchReader);
                        var bindWorkbenchSerializer = new InstanceMethodCall(serializer, "value:", component);
                        bindWorkbenchSerializer.appendParameter(workbenchReader); component.call(bindWorkbenchSerializer);
                        var workbenchProbe = bindWorkbenchSerializer.ResultRemoteObject; blocks.Add(workbenchProbe);
                        var callWorkbench = new InstanceMethodCall(workbenchProbe, "value:", component);
                        callWorkbench.appendParameter(component); component.call(callWorkbench);
                        string encoded = callWorkbench.ResultString;
                        if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                        result["serializer_workbench"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
                    }
                    if (inventoryIndex != 0) {
                        var inventoryFactory = AscetStructureRead.Compile(component, "bde_fresh_serializer_inventory.st"); blocks.Add(inventoryFactory);
                        var bindInventory = new InstanceMethodCall(inventoryFactory, "value:", component);
                        bindInventory.appendParameter(ownerReader); component.call(bindInventory);
                        var inventory = bindInventory.ResultRemoteObject; blocks.Add(inventory);
                        var configureInventory = component.createClassMethodCall("Array", "with:with:");
                        configureInventory.appendParameter(inventory); configureInventory.appendParameter(inventoryIndex); component.call(configureInventory);
                        var inventoryConfig = configureInventory.ResultRemoteObject; blocks.Add(inventoryConfig);
                        var inventoryWrapper = AscetStructureRead.Compile(component, "bde_fresh_serializer_inventory_reader.st"); blocks.Add(inventoryWrapper);
                        var bindInventoryWrapper = new InstanceMethodCall(inventoryWrapper, "value:", component);
                        bindInventoryWrapper.appendParameter(inventoryConfig); component.call(bindInventoryWrapper);
                        var inventoryReader = bindInventoryWrapper.ResultRemoteObject; blocks.Add(inventoryReader);
                        var bindInventorySerializer = new InstanceMethodCall(serializer, "value:", component);
                        bindInventorySerializer.appendParameter(inventoryReader); component.call(bindInventorySerializer);
                        var inventoryProbe = bindInventorySerializer.ResultRemoteObject; blocks.Add(inventoryProbe);
                        var callInventory = new InstanceMethodCall(inventoryProbe, "value:", component);
                        callInventory.appendParameter(component); component.call(callInventory);
                        string encoded = callInventory.ResultString;
                        if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                        result["serializer_inventory"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
                    }
                }
                if (finiteGuardControls) {
                    Func<Identifiable, Identifiable, Identifiable> bindNative = (f, p) => {
                        var c = new InstanceMethodCall(f, "value:", component); c.appendParameter(p); component.call(c);
                        var b = c.ResultRemoteObject; blocks.Add(b); return b;
                    };
                    var patchRoot = AscetStructureRead.Compile(component, "bde_finite_reference_patch.st"); blocks.Add(patchRoot);
                    var patchFactory = bindNative(bindNative(patchRoot, decoder), persistentReader);
                    var guardRoot = AscetStructureRead.Compile(component, "bde_finite_reference_patch_guard_probe.st"); blocks.Add(guardRoot);
                    var guardReader = bindNative(bindNative(guardRoot, patchFactory), persistentReader);
                    var guardProbe = bindNative(serializer, guardReader);
                    var guardCall = new InstanceMethodCall(guardProbe, "value:", component);
                    guardCall.appendParameter(component); component.call(guardCall);
                    result["finite_patch_guard_controls"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(guardCall.ResultString));
                }
                if (component.GetOID() != oid || component.GetNameWithPath().Trim('\\') != path)
                    throw new Exception("Persistent Module component identity changed during read");
            }
            if (guardControls) {
                var guard = AscetStructureRead.Compile(component, "bde_structure_stage_guard.st"); blocks.Add(guard);
                var controlsFactory = AscetStructureRead.Compile(component, "bde_connect_preparation_guard_probe.st"); blocks.Add(controlsFactory);
                var bindControls = new InstanceMethodCall(controlsFactory, "value:", component);
                bindControls.appendParameter(guard); component.call(bindControls);
                var controls = bindControls.ResultRemoteObject; blocks.Add(controls);
                var serializer = AscetStructureRead.Compile(component, "bde_value_probe.st"); blocks.Add(serializer);
                var bindSerializer = new InstanceMethodCall(serializer, "value:", component);
                bindSerializer.appendParameter(controls); component.call(bindSerializer);
                var probeControls = bindSerializer.ResultRemoteObject; blocks.Add(probeControls);
                var call = new InstanceMethodCall(probeControls, "value:", component);
                call.appendParameter(component); component.call(call);
                string encoded = call.ResultString;
                if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
                result["native_guard_controls"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
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
        int inventoryIndex = 0;
        if (args.Length > 0 && args[args.Length - 1].StartsWith("--serializer-inventory:", StringComparison.Ordinal)) {
            if (!Int32.TryParse(args[args.Length - 1].Substring("--serializer-inventory:".Length), out inventoryIndex)
                    || inventoryIndex < 1 || inventoryIndex > 16) return 2;
            Array.Resize(ref args, args.Length - 1);
        }
        bool serializerWorkbench = args.Length > 0 && args[args.Length - 1] == "--serializer-workbench";
        if (serializerWorkbench) Array.Resize(ref args, args.Length - 1);
        bool ownerRecords = args.Length > 0 && args[args.Length - 1] == "--owner-records";
        if (ownerRecords) Array.Resize(ref args, args.Length - 1);
        bool guardControls = args.Length > 0 && args[args.Length - 1] == "--native-guard-controls";
        bool finiteGuardControls = args.Length > 0 && args[args.Length - 1] == "--finite-guard-controls";
        if (guardControls || finiteGuardControls) Array.Resize(ref args, args.Length - 1);
        int expectedPid;
        if ((args.Length < 2 || args.Length > 5) || !Int32.TryParse(args[0], out expectedPid)
                || expectedPid < 1 || File.Exists(args[1])) return 2;
        bool persistent = args.Length >= 4 && args[3] == "--persistent-references";
        if (args.Length >= 4 && (!persistent || args[2] == "--list-trials")) return 2;
        string[] targets = args.Length == 5 ? args[4].Split(',') : new string[0];
        if (targets.Length > 16) return 2;
        var seen = new HashSet<string>(StringComparer.Ordinal);
        foreach (string key in targets) {
            if (!System.Text.RegularExpressions.Regex.IsMatch(key, "^[0-9a-f]{40}$") || !seen.Add(key)) return 2;
        }
        Array.Sort(targets, StringComparer.Ordinal);
        if (guardControls && (args.Length < 3 || args[2] == "--list-trials")) return 2;
        if (finiteGuardControls && !persistent) return 2;
        if (ownerRecords && !persistent) return 2;
        if (serializerWorkbench && !ownerRecords) return 2;
        if (inventoryIndex != 0 && (!ownerRecords || serializerWorkbench)) return 2;
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
                else result["module_read"] = ReadReferences(database, args[2], persistent, targets, guardControls, finiteGuardControls, ownerRecords, serializerWorkbench, inventoryIndex);
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
