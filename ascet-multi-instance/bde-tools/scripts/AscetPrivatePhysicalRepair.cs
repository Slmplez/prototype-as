using System;
using System.Collections.Generic;
using System.IO;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Supplemental fixed inspection of an original retained failed PRIVATE study.
class AscetPrivatePhysicalRepair
{
    public static int Main(string[] args)
    {
        var protocol = Console.Out; Console.SetOut(Console.Error);
        var descriptor = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
        var domain = (Dictionary<string, object>)descriptor["domain"];
        string token = (string)descriptor["token"];
        if (AscetStructureRead.ProcessEpoch() != (string)domain["process_epoch"]) throw new Exception("Private repair epoch changed");
        Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
        ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", 32503));
        var ascet = new Ascet();
        var database = ascet.GetCurrentDataBase();
        string path = (string)domain["component"]; int slash = path.LastIndexOf('\\');
        var component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
        var handles = new List<Identifiable>();
        try {
            var identity = AscetStructureRead.Compile(component, "bde_database_identity.st"); handles.Add(identity);
            if (database.GetName() != (string)domain["database"] || component.GetOID() != (string)domain["oid"] ||
                component.GetNameWithPath() != path || AscetStructureRead.DatabaseIdentity(component, database, identity) != (string)domain["database_session"] ||
                ascet.GetAllEditorsWithUnsavedChanges().Length != 0) throw new Exception("Private repair identity/clean-editor conflict");
            string[] binding = {token, (string)domain["process_epoch"], (string)domain["database_session"],
                (string)domain["oid"], path, (string)descriptor["source_sha256"]};
            if (args[1] == "repair_ordered_prefix" || args[1] == "repair_probe_collision") {
                var failure = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[2]));
                if (!failure.ContainsKey("current") || !failure.ContainsKey("registry_size") ||
                    Convert.ToInt32(failure["registry_size"]) != 1) throw new Exception("Original confirmed failure observation required");
                var lookupArgs = component.createClassMethodCall("Array", "with:with:with:");
                lookupArgs.appendParameter("lookup"); lookupArgs.appendParameter(binding); lookupArgs.appendParameter((Identifiable)null);
                component.call(lookupArgs); var nativeArgs = lookupArgs.ResultRemoteObject; handles.Add(nativeArgs);
                var registry = AscetStructureRead.Compile(component, "bde_native_private_registry.st"); handles.Add(registry);
                var lookup = new InstanceMethodCall(registry, "value:value:value:", component);
                lookup.appendParameter(database); lookup.appendParameter(component); lookup.appendParameter(nativeArgs); component.call(lookup);
                var wire = lookup.ResultRemoteObject; handles.Add(wire);
                var observe = new InstanceMethodCall(wire, "value:", component);
                observe.appendParameter(new[] {token, "observe", "0"}); component.call(observe);
                var current = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(observe.ResultString));
                if (!AscetClassStudyJournal.Same(current, failure["current"])) throw new Exception("Original complete failure observation changed");
            }
            var array = component.createClassMethodCall("Array", "with:with:");
            array.appendParameter(args[1]); array.appendParameter(binding); component.call(array);
            var arguments = array.ResultRemoteObject; handles.Add(arguments);
            var helper = AscetStructureRead.Compile(component, "bde_native_private_physical_repair.st"); handles.Add(helper);
            var call = new InstanceMethodCall(helper, "value:value:value:", component);
            call.appendParameter(database); call.appendParameter(component); call.appendParameter(arguments); component.call(call);
            string reply = call.ResultString; protocol.WriteLine(reply);
            return reply.StartsWith("BDE_") ? 1 : 0;
        } catch (Exception error) {
            Console.Error.WriteLine(error.GetType().FullName + ": " + error.Message);
            return 1;
        } finally {
            foreach (var handle in handles) {
                var release = component.createControlMessageCall("destroyObjectForId:"); release.appendParameter(handle.getIdentifier());
                component.call(release); release.getResultVoid();
            }
            component.finalize(); GC.SuppressFinalize(component); database.finalize(); GC.SuppressFinalize(database);
            GC.Collect(); GC.WaitForPendingFinalizers(); ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet);
        }
    }
}
