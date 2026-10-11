using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Research only: exact isolated source payload record forward/inverse; no model or cache edit.
class AscetSourcePayloadProbe
{
    static void Save(string path, object value)
    {
        byte[] data = new UTF8Encoding(false).GetBytes(AscetStructureRead.Json.Serialize(value) + "\n");
        using (var file = new FileStream(path, FileMode.CreateNew, FileAccess.Write, FileShare.Read)) {
            file.Write(data, 0, data.Length); file.Flush(true);
        }
    }
    static int Main(string[] args)
    {
        if (args.Length != 6) return 2;
        int pid = Int32.Parse(args[0]), index = Int32.Parse(args[5]);
        string epoch = args[1], dbPath = args[2], path = args[3], output = args[4];
        if (index < 1 || index > 16 || !System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) return 2;
        var result = new Dictionary<string, object> { {"passed", false}, {"payload_lifecycle_dispatched", false}, {"write_dispatched", false}, {"full_delivery", false} };
        var blocks = new List<Identifiable>(); Ascet ascet = null; AscetDataBase database = null; CodeComponent component = null;
        try {
            if (AscetStructureRead.ProcessEpoch() != epoch || !epoch.StartsWith(pid + "/", StringComparison.Ordinal))
                throw new Exception("Exact live epoch required");
            result["process_epoch"] = epoch;
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"))));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("Existing ASCET handle unavailable");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors defer serialization");
            database = ascet.GetCurrentDataBase();
            if (database == null || database.nullHandle() || database.GetName() != dbPath) throw new Exception("Exact database required");
            result["database"] = dbPath;
            int slash = path.LastIndexOf('\\');
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (component == null || component.nullHandle() || component.GetNameWithPath().Trim('\\') != path) throw new Exception("Exact Trial required");
            string oid = component.GetOID(); result["component_oid"] = oid;
            Func<string, Identifiable> compile = name => { var b = AscetStructureRead.Compile(component, name); blocks.Add(b); return b; };
            Func<Identifiable, Identifiable, Identifiable> bind = (factory, argument) => {
                var call = new InstanceMethodCall(factory, "value:", component); call.appendParameter(argument); component.call(call);
                var b = call.ResultRemoteObject; blocks.Add(b); return b;
            };
            var decoder = compile("bde_commit_reference_record.st");
            var collector = bind(bind(compile("bde_reference_leaf_nonempty_collector.st"), compile("bde_module_persistent_references.st")), decoder);
            collector = bind(compile("bde_persistent_owner_records.st"), collector);
            var kernel = bind(bind(compile("bde_source_payload_lifecycle.st"), collector), bind(compile("bde_persistent_owner_patch.st"), collector));
            var prep = new InstanceMethodCall(kernel, "value:value:", component);
            prep.appendParameter(component); prep.appendParameter(index); component.call(prep);
            Identifiable prepared;
            try { prepared = prep.ResultRemoteObject; }
            catch (WrongResultTypeException) { throw new Exception("Dump preparation refused: " + prep.ResultString); }
            blocks.Add(prepared);
            if (prepared == null || prepared.nullHandle() || component.getClassName(prepared) != "Dictionary") throw new Exception("Typed dump preparation required");
            var encoder = compile("bde_value_probe.st");
            var getBefore = new InstanceMethodCall(prepared, "at:", component); getBefore.appendParameter("prepared"); component.call(getBefore);
            var before = getBefore.ResultRemoteObject; blocks.Add(before);
            var beforeReader = bind(compile("bde_detached_value_reader.st"), before);
            var beforeEncoder = bind(encoder, beforeReader);
            var read = new InstanceMethodCall(beforeEncoder, "value:", component); read.appendParameter(component); component.call(read);
            object image = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(read.ResultString)); result["prepared"] = image;
            Save(Path.Combine(output, "prepared.json"), new { process_epoch = epoch, database = dbPath, component = path, component_oid = oid, prepared = image });
            Console.WriteLine("BDE_SOURCE_PAYLOAD_READY"); Console.Out.Flush();
            if (Console.ReadLine() != "WRITE_PRIVATE_LAYOUT_SOURCE_AND_RESTORE_ONCE") throw new Exception("No parent authorization; dump not dispatched");
            if (AscetStructureRead.ProcessEpoch() != epoch || component.GetOID() != oid || database.GetName() != dbPath) throw new Exception("Identity expired before dump");
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors changed before dump");
            var getExecute = new InstanceMethodCall(prepared, "at:", component); getExecute.appendParameter("execute"); component.call(getExecute);
            var execute = getExecute.ResultRemoteObject; blocks.Add(execute); var encodedExecute = bind(encoder, execute);
            Save(Path.Combine(output, "dispatch.json"), new { process_epoch = epoch, component_oid = oid, workbench_index = index, command = "isolated_source_payload_lifecycle_once", automatic_retry = false });
            result["payload_lifecycle_dispatched"] = true; result["write_dispatched"] = true;
            var invoke = new InstanceMethodCall(encodedExecute, "value:", component); invoke.appendParameter(component); component.call(invoke);
            string reply = invoke.ResultString;
            if (reply.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(reply);
            result["actual"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(reply));
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0 || AscetStructureRead.ProcessEpoch() != epoch || component.GetOID() != oid || database.GetName() != dbPath)
                throw new Exception("Identity/dirty state changed after dump");
            result["complete_reply_received"] = true;
            if (!(result["actual"] is Dictionary<string, object>)) throw new Exception("Typed source payload lifecycle receipt required: " + result["actual"]);
            result["passed"] = true;
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally {
            try {
                if (component != null) {
                    for (int i = blocks.Count - 1; i >= 0; --i) {
                        var release = component.createControlMessageCall("destroyObjectForId:"); release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                    }
                    component.finalize(); GC.SuppressFinalize(component);
                }
                if (database != null) { database.finalize(); GC.SuppressFinalize(database); }
                if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            } catch (Exception error) { result["cleanup_error"] = error.ToString(); result["passed"] = false; }
            Save(Path.Combine(output, "native.json"), result);
        }
        return (bool)result["passed"] ? 0 : 1;
    }
}
