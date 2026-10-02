using System;
using System.Threading.Tasks;
using Ascet.AgentConnector;

class AgentExample
{
    static async Task Run(string manifest)
    {
        using (var connector = await AscetConnector.ConnectAsync(new ConnectorOptions {
            ManifestPath = manifest, AgentId = "example-agent"
        }))
        {
            var identity = await connector.GetIdentityAsync();
            Console.WriteLine("Connected PID={0} port={1} database={2}",
                identity.ProcessId, connector.Port, identity.DatabasePath);
            var requests = new Task<int>[20];
            for (int i = 0; i < requests.Length; i++) requests[i] = connector.EchoAsync(i);
            int[] results = await Task.WhenAll(requests);
            for (int i = 0; i < results.Length; i++)
                if (results[i] != i) throw new Exception("Echo mismatch");
            Console.WriteLine("20 concurrent callers matched through one serialized connection");
        }
    }

    static int Main(string[] args)
    {
        try { Run(args[0]).GetAwaiter().GetResult(); return 0; }
        catch (Exception error) { Console.Error.WriteLine(error); return 1; }
    }
}
