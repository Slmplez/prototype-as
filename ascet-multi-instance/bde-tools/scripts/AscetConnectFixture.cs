using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.cebra.toolAPI;

// Creates only a fresh Trial Module in a verified private database. No old
// component, business source, connection edit, deletion or inverse is touched.
class AscetConnectFixture
{
    static int Main(string[] args)
    {
        if (args.Length != 4 || File.Exists(args[3]) ||
                !System.Text.RegularExpressions.Regex.IsMatch(args[2], @"^Trial_ConnectReferences_[A-Za-z0-9_]+$")) return 2;
        var result = new Dictionary<string, object> { { "passed", false },
            { "intent", args[2] }, { "stage", "identity" }, { "connection_edit_dispatched", false } };
        System.Action save = () => {
            var data = Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(result));
            using (var stream = new FileStream(args[3], FileMode.Create, FileAccess.Write, FileShare.Read)) {
                stream.Write(data, 0, data.Length); stream.Flush(true);
            }
        };
        Ascet ascet = null; var kept = new List<SmalltalkToolAPI>(); save();
        try {
            if (AscetStructureRead.ProcessEpoch() != args[0]) throw new Exception("Exact private process epoch required");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            int port = Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"));
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No private ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors; fixture deferred");
            var database = ascet.GetCurrentDataBase(); kept.Add(database);
            if (database == null || database.nullHandle() || database.GetName() != args[1])
                throw new Exception("Private database identity differs");
            var folder = database.GetFolder("BDE_Tool_Experiments") as AscetFolder; kept.Add(folder);
            if (folder == null || folder.nullHandle()) throw new Exception("Existing isolated folder required");
            var existing = database.GetItemInFolder(args[2], "BDE_Tool_Experiments");
            if (existing != null) { kept.Add(existing); if (!existing.nullHandle()) throw new Exception("Fresh fixture name already exists; no retry"); }
            result["stage"] = "create_module_started"; save();
            var module = folder.AddModule(args[2], "BDE"); kept.Add(module);
            if (module == null || module.nullHandle()) throw new Exception("Module creation outcome unavailable");
            result["component"] = module.GetNameWithPath().Trim('\\'); result["component_oid"] = module.GetOID();
            result["stage"] = "module_observed"; save();
            var diagram = module.GetDiagramWithName("Main") as BlockDiagram; kept.Add(diagram);
            if (diagram == null || diagram.nullHandle()) throw new Exception("Fresh Module Main unavailable");
            result["stage"] = "placement_started"; save();
            var literal = diagram.PlaceStringLiteral("1.0", 100, 100, null); kept.Add(literal);
            var addition = diagram.PlaceOperator("+", 300, 100, 2, null); kept.Add(addition);
            if (literal == null || addition == null || literal.nullHandle() || addition.nullHandle())
                throw new Exception("Fixture placement outcome unavailable");
            result["stage"] = "store_started"; save();
            if (!diagram.StoreToCache()) throw new Exception("Fixture cache store failed");
            result["stage"] = "stored"; save();
            var nodes = diagram.GetAllDiagramElements(); var edges = diagram.GetAllDiagramConnections();
            foreach (var node in nodes) kept.Add(node); foreach (var edge in edges) kept.Add(edge);
            if (nodes.Length != 2 || edges.Length != 0 || AscetStructureRead.ProcessEpoch() != args[0])
                throw new Exception("Fresh fixture census or process epoch differs");
            dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors changed during fixture creation");
            result["node_count"] = nodes.Length; result["edge_count"] = edges.Length;
            result["store_to_cache_called"] = true; result["stage"] = "finished"; result["passed"] = true;
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally {
            for (int i = kept.Count - 1; i >= 0; --i) if (kept[i] != null) {
                try { kept[i].finalize(); GC.SuppressFinalize(kept[i]); }
                catch (Exception error) { result["cleanup_error"] = error.ToString(); result["passed"] = false; }
            }
            if (ascet != null && !ascet.nullHandle()) {
                try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
                catch (Exception error) { result["cleanup_error"] = error.ToString(); result["passed"] = false; }
            }
            save();
        }
        return (bool)result["passed"] ? 0 : 1;
    }
}
