using System;
using System.Collections.Generic;
using System.IO;
using System.Web.Script.Serialization;

// Runs the real journal gate with a counted delegate; no ASCET assemblies or calls.
class AscetStructureRead
{
    public static readonly JavaScriptSerializer Json = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue, RecursionLimit = 512 };
}

class AscetClassStudyJournalTest
{
    static int Main(string[] args)
    {
        int setters = 0;
        var result = new Dictionary<string, object>();
        try {
            var input = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
            if ((string)input["mode"] == "canonical") {
                var native = new { nodes = new [] { new { id = 1, native = new { native_class = "SGObject", id = 7 } } }, count = 1 };
                result["matches"] = AscetClassStudyJournal.Same(input["expected"], native);
            } else if ((string)input["mode"] == "retained") {
                object origin;
                var study = AscetClassStudyJournal.ReadRetained((string)input["study"], out origin);
                result["origin"] = origin; result["operation"] = study["operation"];
            } else {
                string root = (string)input["root"], pending = (string)input["pending"];
                var domain = input["domain"];
                if (input.ContainsKey("fault_event")) Environment.SetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT", (string)input["fault_event"]);
                if (input.ContainsKey("fault_command")) Environment.SetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_COMMAND", (string)input["fault_command"]);
                if (input.ContainsKey("fault_owner")) Environment.SetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_OWNER", (string)input["fault_owner"]);
                var journal = new AscetClassStudyJournal(root, pending, domain);
                journal.DatabaseSession = "native-session";
                journal.VerifyIdentity = () => { };
                journal.ContinuationToken = input.ContainsKey("continuation") ? (string)input["continuation"] : null;
                journal.Append("intent", new Dictionary<string, object> { {"domain", domain} });
                if (input.ContainsKey("attach_current_head") && (bool)input["attach_current_head"])
                    journal.AttachCurrentRecoveryHead(input.ContainsKey("expected_head") ? input["expected_head"] : null);
                journal.Dispatch("first", "apply", "owner", "oid", "apply", () => { ++setters; return "applied"; });
                if (input.ContainsKey("replace_after_first"))
                    File.WriteAllText(pending, AscetStructureRead.Json.Serialize(input["replace_after_first"]));
                if (input.ContainsKey("delete_after_first") && (bool)input["delete_after_first"])
                    File.Delete(pending);
                if (input.ContainsKey("second") && (bool)input["second"])
                    journal.Dispatch("second", "apply", "owner", "oid", "apply", () => { ++setters; return "applied"; });
                result["dispatched"] = journal.Dispatched;
            }
            result["status"] = "ok";
        } catch (Exception error) { result["status"] = "rejected"; result["error"] = error.Message; }
        result["setters"] = setters;
        Console.WriteLine(AscetStructureRead.Json.Serialize(result));
        return 0;
    }
}
