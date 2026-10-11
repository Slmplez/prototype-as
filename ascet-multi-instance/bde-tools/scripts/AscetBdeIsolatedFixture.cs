using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetBdeIsolatedFixture
{
    static readonly List<object> Kept = new List<object>();
    static readonly Dictionary<string, object> Result = new Dictionary<string, object>();
    static string Output;
    static int Sequence;
    static Ascet Api;

    static T Keep<T>(T value)
    { if (value != null) Kept.Add(value); return value; }

    static void Record(string stage)
    {
        Result["stage"] = stage;
        var bytes = Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(Result));
        using (var stream = new FileStream(Path.Combine(Output, (++Sequence).ToString("D3") + "-" + stage + ".json"), FileMode.CreateNew))
        { stream.Write(bytes, 0, bytes.Length); stream.Flush(true); }
    }

    static BlockDiagramElementPin Pin(BlockDiagramElement node, bool input)
    {
        var matches = new List<BlockDiagramElementPin>();
        foreach (var pin in node.GetAllPins()) {
            Keep(pin);
            if (input ? pin.IsInput() : pin.IsOutput()) matches.Add(pin);
        }
        if (matches.Count == 0) throw new Exception("Missing ordinary fixture pin");
        return matches[0];
    }

    static string SourceValues(object observation)
    {
        var copy = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(AscetStructureRead.Json.Serialize(observation));
        copy.Remove("generation");
        var rows = new List<string>();
        foreach (var value in (object[])copy["entries"]) {
            var row = (Dictionary<string, object>)value;
            // Edge aliases are process-local reader counters, not persisted native IDs.
            if ((string)row["kind"] == "edge") row.Remove("ref");
            rows.Add(AscetStructureRead.Json.Serialize(row));
        }
        rows.Sort(StringComparer.Ordinal); copy["entries"] = rows;
        return AscetStructureRead.Json.Serialize(copy);
    }

    static int Main(string[] args)
    {
        if ((args.Length != 3 && args.Length != 4) || Directory.Exists(args[1])) return 2;
        string variant = args.Length == 4 ? args[3] : "literal_fanout";
        if (variant != "literal_fanout" && variant != "operator_chain" && variant != "operator_fanout") return 2;
        Output = Path.GetFullPath(args[1]);
        Directory.CreateDirectory(Output);
        int exit = 1;
        try {
            var manifest = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[0]));
            string runtime = Path.GetFullPath((string)manifest["runtime"]);
            string databasePath = Path.GetFullPath((string)manifest["database"]);
            string basePath = Path.GetDirectoryName(Path.GetFullPath(args[0]));
            if (!runtime.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !databasePath.StartsWith(basePath + Path.DirectorySeparatorChar, StringComparison.OrdinalIgnoreCase) ||
                !File.Exists(Path.Combine(Path.GetDirectoryName(basePath), "preparation.json")))
                throw new Exception("An isolated BDE preparation manifest is required");
            int port = Convert.ToInt32(manifest["port"]);
            Environment.SetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT", port.ToString());
            if (AscetStructureRead.ProcessEpoch() != args[2]) throw new Exception("Isolated endpoint generation mismatch");
            using (var process = System.Diagnostics.Process.GetProcessById(Int32.Parse(args[2].Split('/')[0])))
                if (!String.Equals(process.MainModule.FileName, Path.Combine(runtime, "ASCET.exe"), StringComparison.OrdinalIgnoreCase))
                    throw new Exception("The listener is not the prepared private runtime");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port))) throw new Exception("Endpoint already registered");
            Api = new Ascet();
            if (Api.nullHandle()) throw new Exception("No isolated ASCET handle");
            var database = Keep(Api.GetCurrentDataBase());
            if (database == null || database.nullHandle() || !String.Equals(database.GetName(), databasePath, StringComparison.OrdinalIgnoreCase))
                throw new Exception("Prepared private database is not open");
            var dirty = Api.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Dirty editors; fixture creation deferred");
            Result["database"] = database.GetName(); Result["ascet_process_epoch"] = args[2];
            Result["fixture_variant"] = variant;
            var folder = Keep(database.GetFolder("BDE_Tool_Experiments") as AscetFolder);
            if (folder == null || folder.nullHandle()) throw new Exception("Isolated folder unavailable");
            var source = Keep(database.GetItemInFolder("AEB_Core", @"PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core") as CodeComponent);
            if (source == null || source.nullHandle()) throw new Exception("AEB_Core template unavailable");
            var shape = Keep(AscetStructureRead.Compile(source, "bde_source_checkpoint_probe.st"));
            var shapeCall = new InstanceMethodCall(shape, "value:", source);
            shapeCall.appendParameter(source); source.call(shapeCall);
            Result["source_shape"] = shapeCall.ResultString; Record("source_shape");
            var reader = Keep(AscetStructureRead.Compile(source, "bde_structure_read.st"));
            var sourceBefore = AscetStructureRead.Read(source, reader, "Main", new string[0]);
            var validateSource = Keep(AscetStructureRead.Compile(source, "bde_source_checkpoint_validation.st"));
            var validateCall = new InstanceMethodCall(validateSource, "value:", source);
            validateCall.appendParameter(source); source.call(validateCall);
            Result["source_checkpoint_validation"] = AscetStructureRead.Json.DeserializeObject(validateCall.ResultString);
            Result["source_before"] = sourceBefore; Result["source_oid"] = source.GetOID();
            string suffix = DateTime.UtcNow.ToString("yyyyMMdd_HHmmss") + "_" + Guid.NewGuid().ToString("N").Substring(0, 8);
            Result["copy_intent"] = "Trial_AEB_Core_" + suffix; Record("copy_started");
            var copy = Keep(source.CopyToFolder((string)Result["copy_intent"], folder) as CodeComponent);
            if (copy == null || copy.nullHandle()) throw new Exception("AEB_Core copy failed; no automatic retry");
            Result["aeb_component"] = copy.GetNameWithPath(); Result["aeb_oid"] = copy.GetOID(); Record("copy_observed");
            Result["fixture_intent"] = "Trial_OrdinaryOrder_" + suffix; Record("class_started");
            var component = Keep(folder.AddClass((string)Result["fixture_intent"], "BDE"));
            if (component == null || component.nullHandle()) throw new Exception("Ordinary Class creation failed");
            Result["component"] = component.GetNameWithPath(); Result["oid"] = component.GetOID(); Record("class_observed");
            var diagram = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
            if (diagram == null || diagram.nullHandle()) throw new Exception("Ordinary Main unavailable");
            Record("placement_started");
            BlockDiagramElement shared = variant == "literal_fanout"
                ? (BlockDiagramElement)Keep(diagram.PlaceStringLiteral("1.0", 100, 100, null))
                : (BlockDiagramElement)Keep(diagram.PlaceOperator("+", 100, 100, 2, null));
            var separate = Keep(diagram.PlaceStringLiteral("2.0", 100, 260, null));
            var first = Keep(diagram.PlaceOperator("+", 300, 100, 2, null));
            var second = Keep(diagram.PlaceOperator("+", 300, 260, 2, null));
            if (shared == null || separate == null || first == null || second == null || !diagram.StoreToCache())
                throw new Exception("Ordinary placement/store failed");
            Result["target_node"] = "n" + shared.GetGraphicalObjectIdentifier();
            Result["independent_node"] = "n" + separate.GetGraphicalObjectIdentifier(); Record("placement_observed");
            Result["partner_nodes"] = new [] { "n" + first.GetGraphicalObjectIdentifier(), "n" + second.GetGraphicalObjectIdentifier() };
            Record("connection_started");
            var output = Pin(shared, false);
            var edge1 = Keep(diagram.ConnectDiagramElementPins(output, Pin(first, true), null, null));
            BlockDiagramConnection edge2 = null, incoming = null;
            if (variant != "operator_chain") edge2 = Keep(diagram.ConnectDiagramElementPins(output, Pin(second, true), null, null));
            if (variant != "literal_fanout") incoming = Keep(diagram.ConnectDiagramElementPins(Pin(separate, false), Pin(shared, true), null, null));
            if (edge1 == null || edge1.nullHandle() || (variant != "operator_chain" && (edge2 == null || edge2.nullHandle()))
                    || (variant != "literal_fanout" && (incoming == null || incoming.nullHandle())) || !diagram.StoreToCache())
                throw new Exception("Fixture connection/store failed");
            var anchor = Keep(diagram.PlaceStringLiteral("3.0", 100, 400, null));
            if (anchor == null || anchor.nullHandle() || !diagram.StoreToCache()) throw new Exception("Final order anchor unavailable");
            Result["final_anchor"] = "n" + anchor.GetGraphicalObjectIdentifier();
            Result["source_after"] = AscetStructureRead.Read(source, reader, "Main", new string[0]);
            Result["source_capture_identical"] = AscetStructureRead.Json.Serialize(Result["source_before"]) == AscetStructureRead.Json.Serialize(Result["source_after"]);
            Result["source_collected_values_unchanged"] = SourceValues(Result["source_before"]) == SourceValues(Result["source_after"]);
            Result["source_comparison_scope"] = "complete Main collected values and duplicate-preserving rows; excludes cache generation and reader-local edge aliases; not native object identity or whole-owner configuration acceptance";
            Result["fixture"] = AscetStructureRead.Read(component, reader, "Main", new string[0]);
            Result["aeb_copy"] = AscetStructureRead.Read(copy, reader, "Main", new string[0]);
            if (!(bool)Result["source_collected_values_unchanged"] || AscetStructureRead.ProcessEpoch() != args[2])
                throw new Exception("Template or runtime changed during fixture creation");
            Result["passed"] = true; Record("fixture_complete"); exit = 0;
        } catch (Exception error) { Result["passed"] = false; Result["error"] = error.ToString(); Record("failed"); }
        finally {
            for (int index = Kept.Count - 1; index >= 0; --index) {
                try {
                    var wrapper = Kept[index] as SmalltalkToolAPI;
                    if (wrapper != null) wrapper.finalize();
                    else {
                        var remote = Kept[index] as Identifiable;
                        if (remote != null && Api != null) {
                            var release = Api.createControlMessageCall("destroyObjectForId:");
                            release.appendParameter(remote.getIdentifier()); Api.call(release); release.getResultVoid();
                        }
                    }
                } catch { }
                GC.SuppressFinalize(Kept[index]);
            }
            Kept.Clear(); GC.Collect(); GC.WaitForPendingFinalizers();
            if (Api != null && !Api.nullHandle()) { try { Api.DisconnectFromTool(); } catch { } GC.SuppressFinalize(Api); }
        }
        Environment.Exit(exit); return exit;
    }
}
