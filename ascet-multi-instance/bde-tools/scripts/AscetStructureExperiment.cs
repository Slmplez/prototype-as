using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed isolated native experiments. No business target or caller source accepted.
class AscetStructureExperiment
{
    static readonly List<object> kept = new List<object>();
    static readonly JavaScriptSerializer json = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue };
    static string output;
    static int step;
    static Ascet ascet;
    static T Keep<T>(T value) { if (value != null) kept.Add(value); return value; }
    static void Record(string kind, object data)
    {
        byte[] bytes = Encoding.UTF8.GetBytes(json.Serialize(new { kind = kind, utc = DateTime.UtcNow.ToString("o"), data = data }));
        using (var f = new FileStream(Path.Combine(output, (++step).ToString("D3") + "-" + kind + ".json"), FileMode.CreateNew))
        { f.Write(bytes, 0, bytes.Length); f.Flush(true); }
    }
    static InstanceMethodCall Call(SmalltalkToolAPI api, Identifiable target, string selector)
    { var call = new InstanceMethodCall(target, selector, api); api.call(call); return call; }
    static Identifiable FixedBlock(SmalltalkToolAPI api, string source)
    {
        var c = api.createClassMethodCall("EsCompiler", "evaluate:"); c.appendParameter(source); api.call(c);
        var block = Keep(c.ResultRemoteObject); string kind = api.getClassName(block);
        if (kind != "BlockContextTemplate") throw new Exception("Fixed block compile: " + kind);
        return block;
    }
    static Identifiable RetainRestore(SmalltalkToolAPI api, bool connection)
    {
        const string node = "[:api | | go parent index | go := api diagramElement. parent := go manager. index := parent children indexOf: go. [parent addGO: go display: false. parent children remove: go. parent children add: go beforeIndex: index. go identifier]]";
        const string edge = "[:api | | go parent points index | go := api diagramElement. parent := go manager. index := parent children indexOf: go. points := go connectionPoints copy. [parent addGO: go display: false. parent children remove: go. parent children add: go beforeIndex: index. points do: [:p | p isNil ifFalse: [p addConnection: go]]. go identifier]]";
        var block = FixedBlock(api, connection ? edge : node);
        var call = new InstanceMethodCall(block, "value:", api); call.appendParameter(api); api.call(call);
        return Keep(call.ResultRemoteObject);
    }
    static object Id(SmalltalkToolAPI api)
    {
        var native = Keep(Call(api, api, "diagramElement").ResultRemoteObject);
        return new { native_class = api.getClassName(native), id = Call(api, native, "identifier").ResultObject };
    }
    static object Pin(BlockDiagramElementPin p)
    {
        Keep(p); var node = Keep(p.GetBlockDiagramElement());
        object sequence = null;
        if (p.HasSequenceCall()) {
            var call = Keep(p.GetSequenceCall()); var method = Keep(call.GetSequenceActivator());
            sequence = new { number = call.GetSequenceNumber(), method = method == null || method.nullHandle() ? null : method.GetName(), position = call.GetPosition() };
        }
        return new { native = Id(p), owner = node.GetGraphicalObjectIdentifier(), name = p.GetName(), input = p.IsInput(), output = p.IsOutput(), sequence = sequence };
    }
    internal static object Graph(BlockDiagram d)
    { return Graph(d, null); }
    internal static object Graph(BlockDiagram d, BlockDiagramHierarchy hierarchy)
    {
        var nodes = new List<object>(); var edges = new List<object>(); var comments = new List<object>();
        foreach (var n in hierarchy == null ? d.GetAllDiagramElements() : hierarchy.GetAllDiagramElements())
        {
            Keep(n); var pins = new List<object>(); foreach (var p in n.GetAllPins()) pins.Add(Pin(p));
            nodes.Add(new { id = n.GetGraphicalObjectIdentifier(), kind = n.GetType().Name, position = n.GetPosition(), size = n.GetSize(), pins = pins,
                literal = n is BlockDiagramLiteral ? ((BlockDiagramLiteral)n).GetContents() : null,
                op = n is BlockDiagramOperator ? ((BlockDiagramOperator)n).GetOperatorType() : null });
        }
        foreach (var e in hierarchy == null ? d.GetAllDiagramConnections() : hierarchy.GetAllDiagramConnections())
        { Keep(e); edges.Add(new { native = Id(e), source = Pin(e.GetOutputPin()), target = Pin(e.GetInputPin()), route = e.GetSegmentCoordinatesXY(), type = e.GetConnectionType() }); }
        foreach (var c in hierarchy == null ? d.GetAllDiagramComments() : hierarchy.GetAllDiagramComments()) {
            Keep(c); comments.Add(new { native = Id(c), text = c.GetComment(), position = c.GetPosition(), size = c.GetSize() });
        }
        return new { nodes = nodes, edges = edges, comments = comments };
    }
    internal static void GraphTree(BlockDiagram d, BlockDiagramHierarchy hierarchy, string scope, Dictionary<string, object> result, int depth)
    {
        if (depth > 16 || result.Count >= 64) throw new Exception("Public hierarchy oracle bound exceeded");
        result.Add(scope, Graph(d, hierarchy));
        foreach (var item in hierarchy == null ? d.GetAllDiagramElements() : hierarchy.GetAllDiagramElements()) {
            var node = Keep(item) as BlockDiagramHierarchy;
            if (node != null) GraphTree(d, node, scope + "/h" + node.GetGraphicalObjectIdentifier(), result, depth + 1);
        }
    }
    internal static object Machine(StateMachineDiagram d)
    {
        var states = new List<object>(); var transitions = new List<object>();
        foreach (var s in d.GetAllStates())
        { Keep(s); states.Add(new { native = Id(s), name = s.GetName(), initial = s.IsStartState() }); }
        foreach (var t in d.GetAllTransitions())
        {
            Keep(t); var a = Keep(t.GetStartState()); var b = Keep(t.GetEndState());
            var native = Keep(Call(t, t, "diagramElement").ResultRemoteObject);
            var info = Keep(Call(t, native, "transitionInfoGO").ResultRemoteObject);
            var slots = new List<object>();
            foreach (string slot in new [] { "action1MethodCall", "action2MethodCall", "action3MethodCall" })
            {
                var get = new InstanceMethodCall(info, "instVarNamed:", t); get.appendParameter(slot); t.call(get);
                var method = Keep(get.ResultRemoteObject);
                slots.Add(new { slot = slot, alias = Call(t, method, "aliasName").ResultObject, identifier = Call(t, method, "identifier").ResultObject });
            }
            transitions.Add(new { native = Id(t), source = a == null ? null : Id(a), target = b == null ? null : Id(b), priority = t.GetPriority(), condition = t.GetConditionESDL(), action = t.GetActionESDL(), method_calls = slots });
        }
        return new { states = states, transitions = transitions };
    }
    static BlockDiagramElementPin Choose(BlockDiagramElement node, bool input, int index)
    {
        var matches = new List<BlockDiagramElementPin>();
        foreach (var p in node.GetAllPins()) { Keep(p); if (input ? p.IsInput() : p.IsOutput()) matches.Add(p); }
        if (index >= matches.Count) throw new Exception("Fixture missing pin");
        return matches[index];
    }
    static void Data(AscetFolder folder, string name)
    {
        Record("create_data_intent", new { name = name });
        var component = Keep(folder.AddClass(name, "BDE"));
        if (component == null || component.nullHandle()) throw new Exception("Cannot create data fixture");
        Record("data_identity", new { path = component.GetNameWithPath(), oid = component.GetOID() });
        var d = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
        var literal = Keep(d.PlaceStringLiteral("1.0", 100, 100, null));
        var other = Keep(d.PlaceStringLiteral("2.0", 100, 220, null));
        var op = Keep(d.PlaceOperator("+", 300, 120, 2, null));
        if (literal == null || other == null || op == null) throw new Exception("Fixture placement failed");
        if (!d.StoreToCache()) throw new Exception("Fixture store failed");
        Record("data_before", Graph(d));
        var outputPin = Choose(literal, false, 0); var inputPin = Choose(op, true, 0);
        Record("connect_started", new { source = Pin(outputPin), target = Pin(inputPin) });
        var connection = Keep(d.ConnectDiagramElementPins(outputPin, inputPin, null, null));
        if (connection == null || connection.nullHandle()) throw new Exception("Connect returned no handle");
        if (!d.StoreToCache()) throw new Exception("Connect store failed");
        Record("data_connected", Graph(d));
        var actual = d.GetAllDiagramConnections();
        if (actual.Length != 1) throw new Exception("Expected one actual connection");
        connection = Keep(actual[0]);
        var edgeBefore = Graph(d);
        Record("rewire_started", new { source = Pin(outputPin), replacement = Pin(Choose(other, false, 0)) });
        var diagnose = FixedBlock(d, "[:edge :oldPin :newPin | | g a b | g := edge diagramElement. a := oldPin diagramElement getExternalConnectorGO. b := newPin diagramElement getExternalConnectorGO. g class name asString, '|', a class name asString, '|', b class name asString, '|', (a respondsTo: #connectionPoint) printString, '|', (g respondsTo: #replaceConnectionPin:with:) printString]");
        var diag = new InstanceMethodCall(diagnose, "value:value:value:", d); diag.appendParameter(connection); diag.appendParameter(outputPin); diag.appendParameter(Choose(other, false, 0)); d.call(diag);
        Record("rewire_diagnostic", diag.ResultString);
        var rewire = FixedBlock(d, "[:edge :oldPin :newPin | edge handleExceptionsIn: [| g a b i | g := edge diagramElement. a := oldPin diagramElement getExternalConnectorGO. b := newPin diagramElement getExternalConnectorGO. i := g connectionPoints indexOf: a connectionPoint. i = 0 ifTrue: [edge error: 'source mismatch']. g removeConnectionPoint: i. g addConnectionPoint: b connectionPoint. g oldConnectionPoint: nil. b connectionPoints. g basicGraphObject linkPoint: i moveTo: b connectionPoint position. 'ok'] ifFail: [:e | e printString, e arguments printString]]");
        var swap = new InstanceMethodCall(rewire, "value:value:value:", d);
        swap.appendParameter(connection); swap.appendParameter(outputPin); swap.appendParameter(Choose(other, false, 0)); d.call(swap);
        string rewired = swap.ResultString;
        if (rewired != "ok" || !d.StoreToCache()) throw new Exception("Native rewire failed: " + rewired);
        Record("data_rewired", Graph(d));
        if (d.GetAllDiagramConnections()[0].GetOutputPin().GetBlockDiagramElement().GetGraphicalObjectIdentifier() != other.GetGraphicalObjectIdentifier()) throw new Exception("Wrong rewire source");
        Record("rewire_reverse_started", new { source = Pin(outputPin) });
        swap = new InstanceMethodCall(rewire, "value:value:value:", d);
        swap.appendParameter(connection); swap.appendParameter(Choose(other, false, 0)); swap.appendParameter(outputPin); d.call(swap);
        rewired = swap.ResultString;
        if (rewired != "ok" || !d.StoreToCache()) throw new Exception("Native reverse rewire failed: " + rewired);
        Record("data_rewire_reversed", new { before = edgeBefore, actual = Graph(d) });
        // Native rewire may normalize routing. The actual geometry is evidence,
        // not an assertion that reversing endpoints restores the old polyline.
        edgeBefore = Graph(d);
        var edgeRestore = RetainRestore(connection, true);
        Record("disconnect_started", Id(connection));
        bool removed = d.RemoveDiagramConnection(connection);
        bool stored = d.StoreToCache();
        Record("data_disconnected", new { removed = removed, stored = stored, actual = Graph(d) });
        if (!removed || !stored || d.GetAllDiagramConnections().Length != 0) throw new Exception("Disconnect did not remove target");
        Record("restore_connection_started", new { guarantee = "same live object; experiment only, not crash durable" });
        Record("restore_connection_returned", Call(d, edgeRestore, "value").ResultObject);
        stored = d.StoreToCache();
        var edgeAfter = Graph(d);
        Record("data_connection_restored", new { stored = stored, equal = json.Serialize(edgeBefore) == json.Serialize(edgeAfter), actual = edgeAfter });
        if (!stored || json.Serialize(edgeBefore) != json.Serialize(edgeAfter)) throw new Exception("Connection exact projection restore failed");
        var nodeBefore = Graph(d); var nodeRestore = RetainRestore(other, false);
        Record("delete_node_started", Id(other));
        removed = d.RemoveDiagramElement(other); stored = d.StoreToCache();
        Record("data_node_deleted", new { removed = removed, stored = stored, actual = Graph(d) });
        if (!removed || !stored || d.GetAllDiagramElements().Length != 2) throw new Exception("Node removal did not remove target");
        Record("restore_node_started", new { guarantee = "same live object; experiment only, not crash durable" });
        Record("restore_node_returned", Call(d, nodeRestore, "value").ResultObject);
        stored = d.StoreToCache();
        var nodeAfter = Graph(d);
        Record("data_node_restored", new { stored = stored, equal = json.Serialize(nodeBefore) == json.Serialize(nodeAfter), before = nodeBefore, actual = nodeAfter });
        if (!stored || json.Serialize(nodeBefore) != json.Serialize(nodeAfter)) throw new Exception("Node exact projection restore failed");
    }
    static void StateMachine(AscetFolder folder, string name)
    {
        Record("create_sm_intent", new { name = name });
        var component = Keep(folder.AddStateMachine(name));
        if (component == null || component.nullHandle()) throw new Exception("Cannot create state fixture");
        Record("sm_identity", new { path = component.GetNameWithPath(), oid = component.GetOID() });
        var d = Keep(component.GetDiagram() as StateMachineDiagram);
        if (d == null) throw new Exception("No state diagram");
        var a = Keep(d.PlaceState("Idle", 100, 100, null));
        var b = Keep(d.PlaceState("Active", 350, 100, null));
        if (a == null || b == null || !d.StoreToCache()) throw new Exception("State placement failed");
        Record("sm_before", Machine(d));
        Record("transition_create_started", new { source = Id(a), target = Id(b) });
        var first = Keep(d.ConnectStateToState(a, 160, 110, b, 350, 110));
        var second = Keep(d.ConnectStateToState(a, 160, 130, b, 350, 130));
        if (first == null || second == null || !d.StoreToCache()) throw new Exception("Transition creation failed");
        Record("sm_connected", Machine(d));
        if (d.GetAllTransitions().Length != 2) throw new Exception("Parallel transitions collapsed");
        Record("transition_edit_started", Id(first));
        bool priority = first.SetPriority(3), condition = first.SetConditionESDL("true");
        bool stored = d.StoreToCache();
        Record("sm_updated", new { priority = priority, condition = condition, stored = stored, actual = Machine(d) });
        if (!priority || !condition || !stored || first.GetPriority() != 3) throw new Exception("Transition edit failed");
        if (second.GetPriority() != 1 || second.GetConditionESDL() != null) throw new Exception("Unrelated parallel transition changed");
        var transitionBefore = Machine(d); var transitionRestore = RetainRestore(first, true);
        // Native API removal is shared by BD and SM; public SM has no wrapper.
        Record("transition_delete_started", Id(first));
        var call = new InstanceMethodCall(d, "removeDiagramObject:", d); call.appendParameter(first); d.call(call);
        Keep(call.ResultRemoteObject); stored = d.StoreToCache();
        Record("sm_deleted", new { stored = stored, actual = Machine(d) });
        if (!stored || d.GetAllTransitions().Length != 1) throw new Exception("Transition deletion failed");
        Record("restore_transition_started", new { guarantee = "same live object; experiment only, not crash durable" });
        Record("restore_transition_returned", Call(d, transitionRestore, "value").ResultObject);
        stored = d.StoreToCache();
        var transitionAfter = Machine(d);
        Record("sm_restored", new { stored = stored, equal = json.Serialize(transitionBefore) == json.Serialize(transitionAfter), before = transitionBefore, actual = transitionAfter });
        if (!stored || json.Serialize(transitionBefore) != json.Serialize(transitionAfter)) throw new Exception("Transition exact projection restore failed");
    }
    static int Main(string[] args)
    {
        if (args.Length != 2 || (args[1] != "data" && args[1] != "state")) return 2;
        output = args[0]; if (!Directory.Exists(output)) return 2;
        int exit = 1;
        try
        {
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = Keep(new Ascet()); if (ascet.nullHandle()) throw new Exception("No API handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editor changes; deferred");
            var db = Keep(ascet.GetCurrentDataBase());
            if (db == null) throw new Exception("No database");
            string dbName = db.GetName(); Record("database", new { name = dbName });
            if (!String.Equals(dbName, @"D:\ETASData\ASCET6.4\Database\AEB_1", StringComparison.OrdinalIgnoreCase)) throw new Exception("Unexpected database: " + dbName);
            var folder = Keep(db.GetAscetFolder("BDE_Tool_Experiments"));
            if (folder == null || folder.nullHandle()) throw new Exception("Missing sandbox folder");
            string name = "Trial_" + args[1] + "_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss");
            if (args[1] == "data") Data(folder, name); else StateMachine(folder, name);
            Record("result", new { status = "passed_native_operations", limitations = "Isolated research only; no identity-preserving restore or production integration verified" }); exit = 0;
        }
        catch (Exception e) { Record("error", new { error = e.ToString() }); }
        finally
        {
            for (int i = kept.Count - 1; i >= 0; --i)
            { var w = kept[i] as SmalltalkToolAPI; if (w != null && !(w is Ascet)) { w.finalize(); GC.SuppressFinalize(w); } }
            kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        Environment.Exit(exit); return exit;
    }
}
