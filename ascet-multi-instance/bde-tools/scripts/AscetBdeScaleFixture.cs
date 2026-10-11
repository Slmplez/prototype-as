using System;
using System.IO;
using System.Text;
using System.Diagnostics;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;

class AscetBdeScaleFixture
{
    static int Main(string[] args)
    {
        int count;
        if (args.Length != 2 || File.Exists(args[1]) || !Int32.TryParse(args[0], out count)
            || (count != 10 && count != 100 && count != 1000)) return 2;
        var result = new Dictionary<string, object>();
        System.Action save = () => File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Ascet ascet = null; int exit = 1; var timer = Stopwatch.StartNew();
        try {
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1) throw new Exception("Expected one ASCET process");
            result["ascet_process_epoch"] = processes[0].Id + "/" + processes[0].StartTime.ToUniversalTime().ToString("o");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; fixture deferred");
            var database = ascet.GetCurrentDataBase();
            result["database"] = database.GetName();
            var folder = database.GetFolder("BDE_Tool_Experiments") as AscetFolder;
            if (folder == null || folder.nullHandle()) throw new Exception("Isolated folder missing");
            result["intent"] = "Trial_Scale_" + count + "_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss");
            result["nodes_requested"] = count; save();
            var module = folder.AddModule((string)result["intent"], "BDE");
            if (module == null || module.nullHandle()) throw new Exception("Fixture creation failed; inspect intent before retry");
            result["component"] = module.GetNameWithPath(); result["oid"] = module.GetOID(); save();
            var block = AscetStructureRead.Compile(module, "bde_scale_fixture.st");
            try {
                var generate = new InstanceMethodCall(block, "value:value:value:", module);
                generate.appendParameter(module); generate.appendParameter("Main"); generate.appendParameter(count.ToString());
                module.call(generate);
                string status = generate.ResultString;
                if (status != "ok") throw new Exception(status);
            } finally {
                var release = module.createControlMessageCall("destroyObjectForId:"); release.appendParameter(block.getIdentifier()); module.call(release); release.getResultVoid();
            }
            result["generation_ms"] = timer.ElapsedMilliseconds;
            var diagram = module.GetDiagramWithName("Main") as BlockDiagram;
            var nodes = diagram.GetAllDiagramElements();
            if (nodes.Length != count || diagram.GetAllDiagramConnections().Length != 0) throw new Exception("Independent public count mismatch");
            var seen = new HashSet<long>();
            var recipeIndexes = new HashSet<int>();
            var specs = new List<object>();
            for (int i = 0; i < nodes.Length; ++i) {
                var literal = nodes[i] as BlockDiagramLiteral;
                if (literal == null || !seen.Add(literal.GetGraphicalObjectIdentifier())) throw new Exception("Public node type/identity mismatch");
                var pos = literal.GetPosition(); var size = literal.GetSize(); var pins = literal.GetAllPins();
                int anchorX = Convert.ToInt32(pos.GetValue(0)) + Convert.ToInt32(size.GetValue(0)) / 2;
                int anchorY = Convert.ToInt32(pos.GetValue(1)) + Convert.ToInt32(size.GetValue(1)) / 2;
                int column = (anchorX - 100) / 120, row = (anchorY - 100) / 60;
                int recipeIndex = row * 20 + column + 1;
                string expected = (recipeIndex % 5 + 1).ToString();
                if (anchorX < 100 || anchorY < 100 || column >= 20
                    || (anchorX - 100) % 120 != 0 || (anchorY - 100) % 60 != 0
                    || recipeIndex > count || !recipeIndexes.Add(recipeIndex) || literal.GetContents() != expected)
                    throw new Exception("Public fixture position/value mismatch");
                if (pins.Length != 1 || !pins[0].IsOutput() || pins[0].IsInput()) throw new Exception("Public fixture pin mismatch");
                specs.Add(new { id = literal.GetGraphicalObjectIdentifier(), recipe_index = recipeIndex,
                    text = expected, position = pos, size = size });
                pins[0].finalize(); GC.SuppressFinalize(pins[0]); literal.finalize(); GC.SuppressFinalize(literal);
            }
            result["public_specs"] = specs;
            result["recipe"] = "N literal nodes, text=(i%5)+1; 20 columns, 120 by 60 anchor spacing; public enumeration order is not insertion order; no data edges, definitions or process bodies";
            result["status"] = "ok"; exit = 0;
            diagram.finalize(); GC.SuppressFinalize(diagram); module.finalize(); GC.SuppressFinalize(module);
            folder.finalize(); GC.SuppressFinalize(folder); database.finalize(); GC.SuppressFinalize(database);
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally {
            result["elapsed_ms"] = timer.ElapsedMilliseconds; save();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        Environment.Exit(exit); return exit;
    }
}
