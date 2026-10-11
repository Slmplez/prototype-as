using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetClassInterfaceProbe
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();
    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing API handle");
        Kept.Add(value); return value;
    }
    static string Alias(SmalltalkToolAPI api, string nativeSelector, string aliasSelector)
    {
        var nativeCall = api.createInstanceMethodCall(nativeSelector); api.call(nativeCall);
        var native = nativeCall.ResultRemoteObject;
        try {
            var call = new InstanceMethodCall(native, aliasSelector, api); api.call(call);
            var bytes = call.ResultObject as byte[];
            if (bytes != null) return "bytes:" + BitConverter.ToString(bytes).Replace("-", "").ToLowerInvariant();
            var value = call.ResultObject as string;
            if (value != null) return "string:" + value;
            throw new Exception("Unsupported interface identity");
        } finally {
            var release = api.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(native.getIdentifier()); api.call(release); release.getResultVoid();
        }
    }
    static object Formal(AscetModelElement formal, string slot, int index)
    {
        return new Dictionary<string, object> { {"alias", Alias(formal, "element", "xmlOID")},
            {"name", formal.GetName()}, {"slot", slot}, {"index", index} };
    }
    internal static object PublicRead(AscetClass component)
    {
        var rows = new List<object>();
        foreach (var item in component.GetAllDiagrams()) {
            var diagram = Keep(item) as DiscreteMethodDiagram;
            if (diagram == null) continue;
            foreach (var value in diagram.GetAllMethods()) {
                var method = Keep(value); var arguments = new List<object>(); int index = 0;
                foreach (var formal in method.GetAllArgumentElements()) arguments.Add(Formal(Keep(formal), "argument", ++index));
                var returned = method.GetReturnElement();
                rows.Add(new Dictionary<string, object> { {"alias", Alias(method, "method", "aliasName")},
                    {"name", method.GetName()}, {"diagram", diagram.GetName()}, {"arguments", arguments},
                    {"return", returned == null || returned.nullHandle() ? null : Formal(Keep(returned), "return", 0)} });
            }
        }
        return rows;
    }
    static object NativeRead(AscetClass component, Identifiable block)
    {
        var call = new InstanceMethodCall(block, "value:", component);
        call.appendParameter(component); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_CLASS_PROBE_ERROR:")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static int Main(string[] args)
    {
        if (args.Length != 2 || File.Exists(args[1])) return 2;
        var result = new Dictionary<string, object>(); var blocks = new List<Identifiable>();
        Ascet ascet = null; AscetClass component = null; int exit = 1;
        try {
            string path = args[0].Trim('\\');
            if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) throw new Exception("Sandbox only");
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
            var database = Keep(ascet.GetCurrentDataBase());
            int slash = path.LastIndexOf('\\');
            component = Keep(database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as AscetClass);
            result["oid"] = component.GetOID(); result["database"] = database.GetName();
            var reader = AscetStructureRead.Compile(component, "bde_structure_read.st"); blocks.Add(reader);
            result["graph_before"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            var probe = AscetStructureRead.Compile(component, "bde_class_interface_probe.st"); blocks.Add(probe);
            result["public_before"] = PublicRead(component); result["before"] = NativeRead(component, probe);
            result["public_after"] = PublicRead(component); result["after"] = NativeRead(component, probe);
            result["graph_after"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            result["unchanged"] = AscetStructureRead.Json.Serialize(result["before"]) == AscetStructureRead.Json.Serialize(result["after"])
                && AscetStructureRead.Json.Serialize(result["public_before"]) == AscetStructureRead.Json.Serialize(result["public_after"])
                && AscetStructureRead.Json.Serialize(result["graph_before"]) == AscetStructureRead.Json.Serialize(result["graph_after"]);
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (!(bool)result["unchanged"] || dirty == null || dirty.Length != 0) throw new Exception("Probe changed model/editor state");
            result["model_setters_called"] = 0; result["status"] = "ok"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (component != null) foreach (var block in blocks) {
                try { var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid(); }
                catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            }
            for (int i = Kept.Count - 1; i >= 0; --i) try { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); } catch { }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } catch { }
            File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        }
        return exit;
    }
}
