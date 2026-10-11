using System;
using System.Collections.Generic;
using System.Reflection;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Diagnostic only: fixed temporary values; never edits model or installs methods.
class AscetBatchFormatProbe
{
    static int Main()
    {
        Ascet api = null;
        var handles = new List<Identifiable>();
        int status = 1;
        try
        {
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", 32503));
            api = new Ascet();
            if (api.nullHandle()) throw new Exception("Null API");
            foreach (string source in new[] {
                "[Array with: 'alpha' with: 'beta']",
                "[Array with: 'alpha' with: true with: 123]",
                "[Array with: 'alpha' with: nil]"
            })
            {
                Console.WriteLine("COMPILE " + source);
                var compile = api.createClassMethodCall("EsCompiler", "evaluate:");
                compile.appendParameter(source); api.call(compile);
                var block = compile.ResultRemoteObject; handles.Add(block);
                string type = api.getClassName(block); Console.WriteLine("CLASS " + type);
                if (type != "BlockContextTemplate") throw new Exception("Unexpected block class " + type);
                Console.WriteLine("INVOKE");
                var invoke = new InstanceMethodCall(block, "value", api); api.call(invoke);
                var row = invoke.ResultRemoteObject; handles.Add(row);
                Console.WriteLine("SERIALIZE " + api.getClassName(row));
                var serialize = api.createControlMessageCall("serialize:");
                serialize.appendParameter(row); api.call(serialize);
                var fields = serialize.ResultObjectArray;
                Console.WriteLine("FIELDS " + fields.Length);
                foreach (var field in fields) Console.WriteLine(field == null ? "null" : field.GetType().FullName + " " + field);
            }
            // Reuse the actual reader encoder and exercise text/number transport
            // without putting test values into an ASCET model.
            string encoder = (string)Assembly.LoadFrom(System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory,
                "AscetReadProbe.exe")).GetType("AscetReadProbe").GetField("EncodeFields",
                BindingFlags.NonPublic | BindingFlags.Static).GetRawConstantValue();
            string sample = "(Array with: ((String with: (Character codePoint: 214) with: (Character codePoint: 208)), (String with: (Character codePoint: 34) with: (Character codePoint: 92) with: (Character codePoint: 10))) with: '' with: nil with: -1234567890123)";
            var encode = api.createClassMethodCall("EsCompiler", "evaluate:");
            encode.appendParameter("nil handleExceptionsIn: [(" + encoder + ") value: " + sample + "] ifFail: [:error | error printString, ' ', error arguments printString]");
            api.call(encode);
            string encoded = encode.ResultString;
            Console.WriteLine("ENCODED " + encoded);
            if (encoded != "[[214,208,34,92,10],[],null,-1234567890123]") throw new Exception("Scalar encoding mismatch");
            Console.WriteLine("ASCII_TRANSPORT_OK");
            status = 0;
        }
        catch (Exception error) { Console.WriteLine(error); }
        finally
        {
            if (api != null && !api.nullHandle())
            {
                foreach (var handle in handles)
                {
                    var release = api.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(handle.getIdentifier()); api.call(release); release.getResultVoid();
                }
                api.DisconnectFromTool(); GC.SuppressFinalize(api);
            }
        }
        Environment.Exit(status); return status;
    }
}
