using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed isolated no-op research, not a production writer or native inverse.
class AscetReferenceLeafNoopProbe
{
    static void Save(string path, object value)
    {
        byte[] data = new UTF8Encoding(false).GetBytes(AscetStructureRead.Json.Serialize(value) + "\n");
        using (var file = new FileStream(path, FileMode.CreateNew, FileAccess.Write, FileShare.Read)) {
            file.Write(data, 0, data.Length); file.Flush(true);
        }
    }
    static int Main(string[] args)
    { return Run(args, false); }
    public static int Run(string[] args, bool lifecycle)
    {
        if (args.Length != 5) return 2;
        int pid = Int32.Parse(args[0]); string expectedEpoch = args[1], expectedDatabase = args[2], path = args[3], output = args[4];
        if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) return 2;
        var result = new Dictionary<string, object> { {"passed", false}, {"write_dispatched", false}, {"full_delivery", false} };
        var blocks = new List<Identifiable>(); Ascet ascet = null; AscetDataBase database = null; CodeComponent component = null;
        try {
            string epoch = AscetStructureRead.ProcessEpoch(); result["process_epoch"] = epoch;
            if (epoch != expectedEpoch || !epoch.StartsWith(pid + "/", StringComparison.Ordinal)) throw new Exception("Exact existing endpoint epoch required");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            int port = Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"));
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port)); ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("Existing ASCET handle unavailable");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("No-op deferred by dirty editors");
            database = ascet.GetCurrentDataBase();
            if (database == null || database.nullHandle() || database.GetName() != expectedDatabase) throw new Exception("Exact existing database required");
            result["database"] = database.GetName(); int slash = path.LastIndexOf('\\');
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (component == null || component.nullHandle() || component.GetNameWithPath().Trim('\\') != path) throw new Exception("Exact existing Trial required");
            string oid = component.GetOID(); result["component_oid"] = oid;
            Func<string, Identifiable> compile = name => { var b = AscetStructureRead.Compile(component, name); blocks.Add(b); return b; };
            Func<Identifiable, Identifiable, Identifiable> bind = (factory, parameter) => {
                var call = new InstanceMethodCall(factory, "value:", component); call.appendParameter(parameter); component.call(call);
                var b = call.ResultRemoteObject; blocks.Add(b); return b;
            };
            var decoder = compile("bde_commit_reference_record.st");
            var collector = bind(compile("bde_module_persistent_references.st"), decoder);
            var kernel = bind(compile(lifecycle ? "bde_reference_leaf_lifecycle.st" : "bde_reference_leaf_noop.st"), collector);
            var prepare = new InstanceMethodCall(kernel, "value:", component); prepare.appendParameter(component); component.call(prepare);
            var prepared = prepare.ResultRemoteObject; blocks.Add(prepared);
            if (prepared == null || prepared.nullHandle() || component.getClassName(prepared) != "Dictionary")
                throw new Exception("Research no-op preparation failed without writer dispatch");
            var encode = compile("bde_value_probe.st");
            Func<string, object> read = name => {
                var get = new InstanceMethodCall(prepared, "at:", component); get.appendParameter(name); component.call(get);
                var value = get.ResultRemoteObject; blocks.Add(value);
                // Serializer expects a reader; the fixed identity block returns the detached result.
                var identity = compile("bde_detached_value_reader.st"); var valueReader = bind(identity, value);
                var serializer = bind(encode, valueReader); var call = new InstanceMethodCall(serializer, "value:", component);
                call.appendParameter(component); component.call(call);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(call.ResultString));
            };
            object before = read("prepared"); result["before"] = before;
            Save(Path.Combine(output, "prepared.json"), new { process_epoch = epoch, database = expectedDatabase, component = path, component_oid = oid, before = before });
            Console.WriteLine(lifecycle ? "BDE_REFERENCE_LIFECYCLE_READY" : "BDE_REFERENCE_NOOP_READY"); Console.Out.Flush();
            if (Console.ReadLine() != (lifecycle ? "WRITE_EMPTY_AND_REMOVE" : "WRITE_NOOP")) throw new Exception("No parent authorization; research writer not dispatched");
            if (AscetStructureRead.ProcessEpoch() != epoch || component.GetOID() != oid || database.GetName() != expectedDatabase) throw new Exception("Identity expired before no-op dispatch");
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); if (dirty == null || dirty.Length != 0) throw new Exception("Dirty state changed before dispatch");
            var getExecute = new InstanceMethodCall(prepared, "at:", component); getExecute.appendParameter("execute"); component.call(getExecute);
            var execute = getExecute.ResultRemoteObject; blocks.Add(execute);
            var serializerExecute = bind(encode, execute);
            Save(Path.Combine(output, "dispatch.json"), new { process_epoch = epoch, component_oid = oid, command = lifecycle ? "absent_source_reference_empty_and_remove" : "existing_module_reference_write_noop", automatic_retry = false });
            result["write_dispatched"] = true;
            var invoke = new InstanceMethodCall(serializerExecute, "value:", component); invoke.appendParameter(component); component.call(invoke);
            string valueResult = invoke.ResultString;
            var actual = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(valueResult)); result["actual"] = actual;
            var actualMap = actual as Dictionary<string, object>;
            if (actualMap != null && actualMap.ContainsKey("profile") &&
                    (string)actualMap["profile"] == (lifecycle ? "finite_reference_leaf_lifecycle_failure_v1" : "finite_reference_leaf_noop_failure_v1") &&
                    actualMap.ContainsKey("write_dispatched") && actualMap["write_dispatched"] is bool &&
                    (bool)actualMap["write_dispatched"] == false)
                result["typed_no_writer_refusal"] = true;
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0 || AscetStructureRead.ProcessEpoch() != epoch || component.GetOID() != oid || database.GetName() != expectedDatabase)
                throw new Exception("Identity or dirty state changed after no-op");
            result["complete_reply_received"] = true; result["passed"] = true;
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
