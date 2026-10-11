using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetClassCreationPartial
{
    static int Main(string[] args)
    {
        if (args.Length != 2 || File.Exists(args[1])) return 2;
        var result = new Dictionary<string, object>();
        var kept = new List<SmalltalkToolAPI>(); var blocks = new List<Identifiable>();
        Ascet ascet = null; AscetClass component = null; int exit = 1;
        try {
            var input = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
            string epoch = AscetStructureRead.ProcessEpoch();
            if (epoch != (string)input["process_epoch"]) throw new Exception("Original disposable epoch changed");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"))));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("ASCET unavailable");
            var database = ascet.GetCurrentDataBase(); kept.Add(database);
            if (!String.Equals(database.GetName(), (string)input["database"], StringComparison.OrdinalIgnoreCase))
                throw new Exception("Original database changed");
            string path = (string)input["component"]; int slash = path.LastIndexOf('\\');
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as AscetClass;
            kept.Add(component);
            if (component == null || component.nullHandle() || component.GetOID() != (string)input["oid"])
                throw new Exception("Original Class binding changed");
            var identity = AscetStructureRead.Compile(component, "bde_database_identity.st"); blocks.Add(identity);
            if (AscetStructureRead.DatabaseIdentity(component, database, identity) != (string)input["database_session"])
                throw new Exception("Original native database objects changed");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors");
            var signature = AscetStructureRead.Compile(component, "bde_class_interface_probe.st"); blocks.Add(signature);
            var factory = AscetStructureRead.Compile(component, "bde_class_creation_partial.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:value:value:", component);
            bind.appendParameter(signature);
            bind.appendParameter(AscetStructureRead.Json.ConvertToType<string[]>(input["selector"]));
            bind.appendParameter(AscetStructureRead.Json.ConvertToType<string[]>(input["witnesses"]));
            component.call(bind); var recovery = bind.ResultRemoteObject; blocks.Add(recovery);
            if (component.getClassName(recovery) != "BlockContextTemplate") throw new Exception("Partial recovery binding failed");
            result["public_before"] = AscetClassInterfaceProbe.PublicRead(component);
            var call = new InstanceMethodCall(recovery, "value:value:value:", component);
            call.appendParameter(component);
            call.appendParameter((string)input["action"]); call.appendParameter((string)input["expected_signature"]);
            component.call(call); string text = call.ResultString;
            if (text.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(text);
            var evidence = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
            result["native"] = evidence;
            result["signature"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)evidence["signature_text"]));
            result["public_after"] = AscetClassInterfaceProbe.PublicRead(component);
            dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0 || AscetStructureRead.ProcessEpoch() != epoch)
                throw new Exception("Recovery editor/process state changed");
            result["status"] = "ok"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (component != null) for (int i = blocks.Count - 1; i >= 0; --i) try {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            } catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            for (int i = kept.Count - 1; i >= 0; --i) if (kept[i] != null) { kept[i].finalize(); GC.SuppressFinalize(kept[i]); }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        }
        return exit;
    }
}
