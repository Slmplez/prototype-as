using System;
using System.Collections.Generic;
using System.IO;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed private-heap protocol study. Never dispatches model setters or stores.
class AscetPrivateStepStudy
{
    static string Request(CodeComponent owner, Identifiable wire, string token, string action, int index)
    {
        var call = new InstanceMethodCall(wire, "value:", owner);
        call.appendParameter(new[] { token, action, index.ToString(System.Globalization.CultureInfo.InvariantCulture) });
        owner.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return text;
    }

    static Dictionary<string, object> Decode(string text)
    {
        var reply = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
        foreach (string field in new[] { "original_projection_json", "current_projection_json", "projection_json" }) {
            if (!reply.ContainsKey(field)) continue;
            reply[field.Substring(0, field.Length - 5)] = AscetStructureRead.Decode(
                AscetStructureRead.Json.DeserializeObject((string)reply[field]));
            reply.Remove(field);
        }
        return reply;
    }

    static Dictionary<string, object> Status(Dictionary<string, object> reply)
    { return (Dictionary<string, object>)reply["status"]; }

    static Dictionary<string, object> Observe(CodeComponent owner, Identifiable wire, string token)
    { return Decode(Request(owner, wire, token, "observe", 0)); }

    static void Refuse(CodeComponent owner, Identifiable wire, string token, string action, int index,
        AscetClassStudyJournal journal, string expected)
    {
        var before = Observe(owner, wire, token);
        string refusal = null;
        try { Request(owner, wire, token, action, index); }
        catch (Exception error) { refusal = error.Message; }
        if (refusal != "BDE_PRIVATE_WIRE_ERROR: " + expected)
            throw new Exception("Private remote refusal differs: " + refusal);
        var after = Observe(owner, wire, token);
        if (!AscetClassStudyJournal.Same(before, after)) throw new Exception("Refused private request mutated observed state");
        journal.Append("refused", new Dictionary<string, object> { {"action", action}, {"index", index},
            {"error", refusal}, {"before", before}, {"after", after} });
    }

    static Dictionary<string, object> Dispatch(CodeComponent owner, Identifiable wire, string token,
        string action, int index, object instruction, AscetClassStudyJournal journal, System.Action verify, bool discard)
    {
        verify();
        journal.Append("step_started", new Dictionary<string, object> {
            {"token", token}, {"action", action}, {"index", index}, {"instruction", instruction} });
        string text = Request(owner, wire, token, action, index);
        if (!discard) {
            var reply = Decode(text);
            journal.Append("step_observed", new Dictionary<string, object> { {"reply", reply} });
            return reply;
        }
        // The transport reply arrived; deliberately omit its application receipt.
        journal.Append("application_receipt_discarded", new Dictionary<string, object> {
            {"transport_failure", false}, {"setter_replayed", false} });
        var reconciled = Observe(owner, wire, token);
        journal.Append("reconciled", new Dictionary<string, object> { {"reply", reconciled}, {"read_only", true} });
        return reconciled;
    }

