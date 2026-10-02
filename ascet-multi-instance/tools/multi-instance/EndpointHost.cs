using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;
using de.etas.util;

class EndpointHost
{
    static JavaScriptSerializer Json = new JavaScriptSerializer();
    static Ascet Api;
    static Identifiable Echo;

    static void Emit(object value)
    {
        Console.WriteLine(Json.Serialize(value));
        Console.Out.Flush();
    }

    static object Evaluate(string expression)
    {
        var call = Api.createClassMethodCall("EsCompiler", "evaluate:");
        call.appendParameter("[" + expression + "]");
        Api.call(call);
        var block = call.ResultRemoteObject;
        if (block == null || block.nullHandle()) throw new InvalidOperationException("Probe compilation failed");
        try
        {
            var invoke = new InstanceMethodCall(block, "value", Api);
            Api.call(invoke);
            return invoke.ResultObject;
        }
        catch (Exception error) { throw new InvalidOperationException("Probe failed: " + expression + ": " + error, error); }
        finally { Release(block); }
    }

    static void Initialize(string logs, int port, string databasePath, int expectedPid)
    {
        Directory.CreateDirectory(logs);
        Cebra.debug = false;
        LogFile.enableLogging(false);
        Cebra.cebraLogPath = Path.GetFullPath(logs);
        Cebra.startupLogFile = new LogFile(Path.Combine(logs, "startupLog.log"));
        var common = typeof(Cebra).GetField("commonLogFile", BindingFlags.NonPublic | BindingFlags.Static);
        if (common == null) throw new InvalidOperationException("Unsupported SDK log fields");
        common.SetValue(null, new LogFile(Path.Combine(logs, "CebraLog.log")));
        Cebra.initialized = true;
        if (!ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port)))
            throw new InvalidOperationException("Endpoint already registered");
        Api = new Ascet();
        if (Api.nullHandle()) throw new InvalidOperationException("Cebra rejected connection: " + Api.GetToolErrorMessage());
        if (Convert.ToInt32(Evaluate("OSCall new getCurrentProcessId")) != expectedPid ||
            !Convert.ToBoolean(Evaluate("ASDAscetController instance isMultiInstanceMode")))
            throw new InvalidOperationException("Endpoint process identity mismatch");
        if (!File.Exists(Path.Combine(databasePath, "sobjects.dat")))
            throw new InvalidOperationException("Prepared database is missing");
        Emit(new { startup_command_line = Evaluate("System commandLine printString") });
        var current = Api.GetCurrentDataBase();
        if (current != null && !current.nullHandle()) Release(current);
        else
        {
            var opened = Api.OpenDataBase(Path.GetFullPath(databasePath));
            if (opened == null || opened.nullHandle())
                throw new InvalidOperationException("Private database open failed: " + Api.GetToolErrorMessage());
            Release(opened);
        }
        var compile = Api.createClassMethodCall("EsCompiler", "evaluate:");
        compile.appendParameter("[:token | token]");
        Api.call(compile);
        Echo = compile.ResultRemoteObject;
        if (Echo == null) throw new InvalidOperationException("Echo compilation failed");
    }

    static object Identity()
    {
        var database = Api.GetCurrentDataBase();
        if (database == null || database.nullHandle()) throw new InvalidOperationException("No database open");
        try
        {
            var controllerCall = Api.createInstanceMethodCall("etasMainCtrl");
            Api.call(controllerCall);
            var controller = controllerCall.ResultRemoteObject;
            string location;
            try
            {
                var libraryCall = new InstanceMethodCall(controller, "library", Api);
                Api.call(libraryCall);
                var library = libraryCall.ResultRemoteObject;
                try
                {
                    var locationCall = new InstanceMethodCall(library, "location", Api);
                    Api.call(locationCall);
                    location = locationCall.ResultString;
                }
                finally { Release(library); }
            }
            finally { Release(controller); }
            return new { database_path = location,
                database_root = Api.GetDataBasePath(), database_name = database.GetName(),
                server_pid = Convert.ToInt32(Evaluate("OSCall new getCurrentProcessId")),
                multi_instance = Convert.ToBoolean(Evaluate("ASDAscetController instance isMultiInstanceMode")) };
        }
        finally { Release(database); }
    }

    static void Release(Identifiable value)
    {
        var call = Api.createControlMessageCall("destroyObjectForId:");
        call.appendParameter(value.getIdentifier());
        Api.call(call);
        call.getResultVoid();
        GC.SuppressFinalize(value);
    }

    static int Main(string[] args)
    {
        int exitCode = 0;
        try
        {
            Initialize(args[1], Int32.Parse(args[0]), args[2], Int32.Parse(args[3]));
            Emit(new { kind = "ready", identity = Identity() });
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                var request = Json.Deserialize<Dictionary<string, object>>(line);
                object id = request["id"];
                string operation = (string)request["op"];
                try
                {
                    if (operation == "quit") { Emit(new { id, ok = true }); break; }
                    if (operation == "identity") { Emit(new { id, ok = true, result = Identity() }); continue; }
                    if (operation == "echo")
                    {
                        var call = new InstanceMethodCall(Echo, "value:", Api);
                        call.appendParameter(Convert.ToInt32(request["token"]));
                        Api.call(call);
                        Emit(new { id, ok = true, result = call.ResultInteger });
                        continue;
                    }
                    throw new InvalidOperationException("Unknown read-only operation");
                }
                catch (Exception error) { Emit(new { id, ok = false, error = error.Message }); }
            }
        }
        catch (Exception error) { Emit(new { kind = "error", error = error.ToString() }); exitCode = 1; }
        finally
        {
            if (Echo != null && Api != null) { try { Release(Echo); } catch { } }
            if (Api != null) { try { Api.DisconnectFromTool(); GC.SuppressFinalize(Api); } catch { } }
            try { Cebra.closeTool("Ascet"); } catch { }
        }
        Environment.Exit(exitCode);
        return exitCode;
    }
}
