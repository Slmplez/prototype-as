using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed isolated Project/Module recipe; no business definitions are modified.
class AscetBdeProjectFixture
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();
    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Fixture API handle missing");
        Kept.Add(value); return value;
    }
    static int Main(string[] args)
    {
        if ((args.Length != 1 && args.Length != 2) || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>();
        var intents = new List<object>(); var modules = new List<object>();
        result["intents"] = intents; result["modules"] = modules;
        result["business_writes"] = false;
        result["stage"] = "start";
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Ascet ascet = null; CodeComponent guardOwner = null; Identifiable guard = null, settings = null; int exit = 1;
        save();
        try {
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1) throw new Exception("Expected one ASCET process");
            result["ascet_process_epoch"] = processes[0].Id + "/" + processes[0].StartTime.ToUniversalTime().ToString("o");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors; fixture deferred");
            var db = Keep(ascet.GetCurrentDataBase()); result["database"] = db.GetName();
            result["stage"] = "database_connected"; save();
            var folder = Keep(db.GetFolder("BDE_Tool_Experiments") as AscetFolder);
            string suffix = DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 6);
            var definitions = new List<AscetModule>();
            if (args.Length == 2) {
                var prior = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[1]));
                foreach (object item in (object[])prior["modules"]) {
                    var row = (Dictionary<string, object>)item; string path = (string)row["component"];
                    if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_ChannelModule[012]_[A-Za-z0-9_]+$"))
                        throw new Exception("Only existing isolated channel fixture Modules may be reused");
                    var module = Keep(db.GetItemInFolder(path.Substring(path.LastIndexOf('\\') + 1), "BDE_Tool_Experiments") as AscetModule);
                    if (module.GetOID() != (string)row["oid"] || module.GetAllModelElements().Length != 0)
                        throw new Exception("Existing isolated fixture Module identity/content changed");
                    definitions.Add(module); modules.Add(row);
                }
                if (definitions.Count != 3) throw new Exception("Three retained isolated Modules required");
            } else for (int i = 0; i < 3; i++) {
                string name = "Trial_ChannelModule" + i + "_" + suffix;
                intents.Add(new { action = "create_module", name = name }); save();
                var module = Keep(folder.AddModule(name, "BDE")); definitions.Add(module);
                var diagram = Keep(module.GetDiagramWithName("Main") as BlockDiagram);
                if (!diagram.StoreToCache()) throw new Exception("Empty fixture graph store failed");
                if (module.GetAllModelElements().Length != 0) throw new Exception("New Module is not empty");
                modules.Add(new { component = module.GetNameWithPath(), oid = module.GetOID() }); save();
            }
            var source = Keep(db.GetItemInFolder("AEBiBooster_ECU_CSW_BB00001",
                @"PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Component\AEB_iBooster") as AscetProject);
            result["stage"] = "source_guard"; save();
            guardOwner = source;
            guard = AscetStructureRead.Compile(source, "bde_project_messages.st");
            settings = AscetStructureRead.Compile(source, "bde_project_fixture_settings.st");
            var sourceGuard = AscetStructureRead.Read(source, guard, "guard", new string[0]);
            if ((string)sourceGuard["target_guard"] != "passed") throw new Exception("Source Project target guard failed");
            result["source"] = source.GetNameWithPath(); result["source_oid"] = source.GetOID();
            result["source_target_guard"] = sourceGuard;
            var sourceModules = source.GetAllModules();
            var sourceBefore = new List<string>();
            foreach (var item in sourceModules) { var instance = Keep(item); sourceBefore.Add(instance.GetName() + "/" + Keep(instance.GetRepresentedClass()).GetOID()); }
            sourceBefore.Sort(); result["source_modules_before"] = sourceBefore;
            for (int variant = 0; variant < 2; variant++) {
                string name = "Trial_ChannelProject" + variant + "_" + suffix;
                intents.Add(new { action = "copy_project_settings", source = source.GetOID(), name = name }); save();
                var project = Keep(source.CopyToFolder(name, folder) as AscetProject);
                result[variant == 0 ? "project" : "repeated_project"] = project.GetNameWithPath();
                result[variant == 0 ? "project_oid" : "repeated_project_oid"] = project.GetOID(); save();
                result["stage"] = "copied_project_guard"; save();
                var copiedGuard = AscetStructureRead.Read(project, guard, "guard", new string[0]);
                if ((string)copiedGuard["target_guard"] != "passed") throw new Exception("Copied fixture target guard failed");
                foreach (var item in project.GetAllModelElements()) {
                    var model = Keep(item);
                    intents.Add(new { action = "remove_copied_declaration", project = project.GetOID(), name = model.GetName() }); save();
                    if (!project.RemoveModelElement(model)) throw new Exception("Copied declaration removal failed");
                }
                if (project.GetAllModelElements().Length != 0) throw new Exception("Copied fixture declarations remain");
                for (int i = 0; i < definitions.Count; i++) {
                    intents.Add(new { action = "add_instance", project = project.GetNameWithPath(), definition = definitions[i].GetOID(), name = "Module" + i }); save();
                    Keep(project.AddComponent(definitions[i], "Module" + i));
                }
                if (variant == 1) {
                    intents.Add(new { action = "add_instance", project = project.GetNameWithPath(), definition = definitions[0].GetOID(), name = "Module0Again" }); save();
                    Keep(project.AddComponent(definitions[0], "Module0Again"));
                }
                var instances = project.GetAllModules();
                if (instances.Length != 3 + variant) throw new Exception("Module instance count mismatch");
                foreach (var instance in instances) Keep(instance);
                result["stage"] = "copy_existing_target_settings";
                intents.Add(new { action = "copy_existing_target_settings", source = source.GetOID(), project = project.GetOID() }); save();
                var copySettings = new InstanceMethodCall(settings, "value:value:", source);
                copySettings.appendParameter(source); copySettings.appendParameter(project); source.call(copySettings);
                string settingsResult = copySettings.ResultString;
                result["settings_" + variant] = settingsResult; save();
                if (!settingsResult.StartsWith("copied_existing_settings|")) throw new Exception(settingsResult);
                var finalGuard = AscetStructureRead.Read(project, guard, "guard", new string[0]);
                if ((string)finalGuard["target_guard"] != "passed") throw new Exception("Final Project target guard failed");
            }
            var sourceAfter = new List<string>();
            foreach (var item in source.GetAllModules()) { var instance = Keep(item); sourceAfter.Add(instance.GetName() + "/" + Keep(instance.GetRepresentedClass()).GetOID()); }
            sourceAfter.Sort(); result["source_modules_after"] = sourceAfter;
            result["source_common_fields_unchanged"] = source.GetOID() == (string)result["source_oid"]
                && source.GetNameWithPath() == (string)result["source"]
                && AscetStructureRead.Json.Serialize(AscetStructureRead.Read(source, guard, "guard", new string[0]))
                    == AscetStructureRead.Json.Serialize(sourceGuard)
                && AscetStructureRead.Json.Serialize(sourceBefore) == AscetStructureRead.Json.Serialize(sourceAfter);
            if (!(bool)result["source_common_fields_unchanged"]) throw new Exception("Business source common fields changed");
            result["status"] = "ok";
            result["stage"] = "completed";
            result["retained"] = "isolated empty fixtures for subsequent message ambiguity/edit/inverse experiments";
            exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            foreach (var temporary in new[] { guard, settings }) if (temporary != null && guardOwner != null) {
                try {
                    var release = guardOwner.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(temporary.getIdentifier()); guardOwner.call(release); release.getResultVoid();
                } catch (Exception error) { result["guard_release_error"] = error.ToString(); exit = 1; }
            }
            if (ascet != null && !ascet.nullHandle()) {
                try { var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length; }
                catch (Exception error) { result["dirty_after_error"] = error.ToString(); }
            }
            for (int i = Kept.Count - 1; i >= 0; --i) { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            save();
        }
        return exit;
    }
}
