using System;
using System.Collections.Generic;
using System.IO;
using System.Web.Script.Serialization;

// Offline harness uses the production closure validator, without Cebra references.
class AscetStructureRead
{
    public static readonly JavaScriptSerializer Json = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue };
}

class AscetClassResourceClosureTest
{
    static int Main(string[] args)
    {
        try {
            var input = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
            Console.WriteLine(args.Length == 2 && args[1] == "read"
                ? AscetClassResourceClosure.CaptureReadOnly(input["discovery"], (string)input["definition_oid"])
                : AscetClassResourceClosure.Capture(input["discovery"], (string)input["definition_oid"]));
            return 0;
        } catch (Exception error) {
            Console.WriteLine(error.Message); return 1;
        }
    }
}
