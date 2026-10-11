using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Isolated eval setup only. Opening an editor may create configurations;
// those effects are recorded before the formal edit/presentation baseline.
class AscetBdeEditorPrepare
{
    static readonly List<object> Kept = new List<object>();
    static readonly Dictionary<string, object> Result = new Dictionary<string, object>();
    static string Output;
    static Ascet Api;
    static T Keep<T>(T value) { if (value != null) Kept.Add(value); return value; }
    static void Save(string stage) {
        Result["stage"] = stage;
        File.WriteAllText(Output, AscetStructureRead.Json.Serialize(Result), new UTF8Encoding(false));
    }
    static object Configuration(CodeComponent component, Identifiable block) {
        var call = new InstanceMethodCall(block, "value:", component);
        call.appendParameter(component); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static int Main(string[] args) {
        if (args.Length != 5 || File.Exists(args[4]) || (args[3] != "prepare" && args[3] != "status")) return 2;
        Output = args[4]; int exit = 1;
        try {
            Result["status"] = "started"; Save("identity");
            var manifest = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
            var fixture = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[1]));
            string databasePath = (string)manifest["database"], runtime = (string)manifest["runtime"];
            string componentPath = ((string)fixture["component"]).Trim('\\'), oid = (string)fixture["oid"];
            if (!Object.Equals(fixture["passed"], true) || !componentPath.StartsWith("BDE_Tool_Experiments\\Trial_"))
                throw new Exception("Verified isolated fixture required");
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Isolated epoch changed");
            using (var process = System.Diagnostics.Process.GetProcessById(Int32.Parse(args[2].Split('/')[0])))
                if (!String.Equals(process.MainModule.FileName, Path.Combine(runtime, "ASCET.exe"), StringComparison.OrdinalIgnoreCase))
                    throw new Exception("Listener is not the manifested disposable runtime");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"))));
            Api = new Ascet(); if (Api.nullHandle()) throw new Exception("No isolated ASCET handle");
            var database = Keep(Api.GetCurrentDataBase());
            if (database == null || !String.Equals(database.GetName(), databasePath, StringComparison.OrdinalIgnoreCase))
                throw new Exception("Exact prepared database is not open");
            Result["dirty_before"] = Api.GetAllEditorsWithUnsavedChanges().Length;
            if ((int)Result["dirty_before"] != 0) throw new Exception("Unsaved editor; setup deferred");
            var component = Keep(database.GetItemInFolder(componentPath.Substring(componentPath.LastIndexOf('\\') + 1), "BDE_Tool_Experiments") as CodeComponent);
            if (component == null || component.GetOID() != oid || component.GetNameWithPath().Trim('\\') != componentPath)
                throw new Exception("Exact fixture identity mismatch");
            Result["component"] = componentPath; Result["oid"] = oid; Result["process_epoch"] = args[2];
            Result["database"] = databasePath; Result["action"] = args[3];
            var reader = Keep(AscetStructureRead.Compile(component, "bde_structure_read.st"));
            // Bind the existing Main identity root without model writes.
            Result["structure_before"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            var config = Keep(AscetStructureRead.Compile(component, "bde_class_configuration_read.st"));
            Result["configuration_before"] = Configuration(component, config);
            var editor = Keep(AscetStructureRead.Compile(component, "bde_editor_prepare.st"));
            Save("editor_dispatch_intent");
            var call = new InstanceMethodCall(editor, "value:value:", component);
            call.appendParameter(component); call.appendParameter(args[3]); component.call(call);
            Result["editor"] = call.ResultString; Save("editor_returned");
            if (!((string)Result["editor"]).StartsWith("ready|")) throw new Exception((string)Result["editor"]);
            Result["configuration_after"] = Configuration(component, config);
            Result["configuration_repeat"] = Configuration(component, config);
            Result["configuration_observation_stable"] = AscetStructureRead.Json.Serialize(Result["configuration_after"]) == AscetStructureRead.Json.Serialize(Result["configuration_repeat"]);
            Result["structure_after"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            Result["dirty_after"] = Api.GetAllEditorsWithUnsavedChanges().Length;
            if ((int)Result["dirty_after"] != 0 || !(bool)Result["configuration_observation_stable"] || AscetStructureRead.ProcessEpoch() != args[2])
                throw new Exception("Editor setup terminal proof changed");
            Result["status"] = "ok"; exit = 0;
        } catch (Exception error) { Result["status"] = "error"; Result["error"] = error.ToString(); }
        finally {
            Save("cleanup");
            for (int i = Kept.Count - 1; i >= 0; --i) {
                try {
                    var wrapper = Kept[i] as SmalltalkToolAPI;
                    if (wrapper != null) wrapper.finalize();
                    else {
                        var remote = Kept[i] as Identifiable;
                        if (remote != null && Api != null) { var release = Api.createControlMessageCall("destroyObjectForId:"); release.appendParameter(remote.getIdentifier()); Api.call(release); release.getResultVoid(); }
                    }
                } catch { }
                GC.SuppressFinalize(Kept[i]);
            }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (Api != null && !Api.nullHandle()) { Api.DisconnectFromTool(); GC.SuppressFinalize(Api); }
        }
        Save("complete"); Environment.Exit(exit); return exit;
    }
}
