using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

// Experimental fixed-operation bridge: isolated, unconnected literal diagrams
// only. No arbitrary selectors, database switching, global Save or Undo.
class AscetLiteralSession
{
    static readonly JavaScriptSerializer json = new JavaScriptSerializer { MaxJsonLength = 1024 * 1024 };
    static readonly List<object> kept = new List<object>();
    static Ascet ascet;
    static AscetDataBase database;
    static CodeComponent component;
    static BlockDiagram diagram;
    static Dictionary<string, object> domain;
    static TextWriter protocol;
    static string componentPath;
    static T Keep<T>(T value) where T : class { if (value != null) kept.Add(value); return value; }
    static string Text(Dictionary<string, object> request, string key) { return (string)request[key]; }
    static string Epoch()
    {
        var running = System.Diagnostics.Process.GetProcessesByName("ASCET");
        if (running.Length != 1) throw new Exception("Expected one ASCET process");
        return running[0].Id + "/" + running[0].StartTime.ToUniversalTime().ToString("o");
    }
    static void Identity()
    {
        if (Epoch() != Text(domain, "process_epoch")) throw new Exception("ASCET process changed");
        var current = Keep(ascet.GetCurrentDataBase());
        if (current == null || current.nullHandle() || !String.Equals(current.GetName(), Text(domain, "database"), StringComparison.OrdinalIgnoreCase))
            throw new Exception("Current database changed");
        if (component.GetOID() != Text(domain, "oid") || component.GetNameWithPath().Trim('\\') != componentPath)
            throw new Exception("Component identity changed");
        var dirty = ascet.GetAllEditorsWithUnsavedChanges();
        if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editor changes; experiment deferred");
    }
    static BlockDiagramLiteral Resolve(string target)
    {
        Identity();
        if (!System.Text.RegularExpressions.Regex.IsMatch(target, @"^Main/n[0-9]+$")) throw new Exception("Expected exact Main/nID");
        long wanted = Int64.Parse(target.Substring(6));
        // Re-resolve after finalization; never assume old API handles survived.
        diagram = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
        if (diagram == null || diagram.nullHandle()) throw new Exception("Main unavailable");
        var nodes = diagram.GetAllDiagramElements();
        var edges = diagram.GetAllDiagramConnections();
        if (nodes == null || nodes.Length > 20 || edges == null || edges.Length != 0)
            throw new Exception("Only small unconnected sandbox diagrams are enabled");
        BlockDiagramLiteral found = null;
        foreach (var node in nodes)
        {
            Keep(node);
            if (!(node is BlockDiagramLiteral)) throw new Exception("Sandbox contains unsupported node kind");
            if (node.GetGraphicalObjectIdentifier() == wanted)
            {
                if (found != null) throw new Exception("Ambiguous node identity");
                found = (BlockDiagramLiteral)node;
            }
        }
        if (found == null) throw new Exception("Target not found");
        var pins = found.GetAllPins();
        if (pins == null) throw new Exception("Missing pin observation");
        foreach (var pin in pins)
        {
            Keep(pin);
            var connections = pin.GetAllBlockDiagramConnections();
            if (connections == null || connections.Length != 0 || pin.HasSequenceCall())
                throw new Exception("Connected or sequenced literal is not enabled");
        }
        return found;
    }
    static Dictionary<string, object> Fields(BlockDiagramLiteral node)
    {
        var literal = node.GetContents(); var position = node.GetPosition(); var size = node.GetSize();
        if (literal == null || position == null || size == null || node.GetGraphicalObjectIdentifier() < 0)
            throw new Exception("Incomplete local observation");
        return new Dictionary<string, object> {{"literal", literal}, {"position", position}, {"size", size}};
    }
    static bool SameFields(Dictionary<string, object> expected, Dictionary<string, object> actual)
    {
        if (expected.Count != actual.Count) return false;
        foreach (string key in actual.Keys)
            if (!expected.ContainsKey(key) || json.Serialize(expected[key]) != json.Serialize(actual[key])) return false;
        return true;
    }
    static object Handle(Dictionary<string, object> request)
    {
        string cmd = Text(request, "cmd");
        if (cmd == "open")
        {
            if (ascet != null) throw new Exception("Already initialized");
            componentPath = Text(request, "component").Trim('\\');
            if (!System.Text.RegularExpressions.Regex.IsMatch(componentPath, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$"))
                throw new Exception("Experimental writes are restricted to BDE_Tool_Experiments/Trial_* components");
            domain = (Dictionary<string, object>)request["domain"];
            if (Epoch() != Text(domain, "process_epoch")) throw new Exception("Stale process identity");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = Keep(new Ascet());
            if (ascet.nullHandle()) throw new Exception("No ASCET API handle");
            database = Keep(ascet.GetCurrentDataBase());
            if (database == null || !String.Equals(database.GetName(), Text(domain, "database"), StringComparison.OrdinalIgnoreCase))
                throw new Exception("Wrong database");
            int slash = componentPath.LastIndexOf('\\');
            component = Keep(database.GetItemInFolder(componentPath.Substring(slash + 1), componentPath.Substring(0, slash)) as CodeComponent);
            if (component == null || component.nullHandle()) throw new Exception("Missing sandbox component");
            Identity();
            return new { component = componentPath, domain = domain, capability = "isolated_unconnected_literal_only" };
        }
        if (ascet == null || component == null) throw new Exception("Session not initialized");
        string target = Text(request, "target");
        var node = Resolve(target);
        if (cmd == "observe")
            return new { domain = domain, target = target, kind = "BlockDiagramLiteral", fields = Fields(node) };
        if (cmd != "apply") throw new Exception("Unknown operation");
        var expected = (Dictionary<string, object>)request["expected_fields"];
        if (!SameFields(expected, Fields(node)))
            return new { completed = false, rejected = "changed_since_prepared", setter_called = false };
        string value = Text(request, "value");
        if (value.Length > 128 || !System.Text.RegularExpressions.Regex.IsMatch(value, @"^[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?$"))
            throw new Exception("Only bounded numeric literal text is enabled");
        bool setter = node.SetContents(value);
        // Never replay the setter or assume false means no write. Finalization
        // is explicit and part of this operation's unknown-outcome boundary.
        bool stored = diagram.StoreToCache();
        return new { completed = setter && stored, setter_returned = setter, store_returned = stored,
            persistence = "StoreToCache_returned; independent_reopen_not_yet_verified" };
    }
    static void Main()
    {
        Console.InputEncoding = new UTF8Encoding(false); Console.OutputEncoding = new UTF8Encoding(false);
        protocol = Console.Out;
        Console.SetOut(Console.Error); // Cebra initialization writes log paths.
        try
        {
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                if (line.Length > 65536) throw new Exception("Request too large");
                var request = json.Deserialize<Dictionary<string, object>>(line);
                if (Text(request, "cmd") == "close") break;
                try { protocol.WriteLine(json.Serialize(new { ok = true, result = Handle(request) })); }
                catch (Exception error) { protocol.WriteLine(json.Serialize(new { ok = false, error = error.ToString() })); }
                protocol.Flush();
            }
        }
        finally
        {
            // Explicitly release retained remote wrappers while the transport
            // is still connected, suppressing duplicate shutdown finalizers.
            for (int i = kept.Count - 1; i >= 0; --i)
            {
                var wrapper = kept[i] as de.etas.cebra.toolAPI.SmalltalkToolAPI;
                if (wrapper != null && !(wrapper is Ascet)) { wrapper.finalize(); GC.SuppressFinalize(wrapper); }
            }
            kept.Clear();
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) ascet.DisconnectFromTool();
            Environment.Exit(0);
        }
    }
}
