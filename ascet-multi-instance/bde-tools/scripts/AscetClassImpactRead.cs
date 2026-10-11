using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetClassImpactRead
{
    [DllImport("iphlpapi.dll")]
    static extern uint GetExtendedTcpTable(IntPtr table, ref int size, bool order, int family, int tableClass, uint reserved);

    static string EndpointEpoch(int port)
    {
        // IPv4 listener rows contain state, local/remote address+port and PID.
        int size = 0; uint code = GetExtendedTcpTable(IntPtr.Zero, ref size, false, 2, 3, 0);
        if (code != 122 || size < 4 || size > 16 * 1024 * 1024) throw new Exception("Cannot size ASCET listener table");
        IntPtr buffer = Marshal.AllocHGlobal(size);
        try {
            code = GetExtendedTcpTable(buffer, ref size, false, 2, 3, 0);
            if (code != 0) throw new Exception("Cannot read ASCET listener table: " + code);
            int rows = Marshal.ReadInt32(buffer), pid = 0;
            if (rows < 0 || rows > (size - 4) / 24) throw new Exception("Invalid listener table");
            for (int i = 0; i < rows; ++i) {
                IntPtr row = IntPtr.Add(buffer, 4 + i * 24);
                int address = Marshal.ReadInt32(row, 4), networkPort = Marshal.ReadInt32(row, 8);
                int localPort = ((networkPort & 255) << 8) | ((networkPort >> 8) & 255);
                if (localPort != port || (address != 0 && address != 0x0100007f)) continue;
                int owner = Marshal.ReadInt32(row, 20);
                if (owner <= 0 || (pid != 0 && owner != pid)) throw new Exception("Ambiguous ASCET listener owner");
                pid = owner;
            }
            if (pid == 0) throw new Exception("No ASCET IPv4 listener at port " + port);
            using (var process = System.Diagnostics.Process.GetProcessById(pid)) {
                if (!String.Equals(process.ProcessName, "ASCET", StringComparison.OrdinalIgnoreCase))
                    throw new Exception("Listener is not owned by ASCET");
                return process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o");
            }
        } finally { Marshal.FreeHGlobal(buffer); }
    }
    static object Native(CodeComponent component, Identifiable block)
    {
        var call = new InstanceMethodCall(block, "value:", component);
        call.appendParameter(component); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static int Main(string[] args)
    {
        bool guardProbe = false;
#if BDE_CONFIGURATION_GUARD_RESEARCH
        guardProbe = args.Length == 3 && args[2] == "configuration_guard_probe";
#endif
        if ((args.Length != 2 && (args.Length != 3 || (!guardProbe && args[2] != "configuration_audit" && args[2] != "configuration_graph"))) || File.Exists(args[1])) return 2;
        var result = new Dictionary<string, object>(); var kept = new List<SmalltalkToolAPI>();
        var blocks = new List<Identifiable>(); var timer = Stopwatch.StartNew();
        Ascet ascet = null; CodeComponent component = null; int exit = 1;
        try {
            string path = args[0].Trim('\\'); int slash = path.LastIndexOf('\\');
            if (slash < 1 || path.Length > 2048) throw new Exception("Full Class path required");
            int port = Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT") ?? "32503");
            int upstreamPort = Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT") ?? port.ToString());
            if (port < 1 || port > 65535 || upstreamPort < 1 || upstreamPort > 65535) throw new Exception("Invalid loopback port");
            string epoch = EndpointEpoch(upstreamPort);
            result["ascet_process_epoch"] = epoch; result["endpoint_port"] = upstreamPort;
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Clean editors required for persisted caller reference discovery");
            result["dirty_before"] = dirty.Length;
            var database = ascet.GetCurrentDataBase(); kept.Add(database);
            if (database == null || database.nullHandle()) throw new Exception("No database handle");
            result["database"] = database.GetName();
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as AscetClass;
            if (component == null || component.nullHandle()) throw new Exception("Class target required");
            kept.Add(component); result["component"] = component.GetNameWithPath(); result["oid"] = component.GetOID();
            var identity = AscetStructureRead.Compile(component, "bde_database_identity.st"); blocks.Add(identity);
            var signature = AscetStructureRead.Compile(component, "bde_class_interface_probe.st"); blocks.Add(signature);
            var callers = AscetStructureRead.Compile(component, "bde_class_callers.st"); blocks.Add(callers);
            string databaseToken = AscetStructureRead.DatabaseIdentity(component, database, identity);
            object before = Native(component, signature), discovered = Native(component, callers);
#if BDE_CONFIGURATION_GUARD_RESEARCH
            if (guardProbe) {
                var configReader = AscetStructureRead.Compile(component, "bde_class_configuration_read.st"); blocks.Add(configReader);
                var guardFactory = AscetStructureRead.Compile(component, "bde_class_configuration_guard.st"); blocks.Add(guardFactory);
                var probeFactory = AscetStructureRead.Compile(component, "bde_class_configuration_guard_probe.st"); blocks.Add(probeFactory);
                var batchFactory = AscetStructureRead.Compile(component, "bde_class_observation_batch.st"); blocks.Add(batchFactory);
                var bind = new InstanceMethodCall(probeFactory, "value:value:value:", component);
                bind.appendParameter(guardFactory); bind.appendParameter(configReader);
                bind.appendParameter(batchFactory); component.call(bind);
                var probe = bind.ResultRemoteObject;
                if (component.getClassName(probe) != "BlockContextTemplate") throw new Exception("Configuration guard probe binding failed");
                blocks.Add(probe);
                var checks = (object[])Native(component, probe);
                if (checks.Length != 6 || (int)checks[0] != 16 || (int)checks[1] != 10)
                    throw new Exception("Configuration guard native checks incomplete");
                var capture = (Dictionary<string, object>)checks[2];
                var observed = (Dictionary<string, object>)checks[3];
                string oid = component.GetOID();
                object currentConfiguration = Native(component, configReader);
                if (capture.Count != 1 || !capture.ContainsKey(oid) ||
                        AscetStructureRead.Json.Serialize(capture) != AscetStructureRead.Json.Serialize(observed) ||
                        AscetStructureRead.Json.Serialize(capture[oid]) != AscetStructureRead.Json.Serialize(currentConfiguration))
                    throw new Exception("Complete actual configuration guard capture differs");
                var shared = (Dictionary<string, object>)checks[4];
                var unstored = (Dictionary<string, object>)checks[5];
                if (shared["cached"] != null || unstored["cached"] != null ||
                        (string)shared["cached_error"] != "BDE_SHARED_INTERFACE_CHANGED: regression" ||
                        (string)unstored["cached_error"] != "BDE_UNSTORED_PIN: regression")
                    throw new Exception("Fixed observation batch lost exact cached errors");
                result["configuration_guard_checks"] = checks[0];
                result["configuration_guard_reader_checks"] = checks[1];
                result["configuration_graph"] = currentConfiguration;
            }
#endif
            if (args.Length == 3 && args[2] == "configuration_audit") {
                var audit = AscetStructureRead.Compile(component, "bde_class_configuration_audit.st"); blocks.Add(audit);
                var runAudit = new InstanceMethodCall(audit, "value:", component);
                runAudit.appendParameter(component); component.call(runAudit);
                if (runAudit.ResultString != "audit_ready") throw new Exception(runAudit.ResultString);
                var dumpAudit = AscetStructureRead.Compile(component, "bde_class_configuration_audit_dump.st"); blocks.Add(dumpAudit);
                result["configuration_audit"] = Native(component, dumpAudit);
            }
            if (args.Length == 3 && args[2] == "configuration_graph") {
                var configReader = AscetStructureRead.Compile(component, "bde_class_configuration_read.st"); blocks.Add(configReader);
                object first = Native(component, configReader), second = Native(component, configReader);
                result["configuration_graph"] = first; result["configuration_recheck"] = second;
                if (AscetStructureRead.Json.Serialize(first) != AscetStructureRead.Json.Serialize(second))
                    throw new Exception("Class configuration storage changed during observation");
                result["configuration_samples"] = 2;
            }
            object after = Native(component, signature), rechecked = Native(component, callers);
            if (AscetStructureRead.Json.Serialize(before) != AscetStructureRead.Json.Serialize(after) ||
                AscetStructureRead.Json.Serialize(discovered) != AscetStructureRead.Json.Serialize(rechecked))
                throw new Exception("Class signature or caller bindings changed during observation");
            var current = ascet.GetCurrentDataBase(); kept.Add(current);
            if (current == null || current.nullHandle() || AscetStructureRead.DatabaseIdentity(component, current, identity) != databaseToken)
                throw new Exception("Database objects changed during Class observation");
            dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors appeared during caller observation");
            if (EndpointEpoch(upstreamPort) != epoch) throw new Exception("ASCET listener owner or process epoch changed during observation");
            result["signature"] = before; result["discovery"] = discovered;
            result["database_session"] = databaseToken; result["dirty_after"] = dirty.Length;
            result["model_setters_called"] = 0; result["status"] = "ok"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            if (component != null) foreach (var block in blocks) try {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            } catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            for (int i = kept.Count - 1; i >= 0; --i) if (kept[i] != null) try { kept[i].finalize(); GC.SuppressFinalize(kept[i]); } catch { }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } catch { }
        }
        result["elapsed_ms"] = timer.ElapsedMilliseconds; result["observed_at_utc"] = DateTime.UtcNow.ToString("o");
        File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false));
        return exit;
    }
}
