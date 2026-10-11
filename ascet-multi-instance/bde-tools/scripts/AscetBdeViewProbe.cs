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

// Fixed research probe. Opens ONLY the existing isolated fixture, then reads
// the native view/controller chain. No selector input, setter, save or Undo.
class AscetBdeViewProbe
{
    const string Fixture = @"BDE_Tool_Experiments\Trial_20260929_155551_0f73b7";
    const string Oid = "040ts00000001qg714eg8acgp8dg0";
    static readonly List<object> kept = new List<object>();
    static readonly Dictionary<string, object> result = new Dictionary<string, object>();
    static readonly JavaScriptSerializer json = new JavaScriptSerializer();
    static string output;
    static T Keep<T>(T value) { if (value != null) kept.Add(value); return value; }
    static void Save(string key, object value) { result[key] = value; File.WriteAllText(output, json.Serialize(result), new UTF8Encoding(false)); }
    static InstanceMethodCall Call(ToolAPI api, Identifiable target, string selector)
    {
        var call = new InstanceMethodCall(target, selector, api); api.call(call); return call;
    }
    static Identifiable Next(SmalltalkToolAPI api, Identifiable target, string selector)
    {
        Save("last_selector", selector);
        var value = Keep(Call(api, target, selector).ResultRemoteObject);
        Save(selector + "_class", api.getClassName(value));
        return value;
    }
    static object Graph(CodeComponent component)
    {
        var diagram = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
        if (diagram == null) throw new Exception("No Main block diagram");
        var nodes = diagram.GetAllDiagramElements(); var edges = diagram.GetAllDiagramConnections();
        if (nodes == null || nodes.Length != 2 || edges == null || edges.Length != 0) throw new Exception("Fixture topology changed");
        var rows = new SortedDictionary<string, object>();
        foreach (var value in nodes)
        {
            var node = Keep(value as BlockDiagramLiteral);
            if (node == null) throw new Exception("Fixture kind changed");
            rows.Add(node.GetGraphicalObjectIdentifier().ToString(), new { literal = node.GetContents(), position = node.GetPosition(), size = node.GetSize() });
        }
        return rows;
    }
    static int Main(string[] args)
    {
        if (args.Length != 1 || File.Exists(args[0])) return 2;
        output = args[0]; Ascet ascet = null;
        try
        {
            Save("status", "started"); Save("started_utc", DateTime.UtcNow.ToString("o"));
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string configured = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", configured == null ? 32503 : Int32.Parse(configured)));
            ascet = Keep(new Ascet());
            if (ascet.nullHandle()) throw new Exception("No ASCET API handle");
            var db = Keep(ascet.GetCurrentDataBase());
            if (db == null || db.GetName() != @"D:\ETASData\ASCET6.4\Database\AEB_1") throw new Exception("Unexpected database");
            Save("database", db.GetName());
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length > 1) throw new Exception("Unexpected unsaved editors; deferred");
            Save("dirty_before", dirty.Length);
            var component = Keep(db.GetItemInFolder(Fixture.Substring(Fixture.LastIndexOf('\\') + 1), "BDE_Tool_Experiments") as CodeComponent);
            if (component == null || component.GetOID() != Oid || component.GetNameWithPath().Trim('\\') != Fixture) throw new Exception("Fixture identity mismatch");
            Save("component", Fixture); Save("oid", Oid);
            var before = Graph(component); Save("before", before);
            Save("last_action", dirty.Length == 0 ? "Component.Edit (public API, syncExecInUI)" : "inspect existing single dirty view; no UI mutation");
            var viewApi = Keep(dirty.Length == 0 ? component.Edit() : dirty[0]);
            if (viewApi == null || viewApi.nullHandle()) throw new Exception("No editor view handle");
            var currentComponent = Next(viewApi, viewApi, "getCurrentComponent");
            if (Call(viewApi, currentComponent, "getOID").ResultString != Oid) throw new Exception("Existing editor is not the sandbox fixture");
            Save("api_class", viewApi.getClassName(viewApi));
            var view = Next(viewApi, viewApi, "view");
            var controller = Next(viewApi, view, "uiController");
            var pane = Next(viewApi, controller, "graphPaneController");
            Save("graphic_modified", Call(viewApi, controller, "isGraphicModified").ResultBoolean);
            var selected = Next(viewApi, pane, "selectedGOs");
            long count = Call(viewApi, selected, "size").ResultLong;
            Save("selected_count", count);
            if (count > 20) throw new Exception("Unexpected selection size");
            var selectedIds = new List<long>();
            for (int i = 1; i <= count; ++i)
            {
                var at = new InstanceMethodCall(selected, "at:", viewApi);
                at.appendParameter(i); viewApi.call(at);
                var wrapper = Keep(at.ResultRemoteObject);
                selectedIds.Add(Call(viewApi, wrapper, "identifier").ResultLong);
            }
            Save("selected_ids", selectedIds);
            // undoRedoPossible: is NOT a harmless getter: mementoStream lazily
            // initializes an undo stream. Do not invoke it for an observation.
            var after = Graph(component); Save("after", after);
            Save("same_local_fields", json.Serialize(before) == json.Serialize(after));
            dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null) throw new Exception("Dirty read failed");
            Save("dirty_after", dirty.Length);
            Save("limitations", new string[] { "No selection/drawing invoked", "No Undo history validation", "No deleted-object overlay", "Local literal fields only" });
            Save("status", "ok");
        }
        catch (Exception error) { Save("error", error.ToString()); Save("status", "error"); }
        finally
        {
            for (int i = kept.Count - 1; i >= 0; --i)
            {
                var wrapper = kept[i] as SmalltalkToolAPI;
                if (wrapper != null && !(wrapper is Ascet)) { wrapper.finalize(); GC.SuppressFinalize(wrapper); }
            }
            kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) ascet.DisconnectFromTool();
        }
        Environment.Exit((string)result["status"] == "ok" ? 0 : 1);
        return 0;
    }
}
