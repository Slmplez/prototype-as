using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;

class AscetProjectMessagesRead
{
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();

    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing public API handle");
        Kept.Add(value); return value;
    }

    static string Alias(AscetModelElement model)
    {
        var call = model.createInstanceMethodCall("element"); model.call(call);
        var element = call.ResultRemoteObject;
        try {
            var oid = new InstanceMethodCall(element, "xmlOID", model); model.call(oid);
            var bytes = oid.ResultObject as byte[];
            if (bytes != null) return "bytes:" + BitConverter.ToString(bytes).Replace("-", "").ToLowerInvariant();
            var value = oid.ResultObject as string;
            if (value != null) return "string:" + value;
            throw new Exception("Unsupported public message alias");
        }
        finally {
            var release = model.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(element.getIdentifier()); model.call(release); release.getResultVoid();
        }
    }

    static Dictionary<string, object> Declaration(AscetModelElement model)
    {
        var owner = Keep(model.GetOwnerForElement());
        return new Dictionary<string, object> {
            {"owner_oid", owner.GetOID()}, {"owner_path", owner.GetNameWithPath()},
            {"alias", Alias(model)}, {"name", model.GetName()}, {"scope", model.GetScope()},
            {"message", model.IsMessage()}, {"imported", model.IsImported()}, {"exported", model.IsExported()},
            {"send", model.IsSendMessage()}, {"receive", model.IsReceiveMessage()}, {"send_receive", model.IsSendReceiveMessage()}
        };
    }

    static Dictionary<string, object> PublicRead(AscetProject project, HashSet<string> names)
    {
        var modules = new List<object>(); var declarations = new List<object>(); var bindings = new List<object>();
        var instanceRows = new List<object>(); var members = new Dictionary<string, AscetModelElement[]>();
        var seen = new HashSet<string>(); var instances = project.GetAllModules();
        if (instances == null || instances.Length > 128) throw new Exception("Module enumeration unavailable or too large");
        foreach (var item in instances) {
            var instance = Keep(item); var definition = Keep(instance.GetRepresentedClass() as CodeComponent);
            var oid = definition.GetOID();
            modules.Add(new Dictionary<string, object> { {"alias", Alias(instance)}, {"name", instance.GetName()},
                {"definition_oid", oid}, {"definition_path", definition.GetNameWithPath()} });
            ExpandInstance(instance, definition, project.GetOID(), new string[0], new string[0],
                new HashSet<string> { project.GetOID() }, instanceRows, members);
            if (!seen.Add(oid)) continue;
            var elements = definition.GetAllModelElements();
            if (elements == null || elements.Length > 4096) throw new Exception("Public declaration enumeration unavailable or too large");
            foreach (var element in elements) {
                var model = Keep(element);
                if (model.IsMethodArgument() || model.IsMethodReturn() || model.IsMethodLocal()) continue;
                if (!model.IsMessage() || (names.Count != 0 && !names.Contains(model.GetName()))) continue;
                var row = Declaration(model); declarations.Add(row);
                if (model.IsImported()) {
                    var selected = project.GetExportForImport(model);
                    bindings.Add(new Dictionary<string, object> { {"import", row},
                        {"native_selected", selected == null || selected.nullHandle() ? null : Declaration(Keep(selected))},
                        {"null_meaning", "null_or_wrapper_error"} });
                }
            }
        }
        return new Dictionary<string, object> { {"modules", modules}, {"declarations", declarations},
            {"bindings", bindings}, {"instances", instanceRows} };
    }

    static void ExpandInstance(AscetModelElement model, de.etas.cebra.toolAPI.Common.Component definition,
        string ownerOID, string[] parent, string[] parentNames, HashSet<string> ancestors,
        List<object> rows, Dictionary<string, AscetModelElement[]> members)
    {
        if (rows.Count >= 4096) throw new Exception("Public component instance bound exceeded");
        string oid = definition.GetOID(), alias = Alias(model), name = model.GetName();
        var chain = new List<string>(parent); chain.Add(alias);
        var names = new List<string>(parentNames); names.Add(name);
        bool code = definition is AscetClass || definition is AscetModule;
        string status = !code ? "leaf_definition" : ancestors.Contains(oid) ? "recursive_definition_stopped"
            : chain.Count >= 16 ? "depth_limit_reached" : "expanded";
        rows.Add(new Dictionary<string, object> { {"owner_oid", ownerOID}, {"alias", alias}, {"name", name},
            {"chain", chain.ToArray()}, {"name_chain", names.ToArray()}, {"definition_oid", oid},
            {"definition_path", definition.GetNameWithPath()},
            {"instance_kind", definition is AscetModule ? "Module" : definition is AscetClass ? "Class" : "other"},
            {"expansion", status} });
        if (status != "expanded") return;
        AscetModelElement[] children;
        if (!members.TryGetValue(oid, out children)) {
            children = ((CodeComponent)definition).GetAllModelElements();
            if (children == null || children.Length > 4096) throw new Exception("Public instance members unavailable or too large");
            foreach (var child in children) Keep(child);
            members.Add(oid, children);
        }
        var next = new HashSet<string>(ancestors); next.Add(oid);
        foreach (var child in children) {
            if (child.IsMethodArgument() || child.IsMethodReturn() || child.IsMethodLocal() || !child.IsComplex()) continue;
            var represented = Keep(child.GetRepresentedClass());
            ExpandInstance(child, represented, oid, chain.ToArray(), names.ToArray(), next, rows, members);
        }
    }

    static int Main(string[] args)
    {
        if ((args.Length != 4 && args.Length != 5) || File.Exists(args[2])) return 2;
        bool nativeOnly = args.Length == 5 && args[4] == "--native-only";
        if (args.Length == 5 && !nativeOnly) return 2;
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
            if (slash < 0) throw new Exception("Full Project path required");
            var project = Keep(db.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as AscetProject);
            result["project"] = project.GetNameWithPath(); result["project_oid"] = project.GetOID();
            var names = args[3] == "all" ? new string[0] : args[3].Split(',');
            var block = AscetStructureRead.Compile(project, "bde_structure_read.st");
            var databaseIdentity = AscetStructureRead.Compile(project, "bde_database_identity.st");
            try {
                string identity = AscetStructureRead.DatabaseIdentity(project, db, databaseIdentity);
                if (!nativeOnly) {
                    result["target_guard"] = AscetStructureRead.Read(project, block, "guard", names);
                    result["public_before"] = PublicRead(project, new HashSet<string>(names));
                }
                var readTimer = Stopwatch.StartNew();
                result["structure"] = AscetStructureRead.Read(project, block, "-", names);
                result["native_query_ms"] = readTimer.Elapsed.TotalMilliseconds;
                if (!nativeOnly) {
                    result["target_guard_after"] = AscetStructureRead.Read(project, block, "guard", names);
                    result["public_after"] = PublicRead(project, new HashSet<string>(names));
                }
                result["read_strategy"] = nativeOnly ? "fixed_native_project_messages" : "public_native_public_oracle";
                var current = Keep(ascet.GetCurrentDataBase());
                if (AscetStructureRead.DatabaseIdentity(project, current, databaseIdentity) != identity)
                    throw new Exception("Native database objects changed during Project observation");
                result["database_session"] = identity;
                result["database_identity_basis"] = "native_dbAccess_and_dbInterface_object_identity";
            }
            finally {
                foreach (var temporary in new[] { block, databaseIdentity }) {
                    var release = project.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(temporary.getIdentifier()); project.call(release); release.getResultVoid();
                }
            }
            result["status"] = "ok"; exit = 0;
        }
        catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (ascet != null && !ascet.nullHandle()) {
                try { var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length; }
                catch (Exception error) { result["dirty_after_error"] = error.ToString(); }
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
