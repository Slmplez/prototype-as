using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

// Fixed business source is read/copied only. All new items stay in the trial folder.
class AscetBdeCreationFixture
{
    static int Main(string[] args)
    {
        if (args.Length != 1 || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>();
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Ascet ascet = null;
        int exit = 1;
        try {
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", 32503));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; creation deferred");
            var db = ascet.GetCurrentDataBase();
            var source = db.GetItemInFolder("AEB_Core", @"PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core") as CodeComponent;
            var folder = db.GetFolder("BDE_Tool_Experiments") as AscetFolder;
            if (source == null || folder == null) throw new Exception("Source or isolated folder missing");
            result["source_oid"] = source.GetOID(); result["source_path"] = source.GetNameWithPath();
            var before = AscetStructureExperiment.Graph((BlockDiagram)source.GetDiagramWithName("Main"));
            result["source_before"] = before;
            string suffix = DateTime.UtcNow.ToString("yyyyMMdd_HHmmss");
            result["copy_intent"] = "Trial_AEB_Core_" + suffix; save();
            var copy = source.CopyToFolder((string)result["copy_intent"], folder) as CodeComponent;
            if (copy == null || copy.nullHandle()) throw new Exception("Copy failed; inspect intent before retry");
            result["component"] = copy.GetNameWithPath(); result["oid"] = copy.GetOID(); save();
            result["copy_before"] = AscetStructureExperiment.Graph((BlockDiagram)copy.GetDiagramWithName("Main"));
            var declarations = new List<object>();
            foreach(var model in copy.GetAllModelElements()) declarations.Add(new {name=model.GetName(), kind=model.GetType().Name});
            result["models"] = declarations;
            result["enum_intent"] = "Trial_Enum_" + suffix; save();
            var enumeration = folder.AddEnumeration((string)result["enum_intent"]);
            if (enumeration == null || enumeration.nullHandle() || !enumeration.SetEnumerators(new [] {"Off", "On", "Fault"})) throw new Exception("Enumeration fixture failed");
            result["enum_path"] = enumeration.GetNameWithPath(); result["enum_oid"] = enumeration.GetOID();
            var after = AscetStructureExperiment.Graph((BlockDiagram)source.GetDiagramWithName("Main"));
            result["source_after"] = after;
            result["source_unchanged"] = AscetStructureRead.Json.Serialize(before) == AscetStructureRead.Json.Serialize(after);
            result["status"] = (bool)result["source_unchanged"] ? "ok" : "source_mismatch";
            exit = (bool)result["source_unchanged"] ? 0 : 1;
        } catch(Exception e) { result["error"] = e.ToString(); }
        finally { save(); if(ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } }
        Environment.Exit(exit); return exit;
    }
}
