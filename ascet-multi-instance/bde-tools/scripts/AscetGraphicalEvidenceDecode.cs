using System;
using System.Collections.Generic;
using System.IO;

// Decode saved diagnostic evidence offline; never create an ASCET connection.
class AscetGraphicalEvidenceDecode
{
    static int Main(string[] args)
    {
        if (args.Length != 2 || File.Exists(args[1])) return 2;
        var input = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(File.ReadAllText(args[0]));
        var native = (Dictionary<string, object>)input["native"];
        var observation = (Dictionary<string, object>)native["observation"];
        var result = new Dictionary<string, object>();
        foreach (string field in new [] { "graphical_original", "graphical_actual" })
            result[field] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)observation[field]));
        result["model_setters_called"] = 0; result["cebra_connections"] = 0;
        using (var stream = new FileStream(args[1], FileMode.CreateNew)) {
            byte[] bytes = System.Text.Encoding.UTF8.GetBytes(AscetStructureRead.Json.Serialize(result));
            stream.Write(bytes, 0, bytes.Length); stream.Flush(true);
        }
        return 0;
    }
}
