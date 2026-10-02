using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Threading;
using System.Web.Script.Serialization;

class FakeEndpointHost
{
    static readonly JavaScriptSerializer Json = new JavaScriptSerializer();
    static void Emit(object response) { Console.WriteLine(Json.Serialize(response)); Console.Out.Flush(); }

    static void Main(string[] args)
    {
        Console.InputEncoding = new UTF8Encoding(false);
        Console.OutputEncoding = new UTF8Encoding(false);
        Emit(new { kind = "ready", identity = new { database_path = args[2],
            database_root = Path.GetDirectoryName(args[2]), database_name = args[2],
            server_pid = Int32.Parse(args[3]), multi_instance = true } });
        string line;
        while ((line = Console.ReadLine()) != null)
        {
            var request = Json.Deserialize<Dictionary<string, object>>(line);
            string id = (string)request["id"];
            if ((string)request["op"] == "quit") { Emit(new { id, ok = true }); return; }
            int token = Convert.ToInt32(request["token"]);
            if (token == 900001) Thread.Sleep(1500);
            if (token == 900002) { Emit(new { id, ok = false, error = "Simulated remote error" }); continue; }
            if (token == 900003) { Emit(new { id = "wrong", ok = true, result = token }); continue; }
            if (token == 900004)
            {
                Console.Error.WriteLine("Diagnostic on stderr");
                Console.WriteLine("Diagnostic on stdout");
                Console.WriteLine("{\"diagnostic\":true}");
            }
            if (token == 900005) return;
            Emit(new { id, ok = true, result = token });
        }
    }
}
