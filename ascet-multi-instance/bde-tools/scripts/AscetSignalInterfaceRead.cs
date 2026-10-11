using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

public class AscetSignalInterfaceRead
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();

    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing public API handle");
        Kept.Add(value); return value;
    }

    static string Alias(AscetModelElement model)
    {
        var elementCall = model.createInstanceMethodCall("element"); model.call(elementCall);
        var element = elementCall.ResultRemoteObject;
        try {
            var call = new InstanceMethodCall(element, "xmlOID", model); model.call(call);
            var bytes = call.ResultObject as byte[];
            if (bytes != null) return "bytes:" + BitConverter.ToString(bytes).Replace("-", "").ToLowerInvariant();
            var text = call.ResultObject as string;
            if (text != null) return "string:" + text;
            throw new Exception("Unsupported public alias representation");
        }
        finally {
            var release = model.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(element.getIdentifier()); model.call(release); release.getResultVoid();
        }
    }

    static long PinId(BlockDiagramElementPin pin)
    {
        var nativeCall = pin.createInstanceMethodCall("diagramElement"); pin.call(nativeCall);
        var native = nativeCall.ResultRemoteObject;
        try {
            var id = new InstanceMethodCall(native, "identifier", pin); pin.call(id); return id.ResultLong;
        }
        finally {
            var release = pin.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(native.getIdentifier()); pin.call(release); release.getResultVoid();
        }
    }

    static object Formal(AscetModelElement m)
    {
        return new Dictionary<string, object> {
            {"alias", Alias(m)}, {"name", m.GetName()}, {"argument", m.IsMethodArgument()},
            {"return", m.IsMethodReturn()}, {"local", m.IsMethodLocal()}
        };
    }

    static string MethodAlias(AbstractMethod method)
    {
        // The API wrapper's aliasName encodes the native alias as a display string.
        var nativeCall = method.createInstanceMethodCall("method"); method.call(nativeCall);
        var native = nativeCall.ResultRemoteObject;
        try {
            var call = new InstanceMethodCall(native, "aliasName", method); method.call(call);
            var bytes = call.ResultObject as byte[];
            if (bytes != null) return "bytes:" + BitConverter.ToString(bytes).Replace("-", "").ToLowerInvariant();
            var text = call.ResultObject as string;
            if (text != null) return "string:" + text;
            throw new Exception("Unsupported method alias representation");
        }
        finally {
            var release = method.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(native.getIdentifier()); method.call(release); release.getResultVoid();
        }
    }

    static List<object> MethodMembers(CodeComponent owner)
    {
        var rows = new List<object>();
        if (!(owner is AscetClass)) return rows;
        foreach (var item in owner.GetAllDiagrams()) {
            var diagram = Keep(item) as DiscreteMethodDiagram;
            if (diagram == null) continue;
            foreach (var itemMethod in diagram.GetAllMethods()) {
                var method = Keep(itemMethod);
                string alias = MethodAlias(method), name = method.GetName();
                var members = new List<AscetModelElement>();
                members.AddRange(method.GetAllArgumentElements());
                members.AddRange(method.GetAllLocalElements());
                var returnElement = method.GetReturnElement();
                if (returnElement != null && !returnElement.nullHandle()) members.Add(returnElement);
                foreach (var member in members) {
                    var row = (Dictionary<string,object>)Formal(Keep(member));
                    row["method_alias"] = alias; row["method_name"] = name; rows.Add(row);
                    if (rows.Count > 4096) throw new Exception("Public method membership bound exceeded");
                }
            }
        }
        return rows;
    }

    static List<object> Formals(CodeComponent owner)
    {
        AscetModelElement[] elements;
        if (owner is AscetClass) elements = ((AscetClass)owner).GetMethodElements();
        else if (owner is AscetModule) elements = ((AscetModule)owner).GetProcessElements();
        else elements = new AscetModelElement[0];
        if (elements == null || elements.Length > 4096) throw new Exception("Invalid public method elements");
        var rows = new List<object>(); foreach (var m in elements) rows.Add(Formal(Keep(m)));
        return rows;
    }

    static List<object> Fields(CodeComponent owner)
    {
        var elements = owner.GetAllModelElements();
        if (elements == null || elements.Length > 4096) throw new Exception("Invalid public field elements");
        var rows = new List<object>();
        foreach (var item in elements) {
            var m = Keep(item);
            if (!m.IsMethodArgument() && !m.IsMethodReturn() && !m.IsMethodLocal())
                rows.Add(new Dictionary<string, object> { {"alias", Alias(m)}, {"name", m.GetName()} });
        }
        return rows;
    }

    static void Graph(BlockDiagram diagram, BlockDiagramHierarchy hierarchy, string scope, int depth,
        List<object> nodes, List<object> pins, List<object> edges)
    {
        if (depth > 8) throw new Exception("Public hierarchy depth bound exceeded");
        var elements = hierarchy == null ? diagram.GetAllDiagramElements() : hierarchy.GetAllDiagramElements();
        var connections = hierarchy == null ? diagram.GetAllDiagramConnections() : hierarchy.GetAllDiagramConnections();
        if (elements == null || connections == null) throw new Exception("Public graph enumeration failed");
        foreach (var item in elements) {
            var n = Keep(item); var id = n.GetGraphicalObjectIdentifier();
            var nodeRow = new Dictionary<string, object> { {"scope", scope}, {"id", id},
                {"hierarchy", n.IsBlockDiagramHierarchy()}, {"hierarchy_pin", n.IsBlockDiagramHierarchyPin()} };
            if (n.IsBlockDiagramFunctionalElement()) {
                var model = Keep(((BlockDiagramFunctionalElement)n).GetModelElement());
                nodeRow["model_alias"] = Alias(model);
                if (model.IsComplex()) nodeRow["definition_oid"] = Keep(model.GetRepresentedClass() as CodeComponent).GetOID();
            }
            nodes.Add(nodeRow);
            if (nodes.Count > 4096) throw new Exception("Public node bound exceeded");
            var allPins = n.GetAllPins(); if (allPins == null) throw new Exception("Public pins unavailable");
            foreach (var itemPin in allPins) {
                var p = Keep(itemPin);
                pins.Add(new Dictionary<string, object> { {"scope", scope}, {"owner", id},
                    {"id", PinId(p)}, {"name", p.GetName()}, {"input", p.IsInput()}, {"output", p.IsOutput()} });
                if (pins.Count > 16384) throw new Exception("Public pin bound exceeded");
            }
            if (n.IsBlockDiagramHierarchy()) Graph(diagram, (BlockDiagramHierarchy)n, scope + "/h" + id, depth + 1, nodes, pins, edges);
        }
        foreach (var item in connections) {
            var edge = Keep(item); var source = Keep(edge.GetOutputPin()); var target = Keep(edge.GetInputPin());
            edges.Add(new Dictionary<string, object> { {"scope", scope}, {"source", PinId(source)},
                {"target", PinId(target)}, {"type", edge.GetConnectionType()} });
            if (edges.Count > 16384) throw new Exception("Public edge bound exceeded");
        }
    }

    static Dictionary<string, object> PublicRead(CodeComponent component, string name)
    {
        var models = new List<object>(); var definitions = new List<object>(); var seen = new HashSet<string>();
        var elements = component.GetAllModelElements(); if (elements == null) throw new Exception("Public model enumeration failed");
        foreach (var item in elements) {
            var m = Keep(item);
            if (m.IsMethodArgument() || m.IsMethodReturn() || m.IsMethodLocal()) continue;
            var row = new Dictionary<string, object> { {"alias", Alias(m)}, {"name", m.GetName()},
                {"scope", m.GetScope()}, {"imported", m.IsImported()}, {"exported", m.IsExported()},
                {"message", m.IsMessage()}, {"send", m.IsSendMessage()}, {"receive", m.IsReceiveMessage()},
                {"send_receive", m.IsSendReceiveMessage()}, {"complex", m.IsComplex()} };
            if (m.IsComplex()) {
                var definition = Keep(m.GetRepresentedClass() as CodeComponent); var oid = definition.GetOID();
                row["definition_oid"] = oid;
                if (seen.Add(oid)) definitions.Add(new Dictionary<string, object> { {"oid", oid},
                    {"path", definition.GetNameWithPath()}, {"fields", Fields(definition)}, {"formals", Formals(definition)} });
            }
            models.Add(row);
        }
        var nodes = new List<object>(); var pins = new List<object>(); var edges = new List<object>();
        if (name != "-") {
            var diagram = Keep(component.GetDiagramWithName(name)) as BlockDiagram;
            if (diagram == null) throw new Exception("Ordinary BDE required");
            Graph(diagram, null, name, 0, nodes, pins, edges);
        }
        return new Dictionary<string, object> { {"models", models}, {"formals", Formals(component)}, {"method_memberships", MethodMembers(component)},
            {"definitions", definitions}, {"nodes", nodes}, {"pins", pins}, {"edges", edges} };
    }

    static int Main(string[] args)
    {
        if (args.Length != 4 || File.Exists(args[2])) return 2;
        var result = new Dictionary<string, object>(); Ascet ascet = null; int exit = 1;
        var timer = Stopwatch.StartNew();
        try {
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1) throw new Exception("Expected one ASCET process");
            result["ascet_process_epoch"] = processes[0].Id + "/" + processes[0].StartTime.ToUniversalTime().ToString("o");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            var db = Keep(ascet.GetCurrentDataBase()); result["database"] = db.GetName();
            var path = args[0].Trim('\\'); int slash = path.LastIndexOf('\\');
            if (slash < 0) throw new Exception("Full component path required");
            var component = Keep(db.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent);
            result["component"] = component.GetNameWithPath(); result["oid"] = component.GetOID();
            result["public_before"] = PublicRead(component, args[1]);
            var databaseIdentity = AscetStructureRead.Compile(component, "bde_database_identity.st");
            var block = AscetStructureRead.Compile(component, "bde_structure_read.st");
            try {
                string identity = AscetStructureRead.DatabaseIdentity(component, db, databaseIdentity);
                result["structure"] = AscetStructureRead.Read(component, block, args[1], new string[0]);
                var current = Keep(ascet.GetCurrentDataBase());
                if (AscetStructureRead.DatabaseIdentity(component, current, databaseIdentity) != identity)
                    throw new Exception("Native database objects changed during interface observation");
                result["database_session"] = identity;
                result["database_identity_basis"] = "native_dbAccess_and_dbInterface_object_identity";
            }
            finally {
                foreach (var temporary in new[] { block, databaseIdentity }) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(temporary.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
            result["public_after"] = PublicRead(component, args[1]);
            result["status"] = "ok"; exit = 0;
        }
        catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (ascet != null && !ascet.nullHandle()) {
                var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            }
            for (int i = Kept.Count - 1; i >= 0; --i) { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        result["elapsed_ms"] = timer.ElapsedMilliseconds; result["observed_at_utc"] = DateTime.UtcNow.ToString("o");
        File.WriteAllText(args[2], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        Environment.Exit(exit); return exit;
    }
}
