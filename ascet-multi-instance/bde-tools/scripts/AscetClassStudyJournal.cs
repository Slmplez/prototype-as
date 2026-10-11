using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;

// Write-ahead evidence for the isolated Class executor, not a production edit API.
class AscetClassStudyJournal
{
    readonly string root;
    readonly string pending;
    readonly object domain;
    readonly string faultEvent;
    readonly string faultCommand;
    readonly string faultOwner;
    object recoveryHead;
    string activeCommand;
    string activeOwner;
    int sequence;
    string previous;
    bool faultInjected;
    public bool Failed { get; private set; }
    public string ActiveStep { get; private set; }
    public int Dispatched { get; private set; }
    public string DatabaseSession { get; set; }
    public Action VerifyIdentity { get; set; }
    public string ContinuationToken { get; set; }
    public string LastChecksum { get { return previous; } }

    public AscetClassStudyJournal(string directory, string pendingPath, object identity)
    {
        if (Directory.Exists(directory)) throw new Exception("Existing Class journal cannot dispatch again");
        root = directory; pending = pendingPath; domain = identity;
        faultEvent = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT");
        faultCommand = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_COMMAND");
        faultOwner = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_OWNER");
        Directory.CreateDirectory(root);
    }

    public static string Hash(string value)
    {
        using (var hash = SHA256.Create())
            return BitConverter.ToString(hash.ComputeHash(Encoding.UTF8.GetBytes(value))).Replace("-", "").ToLowerInvariant();
    }

    static string Canonical(object value)
    {
        var map = value as IDictionary<string, object>;
        if (map != null) {
            var sorted = new SortedDictionary<string, object>(StringComparer.Ordinal);
            foreach (var item in map) sorted.Add(item.Key, item.Value);
            var parts = new List<string>();
            foreach (var item in sorted) parts.Add(AscetStructureRead.Json.Serialize(item.Key) + ":" + Canonical(item.Value));
            return "{" + String.Join(",", parts.ToArray()) + "}";
        }
        var items = value as System.Collections.IEnumerable;
        if (items != null && !(value is string)) {
            var parts = new List<string>();
            foreach (var item in items) parts.Add(Canonical(item));
            return "[" + String.Join(",", parts.ToArray()) + "]";
        }
        if (value != null && !(value is string) && !value.GetType().IsPrimitive && !(value is decimal))
            return Canonical(AscetStructureRead.Json.DeserializeObject(AscetStructureRead.Json.Serialize(value)));
        return AscetStructureRead.Json.Serialize(value);
    }

    public static bool Same(object left, object right) { return Canonical(left) == Canonical(right); }

