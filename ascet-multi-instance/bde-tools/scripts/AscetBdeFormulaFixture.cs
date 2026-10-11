using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

class AscetBdeFormulaFixture
{
    static int Main(string[] args)
    {
        if (args.Length != 1 || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>();
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Ascet ascet = null; int exit = 1;
        try {
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", 32503));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; creation deferred");
            var db = ascet.GetCurrentDataBase();
            var source = db.GetItemInFolder("AEB_dFxTar", @"PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking") as CodeComponent;
            var folder = db.GetFolder("BDE_Tool_Experiments") as AscetFolder;
            if (source == null || folder == null) throw new Exception("Source or isolated folder missing");
            result["source_oid"] = source.GetOID(); result["source_path"] = source.GetNameWithPath();
            var block = AscetStructureRead.Compile(source, "bde_structure_read.st");
            result["source_before"] = AscetStructureRead.Read(source, block, "Main", new string[0]);
            result["copy_intent"] = "Trial_Formula_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss"); save();
            var copy = source.CopyToFolder((string)result["copy_intent"], folder) as CodeComponent;
            if (copy == null || copy.nullHandle()) throw new Exception("Copy failed; inspect intent before retry");
            result["component"] = copy.GetNameWithPath(); result["oid"] = copy.GetOID(); save();
            result["copy_before"] = AscetStructureRead.Read(copy, block, "Main", new string[0]);
            result["source_after"] = AscetStructureRead.Read(source, block, "Main", new string[0]);
            result["source_unchanged"] = AscetStructureRead.Json.Serialize(result["source_before"]) == AscetStructureRead.Json.Serialize(result["source_after"]);
            var release = source.createControlMessageCall("destroyObjectForId:"); release.appendParameter(block.getIdentifier()); source.call(release); release.getResultVoid();
            result["status"] = (bool)result["source_unchanged"] ? "ok" : "source_mismatch";
            exit = (bool)result["source_unchanged"] ? 0 : 1;
            copy.finalize(); GC.SuppressFinalize(copy); source.finalize(); GC.SuppressFinalize(source);
            folder.finalize(); GC.SuppressFinalize(folder); db.finalize(); GC.SuppressFinalize(db);
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally { save(); if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } }
        Environment.Exit(exit); return exit;
    }
}
