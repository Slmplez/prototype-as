using System;
using System.Collections.Generic;
using System.Reflection;
using System.Web.Script.Serialization;

// Offline transport boundary tests; does not attach to ASCET.
class AscetBulkDecodeTests
{
    static MethodInfo decode;
    static int assertions;
    static object Read(string json)
    {
        return decode.Invoke(null, new object[] { new JavaScriptSerializer().DeserializeObject(json) });
    }
    static void Check(bool value) { assertions++; if (!value) throw new Exception("Assertion " + assertions); }
    static void Reject(string json)
    {
        bool rejected = false;
        try { Read(json); } catch (TargetInvocationException) { rejected = true; }
        Check(rejected);
    }
    static int Main()
    {
        var assembly = Assembly.LoadFrom(System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "AscetReadProbe.exe"));
        decode = assembly.GetType("AscetReadProbe").GetMethod("DecodeBulk", BindingFlags.Static | BindingFlags.NonPublic);
        Check((string)Read("{\"$s\":[34,92,10]}") == "\"\\\n");
        Check((string)Read("{\"$s\":[]}") == "");
        Check(Read("null") == null);
        Check((double)Read("{\"$f\":[0,0,0,0,0,0,244,63]}") == 1.25);
        Check((double)Read("{\"$f\":[0,0,160,63]}") == 1.25);
        Check(BitConverter.DoubleToInt64Bits((double)Read("{\"$f\":[0,0,0,0,0,0,0,128]}")) == long.MinValue);
        var dict = (Dictionary<string, object>)Read("{\"$d\":[[{\"$s\":[97]},[true,null,123]]]}");
        Check(dict.Count == 1 && ((object[])dict["a"]).Length == 3);
        Reject("{\"$s\":[256]}");
        Reject("{\"$s\":[-1]}");
        Reject("{\"$s\":[1.25]}");
        Reject("{\"$s\":[],\"extra\":1}");
        Reject("{\"$f\":[0,0]}");
        Reject("{\"$f\":[0,0,0,999]}");
        Reject("{\"$d\":[[{\"$s\":[97]},1],[{\"$s\":[97]},2]]}");
        Reject("{\"$d\":[[1,2,3]]}");
        Console.WriteLine(assertions + " bulk decoder assertions passed; offline only");
        return 0;
    }
}
