using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetBdeClassFixture
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();
    static readonly List<KeyValuePair<CodeComponent, Identifiable>> Blocks = new List<KeyValuePair<CodeComponent, Identifiable>>();
    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing fixture API handle");
        Kept.Add(value); return value;
    }
    static Identifiable Compile(CodeComponent component, string resource)
    {
        var value = AscetStructureRead.Compile(component, resource);
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, value)); return value;
    }
    static BlockDiagramElement Place(CodeComponent component, AscetModelElement model)
    { return Place(component, model, "Main"); }
    static BlockDiagramElement Place(CodeComponent component, AscetModelElement model, string scope)
    {
        var call = new InstanceMethodCall(Compile(component, "bde_class_fixture_place.st"), "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(model); call.appendParameter(scope); component.call(call);
        string answer = call.ResultString;
        if (answer.StartsWith("BDE_CLASS_FIXTURE_ERROR:")) throw new Exception(answer);
        long id = Int64.Parse(answer, System.Globalization.CultureInfo.InvariantCulture);
        var diagram = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
        var hierarchy = Hierarchy(diagram, scope);
        foreach (var item in hierarchy == null ? diagram.GetAllDiagramElements() : hierarchy.GetAllDiagramElements()) {
            var node = Keep(item);
            if (node.GetGraphicalObjectIdentifier() == id) return node;
        }
        throw new Exception("Placed fixture node absent");
    }
    static BlockDiagramHierarchy Hierarchy(BlockDiagram diagram, string scope)
    {
        BlockDiagramHierarchy current = null;
        var parts = scope.Split('/');
        if (parts[0] != "Main" || parts.Length > 17) throw new Exception("Invalid fixture scope");
        for (int i = 1; i < parts.Length; ++i) {
            long id = Int64.Parse(parts[i].Substring(1)); BlockDiagramHierarchy found = null;
            foreach (var node in current == null ? diagram.GetAllDiagramElements() : current.GetAllDiagramElements()) {
                var hierarchy = Keep(node) as BlockDiagramHierarchy;
                if (hierarchy != null && hierarchy.GetGraphicalObjectIdentifier() == id) {
                    if (found != null) throw new Exception("Ambiguous fixture hierarchy"); found = hierarchy;
                }
            }
            if (found == null) throw new Exception("Missing fixture hierarchy"); current = found;
        }
        return current;
    }
    static BlockDiagramElementPin Pin(BlockDiagramElement node, bool input, string suffix)
    {
        BlockDiagramElementPin result = null;
        foreach (var item in node.GetAllPins()) {
            var pin = Keep(item);
            if ((input ? pin.IsInput() : pin.IsOutput()) && (suffix == null || pin.GetName().EndsWith(suffix))) {
                if (result != null) throw new Exception("Ambiguous fixture pin");
                result = pin;
            }
        }
        if (result == null) throw new Exception("Missing fixture pin");
        return result;
    }
    static BlockDiagramElement Node(BlockDiagram diagram, long id)
    { return Node(diagram, id, "Main"); }
    static BlockDiagramElement Node(BlockDiagram diagram, long id, string scope)
    {
        BlockDiagramElement result = null;
        var hierarchy = Hierarchy(diagram, scope);
        foreach (var item in hierarchy == null ? diagram.GetAllDiagramElements() : hierarchy.GetAllDiagramElements()) {
            var node = Keep(item);
            if (node.GetGraphicalObjectIdentifier() != id) continue;
            if (result != null) throw new Exception("Ambiguous fixture node");
            result = node;
        }
        if (result == null) throw new Exception("Missing fixture node");
        return result;
    }
    static void Extended(AscetDataBase database, AscetFolder folder, Dictionary<string, object> result, System.Action save, bool mixed)
    {
        string suffix = DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 6);
        string prefix = mixed ? "Trial_General" : "Trial_Interface";
        var names = mixed ? new[] { prefix + "Class_" + suffix, prefix + "Caller0_" + suffix,
            prefix + "Caller1_" + suffix, prefix + "Caller2_" + suffix } :
            new[] { prefix + "Class_" + suffix, prefix + "Caller0_" + suffix, prefix + "Caller1_" + suffix };
        result["intents"] = names; result["stage"] = "extended_class_creation_started"; save();
        var child = Keep(folder.AddClass(names[0], "BDE"));
        result["component"] = child.GetNameWithPath(); result["oid"] = child.GetOID(); save();
        var methodDiagram = Keep(child.GetDiagramWithName("Main") as DiscreteMethodDiagram);
        result["stage"] = "extended_signature_creation_started"; save();
        string methodName = mixed ? "aggregate" : "transform", otherName = mixed ? "diagnose" : "untouched";
        var argumentNames = mixed ? new[] { "Torque", "Acceleration", "Offset" } : new[] { "Primary", "Secondary" };
        var method = Keep(methodDiagram.AddMethod(methodName));
        var arguments = new List<AscetModelElement>();
        foreach (string name in argumentNames) arguments.Add(Keep(method.AddPrimitiveArgumentElement(name, "cont")));
        var returned = Keep(method.AddPrimitiveReturnElement("cont"));
        var other = Keep(methodDiagram.AddMethod(otherName));
        Keep(other.AddPrimitiveArgumentElement(argumentNames[0], "cont")); Keep(other.AddPrimitiveReturnElement("cont"));
        result["stage"] = "extended_body_placement_started"; save();
        var argumentIds = new List<long>();
        foreach (var argument in arguments) argumentIds.Add(Place(child, argument).GetGraphicalObjectIdentifier());
        long returnId = Place(child, returned).GetGraphicalObjectIdentifier();
        var body = Keep(child.GetDiagramWithName("Main") as BlockDiagram);
        var op = Keep(body.PlaceOperator("+", 900, 200, arguments.Count, null));
        if (!body.StoreToCache()) throw new Exception("Extended body placement store failed");
        long opId = op.GetGraphicalObjectIdentifier();
        body = Keep(child.GetDiagramWithName("Main") as BlockDiagram); op = Node(body, opId) as BlockDiagramOperator;
        var inputPins = new List<BlockDiagramElementPin>(); foreach (var pin in op.GetAllPins()) if (Keep(pin).IsInput()) inputPins.Add(pin);
        if (inputPins.Count != arguments.Count) throw new Exception("Extended body operator inputs missing");
        result["stage"] = "extended_body_connections_started"; save();
        for (int i = 0; i < arguments.Count; ++i)
            Keep(body.ConnectDiagramElementPins(Pin(Node(body, argumentIds[i]), false, null), inputPins[i], null, null));
        Keep(body.ConnectDiagramElementPins(Pin(op, false, null), Pin(Node(body, returnId), true, null), null, null));
        if (!body.StoreToCache()) throw new Exception("Extended body edge store failed");
        var callers = new List<object>(); result["callers"] = callers;
        for (int owner = 0; owner < names.Length - 1; ++owner) {
            result["stage"] = "extended_caller_creation_started_" + owner; save();
            CodeComponent caller = mixed && owner == 0 ? (CodeComponent)Keep(folder.AddClass(names[owner + 1], "BDE")) :
                (CodeComponent)Keep(folder.AddModule(names[owner + 1], "BDE"));
            var row = new Dictionary<string, object> { {"component", caller.GetNameWithPath()}, {"oid", caller.GetOID()},
                {"owner_kind", mixed && owner == 0 ? "Class" : "Module"} };
            callers.Add(row); save();
            var diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram); string scope = "Main";
            if (owner == 1) {
                result["stage"] = "extended_hierarchy_outer_started"; save();
                var outer = Keep(diagram.PlaceHierarchy("Outer", 200, 200, new string[0], new string[0], null));
                if (!diagram.StoreToCache()) throw new Exception("Outer hierarchy store failed");
                scope += "/h" + outer.GetGraphicalObjectIdentifier();
                diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram); outer = Hierarchy(diagram, scope);
                result["stage"] = "extended_hierarchy_inner_started"; save();
                var inner = Keep(diagram.PlaceHierarchy("Inner", 300, 200, new string[0], new string[0], outer));
                if (!diagram.StoreToCache()) throw new Exception("Inner hierarchy store failed");
                scope += "/h" + inner.GetGraphicalObjectIdentifier();
                if (mixed) {
                    diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram); inner = Hierarchy(diagram, scope);
                    result["stage"] = "mixed_hierarchy_deep_started"; save();
                    var deep = Keep(diagram.PlaceHierarchy("Deep", 400, 200, new string[0], new string[0], inner));
                    if (!diagram.StoreToCache()) throw new Exception("Deep hierarchy store failed");
                    scope += "/h" + deep.GetGraphicalObjectIdentifier();
                }
            }
            var instances = new List<object>(); row["instances"] = instances;
            AscetModelElement repeatedModel = null;
            for (int index = 0; index < (owner == 0 ? 2 : 1); ++index) {
                result["stage"] = "extended_instance_started_" + owner + "_" + index; save();
                var model = mixed && owner == 0 && index == 1 ? repeatedModel : Keep(caller.AddComponent(child, "Instance" + index));
                repeatedModel = model;
                long nodeId = Place(caller, model, scope).GetGraphicalObjectIdentifier();
                var sink = Keep(caller is AscetClass ? ((AscetClass)caller).AddVariable("Sink" + index) :
                    ((AscetModule)caller).AddVariable("Sink" + index));
                long sinkId = Place(caller, sink, scope).GetGraphicalObjectIdentifier();
                var otherSink = Keep(caller is AscetClass ? ((AscetClass)caller).AddVariable("OtherSink" + index) :
                    ((AscetModule)caller).AddVariable("OtherSink" + index));
                long otherSinkId = Place(caller, otherSink, scope).GetGraphicalObjectIdentifier();
                diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
                var hierarchy = Hierarchy(diagram, scope);
                var literals = new List<BlockDiagramElement>();
                for (int i = 0; i < arguments.Count; ++i)
                    literals.Add(Keep(diagram.PlaceStringLiteral((i + 1) + ".0", 100, 100 + i * 80 + index * 320, hierarchy)));
                if (!diagram.StoreToCache()) throw new Exception("Extended literals store failed");
                var literalIds = new List<long>(); foreach (var literal in literals) literalIds.Add(literal.GetGraphicalObjectIdentifier());
                diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram); var node = Node(diagram, nodeId, scope);
                result["stage"] = "extended_instance_connections_started_" + owner + "_" + index; save();
                for (int i = 0; i < arguments.Count; ++i)
                    Keep(diagram.ConnectDiagramElementPins(Pin(Node(diagram, literalIds[i], scope), false, null), Pin(node, true, methodName + "/" + argumentNames[i]), null, null));
                Keep(diagram.ConnectDiagramElementPins(Pin(node, false, methodName + "/" + methodName), Pin(Node(diagram, sinkId, scope), true, null), null, null));
                Keep(diagram.ConnectDiagramElementPins(Pin(Node(diagram, literalIds[0], scope), false, null), Pin(node, true, otherName + "/" + argumentNames[0]), null, null));
                Keep(diagram.ConnectDiagramElementPins(Pin(node, false, otherName + "/" + otherName), Pin(Node(diagram, otherSinkId, scope), true, null), null, null));
                if (!diagram.StoreToCache()) throw new Exception("Extended caller edge store failed");
                instances.Add(new Dictionary<string, object> { {"name", model.GetName()}, {"node_id", nodeId}, {"diagram", scope} }); save();
            }
            var tree = new Dictionary<string, object>(); diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
            AscetStructureExperiment.GraphTree(diagram, null, "Main", tree, 0);
            row["graph"] = tree["Main"]; row["public_tree"] = tree; save();
        }
        result["class_interface"] = Native(child, "bde_class_interface_probe.st");
        result["class_graph"] = AscetStructureExperiment.Graph(Keep(child.GetDiagramWithName("Main") as BlockDiagram));
        result["recipe"] = mixed ? "Three arguments plus diagnose method; one Class and two Module callers; four occurrences including a repeated declaration and three nested hierarchy levels; all data formals connected" :
            "Default void calc plus transform/untouched methods; transform has two arguments and an addition body; two Module owners/three calls including Main/Outer/Inner; all data formals/returns connected, including untouched method for layout closure evidence";
        result["fixture_variant"] = mixed ? "mixed" : "extended";
    }
    static object Native(CodeComponent component, string resource)
    {
        var call = new InstanceMethodCall(Compile(component, resource), "value:", component);
        call.appendParameter(component); component.call(call);
        string value = call.ResultString;
        if (value.StartsWith("BDE_CLASS_PROBE_ERROR:")) throw new Exception(value);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
    }
    static int Main(string[] args)
    {
        if ((args.Length != 1 && args.Length != 2) || File.Exists(args[0])) return 2;
        var result = new Dictionary<string, object>(); Ascet ascet = null; int exit = 1;
        System.Action save = () => File.WriteAllText(args[0], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        try {
            result["ascet_process_epoch"] = AscetStructureRead.ProcessEpoch();
            string expectedEpoch = Environment.GetEnvironmentVariable("ASCET_BD_FIXTURE_EPOCH");
            string expectedDatabase = Environment.GetEnvironmentVariable("ASCET_BD_FIXTURE_DATABASE");
            if (String.IsNullOrEmpty(expectedEpoch) || String.IsNullOrEmpty(expectedDatabase) ||
                    expectedEpoch != (string)result["ascet_process_epoch"])
                throw new Exception("Manifested disposable fixture endpoint required before setters");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors");
            result["dirty_before"] = dirty.Length;
            var database = Keep(ascet.GetCurrentDataBase()); result["database"] = database.GetName();
            if (!String.Equals(database.GetName(), expectedDatabase, StringComparison.OrdinalIgnoreCase) ||
                    AscetStructureRead.ProcessEpoch() != expectedEpoch)
                throw new Exception("Manifested fixture database/epoch changed before setters");
            var folder = Keep(database.GetFolder("BDE_Tool_Experiments") as AscetFolder);
            if (args.Length == 2 && (args[1] == "extended" || args[1] == "mixed")) {
                Extended(database, folder, result, save, args[1] == "mixed");
                dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
                if (dirty == null || dirty.Length != 0 || (string)result["ascet_process_epoch"] != AscetStructureRead.ProcessEpoch())
                    throw new Exception("Fixture editor/endpoint changed");
                result["status"] = "ok"; result["stage"] = "fixture_complete"; exit = 0; return exit;
            }
            var resume = args.Length == 2 ? AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[1])) : null;
            string suffix = DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 6);
            string className = "Trial_InterfaceClass_" + suffix;
            var intents = resume == null ? new [] { className, "Trial_InterfaceCaller0_" + suffix, "Trial_InterfaceCaller1_" + suffix }
                : AscetStructureRead.Json.ConvertToType<string[]>(resume["intents"]);
            result["intents"] = intents; result["stage"] = "class_creation_started"; save();
            AscetClass child;
            if (resume == null) child = Keep(folder.AddClass(className, "BDE"));
            else {
                if ((string)resume["stage"] != "baseline_body_edge_started" || (string)resume["status"] != "error")
                    throw new Exception("Only independently observed empty-body edge failures can resume");
                child = Keep(database.GetItemInFolder(intents[0], "BDE_Tool_Experiments") as AscetClass);
                if (child.GetOID() != (string)resume["oid"]) throw new Exception("Resume Class identity mismatch");
                result["resumed_from"] = args[1]; result["stage"] = "resume_read_only_checks"; save();
            }
            result["component"] = child.GetNameWithPath(); result["oid"] = child.GetOID(); save();
            var childDiagram = Keep(child.GetDiagramWithName("Main") as DiscreteMethodDiagram);
            DiscreteMethod method = null;
            foreach (var item in childDiagram.GetAllMethods()) {
                var found = Keep(item);
                if (found.GetName() == "calc") method = found;
            }
            if (method == null) { result["stage"] = "method_creation_started"; save(); method = Keep(childDiagram.AddMethod("calc")); }
            long inputId, returnId;
            if (resume == null) {
                result["stage"] = "baseline_argument_started"; save();
                var argument = Keep(method.AddPrimitiveArgumentElement("Signal", "cont"));
                result["stage"] = "baseline_argument_completed"; save();
                result["stage"] = "baseline_return_started"; save();
                var returned = Keep(method.AddPrimitiveReturnElement("cont"));
                result["stage"] = "baseline_return_completed"; save();
                result["stage"] = "baseline_input_placement_started"; save();
                inputId = Place(child, argument).GetGraphicalObjectIdentifier();
                result["input_node_id"] = inputId;
                result["stage"] = "baseline_input_placement_completed"; save();
                result["stage"] = "baseline_return_placement_started"; save();
                returnId = Place(child, returned).GetGraphicalObjectIdentifier();
                result["return_node_id"] = returnId;
                result["stage"] = "baseline_return_placement_completed"; save();
            } else {
                var arguments = method.GetAllArgumentElements();
                if (arguments.Length != 1 || Keep(arguments[0]).GetName() != "calc/Signal"
                    || Keep(method.GetReturnElement()).GetName() != "calc/return") throw new Exception("Resume signature mismatch");
                inputId = Convert.ToInt64(resume["input_node_id"]); returnId = Convert.ToInt64(resume["return_node_id"]);
                result["input_node_id"] = inputId; result["return_node_id"] = returnId;
            }
            var body = Keep(child.GetDiagramWithName("Main") as BlockDiagram);
            if (body.GetAllDiagramElements().Length != 2 || body.GetAllDiagramConnections().Length != 0)
                throw new Exception("Fixture body must contain exactly the two unconnected formal nodes");
            var inputNode = Node(body, inputId); var returnNode = Node(body, returnId);
            result["stage"] = "baseline_body_edge_started"; save();
            Keep(body.ConnectDiagramElementPins(Pin(inputNode, false, null), Pin(returnNode, true, null), null, null));
            result["stage"] = "baseline_body_edge_completed"; save();
            result["stage"] = "baseline_body_store_started"; save();
            if (!body.StoreToCache()) throw new Exception("Class body store failed");
            result["stage"] = "baseline_body_store_completed"; save();
            var callers = new List<object>(); result["callers"] = callers;
            for (int index = 0; index < 2; ++index) {
                result["stage"] = "caller_creation_started_" + index; save();
                var caller = Keep(folder.AddModule(intents[index + 1], "BDE"));
                var row = new Dictionary<string, object> { {"component", caller.GetNameWithPath()}, {"oid", caller.GetOID()} };
                callers.Add(row); save();
                var diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
                var occurrences = new List<object>(); row["instances"] = occurrences;
                int count = index == 0 ? 2 : 1;
                for (int instanceIndex = 0; instanceIndex < count; ++instanceIndex) {
                    result["stage"] = "caller_instance_started_" + index + "_" + instanceIndex; save();
                    var model = Keep(caller.AddComponent(child, "Instance" + instanceIndex));
                    result["stage"] = "caller_instance_completed_" + index + "_" + instanceIndex; save();
                    result["stage"] = "caller_placement_started_" + index + "_" + instanceIndex; save();
                    var node = Place(caller, model);
                    result["stage"] = "caller_placement_completed_" + index + "_" + instanceIndex; save();
                    diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
                    result["stage"] = "caller_literal_started_" + index + "_" + instanceIndex; save();
                    var literal = Keep(diagram.PlaceStringLiteral("1.0", 100, 100 + instanceIndex * 220, null));
                    result["stage"] = "caller_literal_completed_" + index + "_" + instanceIndex; save();
                    result["stage"] = "caller_literal_store_started_" + index + "_" + instanceIndex; save();
                    if (!diagram.StoreToCache()) throw new Exception("Caller literal store failed");
                    result["stage"] = "caller_literal_store_completed_" + index + "_" + instanceIndex; save();
                    result["stage"] = "caller_sink_started_" + index + "_" + instanceIndex; save();
                    var sinkModel = Keep(caller.AddVariable("Sink" + instanceIndex));
                    result["stage"] = "caller_sink_model_completed_" + index + "_" + instanceIndex; save();
                    result["stage"] = "caller_sink_placement_started_" + index + "_" + instanceIndex; save();
                    var sink = Place(caller, sinkModel);
                    result["stage"] = "caller_sink_placement_completed_" + index + "_" + instanceIndex; save();
                    // Resolve all endpoints in one current wrapper after placements have stored the graph.
                    diagram = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
                    node = Node(diagram, node.GetGraphicalObjectIdentifier());
                    literal = Node(diagram, literal.GetGraphicalObjectIdentifier()) as BlockDiagramLiteral;
                    sink = Node(diagram, sink.GetGraphicalObjectIdentifier());
                    result["stage"] = "caller_input_edge_started_" + index + "_" + instanceIndex; save();
                    Keep(diagram.ConnectDiagramElementPins(Pin(literal, false, null), Pin(node, true, "/Signal"), null, null));
                    result["stage"] = "caller_input_edge_completed_" + index + "_" + instanceIndex; save();
                    result["stage"] = "caller_output_edge_started_" + index + "_" + instanceIndex; save();
                    Keep(diagram.ConnectDiagramElementPins(Pin(node, false, null), Pin(sink, true, null), null, null));
                    result["stage"] = "caller_output_edge_completed_" + index + "_" + instanceIndex; save();
                    occurrences.Add(new Dictionary<string, object> { {"name", model.GetName()}, {"node_id", node.GetGraphicalObjectIdentifier()} });
                    result["stage"] = "caller_store_started_" + index + "_" + instanceIndex; save();
                    if (!diagram.StoreToCache()) throw new Exception("Caller store failed");
                    result["stage"] = "caller_store_completed_" + index + "_" + instanceIndex;
                    save();
                }
                row["graph"] = AscetStructureExperiment.Graph(Keep(caller.GetDiagramWithName("Main") as BlockDiagram)); save();
            }
            result["class_interface"] = Native(child, "bde_class_interface_probe.st");
            result["class_graph"] = AscetStructureExperiment.Graph(Keep(child.GetDiagramWithName("Main") as BlockDiagram));
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("Fixture leaves dirty editors");
            result["recipe"] = "Class calc/Signal -> calc/return body; two Module callers, first with two Class instances, second with one; independent literal -> instance -> sink edges";
            result["retained"] = "isolated fixture for subsequent interface experiments; business originals untouched";
            result["status"] = "ok"; result["stage"] = "fixture_complete"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            foreach (var pair in Blocks) try {
                var release = pair.Key.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(pair.Value.getIdentifier()); pair.Key.call(release); release.getResultVoid();
            } catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            for (int i = Kept.Count - 1; i >= 0; --i) try { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); } catch { }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } catch { }
            save();
        }
        return exit;
    }
}
