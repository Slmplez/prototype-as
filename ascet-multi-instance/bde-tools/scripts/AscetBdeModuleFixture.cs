using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

// Messages are module declarations. Never change a business class to a module.
class AscetBdeModuleFixture
{
    static int Main(string[] args)
    {
        if(args.Length != 1 || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>();
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Ascet ascet = null;
        int exit = 1;
        try {
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", 32503));
            ascet = new Ascet();
            if(ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if(dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; fixture deferred");
            var database = ascet.GetCurrentDataBase();
            var folder = database.GetFolder("BDE_Tool_Experiments") as AscetFolder;
            if(folder == null) throw new Exception("Isolated folder missing");
            string name = "Trial_Messages_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss");
            result["intent"] = name; save();
            var module = folder.AddModule(name, "BDE");
            if(module == null || module.nullHandle()) throw new Exception("Module creation failed; inspect intent before retry");
            result["component"] = module.GetNameWithPath(); result["oid"] = module.GetOID(); save();
            var diagram = module.GetDiagramWithName("Main") as BlockDiagram;
            if(diagram == null || diagram.nullHandle()) throw new Exception("Module Main unavailable");
            result["public_before"] = AscetStructureExperiment.Graph(diagram);
            result["status"] = "ok"; exit = 0;
        } catch(Exception e) { result["error"] = e.ToString(); }
        finally { save(); if(ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } }
        Environment.Exit(exit); return exit;
    }
}
