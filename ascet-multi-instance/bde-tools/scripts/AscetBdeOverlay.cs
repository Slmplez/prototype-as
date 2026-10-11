using System;
using System.IO;
using System.Text;
using System.Collections.Generic;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Presentation-only fixed template, no model setter, save, selection or Undo.
class AscetBdeOverlay
{
    static void Checkpoint(Dictionary<string, object> result, string path, string stage)
    {
        result["stage"] = stage;
        File.WriteAllText(path, AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
    }

    static int Main(string[] args)
    {
        if (args.Length != 5 || File.Exists(args[3])) return 2;
        Ascet ascet = null; AscetDataBase db = null; CodeComponent component = null; Identifiable block = null, databaseIdentity = null;
        var result = new Dictionary<string, object>(); int exit = 1;
        result["status"] = "started";
        try {
            if (args[1] != "show" && args[1] != "clear" && args[1] != "status"
                && args[1] != "group_show" && args[1] != "group_clear" && args[1] != "group_status") throw new Exception("Unknown presentation mode");
            string path = args[0].Trim('\\');
            var domain = AscetStructureRead.Json.Deserialize<Dictionary<string,string>>(File.ReadAllText(args[4]));
            string diagram = domain.ContainsKey("diagram") ? domain["diagram"] : "Main";
            string presentationToken = domain.ContainsKey("presentation_token") ? domain["presentation_token"] : null;
            if (presentationToken != null && !System.Text.RegularExpressions.Regex.IsMatch(presentationToken, @"^(edit|flow)_[0-9a-f]{64}$")) throw new Exception("Exact diff ownership token required");
            if (!System.Text.RegularExpressions.Regex.IsMatch(diagram, @"^Main(/h(0|[1-9][0-9]*)){0,16}$")) throw new Exception("Exact ordinary diagram scope required");
            result["diagram"] = diagram;
            if (AscetStructureRead.ProcessEpoch() != domain["process_epoch"]) throw new Exception("Stale ASCET process");
            if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) throw new Exception("Sandbox only");
            string[] commands = AscetStructureRead.Json.Deserialize<string[]>(File.ReadAllText(args[2]));
            if (commands.Length > 600 || commands.Length % 6 != 0) throw new Exception("Bounded primitives required");
            for (int i=0; i<commands.Length; i+=6) {
                if (commands[i+1] != "255" && commands[i+1] != "32768") throw new Exception("Unknown diff color");
                if (commands[i] == "text") {
                    for (int j=2; j<4; ++j) { int n; if (!Int32.TryParse(commands[i+j], out n) || Math.Abs((long)n)>16777215) throw new Exception("Invalid text coordinate"); }
                    if (commands[i+5] != "0" || commands[i+4].Length == 0 || commands[i+4].Length > 60) throw new Exception("Bounded ghost text required");
                    foreach (char ch in commands[i+4]) if (ch < 32 || ch > 126) throw new Exception("Printable ASCII ghost text required");
                    continue;
                }
                if (commands[i] == "model") {
                    if (!System.Text.RegularExpressions.Regex.IsMatch(commands[i+2], @"^m_([0-9a-f]{2}){8,64}$")) throw new Exception("Exact model OID required");
                    int line;
                    if (!Int32.TryParse(commands[i+3], out line) || line < 0 || line >= 100 || commands[i+5] != "0") throw new Exception("Bounded model text line required");
                    if (commands[i+4].Length == 0 || commands[i+4].Length > 60) throw new Exception("Bounded model text required");
                    foreach (char ch in commands[i+4]) if (ch < 32 || ch > 126) throw new Exception("Printable ASCII model text required");
                    continue;
                }
                if (commands[i] != "line" && commands[i] != "rect") throw new Exception("Unknown primitive");
                for (int j=1; j<6; ++j) { int n; if (!Int32.TryParse(commands[i+j], out n) || Math.Abs((long)n)>16777215) throw new Exception("Invalid coordinate/color"); }
            }
            Checkpoint(result, args[3], "connect");
            Cebra.initCebraToolIndependent(false,false,null,null); Cebra.initialized=true;
            string port=Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet",new ToolEntry("127.0.0.1",port==null?32503:Int32.Parse(port)));
            Checkpoint(result, args[3], "ascet_handle");
            ascet=new Ascet(); if(ascet.nullHandle()) throw new Exception("No ASCET handle");
            Checkpoint(result, args[3], "dirty_before");
            var dirty=ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"]=dirty.Length;
            if(dirty.Length!=0) throw new Exception("Unsaved editor; presentation deferred");
            Checkpoint(result, args[3], "database");
            db=ascet.GetCurrentDataBase(); result["database"]=db.GetName();
            if (!String.Equals(db.GetName(), domain["database"],StringComparison.OrdinalIgnoreCase)) throw new Exception("Journal database differs");
            Checkpoint(result, args[3], "component");
            component=db.GetItemInFolder(path.Substring(path.LastIndexOf('\\')+1),"BDE_Tool_Experiments") as CodeComponent;
            if(component==null) throw new Exception("No component"); result["oid"]=component.GetOID();
            if(component.GetOID()!=domain["oid"]) throw new Exception("Journal component identity differs");
            if (domain.ContainsKey("database_session")) {
                databaseIdentity = AscetStructureRead.Compile(component, "bde_database_identity.st");
                if (AscetStructureRead.DatabaseIdentity(component, db, databaseIdentity) != domain["database_session"])
                    throw new Exception("Journal native database session differs");
            }
            Checkpoint(result, args[3], "compile");
            block=AscetStructureRead.Compile(component,"bde_overlay.st");
            var attempts = new List<string>();
            for (int attempt=0; attempt<3; ++attempt) {
                var call=new InstanceMethodCall(block,"value:value:value:",component);
                call.appendParameter(component); call.appendParameter(args[1] + "|" + diagram + (presentationToken == null ? "" : "|" + presentationToken)); call.appendParameter(commands);
                Checkpoint(result, args[3], "dispatch_" + args[1]);
                component.call(call);
                string outcome=call.ResultString; attempts.Add(outcome); result["presentation"]=outcome;
                Checkpoint(result, args[3], "returned_" + args[1]);
                // Only this explicit pre-registration result is safe to retry.
                // Let the native UI realize the newly opened editor; no edit is replayed.
                if ((args[1]!="show" && args[1]!="group_show") || !outcome.Contains("UI_NOT_READY:")) break;
                if (attempt<2) System.Threading.Thread.Sleep(50);
            }
            result["attempts"]=attempts;
            // Report actual canvas execution independently of successful registration.
            // This is a fixed read-only status call; no model edit is retried.
            if (args[1] != "status" && args[1] != "group_status"
                    && !((string)result["presentation"]).StartsWith("BDE_OVERLAY_ERROR:")) {
                var statusCall = new InstanceMethodCall(block, "value:value:value:", component);
                statusCall.appendParameter(component);
                statusCall.appendParameter((args[1].StartsWith("group_") ? "group_status" : "status")
                    + "|" + diagram + (presentationToken == null ? "" : "|" + presentationToken));
                statusCall.appendParameter(new string[0]);
                Checkpoint(result, args[3], "observe_overlay");
                component.call(statusCall);
                string status = statusCall.ResultString; result["overlay_status"] = status;
                bool shown = args[1] == "show" || args[1] == "group_show";
                if (shown) {
                    var fields = new Dictionary<string, string>();
                    foreach (string part in status.Split('|')) {
                        int separator = part.IndexOf('=');
                        if (separator > 0) fields.Add(part.Substring(0, separator), part.Substring(separator + 1));
                    }
                    int draws, exposes;
                    if (!status.StartsWith("registered|") || !fields.ContainsKey("draws")
                            || !Int32.TryParse(fields["draws"], out draws) || draws < 1
                            || !fields.ContainsKey("error") || fields["error"] != "none"
                            || !fields.ContainsKey("token") || fields["token"] != (presentationToken ?? "")
                            || !fields.ContainsKey("scope_active") || fields["scope_active"] != "true"
                            || !fields.ContainsKey("undo_stream_unchanged") || fields["undo_stream_unchanged"] != "true")
                        throw new Exception("Original canvas drawing/status identity differs: " + status);
                    result["drawing_calls"] = draws;
                    if (fields.ContainsKey("exposes") && Int32.TryParse(fields["exposes"], out exposes))
                        result["expose_callbacks"] = exposes;
                } else if (status != "absent") throw new Exception("Overlay still registered after clear: " + status);
            }
            result["dirty_after"]=ascet.GetAllEditorsWithUnsavedChanges().Length;
            if (AscetStructureRead.ProcessEpoch() != domain["process_epoch"] ||
                databaseIdentity != null && AscetStructureRead.DatabaseIdentity(component, db, databaseIdentity) != domain["database_session"])
                throw new Exception("Native identity changed during presentation");
            if(((string)result["presentation"]).StartsWith("BDE_OVERLAY_ERROR:")) throw new Exception((string)result["presentation"]);
            result["status"]="ok"; exit=0;
        } catch(Exception e) { result["status"]="error"; result["error"]=e.ToString(); }
        finally {
            Checkpoint(result, args[3], "cleanup");
            if(block!=null) { var c=ascet.createControlMessageCall("destroyObjectForId:"); c.appendParameter(block.getIdentifier()); ascet.call(c); c.getResultVoid(); }
            if(databaseIdentity!=null) { var c=ascet.createControlMessageCall("destroyObjectForId:"); c.appendParameter(databaseIdentity.getIdentifier()); ascet.call(c); c.getResultVoid(); }
            foreach(SmalltalkToolAPI a in new SmalltalkToolAPI[]{component,db}) if(a!=null) {a.finalize();GC.SuppressFinalize(a);}
            GC.Collect();GC.WaitForPendingFinalizers();
            if(ascet!=null&&!ascet.nullHandle()){ascet.DisconnectFromTool();GC.SuppressFinalize(ascet);}
        }
        Checkpoint(result, args[3], "complete");
        Environment.Exit(exit); return exit;
    }
}
