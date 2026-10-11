using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetStructureRead
{
    [DllImport("iphlpapi.dll")]
    static extern uint GetExtendedTcpTable(IntPtr table, ref int size, bool order, int family, int tableClass, uint reserved);

    internal static string ProcessEpoch()
    {
        string configured = Environment.GetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT");
        if (configured == null) {
            var processes = System.Diagnostics.Process.GetProcessesByName("ASCET");
            if (processes.Length != 1) throw new Exception("Expected one ASCET process; an explicitly verified endpoint is required for multiple instances");
            using (var process = processes[0]) return process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o");
        }
        int port = Int32.Parse(configured), size = 0;
        if (port < 1 || port > 65535) throw new Exception("Invalid ASCET endpoint port");
        uint code = GetExtendedTcpTable(IntPtr.Zero, ref size, false, 2, 3, 0);
        if (code != 122 || size < 4 || size > 16 * 1024 * 1024) throw new Exception("Cannot size ASCET listener table");
        IntPtr buffer = Marshal.AllocHGlobal(size);
        try {
            code = GetExtendedTcpTable(buffer, ref size, false, 2, 3, 0);
            if (code != 0) throw new Exception("Cannot read ASCET listener table: " + code);
            int rows = Marshal.ReadInt32(buffer), pid = 0;
            if (rows < 0 || rows > (size - 4) / 24) throw new Exception("Invalid listener table");
            for (int i = 0; i < rows; ++i) {
                IntPtr row = IntPtr.Add(buffer, 4 + i * 24);
                int address = Marshal.ReadInt32(row, 4), wirePort = Marshal.ReadInt32(row, 8);
                if ((((wirePort & 255) << 8) | ((wirePort >> 8) & 255)) != port || (address != 0 && address != 0x0100007f)) continue;
                int owner = Marshal.ReadInt32(row, 20);
                if (owner <= 0 || (pid != 0 && owner != pid)) throw new Exception("Ambiguous ASCET listener owner");
                pid = owner;
            }
            if (pid == 0) throw new Exception("No ASCET listener at explicitly selected port " + port);
            using (var process = System.Diagnostics.Process.GetProcessById(pid)) {
                if (!String.Equals(process.ProcessName, "ASCET", StringComparison.OrdinalIgnoreCase)) throw new Exception("Selected listener is not ASCET");
                return process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o");
            }
        } finally { Marshal.FreeHGlobal(buffer); }
    }
    internal static readonly JavaScriptSerializer Json = new JavaScriptSerializer { MaxJsonLength = 16 * 1024 * 1024 };
    internal static void Trace(string phase)
    {
        if (Environment.GetEnvironmentVariable("ASCET_BD_NATIVE_TRACE") != "1") return;
        Console.Error.WriteLine("BDE_NATIVE_TRACE " + phase);
        Console.Error.Flush();
    }
    internal static object Decode(object value)
    {
        var map = value as Dictionary<string, object>;
        if (map != null)
        {
            if (map.Count != 1) throw new Exception("Invalid structural transport tag");
            if (map.ContainsKey("$s"))
            {
                var values = (object[])map["$s"]; var bytes = new byte[values.Length];
                for (int i = 0; i < bytes.Length; ++i)
                { if (!(values[i] is int) || (int)values[i] < 0 || (int)values[i] > 255) throw new Exception("Invalid text byte"); bytes[i] = (byte)(int)values[i]; }
                return Encoding.GetEncoding(0).GetString(bytes);
            }
            if (map.ContainsKey("$f")) {
                var values = (object[])map["$f"]; var bytes = new byte[values.Length];
                for (int i = 0; i < bytes.Length; ++i) {
                    if (!(values[i] is int) || (int)values[i] < 0 || (int)values[i] > 255) throw new Exception("Invalid float byte");
                    bytes[i] = (byte)(int)values[i];
                }
                if (!BitConverter.IsLittleEndian) Array.Reverse(bytes);
                double numberValue = bytes.Length == 4 ? BitConverter.ToSingle(bytes, 0) : bytes.Length == 8 ? BitConverter.ToDouble(bytes, 0) : Double.NaN;
                if (Double.IsNaN(numberValue) || Double.IsInfinity(numberValue)) throw new Exception("Unsupported structural numeric value");
                return numberValue;
            }
            if (!map.ContainsKey("$d")) throw new Exception("Unknown structural tag");
            var result = new Dictionary<string, object>();
            foreach (var row in (object[])map["$d"])
            { var pair = (object[])row; if (pair.Length != 2) throw new Exception("Invalid dictionary entry"); result.Add((string)Decode(pair[0]), Decode(pair[1])); }
            return result;
        }
        var array = value as object[];
        if (array != null) for (int i = 0; i < array.Length; ++i) array[i] = Decode(array[i]);
        return value;
    }
    internal static object DecodeEditResult(object value)
    {
        var envelope = value as Dictionary<string, object>;
        if (envelope == null || !envelope.ContainsKey("observation")) return Decode(value);
        if (envelope.ContainsKey("field_local_inverse_profile")) {
            if (envelope.Count != 4 || !envelope.ContainsKey("inverse_expected") || !envelope.ContainsKey("native_token")
                    || !Object.Equals(envelope["field_local_inverse_profile"], "native_source_local_inverse_v1")
                    || !(envelope["native_token"] is string)
                    || !System.Text.RegularExpressions.Regex.IsMatch((string)envelope["native_token"], "^edit_[0-9a-f]{64}$"))
                throw new Exception("Invalid fixed local field inverse preparation envelope");
            envelope["observation"] = Decode(envelope["observation"]);
            envelope["inverse_expected"] = InverseExpected(envelope["inverse_expected"]);
            return envelope;
        }
        if (envelope.ContainsKey("field_execution")) {
            if (envelope.Count != 2) throw new Exception("Invalid field execution envelope");
            envelope["field_execution"] = FieldExecution(envelope["field_execution"]);
            envelope["observation"] = Decode(envelope["observation"]);
            return envelope;
        }
        bool graphical = envelope.ContainsKey("graphical_current");
        bool inverse = envelope.ContainsKey("inverse_expected");
        bool drawingPrepared = envelope.ContainsKey("drawing_order_before") || envelope.ContainsKey("drawing_order_expected");
        bool drawingObserved = envelope.ContainsKey("drawing_order_effects");
        bool drawingWitness = envelope.ContainsKey("drawing_order_witness");
        bool prepared = envelope.Count == (graphical ? 6 : 4) + (inverse ? 1 : 0) + (drawingPrepared ? 2 : 0) + (drawingWitness ? 1 : 0) && envelope.ContainsKey("parent_order_before")
            && envelope.ContainsKey("parent_order_expected") && envelope.ContainsKey("parent_order_signature");
        bool observed = envelope.Count == (graphical ? 4 : 2) + (drawingObserved ? 1 : 0) && envelope.ContainsKey("parent_order_effects");
        if (!prepared && !observed) throw new Exception("Invalid parent evidence envelope");
        if (drawingPrepared && (!prepared || !graphical || !envelope.ContainsKey("drawing_order_before") || !envelope.ContainsKey("drawing_order_expected")))
            throw new Exception("Drawing order requires complete preparation");
        if (drawingObserved && (!observed || !graphical)) throw new Exception("Drawing effect requires graphical result");
        if (inverse && (!prepared || !graphical)) throw new Exception("Inverse expectation requires complete graphical preparation");
        if (drawingWitness && (!prepared || !inverse || !drawingPrepared)) throw new Exception("Causal witness requires complete drawing inverse preparation");
        if (drawingWitness) envelope["drawing_order_witness"] = CausalDrawingWitness(envelope["drawing_order_witness"]);
        if (inverse) {
            envelope["inverse_expected"] = InverseExpected(envelope["inverse_expected"]);
        }
        if (graphical) {
            envelope["graphical_current"] = GraphicalImage(envelope["graphical_current"], "native_graphical_current_v1", "objects");
            if (prepared) {
                if (!envelope.ContainsKey("graphical_signature") || !(envelope["graphical_signature"] is string)
                        || !System.Text.RegularExpressions.Regex.IsMatch((string)envelope["graphical_signature"], "^edit_[0-9a-f]{64}/g[1-9][0-9]*$"))
                    throw new Exception("Invalid graphical CURRENT signature");
            } else {
                if (!envelope.ContainsKey("graphical_actual")) throw new Exception("Missing actual graphical diff");
                envelope["graphical_actual"] = GraphicalImage(envelope["graphical_actual"], "native_graphical_diff_v1", "changes");
            }
        }
        envelope["observation"] = Decode(envelope["observation"]);
        if (prepared) {
            var before = ParentImage(envelope["parent_order_before"]);
            var expected = ParentImage(envelope["parent_order_expected"]);
            envelope["parent_order_before"] = before; envelope["parent_order_expected"] = expected;
            SameParentBinding(before, expected);
            var parts = new List<string> { (string)before["native_token"], (string)before["parent"], (string)before["collection"] };
            foreach (var member in (object[])before["members"]) parts.Add((string)member);
            if (!(envelope["parent_order_signature"] is string) || (string)envelope["parent_order_signature"] != String.Join(",", parts))
                throw new Exception("Parent evidence CURRENT signature differs");
        } else {
            var effects = envelope["parent_order_effects"] as object[];
            if (effects == null || effects.Length != 1) throw new Exception("One actual parent effect required");
            var effect = effects[0] as Dictionary<string, object>;
            if (effect != null && effect.ContainsKey("$d")) {
                effect = Decode(effect) as Dictionary<string, object>;
                effects[0] = effect;
            }
            if (effect == null || effect.Count != 3 || !effect.ContainsKey("kind") || !effect.ContainsKey("before")
                    || !effect.ContainsKey("after") || !Object.Equals(effect["kind"], "parent_order"))
                throw new Exception("Invalid actual parent effect");
            var before = ParentImage(effect["before"]); var after = ParentImage(effect["after"]);
            effect["before"] = before; effect["after"] = after;
            SameParentBinding(before, after);
        }
        if (drawingPrepared) {
            var before = DrawingImage(envelope["drawing_order_before"]); var expected = DrawingImage(envelope["drawing_order_expected"]);
            SameParentBinding(before, expected);
            SameDrawingParent(before, (Dictionary<string, object>)envelope["parent_order_before"]);
            SameDrawingParent(expected, (Dictionary<string, object>)envelope["parent_order_expected"]);
            envelope["drawing_order_before"] = before; envelope["drawing_order_expected"] = expected;
        }
        if (drawingObserved) envelope["drawing_order_effects"] = DrawingEffects(envelope["drawing_order_effects"]);
        return envelope;
    }
    internal static Dictionary<string, object> InverseExpected(object source)
    {
        var graph = Decode(source) as Dictionary<string, object>;
        if (graph == null || !graph.ContainsKey("diagram_kind") || !Object.Equals(graph["diagram_kind"], "block_diagram")
                || !graph.ContainsKey("entries") || !(graph["entries"] is object[])
                || ((object[])graph["entries"]).Length > 100000)
            throw new Exception("Complete ordinary inverse expected graph required");
        foreach (var field in new [] { "lookup_nodes", "lookup_edges" })
            if (!graph.ContainsKey(field) || !(graph[field] is int) || (int)graph[field] < 0)
                throw new Exception("Inverse expectation requires nonnegative complete lookup counts");
        var references = new HashSet<string>();
        foreach (var entry in (object[])graph["entries"]) {
            var row = entry as Dictionary<string, object>;
            if (row == null || !row.ContainsKey("ref") || !(row["ref"] is string)
                    || String.IsNullOrEmpty((string)row["ref"]) || !references.Add((string)row["ref"])
                    || !row.ContainsKey("kind") || !(row["kind"] is string)
                    || Array.IndexOf(new [] { "node", "pin", "edge", "model" }, (string)row["kind"]) < 0)
                throw new Exception("Inverse expectation requires exact unique ordinary rows");
        }
        return graph;
    }
    internal static Dictionary<string, object> FieldExecution(object value)
    {
        var tagged = value as Dictionary<string, object>;
        if (tagged != null && tagged.ContainsKey("$d")) value = Decode(value);
        var proof = value as Dictionary<string, object>;
        string[] fields = { "profile", "native_token", "operation", "execution_sequence", "direction", "phase",
            "raw_patch", "normalization", "store_started", "store_completed", "terminal_verified",
            "serialized_source_verified", "actual_material_retained", "native_matches_terminal", "source_matches_terminal" };
        bool sourceVersion = proof != null && proof.ContainsKey("profile") &&
            (Object.Equals(proof["profile"], "native_field_execution_v2") || Object.Equals(proof["profile"], "native_field_execution_v3"));
        if (sourceVersion) {
            var extended = new List<string>(fields);
            extended.AddRange(new [] { "source_patch", "source_root_preserved", "source_transaction_id" });
            fields = extended.ToArray();
        }
        if (proof == null || proof.Count != fields.Length || Array.Exists(fields, key => !proof.ContainsKey(key))
                || (!sourceVersion && !Object.Equals(proof["profile"], "native_field_execution_v1")))
            throw new Exception("Invalid native field execution proof");
        foreach (var key in new [] { "native_token", "operation", "direction", "phase" })
            if (!(proof[key] is string) || String.IsNullOrEmpty((string)proof[key]))
                throw new Exception("Invalid native field execution binding");
        foreach (var key in new [] { "store_started", "store_completed", "terminal_verified",
                "serialized_source_verified", "actual_material_retained", "native_matches_terminal", "source_matches_terminal" })
            if (!(proof[key] is bool)) throw new Exception("Invalid native field execution flag");
        if (!(proof["execution_sequence"] is int) || (int)proof["execution_sequence"] < 1)
            throw new Exception("Invalid native field execution sequence");
        if (sourceVersion) {
            if (!(proof["source_root_preserved"] is bool)) throw new Exception("Invalid source root preservation flag");
            object transaction = proof["source_transaction_id"];
            if (transaction != null && (!(transaction is string) ||
                    !System.Text.RegularExpressions.Regex.IsMatch((string)transaction, @"^source_[0-9a-f]{64}$")))
                throw new Exception("Invalid guarded source transaction identity");
            if (proof["source_patch"] != null) {
                var progress = proof["source_patch"] as Dictionary<string, object>;
                string[] keys = { "state", "completed_cells", "completed_primitives", "cell_count", "direction" };
                if (progress == null || progress.Count != keys.Length || Array.Exists(keys, key => !progress.ContainsKey(key))
                        || !(progress["state"] is string) || Array.IndexOf(new [] { "prepared", "started", "applied" }, (string)progress["state"]) < 0
                        || !Object.Equals(progress["direction"], proof["direction"]))
                    throw new Exception("Invalid source alias progress shape");
                foreach (var key in new [] { "completed_cells", "completed_primitives", "cell_count" })
                    if (!(progress[key] is int) || (int)progress[key] < 0 || (int)progress[key] > 20000000)
                        throw new Exception("Invalid source alias progress counter");
                if (!Object.Equals(progress["completed_cells"], progress["completed_primitives"]) ||
                        (int)progress["completed_cells"] > (int)progress["cell_count"])
                    throw new Exception("Invalid source alias primitive count");
            }
        }
        return proof;
    }
    internal static Dictionary<string, object> DecodeRecoveryResult(string source)
    {
        var result = Json.DeserializeObject(source) as Dictionary<string, object>;
        if (result == null) throw new Exception("Invalid recovery envelope");
        if (result.ContainsKey("field_execution") && result["field_execution"] != null)
            result["field_execution"] = FieldExecution(result["field_execution"]);
        if (result.ContainsKey("topology_execution") && result["topology_execution"] != null) {
            var topology = result["topology_execution"] as Dictionary<string, object>;
            if (topology != null && topology.ContainsKey("$d")) result["topology_execution"] = Decode(topology);
        }
        foreach (var key in new [] { "before", "after", "current" }) result[key] = Decode(result[key]);
        if (result.ContainsKey("inverse_expected") && result["inverse_expected"] != null)
            result["inverse_expected"] = InverseExpected(result["inverse_expected"]);
        foreach (var key in new [] { "library_effects", "scope_effects" })
            if (result.ContainsKey(key)) result[key] = Decode(result[key]);
        if (result.ContainsKey("drawing_order_witness")) result["drawing_order_witness"] = CausalDrawingWitness(result["drawing_order_witness"]);
        foreach (var key in new [] { "parent_order_original", "parent_order_started", "parent_order_current" })
            if (result.ContainsKey(key) && result[key] != null) result[key] = ParentImage(result[key]);
        if (result.ContainsKey("parent_order_effects") && result["parent_order_effects"] != null) {
            var envelope = new Dictionary<string, object> { { "observation", null }, { "parent_order_effects", result["parent_order_effects"] } };
            result["parent_order_effects"] = ((Dictionary<string, object>)DecodeEditResult(envelope))["parent_order_effects"];
        }
        string[] drawingFields = { "drawing_order_original", "drawing_order_started", "drawing_order_current",
            "drawing_order_effects", "current_drawing_order_matches_terminal" };
        if (Array.Exists(drawingFields, key => result.ContainsKey(key))) {
            foreach (var key in drawingFields) if (!result.ContainsKey(key)) throw new Exception("Incomplete drawing recovery evidence");
            foreach (var key in new [] { "drawing_order_original", "drawing_order_started", "drawing_order_current" })
                if (result[key] != null) result[key] = DrawingImage(result[key]);
            if (result["drawing_order_original"] == null || result["drawing_order_current"] == null)
                throw new Exception("Original/current drawing recovery evidence required");
            var originalDrawing = (Dictionary<string, object>)result["drawing_order_original"];
            foreach (var key in new [] { "drawing_order_started", "drawing_order_current" })
                if (result[key] != null) SameParentBinding(originalDrawing, (Dictionary<string, object>)result[key]);
            if (result["drawing_order_effects"] != null) {
                result["drawing_order_effects"] = DrawingEffects(result["drawing_order_effects"]);
                var effect = (Dictionary<string, object>)((object[])result["drawing_order_effects"])[0];
                SameParentBinding(originalDrawing, (Dictionary<string, object>)effect["before"]);
            }
            if (!(result["current_drawing_order_matches_terminal"] is bool)) throw new Exception("Invalid drawing terminal verdict");
        }
        if (result.ContainsKey("graphical_original")) {
            result["graphical_original"] = GraphicalImage(result["graphical_original"], "native_graphical_current_v1", "objects");
            foreach (var key in new [] { "graphical_started", "graphical_actual" }) {
                if (!result.ContainsKey(key)) throw new Exception("Missing recovery graphical evidence");
                if (result[key] != null) result[key] = GraphicalImage(result[key],
                    key == "graphical_started" ? "native_graphical_current_v1" : "native_graphical_diff_v1",
                    key == "graphical_started" ? "objects" : "changes");
            }
            if (!result.ContainsKey("graphical_signature") || (result["graphical_signature"] != null
                    && (!(result["graphical_signature"] is string) || !System.Text.RegularExpressions.Regex.IsMatch(
                        (string)result["graphical_signature"], "^edit_[0-9a-f]{64}/g[1-9][0-9]*$"))))
                throw new Exception("Invalid recovery graphical signature");
            if (!result.ContainsKey("current_graphical_matches_terminal") || !(result["current_graphical_matches_terminal"] is bool))
                throw new Exception("Invalid recovery graphical terminal verdict");
        }
        return result;
    }
    static object CausalDrawingWitness(object value)
    {
        if (value == null) return null;
        var proof = Decode(value) as Dictionary<string, object>;
        string[] keys = { "profile", "source_token", "source_inverse_id", "source_order", "translated_order", "bindings", "generation", "component_oid", "diagram" };
        if (proof == null || proof.Count != keys.Length || Array.Exists(keys, key => !proof.ContainsKey(key))
                || !Object.Equals(proof["profile"], "native_drawing_causal_witness_v1")
                || !(proof["generation"] is int) || (int)proof["generation"] < 1
                || !(proof["component_oid"] is string) || ((string)proof["component_oid"]).Length == 0
                || !(proof["diagram"] is string) || ((string)proof["diagram"]).Length == 0
                || !(proof["bindings"] is object[])) throw new Exception("Complete causal drawing witness required");
        foreach (var key in new [] { "source_token", "source_inverse_id" })
            if (!(proof[key] is string) || !System.Text.RegularExpressions.Regex.IsMatch((string)proof[key], @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact causal source identities required");
        var source = DrawingImage(proof["source_order"]);
        var translated = DrawingImage(proof["translated_order"]);
        if (!Object.Equals(source["native_token"], proof["source_token"])
                || Object.Equals(proof["source_token"], proof["source_inverse_id"])
                || Object.Equals(translated["native_token"], proof["source_token"])
                || Object.Equals(translated["native_token"], proof["source_inverse_id"])
                || !Object.Equals(source["diagram"], proof["diagram"])
                || !Object.Equals(translated["diagram"], proof["diagram"]))
            throw new Exception("Causal source/target identity differs");
        var left = new List<object> { source["parent"], source["collection"] };
        var right = new List<object> { translated["parent"], translated["collection"] };
        left.AddRange((object[])source["members"]); right.AddRange((object[])translated["members"]);
        var bindings = (object[])proof["bindings"];
        if (left.Count != right.Count || bindings.Length != left.Count)
            throw new Exception("Complete causal identity translation required");
        for (int i = 0; i < bindings.Length; ++i) {
            var pair = bindings[i] as object[];
            if (pair == null || pair.Length != 2 || !Object.Equals(pair[0], left[i]) || !Object.Equals(pair[1], right[i]))
                throw new Exception("Causal identity translation differs");
        }
        proof["source_order"] = source;
        proof["translated_order"] = translated;
        return proof;
    }
    static Dictionary<string, object> GraphicalImage(object value, string profile, string rows)
    {
        var result = Decode(value) as Dictionary<string, object>;
        if (result == null || !Object.Equals(result.ContainsKey("profile") ? result["profile"] : null, profile)
                || !result.ContainsKey("complete") || !Object.Equals(result["complete"], true)
                || !result.ContainsKey(rows) || !(result[rows] is object[]))
            throw new Exception("Complete graphical evidence required");
        return result;
    }
    static Dictionary<string, object> ParentImage(object value)
    {
        var image = value as Dictionary<string, object>;
        if (image != null && image.Count == 1 && image.ContainsKey("$d")) image = Decode(image) as Dictionary<string, object>;
        string[] fields = { "profile", "native_token", "diagram", "parent", "collection", "complete", "members" };
        if (image == null || image.Count != fields.Length) throw new Exception("Complete parent image required");
        foreach (string field in fields) if (!image.ContainsKey(field)) throw new Exception("Missing parent image field");
        if (!Object.Equals(image["profile"], "native_parent_order_v1") || !(image["complete"] is bool) || !(bool)image["complete"]
                || !(image["native_token"] is string) || !System.Text.RegularExpressions.Regex.IsMatch((string)image["native_token"], "^edit_[0-9a-f]{64}$")
                || !(image["diagram"] is string) || ((string)image["diagram"]).Length == 0 || ((string)image["diagram"]).Length > 4096)
            throw new Exception("Invalid parent image binding/profile");
        var members = image["members"] as object[];
        if (members == null || members.Length > 100000) throw new Exception("Bounded complete parent roster required");
        var all = new List<object> { image["parent"], image["collection"] }; all.AddRange(members);
        var seen = new HashSet<string>(StringComparer.Ordinal);
        foreach (var member in all) if (!(member is string) || !System.Text.RegularExpressions.Regex.IsMatch((string)member, "^o[1-9][0-9]*$") || !seen.Add((string)member))
            throw new Exception("Exact unique native parent tokens required");
        return image;
    }
    static void SameParentBinding(Dictionary<string, object> before, Dictionary<string, object> after)
    {
        foreach (string field in new [] { "profile", "native_token", "diagram", "parent", "collection", "complete" })
            if (!Object.Equals(before[field], after[field])) throw new Exception("Parent effect changed native binding");
    }
    static Dictionary<string, object> DrawingImage(object value)
    {
        var image = value as Dictionary<string, object>;
        if (image != null && image.Count == 1 && image.ContainsKey("$d")) image = Decode(image) as Dictionary<string, object>;
        if (image == null || image.Count != 8 || !Object.Equals(image.ContainsKey("profile") ? image["profile"] : null, "native_drawing_order_v1")
                || !image.ContainsKey("numbers")) throw new Exception("Complete drawing image required");
        var parent = new Dictionary<string, object>(image); parent.Remove("numbers"); parent["profile"] = "native_parent_order_v1";
        ParentImage(parent);
        var numbers = image["numbers"] as object[]; var members = image["members"] as object[];
        if (numbers == null || numbers.Length != members.Length) throw new Exception("Drawing numbers required");
        for (int i = 0; i < numbers.Length; ++i) if (!(numbers[i] is int) || (int)numbers[i] != i + 1)
            throw new Exception("Normalized exact drawing numbers required");
        return image;
    }
    static object DrawingEffects(object value)
    {
        var effects = value as object[];
        if (effects == null || effects.Length != 1) throw new Exception("One drawing effect required");
        var effect = effects[0] as Dictionary<string, object>;
        if (effect != null && effect.ContainsKey("$d")) {
            effect = Decode(effect) as Dictionary<string, object>;
            effects[0] = effect;
        }
        if (effect == null || effect.Count != 3 || !Object.Equals(effect.ContainsKey("kind") ? effect["kind"] : null, "drawing_order")
                || !effect.ContainsKey("before") || !effect.ContainsKey("after")) throw new Exception("Exact drawing effect required");
        var before = DrawingImage(effect["before"]); var after = DrawingImage(effect["after"]);
        SameParentBinding(before, after); effect["before"] = before; effect["after"] = after;
        return effects;
    }
    static void SameDrawingParent(Dictionary<string, object> drawing, Dictionary<string, object> physical)
    {
        var parent = new Dictionary<string, object>(drawing); parent.Remove("numbers"); parent["profile"] = "native_parent_order_v1";
        SameParentBinding(parent, physical);
        var roster = new HashSet<object>((object[])parent["members"]);
        if (!roster.SetEquals((object[])physical["members"])) throw new Exception("Drawing/physical rosters differ");
    }
    internal static Identifiable Compile(SmalltalkToolAPI api, string resource)
    {
        string source;
        using (var stream = typeof(AscetStructureRead).Assembly.GetManifestResourceStream(resource))
        using (var reader = new StreamReader(stream)) source = reader.ReadToEnd();
        return CompileSource(api, resource, source);
    }
    internal static Identifiable CompileSource(SmalltalkToolAPI api, string resource, string source)
    {
        Trace("compile.begin " + resource + " chars=" + source.Length);
        try {
            var compile = api.createClassMethodCall("EsCompiler", "evaluate:"); compile.appendParameter(source); api.call(compile);
            Trace("compile.return " + resource);
            var block = compile.ResultRemoteObject;
            if (block == null || block.nullHandle()) throw new Exception("Fixed template returned an empty handle: " + resource);
            Trace("compile.class.begin " + resource);
            string type = api.getClassName(block);
            Trace("compile.class.done " + resource + " " + type);
            if (type != "BlockContextTemplate")
            {
                var msg = new InstanceMethodCall(block, "message", api); api.call(msg);
                string detail = msg.ResultString;
                if (type == "CompilerError") {
                    var position = new InstanceMethodCall(block, "startPosition", api); api.call(position);
                    int offset = Math.Max(0, Math.Min(source.Length, position.ResultInteger - 1));
                    int line = 1; for (int i = 0; i < offset; ++i) if (source[i] == '\n') ++line;
                    detail += " at " + resource + ":" + line + " offset " + offset;
                }
                throw new Exception("Fixed template failed: " + type + " " + detail);
            }
            Trace("compile.done " + resource);
            return block;
        } catch (Exception error) {
            Trace("compile.failed " + resource + " " + error.Message);
            throw;
        }
    }
    internal static Dictionary<string, object> Read(CodeComponent component, Identifiable block, string diagram, string[] targets)
    {
        var call = new InstanceMethodCall(block, "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(diagram); call.appendParameter(targets); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_STRUCTURE_ERROR:")) throw new Exception(text);
#if BDE_SOURCE_AUDIT
        return (Dictionary<string, object>)Json.DeserializeObject(text);
#else
        return (Dictionary<string, object>)Decode(Json.DeserializeObject(text));
#endif
    }
    internal static string DatabaseIdentity(SmalltalkToolAPI api, AscetDataBase database, Identifiable block)
    {
        var call = new InstanceMethodCall(block, "value:value:", api);
        call.appendParameter(database); call.appendParameter(Guid.NewGuid().ToString("N")); api.call(call);
        string token = call.ResultString;
        if (token.StartsWith("BDE_DATABASE_IDENTITY_ERROR:")) throw new Exception(token);
        if (!System.Text.RegularExpressions.Regex.IsMatch(token, "^[0-9a-f]{32}$")) throw new Exception("Invalid native database identity token");
        return token;
    }
    static int Main(string[] args)
    {
        if (args.Length != 4 || File.Exists(args[2])) return 2;
        var result = new Dictionary<string, object>(); var kept = new List<SmalltalkToolAPI>();
        Ascet ascet = null; int exit = 1; var timer = Stopwatch.StartNew();
        try
        {
            result["ascet_process_epoch"] = ProcessEpoch();
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            var db = ascet.GetCurrentDataBase(); kept.Add(db); result["database"] = db.GetName();
            string path = args[0].Trim('\\'); int slash = path.LastIndexOf('\\');
            if (slash < 0) throw new Exception("Full component path required");
            var component = db.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (component == null || component.nullHandle()) throw new Exception("Component unavailable");
            kept.Add(component); result["component"] = component.GetNameWithPath(); result["oid"] = component.GetOID();
            Identifiable databaseIdentity = null;
            using (var resource = typeof(AscetStructureRead).Assembly.GetManifestResourceStream("bde_database_identity.st")) {
                if (resource != null) databaseIdentity = Compile(component, "bde_database_identity.st");
            }
            var block = Compile(component, "bde_structure_read.st");
            try {
                string identity = databaseIdentity == null ? null : DatabaseIdentity(component, db, databaseIdentity);
                result["structure"] = Read(component, block, args[1], args[3] == "all" ? new string[0] : args[3].Split(','));
                if (databaseIdentity != null) {
                    var current = ascet.GetCurrentDataBase(); kept.Add(current);
                    if (current == null || current.nullHandle() || DatabaseIdentity(component, current, databaseIdentity) != identity)
                        throw new Exception("Native database objects changed during interface observation");
                    result["database_session"] = identity;
                    result["database_identity_basis"] = "native_dbAccess_and_dbInterface_object_identity";
                }
            }
            finally {
                foreach (var temporary in new[] { block, databaseIdentity }) if (temporary != null) {
                    var release = component.createControlMessageCall("destroyObjectForId:"); release.appendParameter(temporary.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (ProcessEpoch() != (string)result["ascet_process_epoch"]) throw new Exception("ASCET endpoint process changed during structural observation");
            result["status"] = "ok"; exit = 0;
        }
        catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally
        {
            for (int i = kept.Count - 1; i >= 0; --i) if (kept[i] != null) { kept[i].finalize(); GC.SuppressFinalize(kept[i]); }
            kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
        }
        result["elapsed_ms"] = timer.ElapsedMilliseconds; result["observed_at_utc"] = DateTime.UtcNow.ToString("o");
        File.WriteAllText(args[2], Json.Serialize(result), new UTF8Encoding(false));
        Environment.Exit(exit); return exit;
    }
}
