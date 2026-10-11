using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Text;
using System.Web.Script.Serialization;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.types;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.cebra.toolAPI.Common;

// Read-only model research probe. Optional database open requires no dirty editors.
class AscetReadProbe
{
    [DllImport("iphlpapi.dll")]
    static extern uint GetExtendedTcpTable(IntPtr table, ref int size, bool order, int family, int tableClass, uint reserved);

    internal static int ListenerPID(byte[] table, int port)
    {
        if (port < 1 || port > 65535 || table.Length < 4 || table.Length > 16 * 1024 * 1024)
            throw new Exception("Invalid ASCET endpoint or listener table");
        uint count = BitConverter.ToUInt32(table, 0);
        if (count > (table.Length - 4) / 24) throw new Exception("Truncated ASCET listener table");
        int pid = 0;
        for (int i = 0; i < count; ++i) {
            int offset = 4 + i * 24;
            uint state = BitConverter.ToUInt32(table, offset), address = BitConverter.ToUInt32(table, offset + 4);
            uint wirePort = BitConverter.ToUInt32(table, offset + 8);
            int localPort = (int)(((wirePort & 255) << 8) | ((wirePort >> 8) & 255));
            if (state != 2 || localPort != port || (address != 0 && address != 0x0100007f)) continue;
            uint owner = BitConverter.ToUInt32(table, offset + 20);
            if (owner == 0 || owner > Int32.MaxValue || (pid != 0 && pid != owner))
                throw new Exception("Invalid or ambiguous ASCET listener owner");
            pid = (int)owner;
        }
        if (pid == 0) throw new Exception("No ASCET listener at selected endpoint");
        return pid;
    }

    static int EndpointPort()
    {
        string configured = Environment.GetEnvironmentVariable("ASCET_BD_ENDPOINT_PORT");
        int port = configured == null ? 32503 : Int32.Parse(configured);
        if (port < 1 || port > 65535) throw new Exception("Invalid ASCET endpoint port");
        return port;
    }

