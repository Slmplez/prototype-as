using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.cebra.toolAPI.Common;
using de.etas.types;
using Task = System.Threading.Tasks.Task;
using Process = System.Diagnostics.Process;

class AscetConcurrencyProbe
{
    static readonly JavaScriptSerializer Json = new JavaScriptSerializer();
    static readonly List<Identifiable> Handles = new List<Identifiable>();
    static Ascet Api;
    static DataBaseItem Component;
    static Identifiable Echo;
    static string ExpectedName;
    static string ExpectedOid;

    static void Emit(object value)
    {
        Console.WriteLine(Json.Serialize(value));
        Console.Out.Flush();
    }

    static Identifiable Compile(string source)
    {
        var call = Api.createClassMethodCall("EsCompiler", "evaluate:");
        call.appendParameter(source);
        Api.call(call);
        var handle = call.ResultRemoteObject;
        Handles.Add(handle);
        if (Api.getClassName(handle) != "BlockContextTemplate") throw new Exception("Fixed probe block compilation failed");
        return handle;
    }

    static string ReadField(string selector)
    {
        var call = new InstanceMethodCall(Component, selector, Api);
        Api.call(call);
        return call.ResultString;
    }

    static int ReadEcho(int token)
    {
        var call = new InstanceMethodCall(Echo, "value:", Api);
        call.appendParameter(token);
        Api.call(call);
        return call.ResultInteger;
    }

    static object Benchmark(int workers, int units)
    {
        if (workers != 1 && workers != 2 && workers != 4) throw new Exception("Invalid worker count");
        if (units < 1 || units > 160) throw new Exception("Invalid workload bound");
        var latencies = new double[units * 3];
        var failures = new string[units];
        var next = -1;
        var ready = new CountdownEvent(workers);
        var start = new ManualResetEventSlim(false);
        var tasks = new Task[workers];
        for (int worker = 0; worker < workers; worker++)
        {
            tasks[worker] = Task.Factory.StartNew(delegate
            {
                ready.Signal();
                start.Wait();
                int unit;
                while ((unit = Interlocked.Increment(ref next)) < units)
                {
                    try
                    {
                        var timer = Stopwatch.StartNew();
                        string name = ReadField("getLabel");
                        latencies[unit * 3] = timer.Elapsed.TotalMilliseconds;
                        timer.Restart();
                        string oid = ReadField("getOID");
                        latencies[unit * 3 + 1] = timer.Elapsed.TotalMilliseconds;
                        timer.Restart();
                        int token = ReadEcho(10000 + unit);
                        latencies[unit * 3 + 2] = timer.Elapsed.TotalMilliseconds;
                        if (name != ExpectedName || oid != ExpectedOid || token != 10000 + unit)
                            throw new Exception("Result or request-token mismatch");
                    }
                    catch (Exception error) { failures[unit] = error.ToString(); }
                }
            }, TaskCreationOptions.LongRunning);
        }
        ready.Wait();
        var clock = Stopwatch.StartNew();
        start.Set();
        Task.WaitAll(tasks);
        clock.Stop();
        var errors = new List<string>();
        foreach (var failure in failures) if (failure != null) errors.Add(failure);
        return new { kind = "benchmark", workers, units, requests = units * 3,
            wall_ms = clock.Elapsed.TotalMilliseconds, rpc_ms = latencies,
            verified = errors.Count == 0, errors };
    }

    static object HeadOfLine()
    {
        var slowBlock = Compile("[(Delay forMilliseconds: 250) wait. 777]");
        var slow = new InstanceMethodCall(slowBlock, "value", Api);
        var fast = new InstanceMethodCall(Echo, "value:", Api);
        fast.appendParameter(888);
        var timer = Stopwatch.StartNew();
        if (!Api.Sender.sendMessage(Api, slow.Message, slow.Result)) throw new Exception("Slow send failed");
        double slowSent = timer.Elapsed.TotalMilliseconds;
        if (!Api.Sender.sendMessage(Api, fast.Message, fast.Result)) throw new Exception("Fast send failed");
        double fastSent = timer.Elapsed.TotalMilliseconds;
        fast.Result.block();
        double fastDone = timer.Elapsed.TotalMilliseconds;
        int fastValue = fast.ResultInteger;
        slow.Result.block();
        int slowValue = slow.ResultInteger;
        return new { kind = "head_of_line", slow_sent_ms = slowSent, fast_sent_ms = fastSent,
            fast_completed_ms = fastDone, slow_value = slowValue, fast_value = fastValue,
            verified = slowValue == 777 && fastValue == 888 };
    }

