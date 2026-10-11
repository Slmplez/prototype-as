using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Research only: fixed isolated fixture and fixed native templates. No model edits.
class AscetBdeHierarchyViewProbe
{
    static int Main(string[] args)
    {
        if (args.Length != 3 || File.Exists(args[0]) || (args[2] != "map" && args[2] != "route" && args[2] != "overlay_guard")) return 2;
        var result = new Dictionary<string, object>();
        Action<string> save = stage => { result["stage"] = stage; File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false)); };
        Ascet ascet = null; AscetDataBase db = null; CodeComponent component = null;
        var blocks = new List<Identifiable>(); int exit = 1;
        try {
            result["status"] = "started"; save("process_guard");
            var domain = AscetStructureRead.Json.Deserialize<Dictionary<string,string>>(File.ReadAllText(args[1]));
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1 || processes[0].Id + "/" + processes[0].StartTime.ToUniversalTime().ToString("o") != domain["process_epoch"]) throw new Exception("Stale ASCET process");
            Cebra.initCebraToolIndependent(false,false,null,null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            result["dirty_before"] = ascet.GetAllEditorsWithUnsavedChanges().Length;
            if ((int)result["dirty_before"] != 0) throw new Exception("Unsaved editors; probe deferred");
            db = ascet.GetCurrentDataBase();
            if (!String.Equals(db.GetName(), @"d:\ETASData\ASCET6.4\Database\AEB_1", StringComparison.OrdinalIgnoreCase) || !String.Equals(db.GetName(), domain["database"], StringComparison.OrdinalIgnoreCase)) throw new Exception("Unexpected database");
            component = db.GetItemInFolder("Trial_Hierarchy_20261001_100722_242e00", "BDE_Tool_Experiments") as CodeComponent;
            if (component == null || component.GetOID() != "040ts00000001qg7180gki3t9j306" || component.GetOID() != domain["oid"]) throw new Exception("Wrong isolated fixture");
            save("compile_read");
            var reader = AscetStructureRead.Compile(component, "bde_structure_read.st"); blocks.Add(reader);
            var before = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            result["before"] = before;
            save("compile_view");
            var probe = AscetStructureRead.Compile(component, "bde_hierarchy_view_probe.st"); blocks.Add(probe);
            save("dispatch_" + args[2]);
            var call = new InstanceMethodCall(probe, "value:value:value:", component);
            call.appendParameter(component); call.appendParameter(args[2]); call.appendParameter(new string[0]); component.call(call);
            result["native_outcome"] = call.ResultString; save("returned");
            var after = AscetStructureRead.Read(component, reader, "Main", new string[0]); result["after"] = after;
            result["native_structure_unchanged"] = AscetStructureRead.Json.Serialize(before) == AscetStructureRead.Json.Serialize(after);
            result["dirty_after"] = ascet.GetAllEditorsWithUnsavedChanges().Length;
            string outcome = (string)result["native_outcome"];
            if (outcome.StartsWith("BDE_VIEW_ERROR:")) throw new Exception(outcome);
            result["proof"] = AscetStructureRead.Json.DeserializeObject(outcome);
            if (!(bool)result["native_structure_unchanged"] || (int)result["dirty_after"] != 0) throw new Exception("Post-probe graph or dirty mismatch");
            result["status"] = "ok"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            save("cleanup");
            if (component != null && ascet != null) foreach (var block in blocks) {
                var c = ascet.createControlMessageCall("destroyObjectForId:"); c.appendParameter(block.getIdentifier()); ascet.call(c); c.getResultVoid();
            }
            foreach (SmalltalkToolAPI api in new SmalltalkToolAPI[] { component, db }) if (api != null) { api.finalize(); GC.SuppressFinalize(api); }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        save("complete"); Environment.Exit(exit); return exit;
    }
}