    static string ProcessEpoch()
    {
        int size = 0, port = EndpointPort();
        uint code = GetExtendedTcpTable(IntPtr.Zero, ref size, false, 2, 3, 0);
        if (code != 122 || size < 4 || size > 16 * 1024 * 1024) throw new Exception("Cannot size ASCET listener table");
        for (int attempt = 0; attempt < 3; ++attempt) {
            int allocated = size;
            IntPtr buffer = Marshal.AllocHGlobal(allocated);
            try {
                code = GetExtendedTcpTable(buffer, ref size, false, 2, 3, 0);
                if (code == 122 && size >= 4 && size <= 16 * 1024 * 1024) continue;
                if (code != 0 || size < 4 || size > allocated) throw new Exception("Cannot read ASCET listener table");
                var bytes = new byte[size]; Marshal.Copy(buffer, bytes, 0, size);
                using (var process = System.Diagnostics.Process.GetProcessById(ListenerPID(bytes, port))) {
                    if (!String.Equals(process.ProcessName, "ASCET", StringComparison.OrdinalIgnoreCase))
                        throw new Exception("Selected endpoint is not ASCET");
                    return process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o");
                }
            } finally { Marshal.FreeHGlobal(buffer); }
        }
        throw new Exception("ASCET listener table changed repeatedly");
    }
    static List<object> issues = new List<object>();
    static List<object> kept = new List<object>();
    static Dictionary<string, CodeComponent> definitions = new Dictionary<string, CodeComponent>();
    static Dictionary<string, object> values = new Dictionary<string, object>();
    static Dictionary<string, object> nativeData = new Dictionary<string, object>();
    // Single-observation memoization only. Never reused across tool calls.
    static Dictionary<string, object> models = new Dictionary<string, object>();
    static string modelScope;
    static int modelRequests, modelHits, pinRequests, pinHits;
    // Fixed projections only. Set 0 to use the retained individual-getter path.
    static bool batch = Environment.GetEnvironmentVariable("ASCET_BD_READ_BATCH") != "0";
    static Dictionary<string, Identifiable> readBlocks = new Dictionary<string, Identifiable>();
    static int batchRows;
    static bool bulkGraph = Environment.GetEnvironmentVariable("ASCET_BD_BULK_GRAPH") == "1";
    static bool bulkFull = Environment.GetEnvironmentVariable("ASCET_BD_BULK_FULL") == "1";
    static int bulkGraphs;
    static object DecodeBulk(object value)
    {
        var map = value as Dictionary<string, object>;
        if (map != null)
        {
            if (map.ContainsKey("$d"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk dictionary");
                var result = new Dictionary<string, object>();
                foreach (object entry in (object[])map["$d"])
                {
                    var pair = (object[])entry;
                    if (pair.Length != 2) throw new Exception("Invalid bulk dictionary pair");
                    result.Add((string)DecodeBulk(pair[0]), DecodeBulk(pair[1]));
                }
                return result;
            }
            if (map.ContainsKey("$f"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk float");
                var codes = (object[])map["$f"]; var bytes = new byte[codes.Length];
                for (int i = 0; i < codes.Length; i++)
                {
                    if (!(codes[i] is int) || (int)codes[i] < 0 || (int)codes[i] > 255) throw new Exception("Invalid bulk float byte");
                    bytes[i] = (byte)(int)codes[i];
                }
                if (bytes.Length == 8) return BitConverter.ToDouble(bytes, 0);
                if (bytes.Length == 4) return (double)BitConverter.ToSingle(bytes, 0);
                throw new Exception("Unexpected bulk float width");
            }
            if (map.ContainsKey("$s"))
            {
                if (map.Count != 1) throw new Exception("Malformed bulk string");
                var codes = (object[])map["$s"];
                var bytes = new byte[codes.Length];
                for (int i = 0; i < codes.Length; i++)
                {
                    if (!(codes[i] is int) || (int)codes[i] < 0 || (int)codes[i] > 255) throw new Exception("Invalid bulk text byte");
                    bytes[i] = (byte)(int)codes[i];
                }
                return Encoding.GetEncoding(0).GetString(bytes);
            }
            foreach (var key in new List<string>(map.Keys)) map[key] = DecodeBulk(map[key]);
            return map;
        }
        var items = value as object[];
        if (items != null) for (int i = 0; i < items.Length; i++) items[i] = DecodeBulk(items[i]);
        return value;
    }
    static Dictionary<string, object> BulkGraph(BlockDiagram diagram, BlockDiagramElement[] nodes)
    {
        var data = BulkQuery(diagram, "graph");
        EnrichBulkModels(data, nodes);
        bulkGraphs++;
        return data;
    }
    static Dictionary<string, object> BulkQuery(SmalltalkToolAPI diagram, string key)
    {
        Identifiable block;
        if (!readBlocks.TryGetValue(key, out block))
        {
            string source;
            using (var stream = typeof(AscetReadProbe).Assembly.GetManifestResourceStream("bde_bulk_" + key + ".st"))
            using (var reader = new StreamReader(stream)) source = reader.ReadToEnd();
            var compile = diagram.createClassMethodCall("EsCompiler", "evaluate:");
            compile.appendParameter(source); diagram.call(compile);
            block = compile.ResultRemoteObject;
            if (block == null || block.nullHandle()) throw new Exception("Bulk graph block unavailable");
            readBlocks.Add(key, block);
            string blockClass = diagram.getClassName(block);
            if (blockClass != "BlockContextTemplate")
                throw new Exception("Bulk " + key + " compile failed: " + blockClass + ": " +
                    (blockClass == "CompilerError" ? Call(diagram, block, "message").ResultString : "unexpected result"));
        }
        var invoke = new InstanceMethodCall(block, "value:", diagram);
        invoke.appendParameter(diagram); diagram.call(invoke);
        string encoded = invoke.ResultString;
        if (encoded.StartsWith("BDE_BULK_ERROR:")) throw new Exception(encoded);
        var data = (Dictionary<string, object>)DecodeBulk(new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue }.DeserializeObject(encoded));
        return data;
    }
    static void EnrichBulkModels(Dictionary<string, object> graph, BlockDiagramElement[] nodes)
    {
        var rows = (object[])graph["nodes"];
        if (rows.Length != nodes.Length) throw new Exception("Bulk graph node count changed during observation");
        for (int i = 0; i < rows.Length; i++)
        {
            var row = (Dictionary<string, object>)rows[i]; var node = nodes[i]; kept.Add(node);
            if (Convert.ToInt64(row["id"]) != node.GetGraphicalObjectIdentifier() || (string)row["kind"] != node.GetType().Name)
                throw new Exception("Bulk graph node identity/order changed during observation");
            var f = node as BlockDiagramFunctionalElement;
            if (f != null) row["model"] = Model(f.GetModelElement());
            var hierarchy = node as BlockDiagramHierarchy;
            if (hierarchy != null) EnrichBulkModels((Dictionary<string, object>)row["contents"], hierarchy.GetAllDiagramElements());
        }
    }
    // Only these constant expressions can be evaluated. No caller-provided
    // Smalltalk, method installation, model setter, or dynamic selector.
    const string ModelFields = "[:m | | a | a := Array new: 4. a at: 1 put: m getName. a at: 2 put: m getComment. a at: 3 put: m isMethodArgument. a at: 4 put: m isMethodReturn. a]";
    const string PinFields = "[:p | | a s act | a := Array new: 7. a at: 1 put: p getName. a at: 2 put: p isInputPin. a at: 3 put: p isOutputPin. a at: 4 put: p getBlockDiagramElement identifier. s := p hasSequenceCall ifTrue: [p getSequenceCall] ifFalse: [nil]. a at: 5 put: s notNil. s notNil ifTrue: [a at: 6 put: s getSequenceNumber. act := s getSequenceActivator. a at: 7 put: (act isNil ifTrue: [nil] ifFalse: [act getName])]. a]";
    // ASCII-only JSON transport: strings are arrays of Cebra bytes. The
    // old Cebra decoder converts the entire binary message using the system
    // code page before applying byte offsets; mixed binary/string rows break.
    const string EncodeFields = "[:a | | out first | out := WriteStream on: (String new: 128). first := true. out nextPut: $[. a do: [:x | first ifFalse: [out nextPut: $,]. first := false. x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [x isString ifTrue: [out nextPut: $[. x asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPut: $]] ifFalse: [((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [out nextPutAll: 'INVALID_FIELD']]]]. out nextPut: $]. out contents]";
    static object[] BatchFields(ToolAPI api, Identifiable target, bool pin)
    {
        string key = pin ? "pin" : "model";
        Identifiable block;
        if (!readBlocks.TryGetValue(key, out block))
        {
            var compile = api.createClassMethodCall("EsCompiler", "evaluate:");
            string projection = pin ? PinFields : ModelFields;
            compile.appendParameter("[:target | target handleExceptionsIn: [(" + EncodeFields + ") value: ((" + projection + ") value: target)] ifFail: [:error | 'BDE_BATCH_ERROR']]");
            api.call(compile);
            block = compile.ResultRemoteObject;
            if (block == null || block.nullHandle()) throw new Exception("Fixed read block unavailable");
            kept.Add(block);
            string blockType = ((SmalltalkToolAPI)api).getClassName(block);
            if (blockType != "BlockContextTemplate") throw new Exception("Unexpected fixed read block class: " + blockType);
            readBlocks.Add(key, block);
        }
        var invoke = new InstanceMethodCall(block, "value:", api);
        invoke.appendParameter(target); api.call(invoke);
        string encoded = invoke.ResultString;
        if (encoded == "BDE_BATCH_ERROR") throw new Exception("Fixed native read block failed");
        object[] fields = new JavaScriptSerializer().Deserialize<object[]>(encoded);
        if (fields.Length != (pin ? 7 : 4)) throw new Exception("Unexpected batch row length");
        for (int i = 0; i < fields.Length; i++)
        {
            var codes = fields[i] as object[];
            if (codes != null)
            {
                var bytes = new byte[codes.Length];
                for (int j = 0; j < codes.Length; j++)
                {
                    if (!(codes[j] is int) || (int)codes[j] < 0 || (int)codes[j] > 255)
                        throw new Exception("Invalid batch string byte");
                    bytes[j] = (byte)(int)codes[j];
                }
                fields[i] = Encoding.GetEncoding(0).GetString(bytes);
            }
            else if (fields[i] != null && !(fields[i] is bool) && !(fields[i] is int) && !(fields[i] is long))
                throw new Exception("Unexpected batch field type");
        }
        batchRows++;
        return fields;
    }
    static Dictionary<string, long> phases = new Dictionary<string, long>();
    static Stopwatch phaseTimer = Stopwatch.StartNew();
    static void Mark(string name) { phases[name] = phaseTimer.ElapsedMilliseconds; phaseTimer.Restart(); }
    static Identifiable Slot(ToolAPI api, Identifiable obj, string name)
    {
        var call = new InstanceMethodCall(obj, "instVarNamed:", api);
        call.appendParameter(name); api.call(call);
        if (call.ResultObject == null) return null;
        var handle = call.ResultRemoteObject; kept.Add(handle); return handle;
    }
    static Identifiable[] Items(ToolAPI api, Identifiable collection)
    {
        var call = api.createControlMessageCall("serialize:");
        call.appendParameter(collection); api.call(call);
        var items = call.ResultRemoteObjectArray; foreach (var item in items) kept.Add(item); return items;
    }
    static string Hex(object bytes)
    {
        return bytes is byte[] ? BitConverter.ToString((byte[])bytes).Replace("-", "").ToLowerInvariant() : null;
    }
    static object BindingMap(DataConfiguration config)
    {
        var native = Call(config, config, "item").ResultRemoteObject; kept.Add(native);
        // dependentParameters getter lazily creates a dictionary; inspect its slot instead.
        var dict = Slot(config, native, "dependentParameters");
        var result = new Dictionary<string, object>();
        if (dict == null || dict.nullHandle()) return result;
        var associations = Call(config, dict, "associations").ResultRemoteObject; kept.Add(associations);
        foreach (var pair in Items(config, associations))
        {
            string parameter = Hex(Call(config, pair, "key").ResultObject);
            var bindings = Call(config, pair, "value").ResultRemoteObject; kept.Add(bindings);
            var entries = Call(config, bindings, "associations").ResultRemoteObject; kept.Add(entries);
            var map = new Dictionary<string, string>();
            foreach (var entry in Items(config, entries))
                map.Add(Hex(Call(config, entry, "key").ResultObject), Hex(Call(config, entry, "value").ResultObject));
            result.Add(parameter, map);
        }
        return result;
    }
    static object NativeModel(AscetModelElement m, Identifiable element, object oidValue)
    {
        bool dependent = Call(m, element, "isDependent").ResultBoolean;
        var d = new Dictionary<string, object>();
        d["class_name"] = m.getClassName(element);
        d["oid_value_type"] = oidValue == null ? null : oidValue.GetType().FullName;
        d["oid"] = oidValue;
        d["oid_hex"] = Hex(oidValue);
        d["is_dependent"] = dependent;
        if (dependent)
        {
            // SGVariable.formula can repair/mutate its owner; read the audited slot instead.
            var field = new InstanceMethodCall(element, "instVarNamed:", m);
            field.appendParameter("formula"); m.call(field);
            var formula = field.ResultRemoteObject; kept.Add(formula);
            if (formula.nullHandle()) d["formula_status"] = "missing";
            else
            {
                d["formula"] = Call(m, formula, "formula").ResultString;
                var names = Call(m, formula, "getIdentifierNamens").ResultRemoteObject; kept.Add(names);
                var serialize = m.createControlMessageCall("serialize:"); serialize.appendParameter(names); m.call(serialize);
                d["formal_names"] = serialize.ResultStringArray;
                var identifiers = Call(m, formula, "identifiers").ResultRemoteObject; kept.Add(identifiers);
                var formals = new List<object>();
                foreach (var identifier in Items(m, identifiers))
                    formals.Add(new { name = Call(m, identifier, "identifier").ResultString, oid_hex = Hex(Call(m, identifier, "aliasName").ResultObject) });
                d["formals"] = formals;
            }
        }
        return d;
    }
    static object Value(PrimitiveModelElement p, string key, string modelType)
    {
        var data = p.GetValue(); kept.Add(data);
        if (data == null || data.nullHandle()) return new { status = "unavailable", source = "component_default_configuration" };
        var native = Call(data, data, "dataElement").ResultRemoteObject; kept.Add(native);
        nativeData[key] = data.getClassName(native);
        var scalar = data as ReadOnlyScalarData;
        if (scalar != null) return new { status = "read", source = "component_default_configuration", value = modelType == "enum" ? (object)scalar.GetStringValue() : modelType == "log" ? (object)scalar.GetBooleanValue() : scalar.GetDoubleValue() };
        var array = data as ReadOnlyArrayData;
        if (array != null && p is ArrayElement) return new { status = "read", source = "component_default_configuration",
            values = modelType == "log" ? (object)array.GetBooleanValue() : array.GetDoubleValue(),
            size = array.GetSize(), max_size = array.GetMaxSize(), declared_max_size = ((ArrayElement)p).GetMaxSize() };
        var matrix = data as ReadOnlyMatrixData;
        var distribution = p as DistributionElement;
        if (array != null && distribution != null) return new { status = "read", source = "component_default_configuration",
            values = modelType == "log" ? (object)array.GetBooleanValue() : array.GetDoubleValue(),
            size = array.GetSize(), max_size = array.GetMaxSize(), declared_max_size = distribution.GetMaxSize() };
        if (matrix != null && p is MatrixElement) return new { status = "read", source = "component_default_configuration",
            values = modelType == "log" ? (object)matrix.GetBooleanValue() : matrix.GetDoubleValue(),
            size = new int[] {matrix.GetXSize(),matrix.GetYSize()}, max_size = new int[] {matrix.GetMaxXSize(),matrix.GetMaxYSize()},
            declared_max_size = new int[] {((MatrixElement)p).GetMaxXSize(),((MatrixElement)p).GetMaxYSize()} };
        var table = data as OneDTableData;
        if (table != null)
        {
            var x = table.GetDistribution(); var y = table.GetValue(); kept.Add(x); kept.Add(y);
            return new { status = "read", source = "component_default_configuration", x = x.GetDoubleValue(), y = modelType == "log" ? (object)y.GetBooleanValue() : y.GetDoubleValue(),
                size = table.GetSize(), declared_max_size = ((OneDTableElement)p).GetMaxSize(),
                interpolation_linear = table.IsInterpolationLinear(), interpolation_rounded = table.IsInterpolationRounded(), extrapolation_constant = table.IsExtrapolationConstant() };
        }
        var table2 = data as TwoDTableData;
        if (table2 != null)
        {
            var x = table2.GetXDistribution(); var y = table2.GetYDistribution(); var z = table2.GetValue();
            kept.Add(x); kept.Add(y); kept.Add(z);
            return new { status = "read", source = "component_default_configuration", x = x.GetDoubleValue(), y = y.GetDoubleValue(), z = modelType == "log" ? (object)z.GetBooleanValue() : z.GetDoubleValue(),
                size = new int[] {table2.GetXSize(),table2.GetYSize()}, declared_max_size = new int[] {((TwoDTableElement)p).GetMaxXSize(),((TwoDTableElement)p).GetMaxYSize()},
                interpolation_linear = table2.IsInterpolationLinear(), interpolation_rounded = table2.IsInterpolationRounded(), extrapolation_constant = table2.IsExtrapolationConstant() };
        }
        return new { status = "unsupported", wrapper_type = data.GetType().Name };
    }
    static List<object> ProcessRows(ProcessDiagram diagram)
    {
        var rows = new List<object>();
        if (diagram == null) return rows;
        var processes = diagram.GetAllProcesses();
        if (processes == null) throw new Exception("GetAllProcesses returned null");
        foreach (var process in processes) {
            kept.Add(process);
            string code = process.GetCode();
            if (code == null) throw new Exception("Process source unavailable: " + process.GetName());
            rows.Add(new { name = process.GetName(), alias_name = process.GetAliasNameString(), code = code });
        }
        return rows;
    }
    static object Safe(string label, Func<object> read)
    {
        try { return read(); }
        catch (Exception e) { issues.Add(new { operation = label, error = e.ToString() }); return null; }
    }
    static InstanceMethodCall Call(ToolAPI api, Identifiable target, string selector)
    {
        var call = new InstanceMethodCall(target, selector, api);
        api.call(call);
        return call;
    }
    static object NativeId(AbstractBlockDiagramElement obj)
    {
        return Safe("native diagramElement.identifier", delegate {
            var native = Call(obj, obj, "diagramElement").ResultRemoteObject;
            kept.Add(native);
            return Call(obj, native, "identifier").ResultLong;
        });
    }
    static void ReadEnumeration(AscetModelElement m, Identifiable native, Dictionary<string, object> row)
    {
        var key = Call(m, native, "sgClassKey").ResultRemoteObject; kept.Add(key);
        string[] enumerators;
        if (!Call(m, key, "isRBDBObject").ResultBoolean && m.getClassName(key) == "SGEnumeration")
        {
            // Inline enums have no library OID. Do not resolve a fake definition.
            var items = Call(m, key, "values").ResultRemoteObject; kept.Add(items);
            var serialize = m.createControlMessageCall("serialize:"); serialize.appendParameter(items); m.call(serialize);
            enumerators = serialize.ResultStringArray;
            row["definition"] = null;
            row["definition_status"] = "not_applicable_inline";
            row["enum_source"] = "inline_type";
        }
        else
        {
            var represented = m.GetRepresentedClass();
            var enumeration = represented as AscetEnumeration;
            if (enumeration == null) throw new Exception("Enumeration definition missing: " + row["name"] +
                "; wrapper=" + (represented == null ? "null" : represented.GetType().FullName));
            kept.Add(enumeration);
            row["definition"] = new { path = enumeration.GetNameWithPath(), oid = enumeration.GetOID() };
            row["definition_status"] = "resolved";
            row["enum_source"] = "library_definition";
            enumerators = enumeration.GetEnumerators();
        }
        if (enumerators == null || enumerators.Length > 4096) throw new Exception("Invalid enumeration values: " + row["name"]);
        foreach (string value in enumerators) if (value == null) throw new Exception("Missing enumeration item: " + row["name"]);
        row["enum_values"] = enumerators;
    }
    static object Model(AscetModelElement m)
    {
        if (m == null || m.nullHandle()) return null;
        kept.Add(m);
        modelRequests++;
        var element = Call(m, m, "element").ResultRemoteObject; kept.Add(element);
        var oidValue = Call(m, element, "xmlOID").ResultObject;
        string oidHex = Hex(oidValue);
        string cacheKey = oidHex == null ? null : modelScope + "/" + oidHex + "/" + m.GetType().FullName;
        object cached;
        if (cacheKey != null && models.TryGetValue(cacheKey, out cached)) { modelHits++; return cached; }
        var d = new Dictionary<string, object>();
        if (batch)
        {
            var fields = BatchFields(m, m, false);
            d["name"] = (string)fields[0]; d["comment"] = (string)fields[1];
            d["is_argument"] = (bool)fields[2]; d["is_return"] = (bool)fields[3];
        }
        else
        {
            d["name"] = m.GetName(); d["comment"] = m.GetComment();
            d["is_argument"] = m.IsMethodArgument(); d["is_return"] = m.IsMethodReturn();
        }
        d["wrapper_type"] = m.GetType().Name; d["scope"] = m.GetScope();
        d["is_parameter"] = m.IsParameter(); d["api_is_dependent_parameter_class"] = m.IsDependentParameter();
        d["native_model"] = Safe("native model " + d["name"], delegate { return NativeModel(m, element, oidValue); });
        var p = m as PrimitiveModelElement;
        if (p != null)
        {
            d["model_type"] = p.GetModelType(); d["unit"] = p.GetUnit();
            if ((string)d["model_type"] == "enum") ReadEnumeration(m, element, d);
            if ((string)d["scope"] == "local" && !(bool)d["is_argument"] && !(bool)d["is_return"])
            {
                var owner = m.GetOwnerForElement(); kept.Add(owner);
                string key = owner.GetOID() + "/" + d["name"];
                if (!values.ContainsKey(key)) values[key] = Safe("value " + key, delegate { return Value(p, key, (string)d["model_type"]); });
                d["default_value"] = values[key];
            }
        }
        if (m.IsComplex())
        {
            var c = m.GetRepresentedClass();
            kept.Add(c);
            if (c != null && !c.nullHandle())
            {
                string oid = c.GetOID();
                d["definition"] = new { path = c.GetNameWithPath(), oid = oid };
                if (c is CodeComponent && !definitions.ContainsKey(oid)) definitions.Add(oid, (CodeComponent)c);
            }
        }
        if (cacheKey != null && d["native_model"] != null) models[cacheKey] = d;
        return d;
    }
    static object Pin(BlockDiagramElementPin p, Dictionary<long, object> cache)
    {
        if (p == null || p.nullHandle()) return null;
        kept.Add(p);
        pinRequests++;
        object nativeId = NativeId(p);
        object cached;
        // The cache belongs to exactly one graph traversal. Sentinel IDs never
        // identify a pin, and edges themselves are never deduplicated.
        bool validId = nativeId is long && (long)nativeId >= 0;
        if (validId && cache.TryGetValue((long)nativeId, out cached)) { pinHits++; return cached; }
        var d = new Dictionary<string, object>();
        if (batch)
        {
            var fields = BatchFields(p, p, true);
            d["native_id"] = nativeId; d["name"] = (string)fields[0];
            d["input"] = (bool)fields[1]; d["output"] = (bool)fields[2];
            if (!(fields[3] is int) && !(fields[3] is long)) throw new Exception("Invalid batch pin owner");
            d["node_id"] = Convert.ToInt64(fields[3]);
            if ((bool)fields[4])
            {
                if (!(fields[5] is int) && !(fields[5] is long)) throw new Exception("Invalid batch sequence");
                d["sequence"] = new { number = Convert.ToInt32(fields[5]), activator = (string)fields[6] };
            }
            if (validId) cache[(long)nativeId] = d;
            return d;
        }
        d["native_id"] = nativeId; d["name"] = p.GetName();
        d["input"] = p.IsInput(); d["output"] = p.IsOutput();
        // Same selectors as GetBlockDiagramElement + identifier, but no
        // runtime class dispatch or disposable node wrapper just to read ID.
        var owner = Call(p, p, "getBlockDiagramElement").ResultRemoteObject; kept.Add(owner);
        d["node_id"] = owner == null || owner.nullHandle() ? (object)null : Call(p, owner, "identifier").ResultLong;
        if (p.HasSequenceCall())
        {
            var s = p.GetSequenceCall(); kept.Add(s);
            if (s != null && !s.nullHandle())
            {
                var activator = s.GetSequenceActivator(); kept.Add(activator);
                d["sequence"] = new { number = s.GetSequenceNumber(), activator = activator == null || activator.nullHandle() ? null : activator.GetName() };
            }
        }
        if (validId) cache[(long)nativeId] = d;
        return d;
    }
    static object Node(BlockDiagramElement n, Dictionary<long, object> pinCache)
    {
        kept.Add(n);
        var d = new Dictionary<string, object>();
        d["id"] = n.GetGraphicalObjectIdentifier(); d["kind"] = n.GetType().Name;
        var f = n as BlockDiagramFunctionalElement;
        if (f != null) d["model"] = Model(f.GetModelElement());
        var op = n as BlockDiagramOperator;
        if (op != null) d["operator"] = op.GetOperatorType();
        var control = n as BlockDiagramControlElement;
        if (control != null) d["control"] = control.GetControlElementType();
        var lit = n as BlockDiagramLiteral;
        if (lit != null) d["literal"] = lit.GetContents();
        var pins = new List<object>();
        var nativePins = n.GetAllPins();
        if (nativePins == null) issues.Add(new { operation = "GetAllPins", node_id = d["id"], error = "null result" });
        else foreach (var p in nativePins) pins.Add(Pin(p, pinCache));
        d["pins"] = pins;
        var hierarchy = n as BlockDiagramHierarchy;
        if (hierarchy != null)
        {
            d["name"] = hierarchy.GetName();
            d["contents"] = Graph(hierarchy.GetAllDiagramElements(), hierarchy.GetAllDiagramConnections());
        }
        return d;
    }
    static object Graph(BlockDiagramElement[] nodes, BlockDiagramConnection[] edges)
    {
        var ns = new List<object>(); var es = new List<object>();
        var pinCache = new Dictionary<long, object>();
        if (nodes == null || edges == null) issues.Add(new { operation = "graph collections", error = "null nodes or edges" });
        if (nodes != null) foreach (var n in nodes) ns.Add(Node(n, pinCache));
        if (edges != null) foreach (var e in edges)
        {
            kept.Add(e);
            es.Add(new { index = es.Count, type = e.GetConnectionType(), output = Pin(e.GetOutputPin(), pinCache), input = Pin(e.GetInputPin(), pinCache) });
        }
        return new { nodes = ns, edges = es };
    }
    static object PageCheck(BlockDiagram bd)
    {
        var collection = Call(bd, bd, "getAllDiagramElements").ResultRemoteObject; kept.Add(collection);
        int total = Call(bd, collection, "size").ResultInteger;
        var pages = new List<object>();
        for (int start = 1; start <= total; start += 10)
        {
            int end = Math.Min(start + 9, total);
            var slice = new InstanceMethodCall(collection, "copyFrom:to:", bd);
            slice.appendParameter(start); slice.appendParameter(end); bd.call(slice);
            var page = slice.ResultRemoteObject; kept.Add(page);
            var serialize = bd.createControlMessageCall("serialize:");
            serialize.appendParameter(page); bd.call(serialize);
            var handles = serialize.ResultRemoteObjectArray;
            var ids = new List<long>();
            foreach (var h in handles) { kept.Add(h); ids.Add(Call(bd, h, "identifier").ResultLong); }
            pages.Add(new { start = start, end = end, ids = ids });
        }
        return new { total = total, page_size = 10, pages = pages };
    }
    static int Main(string[] args)
    {
        Console.OutputEncoding = Encoding.UTF8;
        var result = new Dictionary<string, object>();
        var timer = Stopwatch.StartNew();
        Ascet ascet = null;
        try
        {
            string processEpoch = ProcessEpoch();
            Console.Error.WriteLine("Connecting to running ASCET...");
            // Attach-only initialization: skip the wrapper's automatic app-start wait.
            Cebra.initCebraToolIndependent(false, false, null, null);
            Cebra.initialized = true;
            // Optional loopback measurement proxy; normal tools use 32503.
            string configuredPort = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            int port = configuredPort == null ? EndpointPort() : Int32.Parse(configuredPort);
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port));
            ascet = new Ascet();
            if (ascet.nullHandle()) throw new Exception("ASCET returned a null API handle");
            var db = ascet.GetCurrentDataBase();
            kept.Add(db);
            if (args.Length > 2 && args[2] != "--current" && (db == null || !String.Equals(db.GetName(), args[2], StringComparison.OrdinalIgnoreCase)))
            {
                var dirty = ascet.GetAllEditorsWithUnsavedChanges();
                if (dirty == null || dirty.Length != 0) throw new Exception("Cannot switch database: dirty-editor state is not clean");
                Console.Error.WriteLine("Opening requested database " + args[2]);
                db = ascet.OpenDataBase(args[2]);
                kept.Add(db);
            }
            if (db == null || db.nullHandle()) throw new Exception("No current database");
            result["database"] = db.GetName();
            result["ascet_process_epoch"] = processEpoch;
            result["started_at_utc"] = DateTime.UtcNow.ToString("o");
            var dirtyBefore = ascet.GetAllEditorsWithUnsavedChanges();
            result["dirty_editor_count_before"] = dirtyBefore == null ? (object)null : dirtyBefore.Length;
            string path = args.Length > 0 ? args[0] : @"\PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_dFxTar";
            Console.Error.WriteLine("Resolving " + path);
            int split = path.LastIndexOf('\\');
            var item = db.GetItemInFolder(path.Substring(split + 1), path.Substring(0, split).Trim('\\'));
            if (item == null || item.nullHandle())
            {
                var steps = new List<string>();
                result["lookup_steps"] = steps;
                var segments = path.Trim('\\').Split('\\');
                var folder = db.GetFolder(segments[0]);
                steps.Add(segments[0] + ": " + (folder == null ? "not found" : folder.GetNameWithPath()));
                for (int i = 1; folder != null && i < segments.Length - 1; i++)
                {
                    folder = folder.GetSubFolder(segments[i]);
                    steps.Add(segments[i] + ": " + (folder == null ? "not found" : folder.GetNameWithPath()));
                }
                if (folder != null) item = folder.GetDataBaseItem(segments[segments.Length - 1]);
                if (item == null)
                {
                    var roots = new List<string>();
                    var folders = db.GetAllFolders();
                    if (folders != null) foreach (var f in folders) roots.Add(f.GetNameWithPath());
                    result["root_folders"] = roots;
                }
            }
            if (item == null || item.nullHandle()) throw new Exception("Item not found: " + path);
            kept.Add(item);
            result["path"] = item.GetNameWithPath();
            if (!String.Equals(item.GetNameWithPath().Trim('\\'), path.Trim('\\'), StringComparison.Ordinal))
                throw new Exception("Resolved component path does not match requested path");
            result["oid"] = item.GetOID();
            modelScope = (string)result["oid"];
            result["component_type"] = item.GetComponentType();
            result["wrapper_type"] = item.GetType().FullName;
            var component = item as CodeComponent;
            if (component == null) throw new Exception("Item is not CodeComponent");
            var defaultData = component.GetDefaultData(); kept.Add(defaultData);
            if (defaultData != null) result["default_data_configuration"] = new { name = defaultData.GetName(), oid = defaultData.GetOID() };
            if (defaultData != null) result["default_formula_bindings"] = Safe("formula bindings", delegate { return BindingMap(defaultData); });
            var discrete = component as AscetDiscreteComponent;
            if (discrete != null)
            {
                var configs = new List<object>();
                foreach (var config in discrete.GetAllData()) { kept.Add(config); configs.Add(new { name = config.GetName(), oid = config.GetOID() }); }
                result["available_data_configurations"] = configs;
            }
            if (bulkFull && args.Length > 3 && args[3] == "full")
            {
                Mark("connect_resolve_configuration");
                var exported = BulkQuery(component, "full");
                foreach (var field in exported) result.Add(field.Key, field.Value);
                Mark("full_native_export");
            }
            else
            {
            var diagrams = component.GetAllDiagrams();
            Mark("connect_resolve_configuration");
            if (diagrams == null) throw new Exception("GetAllDiagrams returned null");
            var pages = new List<object>();
            foreach (var diagram in diagrams)
            {
                kept.Add(diagram);
                var page = new Dictionary<string, object>();
                page["name"] = diagram.GetName();
                page["oid"] = diagram.GetOID();
                page["wrapper_type"] = diagram.GetType().FullName;
                page["diagram_kind"] = diagram is StateMachineDiagram ? "state_machine" : diagram is BlockDiagram ? "block_diagram" : "unsupported";
                var bd = diagram as BlockDiagram;
                if (bd != null)
                {
                    Console.Error.WriteLine("Reading diagram elements...");
                    var nodes = bd.GetAllDiagramElements();
                    var edges = bulkGraph && args.Length > 3 && args[3] == "full" ? null : bd.GetAllDiagramConnections();
                    page["node_count"] = nodes == null ? (object)null : nodes.Length;
                    page["edge_count"] = edges == null ? (object)null : edges.Length;
                    var types = new Dictionary<string, int>();
                    if (nodes != null) foreach (var node in nodes)
                    {
                        string type = node.GetType().Name;
                        types[type] = types.ContainsKey(type) ? types[type] + 1 : 1;
                    }
                    page["node_types"] = types;
                    if (args.Length > 3 && args[3] == "full")
                    {
                        Console.Error.WriteLine("Reading every node, pin, connection and sequence...");
                        if (bulkGraph)
                        {
                            var graph = BulkGraph(bd, nodes);
                            page["graph"] = graph; page["edge_count"] = ((object[])graph["edges"]).Length;
                        }
                        else page["graph"] = Graph(nodes, edges);
                        page["remote_pagination"] = Safe("remote pagination", delegate { return PageCheck(bd); });
                        var md = bd as DiscreteMethodDiagram;
                        var pd = bd as ProcessDiagram;
                        var methods = new List<object>();
                        if (md != null || pd != null)
                        {
                            var ms = md != null ? md.GetAllMethods() : pd.GetAllMethods();
                            if (ms != null) foreach (var m in ms)
                            {
                                kept.Add(m);
                                var arguments = new List<object>();
                                var aa = m.GetAllArgumentElements();
                                if (aa != null) foreach (var a in aa) arguments.Add(Model(a));
                                methods.Add(new { name = m.GetName(), arguments = arguments, return_element = Model(m.GetReturnElement()) });
                            }
                        }
                        page["methods"] = methods;
                        page["processes"] = ProcessRows(pd);
                    }
                }
                pages.Add(page);
            }
            result["diagrams"] = pages;
            Mark("root_diagrams_graph_methods_pagination");
            if (args.Length > 3 && args[3] == "full")
            {
                var modelElements = new List<object>();
                foreach (var m in component.GetAllModelElements()) modelElements.Add(Model(m));
                result["model_elements"] = modelElements;
                Mark("root_model_elements");
                var deps = new List<object>(); var done = new HashSet<string>();
                while (true)
                {
                    string key = null;
                    foreach (var candidate in definitions.Keys) if (!done.Contains(candidate)) { key = candidate; break; }
                    if (key == null) break;
                    done.Add(key);
                    var c = definitions[key];
                    modelScope = key;
                    Console.Error.WriteLine("Reading definition " + c.GetName());
                    var models = new List<object>();
                    foreach (var m in c.GetAllModelElements()) models.Add(Model(m));
                    var methods = new List<object>();
                    var processes = new List<object>();
                    foreach (var diagram in c.GetAllDiagrams())
                    {
                        kept.Add(diagram);
                        var md = diagram as DiscreteMethodDiagram;
                        var pd = diagram as ProcessDiagram;
                        if (md == null && pd == null) { issues.Add(new { operation = "definition", component = c.GetName(), error = "unsupported diagram type" }); continue; }
                        foreach (var m in md != null ? md.GetAllMethods() : pd.GetAllMethods())
                        {
                            kept.Add(m);
                            var arguments = new List<object>();
                            foreach (var a in m.GetAllArgumentElements()) arguments.Add(Model(a));
                            string code = m.GetCode();
                            methods.Add(new { name = m.GetName(), code = code, arguments = arguments, return_element = Model(m.GetReturnElement()) });
                        }
                        processes.AddRange(ProcessRows(pd));
                    }
                    var definitionData = c.GetDefaultData(); kept.Add(definitionData);
                    deps.Add(new { oid = key, path = c.GetNameWithPath(), model_elements = models, methods = methods, processes = processes,
                        default_data_configuration = definitionData == null ? null : new { name = definitionData.GetName(), oid = definitionData.GetOID() },
                        default_formula_bindings = definitionData == null ? null : Safe("definition formula bindings " + c.GetName(), delegate { return BindingMap(definitionData); }) });
                    Mark("definition:" + key);
                }
                result["definitions"] = deps;
                result["native_data_classes"] = nativeData;
            }
            }
            result["issues"] = issues;
            var dirtyAfter = ascet.GetAllEditorsWithUnsavedChanges();
            result["dirty_editor_count_after"] = dirtyAfter == null ? (object)null : dirtyAfter.Length;
            Mark("final_checks");
            if (ProcessEpoch() != processEpoch) throw new Exception("ASCET endpoint process changed during semantic observation");
            result["status_scope"] = "probe operations only; wrapper-suppressed errors and semantic completeness require independent validation";
            result["limitations"] = new string[] { "Non-atomic multi-call observation", "Dirty editor/database model equivalence not established", "Default data is not project-resolved calibration", "Implementation and numeric quantization rules not fully read", "Definition data is class default, not per-instance resolved configuration", "No write, diff application or rollback tested" };
            result["status"] = issues.Count == 0 ? "ok" : "partial";
        }
        catch (Exception e) { result["status"] = "error"; result["error"] = e.ToString(); }
        finally
        {
            // The API destructor performs remote I/O; drain it while Cebra is
            // connected. finalize() swallows errors, so counts are attempts,
            // not proof of a remote release acknowledgement.
            var cleanupTimer = Stopwatch.StartNew();
            foreach (var block in readBlocks.Values)
            {
                try
                {
                    var release = ascet.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(block.getIdentifier()); ascet.call(release); release.getResultVoid();
                }
                catch (Exception e) { Console.Error.WriteLine("Read block release failed: " + e.Message); }
            }
            readBlocks.Clear();
            var released = new HashSet<SmalltalkToolAPI>();
            for (int i = kept.Count - 1; i >= 0; --i)
            {
                var wrapper = kept[i] as SmalltalkToolAPI;
                if (wrapper != null && !(wrapper is Ascet) && released.Add(wrapper))
                {
                    wrapper.finalize(); GC.SuppressFinalize(wrapper);
                }
            }
            kept.Clear();
            GC.Collect(); GC.WaitForPendingFinalizers();
            result["cleanup"] = new { policy = "release_before_disconnect", wrappers_released = released.Count,
                elapsed_ms = cleanupTimer.ElapsedMilliseconds, acknowledgement = "finalize_swallows_errors" };
            if (ascet != null)
            {
                if (!ascet.nullHandle()) ascet.DisconnectFromTool();
                GC.SuppressFinalize(ascet);
            }
            result["elapsed_ms"] = timer.ElapsedMilliseconds;
            result["read_profile"] = new { phase_ms = phases, model_requests = modelRequests, model_cache_hits = modelHits,
                pin_requests = pinRequests, pin_cache_hits = pinHits, batch_enabled = batch, batch_rows = batchRows,
                bulk_graphs = bulkGraphs,
                bulk_full = bulkFull,
                cache_lifetime = "one non-atomic observation; repeated occurrences reuse first sample" };
            result["source"] = "live ASCET Cebra/.NET API";
            result["observed_at_utc"] = DateTime.UtcNow.ToString("o");
            var json = new JavaScriptSerializer { MaxJsonLength = Int32.MaxValue }.Serialize(result);
            if (args.Length > 1) File.WriteAllText(args[1], json, new UTF8Encoding(false));
            Console.WriteLine(args.Length > 3 ? "Wrote " + args[1] + " (" + json.Length + " characters), status=" + result["status"] : json);
        }
        // Cebra owns foreground socket threads even after failed initialization.
        // This probe is one-shot; do not leave those threads alive on null API.
        Environment.Exit((string)result["status"] == "ok" ? 0 : 1);
        return (string)result["status"] == "ok" ? 0 : 1;
    }
}
