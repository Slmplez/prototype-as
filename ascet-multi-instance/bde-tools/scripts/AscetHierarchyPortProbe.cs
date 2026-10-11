using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetHierarchyPortProbe
{
    static int Main(string[] args)
    {
        if (args.Length != 3 || File.Exists(args[2])) return 2;
        var result = new Dictionary<string, object>();
        var kept = new List<SmalltalkToolAPI>();
        var blocks = new List<Identifiable>();
        Ascet ascet = null; CodeComponent component = null; int exit = 1;
        try {
            string path = args[0].Trim('\\');
            if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) throw new Exception("Sandbox only");
            if (!System.Text.RegularExpressions.Regex.IsMatch(args[1], @"^Main(?:/h[0-9]+){0,16}$")) throw new Exception("Canonical scope required");
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1) throw new Exception("One ASCET process required");
            result["ascet_process_epoch"] = processes[0].Id + "/" + processes[0].StartTime.ToUniversalTime().ToString("o");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors");
            result["dirty_before"] = dirty.Length;
            var database = ascet.GetCurrentDataBase(); kept.Add(database);
            int slash = path.LastIndexOf('\\');
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (component == null || component.nullHandle()) throw new Exception("Component missing");
            kept.Add(component); result["oid"] = component.GetOID(); result["database"] = database.GetName();
            var reader = AscetStructureRead.Compile(component, "bde_structure_read.st"); blocks.Add(reader);
            var before = AscetStructureRead.Read(component, reader, args[1], new string[0]); result["before"] = before;
            var probe = AscetStructureRead.Compile(component, "bde_hierarchy_port_probe.st"); blocks.Add(probe);
            var call = new InstanceMethodCall(probe, "value:value:", component);
            call.appendParameter(component); call.appendParameter(args[1]); component.call(call);
            string text = call.ResultString;
            if (text.StartsWith("BDE_PORT_PROBE_ERROR:")) throw new Exception(text);
            result["ports"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
            var after = AscetStructureRead.Read(component, reader, args[1], new string[0]); result["after"] = after;
            result["unchanged"] = AscetStructureRead.Json.Serialize(before) == AscetStructureRead.Json.Serialize(after);
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (!(bool)result["unchanged"] || dirty == null || dirty.Length != 0) throw new Exception("Read probe changed the observation/editor");
            result["model_setters_called"] = 0; result["status"] = "ok"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (component != null) foreach (var block in blocks) {
                try { var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid(); }
                catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            }
            for (int i = kept.Count - 1; i >= 0; --i) try { kept[i].finalize(); GC.SuppressFinalize(kept[i]); } catch { }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } catch { }
            File.WriteAllText(args[2], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        }
        return exit;
    }
}
