using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;

// Isolated research only. Never accepts a business component path or arbitrary
// selector. Creates its own small BDE class and leaves it for evidence/recovery.
class AscetEditExperiment
{
    static readonly JavaScriptSerializer serializer = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue };
    static readonly List<object> kept = new List<object>();
    static string directory;
    static int step;
    static object Keep(object value) { kept.Add(value); return value; }
    static void Event(string kind, object payload)
    {
        string path = Path.Combine(directory, (++step).ToString("D3") + "-" + kind + ".json");
        byte[] data = Encoding.UTF8.GetBytes(serializer.Serialize(new { kind = kind, utc = DateTime.UtcNow.ToString("o"), payload = payload }));
        using (var file = new FileStream(path, FileMode.CreateNew, FileAccess.Write, FileShare.Read))
        {
            file.Write(data, 0, data.Length); file.Flush(true);
        }
    }
    static Dictionary<string, object> Read(BlockDiagramLiteral node)
    {
        long id = node.GetGraphicalObjectIdentifier();
        if (id < 0)
        {
            var nativeCall = node.createInstanceMethodCall("diagramElement"); node.call(nativeCall);
            var native = nativeCall.ResultRemoteObject; Keep(native);
            var identityCall = new InstanceMethodCall(native, "identifier", node); node.call(identityCall);
            Event("identity_diagnostic", new { public_id = id, native_value = identityCall.ResultObject });
        }
        string literal = node.GetContents();
        long[] position = node.GetPosition(), size = node.GetSize();
        if (id < 0 || literal == null || position == null || size == null)
            throw new Exception("Incomplete local observation: " + serializer.Serialize(new { id = id, literal = literal, position = position, size = size, null_handle = node.nullHandle() }));
        return new Dictionary<string, object> { {"id", id}, {"literal", literal}, {"position", position}, {"size", size} };
    }
    static bool Equal(object left, object right) { return serializer.Serialize(left) == serializer.Serialize(right); }
    static Dictionary<string, object> Edit(BlockDiagramLiteral node, string expected, string value, string request)
    {
        var timer = Stopwatch.StartNew();
        var before = Read(node);
        if ((string)before["literal"] != expected)
        {
            Event("conflict", new { request_id = request, expected = expected, actual = before, setter_called = false });
            return null;
        }
        Event("prepared", new { request_id = request, before = before, requested = value });
        Event("started", new { request_id = request });
        bool returned = node.SetContents(value);
        var after = Read(node);
        var delta = new List<object>();
        foreach (string field in before.Keys)
            if (!Equal(before[field], after[field])) delta.Add(new { target = "Main/n" + before["id"], field = field, before = before[field], after = after[field] });
        var patch = new Dictionary<string, object> { {"request_id", request}, {"before", before}, {"after", after},
            {"requested", value}, {"setter_returned", returned}, {"differences", delta}, {"elapsed_ms", timer.ElapsedMilliseconds},
            {"status", (string)after["literal"] == value && Equal(before["id"], after["id"]) ? "target_verified" : "unexpected_result"},
            {"coverage", "literal identity/text/position/size only; no full model or persistence claim"} };
        Event("patch", patch);
        return patch;
    }
    static int Main(string[] args)
    {
        Ascet ascet = null;
        var result = new Dictionary<string, object>();
        try
        {
            if (args.Length != 1) throw new Exception("Expected fresh output directory");
            directory = Path.GetFullPath(args[0]);
            Directory.CreateDirectory(directory);
            if (Directory.GetFiles(directory).Length != 0) throw new Exception("Output must be empty; never replay a partial experiment blindly");
            Cebra.initCebraToolIndependent(Environment.GetEnvironmentVariable("ASCET_BD_DEBUG") == "1", false, null, null); Cebra.initialized = true;
            string configuredPort = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", configuredPort == null ? 32503 : Int32.Parse(configuredPort)));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("No API handle; no writes attempted");
            if (Environment.GetEnvironmentVariable("ASCET_BD_DEBUG") == "1") ascet.SwitchLoggingOn();
            var db = ascet.GetCurrentDataBase();
            if (db == null || db.nullHandle()) throw new Exception("No database");
            result["database"] = db.GetName();
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors: defer isolated write experiment");
            string folderName = "BDE_Tool_Experiments";
            string name = "Trial_" + DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 6);
            Event("create_intent", new { database = db.GetName(), folder = folderName, component = name });
            var folder = db.GetAscetFolder(folderName);
            if (folder == null || folder.nullHandle()) folder = db.AddAscetFolder(folderName);
            if (folder == null || folder.nullHandle()) throw new Exception("Cannot create experiment folder");
            var component = folder.AddClass(name, "BDE");
            if (component == null || component.nullHandle()) throw new Exception("Cannot create experiment class");
            Keep(component);
            result["component"] = component.GetNameWithPath(); result["oid"] = component.GetOID();
            if (!component.GetNameWithPath().Trim('\\').StartsWith(folderName + "\\", StringComparison.Ordinal)) throw new Exception("Sandbox scope mismatch");
            Event("created", result);
            var diagram = component.GetDiagramWithName("Main") as BlockDiagram;
            if (diagram == null) throw new Exception("Sandbox diagram unavailable");
            Keep(diagram);
            Event("place_started", new { literal = "0.0", x = 100, y = 100 });
            var target = diagram.PlaceStringLiteral("0.0", 100, 100, null);
            if (target == null || target.nullHandle()) throw new Exception("Target literal creation returned no handle");
            Event("target_created_unfinalized", new { literal = target.GetContents(), position = target.GetPosition(), size = target.GetSize(), public_id = target.GetGraphicalObjectIdentifier() });
            Event("place_started", new { literal = "2.0", x = 300, y = 100 });
            var other = diagram.PlaceStringLiteral("2.0", 300, 100, null);
            if (target == null || other == null) throw new Exception("Cannot place literals");
            Keep(target); Keep(other);
            Event("finalize_creation_started", new { operation = "StoreToCache", scope = result["component"], warning = "may rebuild logic and auto-commit; isolated component only" });
            bool creationStored = diagram.StoreToCache();
            Event("finalize_creation_returned", new { returned = creationStored });
            var initial = Read(target); var otherInitial = Read(other);
            Event("initial", new { target = initial, unrelated = otherInitial });
            var changed = Edit(target, (string)initial["literal"], "1.25", "literal-short");
            if (changed == null || (string)changed["status"] != "target_verified") throw new Exception("Short literal edit failed");
            var unrelated = Edit(other, (string)otherInitial["literal"], "3.5", "unrelated-edit");
            if (unrelated == null) throw new Exception("Unrelated edit failed");
            var rejected = Edit(target, (string)initial["literal"], "999.0", "stale-expected");
            result["stale_expected_rejected"] = rejected == null;
            var restored = Edit(target, "1.25", (string)initial["literal"], "revert-short");
            result["short_exact_local_restore"] = restored != null && Equal(Read(target), initial);
            result["unrelated_change_preserved"] = (string)Read(other)["literal"] == "3.5";
            var longPatch = Edit(target, (string)initial["literal"], "123456789012345.125", "literal-long");
            if (longPatch == null || (string)longPatch["status"] != "target_verified") throw new Exception("Long literal edit failed");
            Event("long_layout_effect", new { before = initial, after = Read(target) });
            var longRestore = Edit(target, "123456789012345.125", (string)initial["literal"], "revert-long");
            result["long_exact_local_restore"] = longRestore != null && Equal(Read(target), initial);
            Edit(other, "3.5", (string)otherInitial["literal"], "restore-unrelated-test");
            result["final_target"] = Read(target); result["final_unrelated"] = Read(other);
            result["both_initial_states_restored"] = Equal(Read(target), initial) && Equal(Read(other), otherInitial);
            result["native_node_count"] = diagram.GetAllDiagramElements().Length;
            Event("finalize_restoration_started", new { operation = "StoreToCache", scope = result["component"] });
            result["restoration_store_returned"] = diagram.StoreToCache();
            result["status"] = (bool)result["stale_expected_rejected"] && (bool)result["both_initial_states_restored"] && (bool)result["unrelated_change_preserved"] ? "passed_scoped_experiment" : "failed_scoped_experiment";
            result["not_verified"] = new string[] {"delete/identity restore", "connections", "state machine", "BDE visual overlay", "database save/reopen", "GUI atomic isolation", "fault recovery/idempotency implementation"};
            Event("result", result);
        }
        catch (Exception error)
        {
            result["status"] = "error"; result["error"] = error.ToString();
            // Existing started events are the recovery evidence. Do not blindly
            // retry setters or delete the sandbox after an unknown outcome.
        }
        finally
        {
            if (directory != null) File.WriteAllText(Path.Combine(directory, "result.json"), serializer.Serialize(result), new UTF8Encoding(false));
            if (ascet != null && !ascet.nullHandle()) ascet.DisconnectFromTool();
        }
        int exit = result.ContainsKey("status") && (string)result["status"] == "passed_scoped_experiment" ? 0 : 1;
        Environment.Exit(exit);
        return exit;
    }
}
