using System;
using System.Diagnostics;
using System.Threading;
using System.Threading.Tasks;
using Ascet.AgentConnector;

class ConnectorTests
{
    static string Manifest, Host;
    static int Passed;

    static ConnectorOptions Options(int timeout = 10000, int capacity = 32)
    {
        return new ConnectorOptions { ManifestPath = Manifest, HostExecutable = Host,
            AgentId = "test-agent", RequestTimeout = TimeSpan.FromMilliseconds(timeout),
            MaxPendingRequests = capacity };
    }

    static async Task Code(string expected, Func<Task> operation)
    {
        try { await operation(); }
        catch (AscetConnectorException error)
        {
            if (error.Code == expected) return;
            throw new Exception("Expected " + expected + ", got " + error.Code, error);
        }
        throw new Exception("Expected " + expected + " but the request succeeded");
    }

    static void Pass(string name) { Passed++; Console.WriteLine("PASS " + name); }

    static async Task Run()
    {
        int pid;
        using (var connector = await AscetConnector.ConnectAsync(Options()))
        {
            pid = connector.ProcessId;
            await Code("INSTANCE_IN_USE", async () => {
                using (var duplicate = await AscetConnector.ConnectAsync(Options())) { }
            });
            if (await connector.EchoAsync(1) != 1) throw new Exception("Duplicate attempt broke owner");
            Pass("duplicate connector rejected without disturbing owner");

            var tasks = new Task<int>[20];
            for (int i = 0; i < tasks.Length; i++) tasks[i] = connector.EchoAsync(i);
            var replies = await Task.WhenAll(tasks);
            for (int i = 0; i < replies.Length; i++) if (replies[i] != i) throw new Exception("Reply mismatch");
            Pass("20 concurrent requests attributed correctly");

            await Code("REMOTE_ERROR", async () => { await connector.EchoAsync(900002); });
            if (await connector.EchoAsync(900004) != 900004) throw new Exception("Diagnostics broke framing");
            Pass("remote errors and diagnostics do not corrupt the next reply");

            var active = connector.EchoAsync(900001);
            using (var cancellation = new CancellationTokenSource(100))
            {
                try { await connector.EchoAsync(3, cancellation.Token); throw new Exception("Cancellation ignored"); }
                catch (OperationCanceledException) { }
            }
            if (await active != 900001 || await connector.EchoAsync(4) != 4)
                throw new Exception("Queued cancellation broke owner");
            Pass("queued cancellation preserves the shared connection");
        }
        if (Process.GetProcessById(pid).HasExited) throw new Exception("Connector stopped ASCET");
        Pass("disconnect leaves ASCET running");

        using (var connector = await AscetConnector.ConnectAsync(Options(100)))
        {
            await Code("REQUEST_TIMEOUT", async () => { await connector.EchoAsync(900001); });
            try { await connector.EchoAsync(1); throw new Exception("Timed-out connection was reused"); }
            catch (ObjectDisposedException) { }
        }
        using (var connector = await AscetConnector.ConnectAsync(Options()))
            if (await connector.EchoAsync(5) != 5) throw new Exception("Lease was not released");
        Pass("timeout invalidates transport and releases the lease for explicit reconnect");

        using (var connector = await AscetConnector.ConnectAsync(Options()))
            await Code("PROTOCOL_ERROR", async () => { await connector.EchoAsync(900003); });
        using (var connector = await AscetConnector.ConnectAsync(Options()))
            await Code("HOST_EXITED", async () => { await connector.EchoAsync(900005); });
        Pass("wrong request IDs and Host exit invalidate the transport");

        using (var connector = await AscetConnector.ConnectAsync(Options(10000, 2)))
        {
            var active = connector.EchoAsync(900001);
            var queued = connector.EchoAsync(6);
            await Code("QUEUE_FULL", async () => { await connector.EchoAsync(7); });
            if (await active != 900001 || await queued != 6) throw new Exception("Queue rejection broke accepted calls");
        }
        Pass("bounded queue rejects excess work without corrupting accepted requests");

        using (var connector = await AscetConnector.ConnectAsync(Options()))
        using (var cancellation = new CancellationTokenSource(100))
        {
            try { await connector.EchoAsync(900001, cancellation.Token); throw new Exception("In-flight cancellation ignored"); }
            catch (OperationCanceledException) { }
            try { await connector.EchoAsync(8); throw new Exception("Cancelled transport was reused"); }
            catch (ObjectDisposedException) { }
        }
        Pass("in-flight cancellation invalidates the transport");
        Console.WriteLine("Passed " + Passed + " connector checks");
    }

    static int Main(string[] args)
    {
        Manifest = args[0]; Host = args[1];
        try { Run().GetAwaiter().GetResult(); return 0; }
        catch (Exception error) { Console.Error.WriteLine(error); return 1; }
    }
}