    public static object Run(CodeComponent owner, Identifiable prepare, Identifiable cloneProbe,
        string directory, object domain, System.Action<Identifiable> retain, System.Action verify)
    {
        Directory.CreateDirectory(directory);
        var cases = new List<object>();
        for (int position = 0; position < 3; ++position) {
            verify();
            var capture = new InstanceMethodCall(cloneProbe, "value:value:value:", owner);
            capture.appendParameter(owner); capture.appendParameter("capture"); capture.appendParameter((Identifiable)null);
            owner.call(capture); var checkpoint = capture.ResultRemoteObject; retain(checkpoint);
            if (owner.getClassName(checkpoint) != "Dictionary") throw new Exception("Private remote checkpoint missing");
            string token = Guid.NewGuid().ToString("N");
            var make = new InstanceMethodCall(prepare, "value:value:value:", owner);
            make.appendParameter(owner); make.appendParameter(checkpoint); make.appendParameter(token); owner.call(make);
            Identifiable wire;
            try { wire = make.ResultRemoteObject; }
            catch (WrongResultTypeException) { throw new Exception("Private remote preparation refused: " + make.ResultString); }
            retain(wire);
            if (owner.getClassName(wire) != "BlockContextTemplate") throw new Exception("Private remote wire missing: " + make.ResultString);
            var exported = Decode(Request(owner, wire, token, "export", 0));
            int count = Convert.ToInt32(Status(exported)["primitive_count"]);
            int stop = position == 0 ? 1 : position == 1 ? (count + 1) / 2 : count;
            var steps = (object[])exported["steps"];
            string root = Path.Combine(directory, "position-" + position);
            var journal = new AscetClassStudyJournal(root, Path.Combine(root, "unused-private-pending.json"), domain);
            journal.Append("intent", new Dictionary<string, object> { {"profile", "private_step_journal_v1"},
                {"domain", domain}, {"token", token}, {"stop", stop}, {"production_write_authorized", false} });
            journal.Append("prepared", new Dictionary<string, object> { {"export", exported} });
            if (position == 0) {
                string failureRoot = Path.Combine(directory, "writeahead-failure");
                string saved = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT");
                AscetClassStudyJournal failureJournal;
                try {
                    Environment.SetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT", "step_started");
                    failureJournal = new AscetClassStudyJournal(failureRoot, Path.Combine(failureRoot, "unused.json"), domain);
                } finally { Environment.SetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT", saved); }
                failureJournal.Append("intent", new Dictionary<string, object> { {"profile", "private_step_journal_v1"},
                    {"domain", domain}, {"token", token}, {"stop", stop}, {"production_write_authorized", false} });
                failureJournal.Append("prepared", new Dictionary<string, object> { {"export", exported} });
                bool refused = false;
                try { Dispatch(owner, wire, token, "step", 1, steps[0], failureJournal, verify, false); }
                catch (IOException error) { refused = error.Message == "Injected Class journal write failure before step_started"; }
                var untouched = Observe(owner, wire, token);
                if (!refused || Convert.ToInt32(Status(untouched)["executed"]) != 0 || !(bool)untouched["current_matches"])
                    throw new Exception("Failed private WAL dispatched a primitive");
                failureJournal.Append("finished", new Dictionary<string, object> { {"status", "writeahead_refused"}, {"reply", untouched} });
            }
            Dictionary<string, object> reply = exported;
            for (int index = 1; index <= stop; ++index)
                reply = Dispatch(owner, wire, token, "step", index, steps[index - 1], journal, verify, index == stop);
            if (Convert.ToInt32(Status(reply)["executed"]) != stop || !(bool)Status(reply)["actual_observation_complete"])
                throw new Exception("Remote primitive result not observed");
            if (stop == count && !(bool)reply["desired_checkpoint_matches"])
                throw new Exception("Final remote primitive did not restore the complete original private checkpoint");
            Refuse(owner, wire, token, "step", stop, journal, "Private primitive expectation changed");
            if (stop + 2 <= count)
                Refuse(owner, wire, token, "step", stop + 2, journal, "Private primitive expectation changed");
            var recovery = (object[])reply["recovery_plan"];
            if (recovery.Length == 0) throw new Exception("Private remote execution lacks actual touched changes");
            reply = Dispatch(owner, wire, token, "perturb", 0, exported["independent_ref"], journal, verify, false);
            for (int index = 1; index <= recovery.Length; ++index)
                reply = Dispatch(owner, wire, token, "recover", index, recovery[index - 1], journal, verify, index == recovery.Length);
            if ((string)Status(reply)["state"] != "recovered" || (bool)reply["current_matches"] ||
                    Convert.ToInt32(reply["independent_x"]) != Convert.ToInt32(exported["independent_x_before"]) + 7)
                throw new Exception("Private remote recovery did not preserve the independent field");
            Refuse(owner, wire, token, "recover", recovery.Length + 1, journal, "Private CURRENT recovery conflict");
            Refuse(owner, wire, token, "step", 1, journal, "Private execution cannot replay");
            reply = Dispatch(owner, wire, token, "reset", 0, exported["independent_ref"], journal, verify, false);
            if (!(bool)reply["current_matches"])
                throw new Exception("Private remote full CURRENT not restored");
            journal.Append("finished", new Dictionary<string, object> { {"status", "recovered"}, {"reply", reply} });
            cases.Add(new Dictionary<string, object> { {"position", position}, {"stop", stop}, {"primitive_count", count},
                {"journal", root}, {"execution_primitives", stop}, {"recovery_cells", recovery.Length},
                {"application_receipts_discarded", 2}, {"transport_failures_tested", false}, {"current_restored", true},
                {"independent_field_preserved", true}, {"model_setters_called", 0}, {"write_authorized", false} });
        }
        return new Dictionary<string, object> { {"profile", "native_private_remote_study_v1"}, {"cases", cases},
            {"writeahead_failure_journal", Path.Combine(directory, "writeahead-failure")},
            {"model_setters_called", 0}, {"write_authorized", false}, {"production_inverse_available", false} };
    }
}
