using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;

// Recovery helper: one existing database open, no creation or model operation.
class AscetOpenExistingDatabaseProbe
{
    static void Save(string path, object value)
    {
        byte[] bytes = new UTF8Encoding(false).GetBytes(AscetStructureRead.Json.Serialize(value) + "\n");
        using (var file = new FileStream(path, FileMode.CreateNew, FileAccess.Write, FileShare.Read)) {
            file.Write(bytes, 0, bytes.Length); file.Flush(true);
        }
    }
    static int Main(string[] args)
    {
        if (args.Length != 3 || !Directory.Exists(args[1])) return 2;
        string epoch = args[0], databasePath = Path.GetFullPath(args[1]), output = args[2];
        var result = new Dictionary<string, object> { {"passed", false}, {"open_dispatched", false}, {"automatic_retry", false} };
        Ascet ascet = null; AscetDataBase database = null;
        try {
            if (AscetStructureRead.ProcessEpoch() != epoch) throw new Exception("Exact endpoint epoch required");
            result["process_epoch"] = epoch;
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT"))));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No live ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_before"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors defer database recovery");
            database = ascet.GetCurrentDataBase();
            if (database != null && !database.nullHandle()) {
                if (!String.Equals(Path.GetFullPath(database.GetName()), databasePath, StringComparison.OrdinalIgnoreCase))
                    throw new Exception("Another database is active; refuse to switch");
            } else {
                if (database != null) { database.finalize(); GC.SuppressFinalize(database); database = null; }
                if (!Directory.Exists(databasePath) || AscetStructureRead.ProcessEpoch() != epoch) throw new Exception("Original directory/epoch expired");
                Save(Path.Combine(output, "open-dispatch.json"), new { process_epoch = epoch, existing_database = databasePath, automatic_retry = false });
                result["open_dispatched"] = true;
                database = ascet.OpenDataBase(databasePath);
            }
            if (database == null || database.nullHandle() || !String.Equals(Path.GetFullPath(database.GetName()), databasePath, StringComparison.OrdinalIgnoreCase))
                throw new Exception("Exact existing database failed to open; no fallback or replay");
            result["database"] = database.GetName();
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0 || AscetStructureRead.ProcessEpoch() != epoch) throw new Exception("Recovery dirty/epoch changed");
            result["passed"] = true;
        } catch (Exception error) { result["error"] = error.ToString(); }
        finally {
            try {
                if (database != null) { database.finalize(); GC.SuppressFinalize(database); }
                if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            } catch (Exception error) { result["cleanup_error"] = error.ToString(); result["passed"] = false; }
            Save(Path.Combine(output, "native.json"), result);
        }
        return (bool)result["passed"] ? 0 : 1;
    }
}