    static object ErrorIsolation()
    {
        var invalid = new InstanceMethodCall(Component, "codexConcurrencyProbeMissingSelector", Api);
        var valid = new InstanceMethodCall(Echo, "value:", Api);
        valid.appendParameter(999);
        if (!Api.Sender.sendMessage(Api, invalid.Message, invalid.Result)) throw new Exception("Error probe send failed");
        if (!Api.Sender.sendMessage(Api, valid.Message, valid.Result)) throw new Exception("Valid probe send failed");
        valid.Result.block();
        int token = valid.ResultInteger;
        invalid.Result.block();
        int code = 0;
        try { var unexpected = invalid.ResultObject; }
        catch (ErrorResultException error) { code = error.ErrorMessage.errcode; }
        int later = ReadEcho(1000);
        return new { kind = "error_isolation", error_code = code, token, later,
            verified = code == 102 && token == 999 && later == 1000 };
    }

    static int Main(string[] args)
    {
        int exitCode = 0;
        try
        {
            Cebra.initCebraToolIndependent(false, false, null, null);
            Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", Int32.Parse(args[0])));
            Api = new Ascet();
            if (Api.nullHandle())
            {
                Emit(new { kind = "connection_rejected", error_code = Api.GetToolErrorCode(), message = Api.GetToolErrorMessage() });
                Environment.Exit(3);
            }
            var database = Api.GetCurrentDataBase();
            if (database == null || database.nullHandle()) throw new Exception("No current database");
            Handles.Add(database);
            string path = args[1];
            int split = path.LastIndexOf('\\');
            Component = database.GetItemInFolder(path.Substring(split + 1), path.Substring(0, split).Trim('\\'));
            if (Component == null || Component.nullHandle()) throw new Exception("Exact component unavailable");
            Handles.Add(Component);
            if (Component.GetNameWithPath().Trim('\\') != path.Trim('\\')) throw new Exception("Component path mismatch");
            ExpectedName = ReadField("getLabel");
            ExpectedOid = ReadField("getOID");
            var limit = Api.createClassMethodCall("EtasCebraToolServer", "maxServerInstances");
            Api.call(limit);
            object limitValue = limit.ResultObject;
            var count = Api.createClassMethodCall("EtasCebraToolServer", "serverCounter");
            Api.call(count);
            int connectionCount = count.ResultInteger;
            Echo = Compile("[:token | token]");
            Emit(new { kind = "ready", database = database.GetName(), path, name = ExpectedName,
                oid = ExpectedOid, max_server_instances = limitValue, server_counter = connectionCount,
                client_pid = Process.GetCurrentProcess().Id });
            string command;
            while ((command = Console.ReadLine()) != null && command != "close")
            {
                if (command == "head") Emit(HeadOfLine());
                else if (command == "errors") Emit(ErrorIsolation());
                else if (command == "ping") Emit(new { kind = "ping", value = ReadEcho(12345) });
                else
                {
                    var parts = command.Split(' ');
                    Emit(Benchmark(Int32.Parse(parts[0]), Int32.Parse(parts[1])));
                }
            }
        }
        catch (Exception error)
        {
            Emit(new { kind = "fatal", error = error.ToString() });
            exitCode = 1;
        }
        finally
        {
            var errors = new List<string>();
            if (Api != null && !Api.nullHandle())
            {
                for (int index = Handles.Count - 1; index >= 0; index--)
                {
                    try
                    {
                        var release = Api.createControlMessageCall("destroyObjectForId:");
                        release.appendParameter(Handles[index].getIdentifier());
                        Api.call(release);
                        release.getResultVoid();
                    }
                    catch (Exception error) { errors.Add(error.ToString()); }
                    GC.SuppressFinalize(Handles[index]);
                }
                if (!Api.DisconnectFromTool()) errors.Add("DisconnectFromTool returned false");
                GC.SuppressFinalize(Api);
            }
            Emit(new { kind = "cleanup", handles = Handles.Count, errors });
            if (errors.Count != 0) exitCode = 1;
        }
        Environment.Exit(exitCode);
        return exitCode;
    }
}
