using System;
class AscetStructureDecodeTests
{
    static int checks;
    static string FieldProof(bool tagged, bool sourceVersion = false, bool inverse = false) {
        var proof = new System.Collections.Generic.Dictionary<string, object> {
            { "profile", "native_field_execution_v1" }, { "native_token", "edit_" + new string('1', 64) },
            { "operation", "set_literal" }, { "execution_sequence", 1 }, { "direction", "forward" },
            { "phase", "terminal" }, { "raw_patch", null }, { "normalization", null },
            { "store_started", true }, { "store_completed", true }, { "terminal_verified", true },
            { "serialized_source_verified", true }, { "actual_material_retained", true },
            { "native_matches_terminal", true }, { "source_matches_terminal", true }
        };
        if (sourceVersion) {
            proof["profile"] = "native_field_execution_v2";
            proof["source_root_preserved"] = true;
            proof["source_transaction_id"] = inverse ? "source_" + new string('3', 64) : null;
            proof["source_patch"] = inverse ? new System.Collections.Generic.Dictionary<string, object> {
                { "state", "applied" }, { "direction", "undo" }, { "cell_count", 4 },
                { "completed_cells", 4 }, { "completed_primitives", 4 }
            } : null;
            if (inverse) proof["direction"] = "undo";
        }
        if (!tagged) return AscetStructureRead.Json.Serialize(proof);
        return AscetStructureRead.Json.Serialize(Tagged(proof));
    }
    static object Read(string source) { return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(source)); }
    static void Equal(double expected, string source) {
        if (BitConverter.DoubleToInt64Bits((double)Read(source)) != BitConverter.DoubleToInt64Bits(expected)) throw new Exception("Float bits changed");
        checks++;
    }
    static void Reject(string source) {
        try { Read(source); } catch { checks++; return; }
        throw new Exception("Malformed numeric transport accepted");
    }
    static object Edit(string source) { return AscetStructureRead.DecodeEditResult(AscetStructureRead.Json.DeserializeObject(source)); }
    static string Image(string members) {
        return "{\"profile\":\"native_parent_order_v1\",\"native_token\":\"edit_" + new string('1', 64)
            + "\",\"diagram\":\"Main\",\"parent\":\"o1\",\"collection\":\"o2\",\"complete\":true,\"members\":" + members + "}";
    }
    static string TaggedImage(string members) {
        return "{\"$d\":[[\"profile\",\"native_parent_order_v1\"],[\"native_token\",\"edit_" + new string('1', 64)
            + "\"],[\"diagram\",\"Main\"],[\"parent\",\"o1\"],[\"collection\",\"o2\"],[\"complete\",true],[\"members\"," + members + "]]}";
    }
    static string Drawing(string members, string numbers) {
        string parent = Image(members).Replace("native_parent_order_v1", "native_drawing_order_v1");
        return parent.Substring(0, parent.Length - 1) + ",\"numbers\":" + numbers + "}";
    }
    static string TaggedDrawing(string members, string numbers) {
        string parent = TaggedImage(members).Replace("native_parent_order_v1", "native_drawing_order_v1");
        return parent.Substring(0, parent.Length - 2) + ",[\"numbers\"," + numbers + "]]}";
    }
    static void RejectEdit(string source) {
        try { Edit(source); } catch { checks++; return; }
        throw new Exception("Malformed parent evidence accepted");
    }
    static void RejectRecovery(string source) {
        try { AscetStructureRead.DecodeRecoveryResult(source); } catch { checks++; return; }
        throw new Exception("Malformed recovery graphical evidence accepted");
    }
    static object Tagged(object value) {
        var map = value as System.Collections.Generic.Dictionary<string, object>;
        if (map != null) {
            var rows = new System.Collections.Generic.List<object>();
            foreach (var entry in map) rows.Add(new object[] { entry.Key, Tagged(entry.Value) });
            return new System.Collections.Generic.Dictionary<string, object> { { "$d", rows.ToArray() } };
        }
        var array = value as object[];
        if (array != null) {
            var result = new object[array.Length];
            for (int i = 0; i < result.Length; ++i) result[i] = Tagged(array[i]);
            return result;
        }
        return value;
    }
    static string Witness(string changes) {
        string target = Drawing("[\"o4\",\"o3\"]", "[1,2]");
        string source = target.Replace("edit_" + new string('1', 64), "edit_" + new string('2', 64));
        string proof = "{\"profile\":\"native_drawing_causal_witness_v1\",\"source_token\":\"edit_" + new string('2', 64)
            + "\",\"source_inverse_id\":\"edit_" + new string('3', 64) + "\",\"source_order\":" + source
            + ",\"translated_order\":" + target + ",\"bindings\":[[\"o1\",\"o1\"],[\"o2\",\"o2\"],[\"o4\",\"o4\"],[\"o3\",\"o3\"]],"
            + "\"generation\":1,\"component_oid\":\"oid\",\"diagram\":\"Main\"}";
        var map = (System.Collections.Generic.Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(proof);
        if (changes != null) {
            var mutations = (System.Collections.Generic.Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(changes);
            foreach (var mutation in mutations) map[mutation.Key] = mutation.Value;
        }
        return AscetStructureRead.Json.Serialize(Tagged(map));
    }
    static int Main() {
        Equal(1.25, "{\"$f\":[0,0,0,0,0,0,244,63]}");
        Equal(1.25, "{\"$f\":[0,0,160,63]}");
        Equal(-0.0, "{\"$f\":[0,0,0,0,0,0,0,128]}");
        Reject("{\"$f\":[0,0]}");
        Reject("{\"$f\":[0,0,0,999]}");
        Reject("{\"$f\":[0,0,0,0,0,0,240,127]}");
        Reject("{\"$f\":[0,0,0,0,0,0,248,127]}");
        Reject("{\"$f\":[0,0,0,0],\"unexpected\":1}");
        string observation = "{\"$d\":[[\"generation\",1],[\"text\",{\"$s\":[65]}],[\"value\",{\"$f\":[0,0,0,0,0,0,244,63]}]]}";
        string prepared = "{\"observation\":" + observation + ",\"parent_order_before\":" + Image("[\"o3\",\"o4\"]")
            + ",\"parent_order_expected\":" + Image("[\"o3\"]") + ",\"parent_order_signature\":\"edit_" + new string('1', 64) + ",o1,o2,o3,o4\"}";
        var result = (System.Collections.Generic.Dictionary<string, object>)Edit(prepared);
        var decoded = (System.Collections.Generic.Dictionary<string, object>)result["observation"];
        if (!Object.Equals(decoded["text"], "A") || !Object.Equals(decoded["value"], 1.25)) throw new Exception("Tagged observation lost values inside plain evidence envelope");
        checks++;
        string actual = "{\"observation\":" + observation + ",\"parent_order_effects\":[{\"kind\":\"parent_order\",\"before\":"
            + Image("[\"o3\",\"o4\"]") + ",\"after\":" + Image("[\"o3\"]") + "}]}";
        Edit(actual); checks++;
        var nativePrepared = (System.Collections.Generic.Dictionary<string, object>)Edit(prepared.Replace(Image("[\"o3\",\"o4\"]"), TaggedImage("[\"o3\",\"o4\"]")).Replace(Image("[\"o3\"]"), TaggedImage("[\"o3\"]")));
        var nativeImage = (System.Collections.Generic.Dictionary<string, object>)nativePrepared["parent_order_before"];
        if (!Object.Equals(nativeImage["profile"], "native_parent_order_v1") || ((object[])nativeImage["members"]).Length != 2) throw new Exception("Native tagged image was not decoded");
        checks++;
        Edit(actual.Replace(Image("[\"o3\",\"o4\"]"), TaggedImage("[\"o3\",\"o4\"]")).Replace(Image("[\"o3\"]"), TaggedImage("[\"o3\"]"))); checks++;
        RejectEdit(prepared.Replace(",o1,o2,o3,o4\"", ",o1,o2,o4,o3\""));
        RejectEdit(prepared.Replace("\"complete\":true", "\"complete\":1"));
        RejectEdit(prepared.Replace("[\"o3\",\"o4\"]", "[\"o3\",\"o3\"]"));
        RejectEdit(actual.Replace("\"after\":" + Image("[\"o3\"]"), "\"after\":" + Image("[\"o3\"]").Replace("\"collection\":\"o2\"", "\"collection\":\"o9\"")));
        RejectEdit("{\"observation\":" + observation + ",\"unexpected\":true}");
        Reject(prepared);
        string current = "{\"$d\":[[\"profile\",\"native_graphical_current_v1\"],[\"complete\",true],[\"objects\",[]]]}";
        string actualGraph = "{\"$d\":[[\"profile\",\"native_graphical_diff_v1\"],[\"complete\",true],[\"changes\",[]],[\"new_objects\",[]],[\"after_object_count\",0]]}";
        string rawPrepared = prepared.Substring(0, prepared.Length - 1) + ",\"graphical_current\":" + current
            + ",\"graphical_signature\":\"edit_" + new string('1', 64) + "/g1\"}";
        var rawResult = (System.Collections.Generic.Dictionary<string, object>)Edit(rawPrepared);
        if (!Object.Equals(((System.Collections.Generic.Dictionary<string, object>)rawResult["graphical_current"])["profile"], "native_graphical_current_v1"))
            throw new Exception("Graphical CURRENT not decoded");
        checks++;
        Edit(actual.Substring(0, actual.Length - 1) + ",\"graphical_current\":" + current + ",\"graphical_actual\":" + actualGraph + "}"); checks++;
        RejectEdit(rawPrepared.Replace("/g1", "/g0"));
        RejectEdit(rawPrepared.Replace("native_graphical_current_v1", "incorrect_profile"));
        RejectEdit(rawPrepared.Replace("[\"complete\",true]", "[\"complete\",1]"));
        RejectEdit(rawPrepared.Replace("[\"objects\",[]]", "[\"objects\",null]"));
        RejectEdit(rawPrepared.Replace("\"graphical_signature\"", "\"unexpected_signature\""));
        string drawingBefore = Drawing("[\"o4\",\"o3\"]", "[1,2]");
        string drawingAfter = Drawing("[\"o3\"]", "[1]");
        string drawingPrepared = rawPrepared.Substring(0, rawPrepared.Length - 1)
            + ",\"drawing_order_before\":" + drawingBefore + ",\"drawing_order_expected\":" + drawingAfter + "}";
        Edit(drawingPrepared); checks++;
        Edit(drawingPrepared.Replace(drawingBefore, TaggedDrawing("[\"o4\",\"o3\"]", "[1,2]"))
            .Replace(drawingAfter, TaggedDrawing("[\"o3\"]", "[1]"))); checks++;
        foreach (string numbers in new [] { "[0,1]", "[1,1]", "[1]", "[true,2]", "[1.0,2]", "null" })
            RejectEdit(drawingPrepared.Replace(drawingBefore, Drawing("[\"o4\",\"o3\"]", numbers)));
        RejectEdit(drawingPrepared.Replace(drawingBefore, Drawing("[\"o9\",\"o3\"]", "[1,2]")));
        RejectEdit(drawingPrepared.Replace(drawingBefore, drawingBefore.Replace("\"parent\":\"o1\"", "\"parent\":\"o9\"")));
        RejectEdit(drawingPrepared.Replace(",\"drawing_order_expected\":" + drawingAfter, ""));
        RejectEdit(drawingPrepared.Replace(",\"graphical_current\":" + current, ""));
        string drawingEffects = "[{\"kind\":\"drawing_order\",\"before\":" + drawingBefore + ",\"after\":" + drawingAfter + "}]";
        string drawingActual = actual.Substring(0, actual.Length - 1) + ",\"graphical_current\":" + current
            + ",\"graphical_actual\":" + actualGraph + ",\"drawing_order_effects\":" + drawingEffects + "}";
        Edit(drawingActual); checks++;
        RejectEdit(drawingActual.Replace(drawingEffects, "[]"));
        RejectEdit(drawingActual.Replace(drawingEffects, "[null]"));
        RejectEdit(drawingActual.Replace("\"kind\":\"drawing_order\"", "\"kind\":\"parent_order\""));
        string expectedGraph = "{\"$d\":[[\"diagram_kind\",\"block_diagram\"],[\"lookup_nodes\",1],[\"lookup_edges\",0],"
            + "[\"entries\",[{\"$d\":[[\"ref\",\"n1\"],[\"kind\",\"node\"],[\"value\",{\"$f\":[0,0,0,0,0,0,244,63]}]]}]]]}";
        string inversePrepared = rawPrepared.Substring(0, rawPrepared.Length - 1) + ",\"inverse_expected\":" + expectedGraph + "}";
        var inverseDecoded = (System.Collections.Generic.Dictionary<string, object>)Edit(inversePrepared);
        var inverseGraph = (System.Collections.Generic.Dictionary<string, object>)inverseDecoded["inverse_expected"];
        var inverseNode = (System.Collections.Generic.Dictionary<string, object>)((object[])inverseGraph["entries"])[0];
        if (BitConverter.DoubleToInt64Bits((double)inverseNode["value"]) != BitConverter.DoubleToInt64Bits(1.25))
            throw new Exception("Inverse expectation Float transport changed");
        checks++;
        RejectEdit(inversePrepared.Replace("\"inverse_expected\":" + expectedGraph, "\"inverse_expected\":null"));
        RejectEdit(inversePrepared.Replace("[\"diagram_kind\",\"block_diagram\"]", "[\"diagram_kind\",\"state_machine\"]"));
        RejectEdit(inversePrepared.Replace("[\"lookup_nodes\",1]", "[\"lookup_nodes\",true]"));
        RejectEdit(inversePrepared.Replace("[\"lookup_edges\",0]", "[\"lookup_edges\",-1]"));
        RejectEdit(inversePrepared.Replace("[\"ref\",\"n1\"]", "[\"ref\",\"\"]"));
        RejectEdit(inversePrepared.Replace("[\"kind\",\"node\"]", "[\"kind\",\"unknown\"]"));
        RejectEdit(prepared.Substring(0, prepared.Length - 1) + ",\"inverse_expected\":" + expectedGraph + "}");
        string recovery = "{\"state\":\"applied\",\"before\":" + observation + ",\"after\":" + observation
            + ",\"current\":" + observation + ",\"graphical_original\":" + current + ",\"graphical_started\":" + current
            + ",\"graphical_actual\":" + actualGraph + ",\"graphical_signature\":\"edit_" + new string('1', 64)
            + "/g1\",\"current_graphical_matches_terminal\":true}";
        var recoveryResult = AscetStructureRead.DecodeRecoveryResult(recovery);
        if (!Object.Equals(((System.Collections.Generic.Dictionary<string, object>)recoveryResult["graphical_actual"])["profile"], "native_graphical_diff_v1"))
            throw new Exception("Recovery graphical actual not decoded");
        checks++;
        string topologyTransport = "{\"profile\":\"native_topology_execution_v1\",\"phase\":\"terminal\","
            + "\"normalization\":{\"state\":\"restored\",\"native_primitives\":7,\"source_primitives\":14}}";
        string taggedTopology = AscetStructureRead.Json.Serialize(Tagged(AscetStructureRead.Json.DeserializeObject(topologyTransport)));
        foreach (string transport in new [] { topologyTransport, taggedTopology }) {
            var topologyResult = AscetStructureRead.DecodeRecoveryResult(recovery.Substring(0, recovery.Length - 1)
                + ",\"topology_execution\":" + transport + "}");
            var topologyProof = (System.Collections.Generic.Dictionary<string, object>)topologyResult["topology_execution"];
            var topologyProgress = (System.Collections.Generic.Dictionary<string, object>)topologyProof["normalization"];
            if (!Object.Equals(topologyProof["phase"], "terminal") || !Object.Equals(topologyProgress["source_primitives"], 14))
                throw new Exception("Recovery managed topology proof or nested progress stayed tagged");
            checks++;
        }
        RejectRecovery(recovery.Substring(0, recovery.Length - 1) + ",\"topology_execution\":"
            + taggedTopology.Replace("\"$d\":", "\"$d\":[],\"extra\":") + "}");
        var inverseRecovery = AscetStructureRead.DecodeRecoveryResult(recovery.Substring(0, recovery.Length - 1)
            + ",\"inverse_expected\":" + expectedGraph + "}");
        if (((object[])((System.Collections.Generic.Dictionary<string, object>)inverseRecovery["inverse_expected"])["entries"]).Length != 1)
            throw new Exception("Recovery inverse expectation not decoded");
        checks++;
        RejectRecovery(recovery.Substring(0, recovery.Length - 1) + ",\"inverse_expected\":{\"$d\":[]}}");
        string recoveryOrder = recovery.Substring(0, recovery.Length - 1) + ",\"parent_order_original\":" + Image("[\"o3\",\"o4\"]")
            + ",\"parent_order_started\":" + TaggedImage("[\"o3\",\"o4\"]") + ",\"parent_order_current\":" + Image("[\"o3\"]")
            + ",\"parent_order_effects\":[{\"kind\":\"parent_order\",\"before\":" + Image("[\"o3\",\"o4\"]")
            + ",\"after\":" + Image("[\"o3\"]") + "}]}";
        var recoveryOrderResult = AscetStructureRead.DecodeRecoveryResult(recoveryOrder);
        if (((object[])recoveryOrderResult["parent_order_effects"]).Length != 1) throw new Exception("Plain recovery order envelope not decoded");
        checks++;
        var parentEffects = ((System.Collections.Generic.Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(actual))["parent_order_effects"];
        string taggedParentEffects = AscetStructureRead.Json.Serialize(Tagged(parentEffects));
        string plainParentEffects = AscetStructureRead.Json.Serialize(parentEffects);
        var taggedOrderResult = AscetStructureRead.DecodeRecoveryResult(recoveryOrder.Replace(plainParentEffects, taggedParentEffects));
        var taggedOrderEffect = (System.Collections.Generic.Dictionary<string, object>)((object[])taggedOrderResult["parent_order_effects"])[0];
        if (!Object.Equals(taggedOrderEffect["kind"], "parent_order") || taggedOrderEffect.Count != 3)
            throw new Exception("Managed tagged parent effect was not decoded");
        checks++;
        RejectRecovery(recoveryOrder.Replace(plainParentEffects, taggedParentEffects.Replace("parent_order\"", "wrong_order\"")));
        RejectRecovery(recoveryOrder.Replace(plainParentEffects, taggedParentEffects.Replace("\"$d\":", "\"$d\":[],\"extra\":")));
        RejectRecovery(recoveryOrder.Replace("\"collection\":\"o2\"", "\"collection\":7"));
        RejectRecovery(recovery.Replace("/g1", "/g0"));
        RejectRecovery(recovery.Replace("native_graphical_diff_v1", "wrong_profile"));
        RejectRecovery(recovery.Replace("\"current_graphical_matches_terminal\":true", "\"current_graphical_matches_terminal\":1"));
        RejectRecovery(recovery.Replace("\"graphical_started\"", "\"unexpected_started\""));
        RejectRecovery(recovery.Replace("[\"complete\",true]", "[\"complete\",false]"));
        string drawingRecovery = recovery.Substring(0, recovery.Length - 1) + ",\"drawing_order_original\":" + drawingBefore
            + ",\"drawing_order_started\":" + TaggedDrawing("[\"o4\",\"o3\"]", "[1,2]")
            + ",\"drawing_order_current\":" + drawingAfter + ",\"drawing_order_effects\":" + drawingEffects
            + ",\"current_drawing_order_matches_terminal\":true}";
        AscetStructureRead.DecodeRecoveryResult(drawingRecovery); checks++;
        string taggedDrawingEffects = AscetStructureRead.Json.Serialize(Tagged(AscetStructureRead.Json.DeserializeObject(drawingEffects)));
        var managedDrawing = AscetStructureRead.DecodeRecoveryResult(drawingRecovery.Replace(drawingEffects, taggedDrawingEffects));
        var managedDrawingEffect = (System.Collections.Generic.Dictionary<string, object>)((object[])managedDrawing["drawing_order_effects"])[0];
        if (!Object.Equals(managedDrawingEffect["kind"], "drawing_order") || managedDrawingEffect.Count != 3)
            throw new Exception("Managed tagged drawing effect was not decoded");
        checks++;
        RejectRecovery(drawingRecovery.Replace(drawingEffects, taggedDrawingEffects.Replace("drawing_order\"", "wrong_order\"")));
        RejectRecovery(drawingRecovery.Replace(drawingEffects, taggedDrawingEffects.Replace("\"$d\":", "\"$d\":[],\"extra\":")));
        RejectRecovery(drawingRecovery.Replace(",\"drawing_order_original\":" + drawingBefore, ""));
        RejectRecovery(drawingRecovery.Replace(",\"drawing_order_effects\":" + drawingEffects, ""));
        RejectRecovery(drawingRecovery.Replace(",\"current_drawing_order_matches_terminal\":true", ""));
        RejectRecovery(drawingRecovery.Replace("\"current_drawing_order_matches_terminal\":true", "\"current_drawing_order_matches_terminal\":1"));
        RejectRecovery(drawingRecovery.Replace(drawingAfter, Drawing("[\"o3\"]", "[0]")));
        RejectRecovery(drawingRecovery.Replace("\"drawing_order_current\":" + drawingAfter, "\"drawing_order_current\":null"));
        RejectRecovery(drawingRecovery.Replace("\"drawing_order_current\":" + drawingAfter,
            "\"drawing_order_current\":" + drawingAfter.Replace("\"diagram\":\"Main\"", "\"diagram\":\"Other\"")));
        string causalPrepared = drawingPrepared.Substring(0, drawingPrepared.Length - 1)
            + ",\"inverse_expected\":" + expectedGraph + ",\"drawing_order_witness\":" + Witness(null) + "}";
        var causalResult = (System.Collections.Generic.Dictionary<string, object>)Edit(causalPrepared);
        var decodedWitness = (System.Collections.Generic.Dictionary<string, object>)causalResult["drawing_order_witness"];
        if (((object[])decodedWitness["bindings"]).Length != 4) throw new Exception("Causal identity bindings not decoded");
        checks++;
        foreach (string mutation in new [] { "{\"generation\":true}", "{\"generation\":0}", "{\"component_oid\":\"\"}",
                "{\"diagram\":\"Other\"}", "{\"bindings\":[]}", "{\"bindings\":[[\"o1\",\"o1\"],null,[\"o4\",\"o4\"],[\"o3\",\"o3\"]]}",
                "{\"bindings\":[[\"o1\",\"o1\"],[\"o2\",\"o2\"],[\"o3\",\"o3\"],[\"o4\",\"o4\"]]}",
                "{\"source_token\":\"edit_" + new string('4', 64) + "\"}",
                "{\"source_inverse_id\":\"edit_" + new string('2', 64) + "\"}",
                "{\"source_inverse_id\":\"edit_" + new string('1', 64) + "\"}" })
            RejectEdit(causalPrepared.Replace(Witness(null), Witness(mutation)));
        RejectEdit(causalPrepared.Replace(",\"inverse_expected\":" + expectedGraph, ""));
        string causalRecovery = drawingRecovery.Substring(0, drawingRecovery.Length - 1)
            + ",\"inverse_expected\":" + expectedGraph + ",\"drawing_order_witness\":" + Witness(null) + "}";
        AscetStructureRead.DecodeRecoveryResult(causalRecovery); checks++;
        RejectRecovery(causalRecovery.Replace(Witness(null), Witness("{\"bindings\":[]}")));
        AscetStructureRead.DecodeRecoveryResult("{\"state\":\"prepared\",\"before\":" + observation + ",\"after\":null,\"current\":" + observation
            + ",\"graphical_original\":" + current + ",\"graphical_started\":null,\"graphical_actual\":null,\"graphical_signature\":null,\"current_graphical_matches_terminal\":false}");
        checks++;
        foreach (bool tagged in new [] { false, true }) {
            string fieldEnvelope = "{\"observation\":" + observation + ",\"field_execution\":" + FieldProof(tagged) + "}";
            var fieldResult = (System.Collections.Generic.Dictionary<string, object>)Edit(fieldEnvelope);
            var proof = (System.Collections.Generic.Dictionary<string, object>)fieldResult["field_execution"];
            if (!Object.Equals(proof["terminal_verified"], true) || proof.Count != 15)
                throw new Exception("Native field execution proof lost in transport");
            checks++;
            RejectEdit(fieldEnvelope.Replace("native_field_execution_v1", "wrong_profile"));
            RejectEdit(fieldEnvelope.Replace("execution_sequence", "unknown_sequence"));
            RejectEdit(fieldEnvelope.Replace("\"field_execution\":" + FieldProof(tagged), "\"field_execution\":null"));
            string fieldRecovery = "{\"state\":\"applied\",\"before\":" + observation
                + ",\"after\":" + observation + ",\"current\":" + observation + ",\"field_execution\":" + FieldProof(tagged) + "}";
            AscetStructureRead.DecodeRecoveryResult(fieldRecovery); checks++;
            RejectRecovery(fieldRecovery.Replace("native_field_execution_v1", "wrong_profile"));
            foreach (bool inverse in new [] { false, true }) {
                string v2Proof = FieldProof(tagged, true, inverse);
                string v2Edit = "{\"observation\":" + observation + ",\"field_execution\":" + v2Proof + "}";
                var v2Decoded = (System.Collections.Generic.Dictionary<string, object>)Edit(v2Edit);
                if (((System.Collections.Generic.Dictionary<string, object>)v2Decoded["field_execution"]).Count != 18)
                    throw new Exception("V2 source patch proof was not decoded");
                checks++;
                string v2Recovery = fieldRecovery.Replace(FieldProof(tagged), v2Proof);
                AscetStructureRead.DecodeRecoveryResult(v2Recovery); checks++;
                RejectEdit(v2Edit.Replace("source_root_preserved", "unknown_source_root"));
                RejectRecovery(v2Recovery.Replace("native_field_execution_v2", "wrong_profile"));
                if (inverse) {
                    RejectRecovery(v2Recovery.Replace("source_" + new string('3', 64), "wrong_transaction"));
                    RejectEdit(v2Edit.Replace("completed_primitives", "missing_primitives"));
                }
            }
        }
        string localEnvelope = "{\"observation\":" + observation + ",\"inverse_expected\":" + expectedGraph
            + ",\"field_local_inverse_profile\":\"native_source_local_inverse_v1\",\"native_token\":\"edit_" + new string('1', 64) + "\"}";
        var localResult = (System.Collections.Generic.Dictionary<string, object>)Edit(localEnvelope);
        if (localResult.Count != 4 || !localResult.ContainsKey("inverse_expected"))
            throw new Exception("Local typed inverse preparation lost in transport");
        checks++;
        RejectEdit(localEnvelope.Replace("native_source_local_inverse_v1", "unverified"));
        RejectEdit(localEnvelope.Replace("edit_" + new string('1', 64), "foreign_token"));
        RejectEdit(localEnvelope.Replace(",\"inverse_expected\":" + expectedGraph, ""));
        RejectEdit(localEnvelope.Substring(0, localEnvelope.Length - 1) + ",\"extra\":null}");
        RejectEdit(localEnvelope.Replace(expectedGraph, "null"));
        Console.WriteLine("Structural transport assertions: " + checks); return 0;
    }
}
