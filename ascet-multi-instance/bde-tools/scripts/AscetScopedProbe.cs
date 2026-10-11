using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Research reader: Main graph topology/sequence/literal/layout only. No setters.
// Unlike AscetReadProbe, this deliberately does not claim complete model semantics.
class AscetScopedProbe
{
    static readonly List<object> kept = new List<object>();
    static readonly Dictionary<long, Dictionary<string, object>> pins = new Dictionary<long, Dictionary<string, object>>();
    static readonly List<KeyValuePair<long, BlockDiagramConnection>> connections = new List<KeyValuePair<long, BlockDiagramConnection>>();
    static InstanceMethodCall Call(ToolAPI api, Identifiable target, string selector)
    {
        var call = new InstanceMethodCall(target, selector, api);
        api.call(call);
        return call;
    }
    static T Keep<T>(T value) { if (value != null) kept.Add(value); return value; }
    static long NativeId(AbstractBlockDiagramElement value)
    {
        var native = Keep(Call(value, value, "diagramElement").ResultRemoteObject);
        return Call(value, native, "identifier").ResultLong;
    }
    static T Require<T>(T value, string operation) where T : class
    {
        if (value == null) throw new Exception(operation + " returned null");
        return Keep(value);
    }
    static Dictionary<string, object> ReadPin(BlockDiagramElementPin pin, long? owner)
    {
        Keep(pin);
        long id = NativeId(pin);
        Dictionary<string, object> cached;
        if (pins.TryGetValue(id, out cached)) return cached;
        if (!owner.HasValue) owner = Require(pin.GetBlockDiagramElement(), "GetBlockDiagramElement").GetGraphicalObjectIdentifier();
        var row = new Dictionary<string, object> {
            {"native_id", id}, {"node_id", owner.Value}, {"name", pin.GetName()},
            {"input", pin.IsInput()}, {"output", pin.IsOutput()}
        };
        if (pin.HasSequenceCall())
        {
            var sequence = Require(pin.GetSequenceCall(), "GetSequenceCall");
            var activator = Keep(sequence.GetSequenceActivator());
            row["sequence"] = new { number = sequence.GetSequenceNumber(), activator = activator == null || activator.nullHandle() ? null : activator.GetName() };
        }
        pins.Add(id, row);
        return row;
    }
    static BlockDiagramElement Typed(BlockDiagram diagram, Identifiable handle)
    {
        string type = diagram.getClassName(handle);
        switch (type)
        {
            case "EtasAPIBlockDiagramFunctionalElement": return Keep(new BlockDiagramFunctionalElement(diagram, handle));
            case "EtasAPIBlockDiagramHierarchy": return Keep(new BlockDiagramHierarchy(diagram, handle));
            case "EtasAPIBlockDiagramHierarchyPin": return Keep(new BlockDiagramHierarchyPin(diagram, handle));
            case "EtasAPIBlockDiagramOperator": return Keep(new BlockDiagramOperator(diagram, handle));
            case "EtasAPIBlockDiagramControl": return Keep(new BlockDiagramControlElement(diagram, handle));
            case "EtasAPIBlockDiagramLiteral": return Keep(new BlockDiagramLiteral(diagram, handle));
            default: throw new Exception("Unsupported node wrapper: " + type);
        }
    }
    static List<BlockDiagramElement> Select(BlockDiagram diagram, HashSet<long> targets, string strategy)
    {
        var selected = new List<BlockDiagramElement>();
        if (strategy == "public")
        {
            foreach (var node in Require(diagram.GetAllDiagramElements(), "GetAllDiagramElements"))
            {
                Keep(node);
                long id = node.GetGraphicalObjectIdentifier();
                if (id < 0) throw new Exception("Invalid node identity");
                if (targets.Count == 0 || targets.Contains(id)) selected.Add(node);
            }
        }
        else if (strategy == "handles")
        {
            // Same source collection as public GetAllDiagramElements, but defer
            // wrapper class dispatch until after selecting exact identifiers.
            var collection = Keep(Call(diagram, diagram, "getAllDiagramElements").ResultRemoteObject);
            var serialize = diagram.createControlMessageCall("serialize:");
            serialize.appendParameter(collection); diagram.call(serialize);
            foreach (var handle in serialize.ResultRemoteObjectArray)
            {
                Keep(handle);
                long id = Call(diagram, handle, "identifier").ResultLong;
                if (targets.Count == 0 || targets.Contains(id)) selected.Add(Typed(diagram, handle));
            }
        }
        else throw new Exception("Unknown strategy");
        if (targets.Count > 0 && selected.Count != targets.Count) throw new Exception("Target missing or ambiguous in Main");
        return selected;
    }
    static object Read(BlockDiagram diagram, HashSet<long> targets, string strategy, bool layout)
    {
        var nodes = new List<object>();
        var selectedPinIds = new HashSet<long>();
        var selected = Select(diagram, targets, strategy);
        foreach (var node in selected)
        {
            long id = node.GetGraphicalObjectIdentifier();
            var row = new Dictionary<string, object> { {"id", id}, {"kind", node.GetType().Name} };
            var literal = node as BlockDiagramLiteral;
            if (literal != null) row["literal"] = Require(literal.GetContents(), "GetContents");
            var op = node as BlockDiagramOperator;
            if (op != null) row["operator"] = op.GetOperatorType();
            var functional = node as BlockDiagramFunctionalElement;
            if (functional != null) row["name"] = Require(functional.GetModelElement(), "GetModelElement").GetName();
            if (layout)
            {
                row["position"] = Require(node.GetPosition(), "GetPosition");
                row["size"] = Require(node.GetSize(), "GetSize");
            }
            var nodePins = new List<object>();
            foreach (var pin in Require(node.GetAllPins(), "GetAllPins"))
            {
                var pinRow = ReadPin(pin, id);
                long pinId = (long)pinRow["native_id"];
                selectedPinIds.Add(pinId);
                nodePins.Add(pinRow);
                if (targets.Count > 0)
                    foreach (var edge in Require(pin.GetAllBlockDiagramConnections(), "GetAllBlockDiagramConnections"))
                    {
                        Keep(edge);
                        // Connection native identifiers may be -1 for every edge.
                        // Preserve occurrences; never deduplicate by that value.
                        connections.Add(new KeyValuePair<long, BlockDiagramConnection>(pinId, edge));
                    }
            }
            row["pins"] = nodePins;
            row["child_graph"] = node is BlockDiagramHierarchy ? "not_collected" : "not_applicable";
            nodes.Add(row);
        }
        if (targets.Count == 0)
            foreach (var edge in Require(diagram.GetAllDiagramConnections(), "GetAllDiagramConnections"))
            {
                Keep(edge); connections.Add(new KeyValuePair<long, BlockDiagramConnection>(-1, edge));
            }
        var edges = new List<object>();
        foreach (var pair in connections)
        {
            var edge = pair.Value;
            var input = ReadPin(Require(edge.GetInputPin(), "GetInputPin"), null);
            var output = ReadPin(Require(edge.GetOutputPin(), "GetOutputPin"), null);
            // An edge may occur in both selected endpoint adjacency lists. Emit
            // its output-side occurrence when selected, otherwise input-side.
            // Parallel edges in the chosen list remain separate occurrences.
            long ownerPin = selectedPinIds.Contains((long)output["native_id"]) ? (long)output["native_id"] : (long)input["native_id"];
            if (targets.Count > 0 && pair.Key != ownerPin) continue;
            int type = edge.GetConnectionType();
            if (type < 0) throw new Exception("GetConnectionType failed");
            var row = new Dictionary<string, object> {
                {"observation_index", edges.Count}, {"input", input["native_id"]}, {"output", output["native_id"]}, {"type", type}
            };
            if (layout) row["points"] = Require(edge.GetSegmentCoordinatesXY(), "GetSegmentCoordinatesXY");
            edges.Add(row);
        }
        return new { nodes = nodes, pins = pins.Values, edges = edges };
    }
    static int Main(string[] args)
    {
        var result = new Dictionary<string, object>();
        var timer = Stopwatch.StartNew();
        Ascet ascet = null;
        try
        {
            if (args.Length != 5) throw new Exception("Expected component output public|handles targets(comma or all) layout|semantic");
            int port = 32503;
            string configured = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            if (configured != null) port = Int32.Parse(configured);
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port));
            ascet = Require(new Ascet(), "Ascet");
            if (ascet.nullHandle()) throw new Exception("ASCET returned null API handle; application initialization may be incomplete");
            var db = Require(ascet.GetCurrentDataBase(), "GetCurrentDataBase");
            result["database"] = db.GetName();
            var running = System.Diagnostics.Process.GetProcessesByName("ASCET");
            result["ascet_process_epoch"] = running.Length == 1 ? running[0].Id + "/" + running[0].StartTime.ToUniversalTime().ToString("o") : null;
            var dirty = Require(ascet.GetAllEditorsWithUnsavedChanges(), "dirty editors before");
            result["dirty_before"] = dirty.Length;
            int split = args[0].LastIndexOf('\\');
            var item = Require(db.GetItemInFolder(args[0].Substring(split + 1), args[0].Substring(0, split).Trim('\\')), "GetItemInFolder");
            if (!String.Equals(item.GetNameWithPath().Trim('\\'), args[0].Trim('\\'), StringComparison.Ordinal)) throw new Exception("Resolved path mismatch");
            result["component"] = item.GetNameWithPath(); result["oid"] = item.GetOID();
            var component = item as CodeComponent;
            if (component == null) throw new Exception("Not a code component");
            var diagram = Require(component.GetDiagramWithName("Main"), "Main");
            if (diagram is StateMachineDiagram || !(diagram is BlockDiagram)) throw new Exception("Only BlockDiagram Main supported in this experiment");
            var targets = new HashSet<long>();
            if (args[3] != "all") foreach (string value in args[3].Split(',')) targets.Add(Int64.Parse(value));
            result["attach_resolve_ms"] = timer.ElapsedMilliseconds;
            var readTimer = Stopwatch.StartNew();
            result["graph"] = Read((BlockDiagram)diagram, targets, args[2], args[4] == "layout");
            result["read_ms"] = readTimer.ElapsedMilliseconds;
            result["dirty_after"] = Require(ascet.GetAllEditorsWithUnsavedChanges(), "dirty editors after").Length;
            result["strategy"] = args[2]; result["targets"] = args[3]; result["layout"] = args[4] == "layout";
            result["uncollected"] = new string[] {"model types/formulas/configuration", "method bodies", "nested graph contents", "state machine"};
            result["consistency"] = "non_atomic_observation";
            result["status"] = "ok";
        }
        catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally
        {
            // SmalltalkToolAPI's destructor sends destroyObjectForId. Release
            // retained wrappers and drain other finalizers before closing the
            // transport; after DisconnectFromTool those calls race socket exit.
            var cleanupTimer = Stopwatch.StartNew();
            var released = new HashSet<SmalltalkToolAPI>();
            for (int i = kept.Count - 1; i >= 0; --i)
            {
                var wrapper = kept[i] as SmalltalkToolAPI;
                if (wrapper != null && !(wrapper is Ascet) && released.Add(wrapper))
                {
                    wrapper.finalize();
                    GC.SuppressFinalize(wrapper);
                }
            }
            kept.Clear(); connections.Clear();
            GC.Collect(); GC.WaitForPendingFinalizers();
            result["cleanup"] = new { policy = "release_before_disconnect", wrappers_released = released.Count,
                elapsed_ms = cleanupTimer.ElapsedMilliseconds, acknowledgement = "finalize_swallows_errors" };
            // A failed API initialization must not block forever during cleanup.
            if (ascet != null)
            {
                if (!ascet.nullHandle()) ascet.DisconnectFromTool();
                GC.SuppressFinalize(ascet);
            }
            result["elapsed_ms"] = timer.ElapsedMilliseconds;
            result["observed_at_utc"] = DateTime.UtcNow.ToString("o");
            if (args.Length > 1) File.WriteAllText(args[1], new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue }.Serialize(result), new UTF8Encoding(false));
        }
        Environment.Exit((string)result["status"] == "ok" ? 0 : 1);
        return (string)result["status"] == "ok" ? 0 : 1;
    }
}
