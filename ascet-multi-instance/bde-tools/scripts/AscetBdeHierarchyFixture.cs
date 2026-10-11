using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;

class AscetBdeHierarchyFixture
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();
    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing fixture API handle");
        Kept.Add(value); return value;
    }
    static long PinId(BlockDiagramElementPin pin)
    {
        var call = pin.createInstanceMethodCall("diagramElement"); pin.call(call);
        var native = call.ResultRemoteObject;
        try { var id = new InstanceMethodCall(native, "identifier", pin); pin.call(id); return id.ResultLong; }
        finally {
            var release = pin.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(native.getIdentifier()); pin.call(release); release.getResultVoid();
        }
    }
    static BlockDiagramElementPin Pin(BlockDiagramElement node, bool input, int index)
    {
        var pins = new List<BlockDiagramElementPin>();
        foreach (var item in node.GetAllPins()) {
            var pin = Keep(item);
            if (input ? pin.IsInput() : pin.IsOutput()) pins.Add(pin);
        }
        if (index >= pins.Count) throw new Exception("Fixture direction pin missing");
        return pins[index];
    }
    static BlockDiagramElementPin Internal(BlockDiagramHierarchy hierarchy, bool input)
    {
        BlockDiagramElementPin result = null;
        foreach (var item in hierarchy.GetAllInternalPins()) {
            var node = Keep(item);
            foreach (var itemPin in node.GetAllPins()) {
                var pin = Keep(itemPin);
                if (input ? pin.IsInput() : pin.IsOutput()) {
                    if (result != null) throw new Exception("Fixture internal direction is ambiguous");
                    result = pin;
                }
            }
        }
        if (result == null) throw new Exception("Fixture internal direction missing");
        return result;
    }
    static void Graph(BlockDiagram diagram, BlockDiagramHierarchy hierarchy, string scope,
        List<object> nodes, List<object> pins, List<object> edges)
    {
        foreach (var item in hierarchy == null ? diagram.GetAllDiagramElements() : hierarchy.GetAllDiagramElements()) {
            var node = Keep(item); long id = node.GetGraphicalObjectIdentifier();
            nodes.Add(new Dictionary<string, object> { {"scope", scope}, {"id", id},
                {"hierarchy", node.IsBlockDiagramHierarchy()}, {"hierarchy_pin", node.IsBlockDiagramHierarchyPin()} });
            foreach (var itemPin in node.GetAllPins()) {
                var pin = Keep(itemPin);
                pins.Add(new Dictionary<string, object> { {"scope", scope}, {"owner", id},
                    {"id", PinId(pin)}, {"name", pin.GetName()}, {"input", pin.IsInput()}, {"output", pin.IsOutput()} });
            }
            if (node.IsBlockDiagramHierarchy()) Graph(diagram, (BlockDiagramHierarchy)node, scope + "/h" + id, nodes, pins, edges);
        }
        foreach (var item in hierarchy == null ? diagram.GetAllDiagramConnections() : hierarchy.GetAllDiagramConnections()) {
            var edge = Keep(item); var source = Keep(edge.GetOutputPin()); var target = Keep(edge.GetInputPin());
            edges.Add(new Dictionary<string, object> { {"scope", scope}, {"source", PinId(source)},
                {"target", PinId(target)}, {"type", edge.GetConnectionType()} });
        }
    }
    static int Main(string[] args)
    {
        if (args.Length != 1 || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>(); Ascet ascet = null; int exit = 1;
        var timer = Stopwatch.StartNew();
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
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
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; fixture deferred");
            var db = Keep(ascet.GetCurrentDataBase()); result["database"] = db.GetName();
            var folder = Keep(db.GetFolder("BDE_Tool_Experiments") as AscetFolder);
            string name = "Trial_Hierarchy_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 6);
            result["intent"] = name; result["stage"] = "create_module_started"; save();
            var module = Keep(folder.AddModule(name, "BDE"));
            result["component"] = module.GetNameWithPath(); result["oid"] = module.GetOID(); save();
            var diagram = Keep(module.GetDiagramWithName("Main") as BlockDiagram);
            result["stage"] = "place_fixture_started"; save();
            var source = Keep(diagram.PlaceStringLiteral("1.0", 100, 100, null));
            var other = Keep(diagram.PlaceStringLiteral("2.0", 100, 260, null));
            var sum = Keep(diagram.PlaceOperator("+", 700, 180, 2, null));
            var outer = Keep(diagram.PlaceHierarchy("Stage", 350, 100, new [] { "Signal" }, new [] { "Result" }, null));
            var inner = Keep(diagram.PlaceHierarchy("Stage", 350, 100, new [] { "Signal" }, new [] { "Result" }, outer));
            if (!diagram.StoreToCache()) throw new Exception("Fixture placement store failed");
            result["outer_id"] = outer.GetGraphicalObjectIdentifier(); result["inner_id"] = inner.GetGraphicalObjectIdentifier();
            result["stage"] = "connect_fixture_started"; save();
            Keep(diagram.ConnectDiagramElementPins(Pin(source, false, 0), Pin(outer, true, 0), null, null));
            Keep(diagram.ConnectDiagramElementPins(Pin(outer, false, 0), Pin(sum, true, 0), null, null));
            Keep(diagram.ConnectDiagramElementPins(Pin(other, false, 0), Pin(sum, true, 1), null, null));
            Keep(diagram.ConnectDiagramElementPins(Internal(outer, false), Pin(inner, true, 0), null, null));
            Keep(diagram.ConnectDiagramElementPins(Pin(inner, false, 0), Internal(outer, true), null, null));
            Keep(diagram.ConnectDiagramElementPins(Internal(inner, false), Internal(inner, true), null, null));
            if (!diagram.StoreToCache()) throw new Exception("Fixture connection store failed");
            var nodes = new List<object>(); var pins = new List<object>(); var edges = new List<object>();
            Graph(diagram, null, "Main", nodes, pins, edges);
            result["public_graph"] = new Dictionary<string, object> { {"nodes", nodes}, {"pins", pins}, {"edges", edges} };
            if (nodes.Count != 9 || pins.Count != 13 || edges.Count != 6) throw new Exception("Fixture public count mismatch");
            result["recipe"] = "1.0 -> outer Signal -> inner Signal -> inner Result -> outer Result -> plus input0; 2.0 -> plus input1; both hierarchy names Stage and both port pairs Signal/Result";
            result["retained"] = "isolated fixture for subsequent read/edit validation; not reverted or business data";
            result["stage"] = "verified_public_fixture"; result["status"] = "ok"; exit = 0;
        }
        catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (ascet != null && !ascet.nullHandle()) {
                try { var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length; }
                catch (Exception error) { result["dirty_after_error"] = error.ToString(); }
            }
            for (int i = Kept.Count - 1; i >= 0; --i) { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            result["elapsed_ms"] = timer.ElapsedMilliseconds; save();
        }
        Environment.Exit(exit); return exit;
    }
}