    public static List<Dictionary<string, object>> ReadEvents(string directory, out string checksum)
    {
        string[] files = Directory.GetFiles(directory, "*.json"); Array.Sort(files, StringComparer.Ordinal);
        var rows = new List<Dictionary<string, object>>();
        checksum = null;
        for (int i = 0; i < files.Length; ++i) {
            var row = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(files[i]));
            if (row.Count != 6 || !(row["sequence"] is int) || (int)row["sequence"] != i ||
                Path.GetFileName(files[i]) != i.ToString("D6") + ".json" || !Same(row["previous"], checksum))
                throw new Exception("CURRENT journal sequence differs");
            string kind = (string)row["kind"], utc = (string)row["utc"], text = (string)row["payload_json"];
            string calculated = Hash(i + "\n" + kind + "\n" + utc + "\n" + (checksum ?? "") + "\n" + text);
            if ((string)row["checksum"] != calculated) throw new Exception("CURRENT journal checksum differs");
            rows.Add(new Dictionary<string, object> { {"kind", kind},
                {"payload", AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(text)} });
            checksum = calculated;
        }
        if (rows.Count == 0 || (string)rows[0]["kind"] != "intent")
            throw new Exception("CURRENT journal intent absent");
        return rows;
    }

    public static Dictionary<string, object> ReadRetained(string studyPath, out object origin)
    {
        string studyText = File.ReadAllText(studyPath);
        var study = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(studyText);
        if ((string)study["status"] != "retained_applied" || !(bool)study["outstanding"])
            throw new Exception("A confirmed retained Class application is required");
        string source = (string)study["journal"];
        string[] files = Directory.GetFiles(source, "*.json"); Array.Sort(files, StringComparer.Ordinal);
        if (files.Length == 0) throw new Exception("Retained Class journal is missing");
        string previous = null;
        Dictionary<string, object> intent = null, prepared = null, after = null, finished = null;
        var plan = new List<Dictionary<string, object>>();
        Dictionary<string, object> active = null;
        bool preflight = false;
        int completed = 0;
        for (int i = 0; i < files.Length; ++i) {
            var row = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(files[i]));
            if (row.Count != 6 || !(row["sequence"] is int) || (int)row["sequence"] != i ||
                Path.GetFileName(files[i]) != i.ToString("D6") + ".json" || !Same(row["previous"], previous))
                throw new Exception("Retained Class journal sequence is invalid");
            string kind = (string)row["kind"], utc = (string)row["utc"], payload = (string)row["payload_json"];
            if ((string)row["checksum"] != Hash(i + "\n" + kind + "\n" + utc + "\n" + (previous ?? "") + "\n" + payload))
                throw new Exception("Retained Class journal checksum is invalid");
            if (finished != null) throw new Exception("Retained Class journal has events after terminal");
            var body = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(payload);
            if (i == 0 && kind != "intent") throw new Exception("Retained Class journal has no intent");
            if (kind == "intent") { if (intent != null || i != 0) throw new Exception("Duplicate retained intent"); intent = body; }
            else if (kind == "prepared_all") {
                if (prepared != null || completed != 0) throw new Exception("Duplicate retained preparation");
                prepared = body;
                var owners = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(body["owners"]);
                Dictionary<string, object> definition = null;
                var planIdentity = (Dictionary<string, object>)intent["domain"];
                string operation = (string)intent["operation"];
                if (operation != "closed_delete_argument" && operation != "closed_delete_return" && operation != "closed_create_argument")
                    throw new Exception("Invalid retained Class operation");
                Action<string, Dictionary<string, object>, string> add = (step, owner, command) => {
                    plan.Add(new Dictionary<string, object> { {"step", step}, {"phase", "apply"},
                        {"component", owner["component"]}, {"oid", owner["oid"]}, {"command", command},
                        {"database_session", intent["database_session"]} });
                };
                for (int ix = 0; ix < owners.Length; ++ix) {
                    if (Same(owners[ix]["oid"], planIdentity["oid"])) definition = owners[ix];
                    if (operation != "closed_create_argument")
                        add("prune_" + ix, owners[ix], operation == "closed_delete_argument" ? "prune_argument" : "prune_return");
                }
                if (definition == null) throw new Exception("Retained Class definition owner missing");
                add("signature_apply", definition, operation.Substring(7));
                for (int ix = 0; ix < owners.Length; ++ix) add("store_" + ix, owners[ix], "apply");
            } else if (kind == "preflight_observed") {
                if (prepared == null || preflight || !Same(prepared, body))
                    throw new Exception("Retained Class preflight is invalid");
                preflight = true;
            } else if (kind == "step_started") {
                if (!preflight || active != null || after != null || completed >= plan.Count || !Same(body, plan[completed]))
                    throw new Exception("Retained Class dispatch plan is invalid");
                active = body;
            } else if (kind == "step_completed") {
                if (active == null || !Same(body["step"], active["step"]))
                    throw new Exception("Retained Class completion is invalid");
                string command = (string)active["command"];
                string expected = command == "apply" ? "applied" : command.StartsWith("prune_") ? "pruned" : "added";
                if (!Same(body["native_result"], expected)) throw new Exception("Retained Class native receipt is not complete");
                active = null; ++completed;
            }
            else if (kind == "observed") {
                if ((string)body["phase"] != "after" || after != null || active != null || completed != plan.Count)
                    throw new Exception("Invalid retained observation");
                after = body;
            }
            else if (kind == "finished") finished = body;
            else if (kind != "intent") throw new Exception("Unknown retained Class event");
            previous = (string)row["checksum"];
        }
        if (intent == null || prepared == null || after == null || finished == null ||
            !preflight || active != null || completed != plan.Count ||
            (string)intent["execution_phase"] != "apply_only" || (string)finished["status"] != "retained_applied" ||
            !(bool)finished["outstanding"])
            throw new Exception("Retained Class journal lacks confirmed application evidence");
        var identity = (Dictionary<string, object>)intent["domain"];
        foreach (string key in new[] { "database", "oid" })
            if (!Same(identity[key], study[key])) throw new Exception("Retained Class journal identity mismatch");
        if (!Same(identity["process_epoch"], study["ascet_process_epoch"]))
            throw new Exception("Retained Class journal process mismatch");
        foreach (string key in new[] { "component", "operation", "selector", "database_session" })
            if (!Same(intent[key], study[key])) throw new Exception("Retained Class journal request mismatch");
        foreach (string phase in new[] { "before", "after" }) {
            var observed = phase == "before" ? prepared : after;
            if (!Same(observed["observation"], study[phase])) throw new Exception("Retained Class raw observation mismatch");
            var owners = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(observed["owners"]);
            for (int i = 0; i < owners.Length; ++i)
                if (!Same(owners[i]["scopes"], study["owner_scopes_" + phase + "_" + i]))
                    throw new Exception("Retained Class owner scope mismatch");
        }
        origin = new Dictionary<string, object> { {"journal", source}, {"terminal_checksum", previous},
            {"study_sha256", Hash(studyText)} };
        return study;
    }

    public void VerifyPending()
    {
        if (!File.Exists(pending)) {
            if (!String.IsNullOrEmpty(ContinuationToken) || Dispatched != 0)
                throw new Exception("Retained Class instance quarantine is missing");
            return;
        }
        var marker = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(pending));
        string expected = String.IsNullOrEmpty(ContinuationToken) ? root : ContinuationToken;
        if ((Dispatched == 0 && String.IsNullOrEmpty(ContinuationToken)) ||
            (string)marker["native_token"] != expected || !Same(marker["domain"], domain))
            throw new Exception("ASCET instance already has an unconfirmed mutation");
        if (recoveryHead != null && (!marker.ContainsKey("current_recovery_head") ||
            !Same(marker["current_recovery_head"], recoveryHead)))
            throw new Exception("CURRENT recovery head changed during dispatch");
    }

    public void AttachCurrentRecoveryHead(object expectedHead)
    {
        VerifyPending();
        if (String.IsNullOrEmpty(ContinuationToken) || sequence != 1 || recoveryHead != null)
            throw new Exception("CURRENT recovery head requires one durable intent");
        string originalText = File.ReadAllText(pending);
        var marker = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(originalText);
        object prior = marker.ContainsKey("current_recovery_head") ? marker["current_recovery_head"] : null;
        if (!Same(prior, expectedHead)) throw new Exception("CURRENT recovery history omitted or changed its latest head");
        var next = new Dictionary<string, object> { {"journal", root}, {"intent_checksum", previous} };
        marker["current_recovery_head"] = next;
        string temporary = pending + "." + Guid.NewGuid().ToString("N") + ".tmp";
        try {
            using (var stream = new FileStream(temporary, FileMode.CreateNew, FileAccess.Write, FileShare.None)) {
                byte[] bytes = new UTF8Encoding(false).GetBytes(AscetStructureRead.Json.Serialize(marker));
                stream.Write(bytes, 0, bytes.Length); stream.Flush(true);
            }
            if (File.ReadAllText(pending) != originalText) throw new Exception("CURRENT quarantine changed before head publication");
            File.Replace(temporary, pending, null);
            recoveryHead = next;
        } finally { if (File.Exists(temporary)) File.Delete(temporary); }
    }

    static void Publish(string path, string text)
    {
        string temporary = path + "." + Guid.NewGuid().ToString("N") + ".tmp";
        try {
            using (var stream = new FileStream(temporary, FileMode.CreateNew, FileAccess.Write, FileShare.None)) {
                byte[] bytes = new UTF8Encoding(false).GetBytes(text);
                stream.Write(bytes, 0, bytes.Length); stream.Flush(true);
            }
            File.Move(temporary, path);
        } finally { if (File.Exists(temporary)) File.Delete(temporary); }
    }

    public void Append(string kind, object payload)
    {
        try {
            if (!faultInjected && faultEvent == kind && (String.IsNullOrEmpty(faultCommand) ||
                activeCommand == faultCommand) && (String.IsNullOrEmpty(faultOwner) || activeOwner == faultOwner)) {
                faultInjected = true; throw new IOException("Injected Class journal write failure before " + kind);
            }
            string utc = DateTime.UtcNow.ToString("o");
            string body = AscetStructureRead.Json.Serialize(payload);
            string checksum = Hash(sequence + "\n" + kind + "\n" + utc + "\n" + (previous ?? "") + "\n" + body);
            var envelope = new Dictionary<string, object> { {"sequence", sequence}, {"kind", kind},
                {"utc", utc}, {"previous", previous}, {"payload_json", body}, {"checksum", checksum} };
            Publish(Path.Combine(root, sequence.ToString("D6") + ".json"), AscetStructureRead.Json.Serialize(envelope));
            ++sequence; previous = checksum;
        } catch { Failed = true; throw; }
    }

    public string Dispatch(string step, string phase, string component, string oid, string command, Func<string> action)
    {
        if (Failed || ActiveStep != null) throw new Exception("Class journal cannot continue an unconfirmed dispatch");
        if (VerifyIdentity == null || String.IsNullOrEmpty(DatabaseSession))
            throw new Exception("Class dispatch requires native database identity verification");
        VerifyPending();
        VerifyIdentity();
        Append("step_started", new Dictionary<string, object> { {"step", step}, {"phase", phase},
            {"component", component}, {"oid", oid}, {"command", command}, {"database_session", DatabaseSession} });
        ActiveStep = step;
        activeCommand = command;
        activeOwner = oid;
        if (!File.Exists(pending)) {
            Publish(pending, AscetStructureRead.Json.Serialize(new Dictionary<string, object> {
                {"domain", domain}, {"command", "class_interface_study"}, {"native_token", root}, {"automatic_retry", false} }));
        }
        ++Dispatched;
        if (!faultInjected && faultEvent == "before_native" &&
            (String.IsNullOrEmpty(faultCommand) || command == faultCommand) &&
            (String.IsNullOrEmpty(faultOwner) || oid == faultOwner)) {
            faultInjected = true;
            throw new IOException("Injected Class journal fault before native " + step);
        }
        string value = action();
        Append("step_completed", new Dictionary<string, object> { {"step", step}, {"native_result", value} });
        ActiveStep = null;
        activeCommand = null;
        activeOwner = null;
        return value;
    }
}
