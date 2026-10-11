using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

class AscetClassInterfaceStudy
{
    static readonly bool ProfileEnabled = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_PROFILE") == "1";
    static readonly Dictionary<string, object> ProfileMetrics = new Dictionary<string, object>();
    static T Measure<T>(string name, Func<T> action)
    {
        if (!ProfileEnabled) return action();
        var timer = Stopwatch.StartNew();
        try { return action(); }
        finally {
            object value;
            var metric = ProfileMetrics.TryGetValue(name, out value) ? (Dictionary<string, object>)value :
                new Dictionary<string, object> { {"calls", 0}, {"elapsed_ms", 0.0} };
            metric["calls"] = (int)metric["calls"] + 1;
            metric["elapsed_ms"] = (double)metric["elapsed_ms"] + timer.Elapsed.TotalMilliseconds;
            ProfileMetrics[name] = metric;
        }
    }
    static readonly List<SmalltalkToolAPI> Kept = new List<SmalltalkToolAPI>();
    static readonly List<KeyValuePair<CodeComponent, Identifiable>> Blocks = new List<KeyValuePair<CodeComponent, Identifiable>>();
    static Identifiable ConfigurationReader;
    static Identifiable PublicGraphReader;
    static Identifiable PublicSignatureReader;
    static Identifiable ObservationStructureReader;
    static Identifiable DetachedProjectionReader;
    static Identifiable NativeBindingReader;
    static Identifiable RegistryExtensionGuard;
    static Identifiable ReadTemplateLoader;
    static Identifiable ObservationBatchReader;
    static Identifiable ConfigurationGuard;
    static Identifiable RetainedRuntimeReader;
    static Identifiable StorageWitnessReader;
    static bool ConfigurationBaselineCaptured;
    static bool UseReadTemplateCache;
    static readonly string[] ReadTemplateResources = { "bde_database_identity.st", "bde_class_interface_probe.st",
        "bde_class_configuration_read.st", "bde_public_graph_read.st", "bde_public_signature_read.st",
        "bde_class_callers.st", "bde_structure_read.st", "bde_class_recovery_probe.st" };
    static CodeComponent PublicGraphAnchor;
    static object BulkPublic(CodeComponent component, SmalltalkToolAPI target, bool tree, bool namesOnly = false)
    {
        return Measure("bulk_public_graph", () => BulkPublicCore(component, target, tree, namesOnly));
    }
    static object BulkPublicCore(CodeComponent component, SmalltalkToolAPI target, bool tree, bool namesOnly)
    {
        var call = new InstanceMethodCall(PublicGraphReader, "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(target);
        call.appendParameter(tree ? (namesOnly ? "scopes" : "tree") : "graph"); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static Dictionary<string, object> BatchObservation(CodeComponent component, SmalltalkToolAPI target, string mode)
    {
        return Measure("batched_observation", () => {
            var call = new InstanceMethodCall(ObservationBatchReader, "value:value:value:", component);
            call.appendParameter(component); call.appendParameter(target); call.appendParameter(mode); component.call(call);
            string text = call.ResultString;
            if (text.StartsWith("BDE_")) throw new Exception(text);
            return (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
        });
    }
    static string GuardConfiguration(CodeComponent component, string mode)
    {
        return Measure("native_configuration_guard", () => {
            var call = new InstanceMethodCall(ConfigurationGuard, "value:value:", component);
            call.appendParameter(component); call.appendParameter(mode); component.call(call);
            string text = call.ResultString;
            if (text.StartsWith("BDE_")) throw new Exception(text);
            return text;
        });
    }
    static bool ConfigurationsUnchanged(AscetClass definition, List<CodeComponent> callers, string baseline)
    {
        if (ConfigurationGuard == null)
            return AscetStructureRead.Json.Serialize(Configurations(definition, callers)) == baseline;
        if (!ConfigurationBaselineCaptured) throw new Exception("Native configuration baseline not captured");
        var owners = new List<CodeComponent>(callers); owners.Add(definition);
        foreach (var owner in owners)
            if (GuardConfiguration(owner, "check") != "verified")
                throw new Exception("Unexpected native configuration guard result");
        return true;
    }
    static T Keep<T>(T value) where T : SmalltalkToolAPI
    {
        if (value == null || value.nullHandle()) throw new Exception("Missing study API handle");
        Kept.Add(value); return value;
    }
    static Identifiable Compile(CodeComponent component, string resource)
    {
        return Measure("compile", () => CompileCore(component, resource));
    }
    static Identifiable CompileCore(CodeComponent component, string resource)
    {
        Identifiable value;
        if (UseReadTemplateCache && Array.IndexOf(ReadTemplateResources, resource) >= 0) {
            if (ReadTemplateLoader == null) {
                ReadTemplateLoader = AscetStructureRead.Compile(component, "bde_class_read_template_cache.st");
                Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, ReadTemplateLoader));
            }
            string source;
            using (var stream = typeof(AscetClassInterfaceStudy).Assembly.GetManifestResourceStream(resource))
            using (var reader = new StreamReader(stream)) source = reader.ReadToEnd();
            var call = new InstanceMethodCall(ReadTemplateLoader, "value:value:value:", component);
            call.appendParameter(source); call.appendParameter(AscetClassStudyJournal.Hash(resource + "\n" + source));
            call.appendParameter(resource); component.call(call);
            value = call.ResultRemoteObject;
            if (component.getClassName(value) != "BlockContextTemplate")
                throw new Exception("Fixed read template cache returned a non-block");
        } else {
            try { value = AscetStructureRead.Compile(component, resource); }
            catch (Exception error) { throw new Exception("Fixed resource " + resource + " failed: " + error.Message, error); }
        }
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, value)); return value;
    }
    static Identifiable StructureReader(CodeComponent component)
    {
        if (PublicGraphReader == null) return Compile(component, "bde_structure_read.st");
        // The fixed block takes its owner explicitly; reuse only within this read.
        if (ObservationStructureReader == null)
            ObservationStructureReader = Compile(component, "bde_structure_read.st");
        return ObservationStructureReader;
    }
    static Identifiable BindStudy(CodeComponent component, string resource, string[] selector, Identifiable resolve, CodeComponent definition)
    {
        var outer = Compile(component, resource);
        bool material = resource == "bde_class_materialize.st";
        if (material && DetachedProjectionReader == null)
            DetachedProjectionReader = Compile(component, "bde_class_detached_projection.st");
        if (material) {
            if (NativeBindingReader == null) NativeBindingReader = Compile(component, "bde_class_local_inverse_bindings.st");
            if (RegistryExtensionGuard == null) RegistryExtensionGuard = Compile(component, "bde_class_registry_extension_guard.st");
            var readers = new InstanceMethodCall(outer, "value:value:value:", component);
            readers.appendParameter(DetachedProjectionReader); readers.appendParameter(NativeBindingReader);
            readers.appendParameter(RegistryExtensionGuard); component.call(readers);
            outer = readers.ResultRemoteObject;
            if (component.getClassName(outer) != "BlockContextTemplate") throw new Exception("Material readers binding failed");
            Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, outer));
            var runtime = new InstanceMethodCall(outer, "value:", component);
            runtime.appendParameter(Environment.GetEnvironmentVariable("ASCET_BD_CLASS_RETAINED_RUNTIME") == "1"
                ? RetainedRuntimeCapture(component) : (Identifiable)null); component.call(runtime);
            outer = runtime.ResultRemoteObject;
            if (component.getClassName(outer) != "BlockContextTemplate") throw new Exception("Material runtime reader binding failed");
            Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, outer));
        }
        var bind = new InstanceMethodCall(outer, definition == null ? "value:value:" : "value:value:value:", component);
        if (definition != null) bind.appendParameter(definition);
        bind.appendParameter(selector); bind.appendParameter(resolve);
        component.call(bind);
        var block = bind.ResultRemoteObject;
        if (component.getClassName(block) != "BlockContextTemplate") throw new Exception("Study binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, block)); return block;
    }
    static Identifiable BindDetachedReader(CodeComponent component, Identifiable outer)
    {
        if (RegistryExtensionGuard == null) RegistryExtensionGuard = Compile(component, "bde_class_registry_extension_guard.st");
        var call = new InstanceMethodCall(outer, "value:value:", component);
        call.appendParameter(DetachedProjectionReader); call.appendParameter(RegistryExtensionGuard); component.call(call);
        var block = call.ResultRemoteObject;
        if (component.getClassName(block) != "BlockContextTemplate") throw new Exception("Detached reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, block)); return block;
    }
    static string[] CreationSelector(Dictionary<string, object> selector)
    {
        if (selector.Count != 4 || !selector.ContainsKey("diagram") || !selector.ContainsKey("method_alias") ||
                !selector.ContainsKey("name") || !selector.ContainsKey("model_type") ||
                !(selector["diagram"] is string) || !(selector["method_alias"] is string) ||
                !(selector["name"] is string) || !(selector["model_type"] is string) ||
                (string)selector["diagram"] != "Main" ||
                !System.Text.RegularExpressions.Regex.IsMatch((string)selector["name"], @"\A[A-Za-z_][A-Za-z0-9_]{0,63}\z") ||
                !System.Text.RegularExpressions.Regex.IsMatch((string)selector["method_alias"], @"\A(?:bytes:(?:[0-9a-f]{2}){1,128}|string:[^\x00-\x1f]{1,512})\z") ||
                Array.IndexOf(new[] { "cont", "sdisc", "udisc", "log" }, (string)selector["model_type"]) < 0)
            throw new Exception("Exact typed primitive Class creation selector required");
        return new[] { (string)selector["diagram"], (string)selector["method_alias"],
            (string)selector["name"], (string)selector["model_type"] };
    }
    static object Native(CodeComponent component, Identifiable block)
    {
        return Measure("native_read_and_decode", () => NativeCore(component, block));
    }
    static object NativeCore(CodeComponent component, Identifiable block)
    {
        var call = new InstanceMethodCall(block, "value:", component);
        call.appendParameter(component); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static object RecoveryProbe(AscetClass definition, CodeComponent owner, Identifiable block, string[] selector)
    {
        var call = new InstanceMethodCall(block, "value:value:value:", definition);
        call.appendParameter(definition); call.appendParameter(owner); call.appendParameter(selector); definition.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return new Dictionary<string, object> { {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()},
            {"checks", AscetStructureRead.Json.DeserializeObject(text)} };
    }
    static object DetachedFields(CodeComponent owner)
    {
        if (DetachedProjectionReader == null)
            DetachedProjectionReader = Compile(owner, "bde_class_detached_projection.st");
        var diagram = Keep(owner.GetDiagramWithName("Main"));
        var call = new InstanceMethodCall(DetachedProjectionReader, "value:value:", owner);
        call.appendParameter(owner); call.appendParameter(diagram); owner.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static object GraphBindings(CodeComponent owner, Identifiable block, string mode)
    {
        string text = Action(owner, block, mode);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static Identifiable SourcePlanner(CodeComponent component)
    {
        var outer = Compile(component, "bde_class_source_inverse_plan.st");
        var merge = Compile(component, "bde_native_collection_merge.st");
        var dump = Compile(component, "bde_persisted_source_graph.st");
        var bind = new InstanceMethodCall(outer, "value:value:", component);
        bind.appendParameter(merge); bind.appendParameter(dump); component.call(bind);
        var block = bind.ResultRemoteObject;
        if (component.getClassName(block) != "BlockContextTemplate")
            throw new Exception("Native source planner order binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, block)); return block;
    }
    static Identifiable SourceCandidateManager(CodeComponent definition, Identifiable signature)
    {
        var outer = Compile(definition, "bde_class_source_candidate.st");
        if (NativeBindingReader == null) NativeBindingReader = Compile(definition, "bde_class_local_inverse_bindings.st");
        if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(definition, "bde_class_detached_projection.st");
        var readers = new InstanceMethodCall(outer, "value:value:value:", definition);
        readers.appendParameter(SourcePlanner(definition)); readers.appendParameter(NativeBindingReader);
        readers.appendParameter(signature); definition.call(readers);
        var fieldFactory = readers.ResultRemoteObject;
        if (definition.getClassName(fieldFactory) != "BlockContextTemplate") throw new Exception("Candidate reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, fieldFactory));
        var fields = new InstanceMethodCall(fieldFactory, "value:value:", definition);
        fields.appendParameter(ConfigurationReader); fields.appendParameter(DetachedProjectionReader); definition.call(fields);
        var ownerFactory = fields.ResultRemoteObject;
        if (definition.getClassName(ownerFactory) != "BlockContextTemplate") throw new Exception("Candidate field binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, ownerFactory));
        var owner = new InstanceMethodCall(ownerFactory, "value:", definition);
        owner.appendParameter(definition); definition.call(owner);
        var block = owner.ResultRemoteObject;
        if (definition.getClassName(block) != "BlockContextTemplate") throw new Exception("Candidate definition binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, block)); return block;
    }
    static Identifiable SourceRuntimeProbe(CodeComponent component)
    {
        var outer = Compile(component, "bde_class_source_runtime_probe.st");
        if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(component, "bde_class_detached_projection.st");
        var bind = new InstanceMethodCall(outer, "value:value:value:", component);
        bind.appendParameter(Compile(component, "bde_native_graph_clone.st"));
        bind.appendParameter(Compile(component, "bde_persisted_source_graph.st"));
        bind.appendParameter(DetachedProjectionReader); component.call(bind);
        var recoveryFactory = bind.ResultRemoteObject;
        if (component.getClassName(recoveryFactory) != "BlockContextTemplate") throw new Exception("Runtime source probe binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, recoveryFactory));
        var planFactory = Compile(component, "bde_native_private_collection_plan.st");
        var bindPlan = new InstanceMethodCall(planFactory, "value:", component);
        bindPlan.appendParameter(Compile(component, "bde_native_collection_merge.st")); component.call(bindPlan);
        var planReader = bindPlan.ResultRemoteObject;
        if (component.getClassName(planReader) != "BlockContextTemplate") throw new Exception("Runtime normalization plan binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, planReader));
        var recover = new InstanceMethodCall(recoveryFactory, "value:value:", component);
        recover.appendParameter(planReader); recover.appendParameter(Compile(component, "bde_native_private_execution.st"));
        component.call(recover);
        var factory = recover.ResultRemoteObject;
        if (component.getClassName(factory) != "BlockContextTemplate") throw new Exception("Runtime source recovery binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, factory));
        var storage = new InstanceMethodCall(factory, "value:", component);
        storage.appendParameter(StorageWitness(component)); component.call(storage);
        var block = storage.ResultRemoteObject;
        if (component.getClassName(block) != "BlockContextTemplate") throw new Exception("Runtime storage witness binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, block)); return block;
    }
    static Identifiable RetainedRuntimeCapture(CodeComponent component)
    {
        if (RetainedRuntimeReader != null) return RetainedRuntimeReader;
        var outer = Compile(component, "bde_class_retained_runtime_capture.st");
        if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(component, "bde_class_detached_projection.st");
        var readers = new InstanceMethodCall(outer, "value:value:value:", component);
        readers.appendParameter(Compile(component, "bde_native_graph_clone.st"));
        readers.appendParameter(Compile(component, "bde_persisted_source_graph.st"));
        readers.appendParameter(DetachedProjectionReader); component.call(readers);
        var recoveryFactory = readers.ResultRemoteObject;
        if (component.getClassName(recoveryFactory) != "BlockContextTemplate") throw new Exception("Retained runtime readers binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, recoveryFactory));
        var planFactory = Compile(component, "bde_native_private_collection_plan.st");
        var bindPlan = new InstanceMethodCall(planFactory, "value:", component);
        bindPlan.appendParameter(Compile(component, "bde_native_collection_merge.st")); component.call(bindPlan);
        var planner = bindPlan.ResultRemoteObject;
        if (component.getClassName(planner) != "BlockContextTemplate") throw new Exception("Retained runtime planner binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, planner));
        var bind = new InstanceMethodCall(recoveryFactory, "value:value:", component);
        bind.appendParameter(planner); bind.appendParameter(Compile(component, "bde_native_private_execution.st")); component.call(bind);
        var factory = bind.ResultRemoteObject;
        if (component.getClassName(factory) != "BlockContextTemplate") throw new Exception("Retained runtime recovery binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, factory));
        var storage = new InstanceMethodCall(factory, "value:", component);
        storage.appendParameter(StorageWitness(component)); component.call(storage);
        RetainedRuntimeReader = storage.ResultRemoteObject;
        if (component.getClassName(RetainedRuntimeReader) != "BlockContextTemplate") throw new Exception("Retained storage witness binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, RetainedRuntimeReader)); return RetainedRuntimeReader;
    }
    static Identifiable StorageWitness(CodeComponent component)
    {
        if (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_STORAGE_WITNESS") != "1") return null;
        if (StorageWitnessReader != null) return StorageWitnessReader;
        var outer = Compile(component, "bde_native_storage_witness.st");
        var bind = new InstanceMethodCall(outer, "value:", component);
        bind.appendParameter(Compile(component, "bde_persisted_source_graph.st")); component.call(bind);
        StorageWitnessReader = bind.ResultRemoteObject;
        if (component.getClassName(StorageWitnessReader) != "BlockContextTemplate") throw new Exception("Native storage witness reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, StorageWitnessReader)); return StorageWitnessReader;
    }
    static Identifiable RetainedRuntimeProbe(CodeComponent component)
    {
        var outer = Compile(component, "bde_class_retained_runtime_probe.st");
        if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(component, "bde_class_detached_projection.st");
        var bind = new InstanceMethodCall(outer, "value:", component);
        bind.appendParameter(DetachedProjectionReader); component.call(bind);
        var block = bind.ResultRemoteObject;
        if (component.getClassName(block) != "BlockContextTemplate") throw new Exception("Retained runtime audit binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(component, block)); return block;
    }
    static Identifiable RuntimePatchProbe(CodeComponent definition, bool retainPatch = false)
    {
        var outer = Compile(definition, "bde_class_runtime_patch_probe.st");
        if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(definition, "bde_class_detached_projection.st");
        var readers = new InstanceMethodCall(outer, "value:value:value:", definition);
        readers.appendParameter(Compile(definition, "bde_native_graph_clone.st"));
        readers.appendParameter(Compile(definition, "bde_persisted_source_graph.st"));
        readers.appendParameter(DetachedProjectionReader); definition.call(readers);
        var recoveryFactory = readers.ResultRemoteObject;
        if (definition.getClassName(recoveryFactory) != "BlockContextTemplate") throw new Exception("Runtime patch reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, recoveryFactory));
        var planFactory = Compile(definition, "bde_native_private_collection_plan.st");
        var bindPlan = new InstanceMethodCall(planFactory, "value:", definition);
        bindPlan.appendParameter(Compile(definition, "bde_native_collection_merge.st")); definition.call(bindPlan);
        var planReader = bindPlan.ResultRemoteObject;
        if (definition.getClassName(planReader) != "BlockContextTemplate") throw new Exception("Runtime patch inverse binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, planReader));
        var recover = new InstanceMethodCall(recoveryFactory, "value:value:", definition);
        recover.appendParameter(planReader); recover.appendParameter(Compile(definition, "bde_native_private_execution.st"));
        definition.call(recover);
        var layoutFactory = recover.ResultRemoteObject;
        if (definition.getClassName(layoutFactory) != "BlockContextTemplate") throw new Exception("Runtime patch layout factory binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, layoutFactory));
        var layout = new InstanceMethodCall(layoutFactory, "value:value:", definition);
        layout.appendParameter(StorageWitness(definition));
        layout.appendParameter(Compile(definition, "bde_class_pin_layout_plan.st")); definition.call(layout);
        var selectionFactory = layout.ResultRemoteObject;
        if (definition.getClassName(selectionFactory) != "BlockContextTemplate") throw new Exception("Runtime patch recovery binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, selectionFactory));
        var select = new InstanceMethodCall(selectionFactory, "value:value:", definition);
        select.appendParameter(Compile(definition, "bde_class_method_selector.st"));
        select.appendParameter(definition); definition.call(select);
        var modeFactory = select.ResultRemoteObject;
        if (definition.getClassName(modeFactory) != "BlockContextTemplate") throw new Exception("Runtime patch selector binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, modeFactory));
        var mode = new InstanceMethodCall(modeFactory, "value:", definition);
        mode.appendParameter(retainPatch); definition.call(mode);
        var block = mode.ResultRemoteObject;
        if (definition.getClassName(block) != "BlockContextTemplate") throw new Exception("Runtime patch retention binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, block)); return block;
    }
    static Identifiable ModelPublicationManager(CodeComponent definition, Identifiable signature, Identifiable discovery)
    {
        var outer = Compile(definition, "bde_class_model_publication.st");
        var readers = new InstanceMethodCall(outer, "value:value:value:", definition);
        readers.appendParameter(RuntimePatchProbe(definition, true));
        readers.appendParameter(Compile(definition, "bde_persisted_source_graph.st"));
        readers.appendParameter(DetachedProjectionReader); definition.call(readers);
        var contextFactory = readers.ResultRemoteObject;
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, contextFactory));
        var context = new InstanceMethodCall(contextFactory, "value:value:value:", definition);
        context.appendParameter(signature); context.appendParameter(ConfigurationReader);
        context.appendParameter(discovery); definition.call(context);
        var definitionFactory = context.ResultRemoteObject;
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, definitionFactory));
        var bind = new InstanceMethodCall(definitionFactory, "value:value:", definition);
        bind.appendParameter(definition);
        bind.appendParameter(Compile(definition, "bde_class_native_signature_probe.st")); definition.call(bind);
        var block = bind.ResultRemoteObject;
        if (definition.getClassName(block) != "BlockContextTemplate") throw new Exception("Model publication manager binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, block)); return block;
    }
    static string ModelPublicationAction(CodeComponent owner, Identifiable manager, string token, string action)
    {
        var call = new InstanceMethodCall(manager, "value:value:value:", owner);
        call.appendParameter(owner); call.appendParameter(token); call.appendParameter(action); owner.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return text;
    }
    static Identifiable CurrentIdentityProbe(CodeComponent definition)
    {
        var outer = Compile(definition, "current_class_identity_probe.st");
        var bind = new InstanceMethodCall(outer, "value:", definition);
        bind.appendParameter(Compile(definition, "current_class_identity_plan.st")); definition.call(bind);
        var block = bind.ResultRemoteObject;
        if (definition.getClassName(block) != "BlockContextTemplate") throw new Exception("Current identity reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, block)); return block;
    }
    static object CurrentIdentityAudit(CodeComponent definition, Identifiable reader, string token)
    {
        var inspect = new InstanceMethodCall(reader, "value:value:", definition);
        inspect.appendParameter(definition); inspect.appendParameter(token); definition.call(inspect);
        string text = inspect.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        var value = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text)) as Dictionary<string, object>;
        if (value == null || (string)value["profile"] != "class_current_identity_probe_v1" ||
            (int)value["model_setters_called"] != 0 || (bool)value["write_authorized"] ||
            (bool)value["production_executor_available"] || (string)value["state"] != "ready" ||
            (string)value["definition_oid"] != definition.GetOID() || (string)value["token"] != token)
            throw new Exception("Exact setter-free current identity proof required");
        return value;
    }
    static Identifiable CurrentExecutionManager(CodeComponent definition)
    {
        var outer = Compile(definition, "current_class_execution.st");
        var readers = new InstanceMethodCall(outer, "value:value:value:", definition);
        readers.appendParameter(Compile(definition, "current_class_identity_plan.st"));
        readers.appendParameter(Compile(definition, "current_class_native_capture.st"));
        readers.appendParameter(Compile(definition, "bde_native_collection_merge.st")); definition.call(readers);
        var factory = readers.ResultRemoteObject;
        if (definition.getClassName(factory) != "BlockContextTemplate") throw new Exception("CURRENT execution reader binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, factory));
        var bind = new InstanceMethodCall(factory, "value:value:value:", definition);
        bind.appendParameter(Compile(definition, "bde_persisted_source_graph.st"));
        bind.appendParameter(DetachedProjectionReader);
        bind.appendParameter(Compile(definition, "current_class_native_actions.st")); definition.call(bind);
        var block = bind.ResultRemoteObject;
        if (definition.getClassName(block) != "BlockContextTemplate") throw new Exception("CURRENT execution source binding failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, block)); return block;
    }
    static Dictionary<string, object> PublicationClassification(CodeComponent definition, Identifiable manager, string token)
    {
        var value = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
            ModelPublicationAction(definition, manager, token, "classify")));
        var signatures = new Dictionary<string, object>();
        foreach (string role in new[] { "actual", "current", "candidate", "native", "public" }) {
            string text = value[role + "_signature"] as string;
            if (role == "candidate" && text == null || role == "public" && text == "BDE_CLASS_PROBE_ERROR: Formal model type unavailable")
                signatures[role] = null;
            else {
                if (text == null || text.StartsWith("BDE_")) throw new Exception("Complete CURRENT classification signature unavailable");
                signatures[role] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
            }
        }
        value["signature_values"] = signatures;
        return value;
    }
    static List<object> CurrentExecutionClassifications(List<CodeComponent> owners, Identifiable manager, string token)
    {
        var values = new List<object>();
        foreach (var owner in owners) {
            var value = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                ModelPublicationAction(owner, manager, token, "classify")));
            if ((string)value["profile"] != "class_current_execution_study_v1" ||
                (string)value["token"] != token || (string)value["oid"] != owner.GetOID() ||
                (int)value["model_setters_called"] != 0 || (bool)value["write_authorized"] ||
                (bool)value["production_executor_available"])
                throw new Exception("Exact read-only CURRENT classification required");
            values.Add(value);
        }
        return values;
    }
    static Dictionary<string, object> CurrentRecoveryObservation(AscetClass definition, List<CodeComponent> owners,
        Identifiable signature, Identifiable discovery, Dictionary<string, object> result)
    {
        var readers = new List<Identifiable>(); var callers = new List<CodeComponent>();
        var callerReaders = new List<Identifiable>(); var diagrams = new List<BlockDiagram>();
        foreach (var owner in owners) {
            var reader = StructureReader(owner); readers.Add(reader);
            if (owner.GetOID() != definition.GetOID()) {
                callers.Add(owner); callerReaders.Add(reader);
                diagrams.Add(Keep(owner.GetDiagramWithName("Main") as BlockDiagram));
            }
        }
        return Observation(Read(definition, callers, diagrams, callerReaders, signature, discovery),
            Owners(owners, readers, result, null));
    }
    static object CurrentContextGuardAudit(CodeComponent definition, Identifiable manager, string token)
    {
        var probe = Compile(definition, "current_class_context_probe.st");
        var bind = new InstanceMethodCall(probe, "value:", definition);
        bind.appendParameter(manager); definition.call(bind);
        var boundProbe = bind.ResultRemoteObject;
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(definition, boundProbe));
        var call = new InstanceMethodCall(boundProbe, "value:value:", definition);
        call.appendParameter(definition); call.appendParameter(token); definition.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
    }
    static object BindingCheckpointAudit(CodeComponent owner, Identifiable probe, bool tagged = false, string auditAction = "audit")
    {
        var capture = new InstanceMethodCall(probe, "value:value:value:", owner);
        capture.appendParameter(owner); capture.appendParameter("capture"); capture.appendParameter((Identifiable)null);
        owner.call(capture);
        var checkpoint = capture.ResultRemoteObject;
        if (owner.getClassName(checkpoint) != "Dictionary") throw new Exception("Native checkpoint capture failed");
        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(owner, checkpoint));
        var audit = new InstanceMethodCall(probe, "value:value:value:", owner);
        audit.appendParameter(owner); audit.appendParameter(auditAction); audit.appendParameter(checkpoint); owner.call(audit);
        string text = audit.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        var decoded = AscetStructureRead.Json.DeserializeObject(text);
        return tagged ? AscetStructureRead.Decode(decoded) : decoded;
    }
    static string Action(CodeComponent component, Identifiable block, string action)
    {
        var call = new InstanceMethodCall(block, "value:value:", component);
        call.appendParameter(component); call.appendParameter(action); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return text;
    }
    static string MaterialAction(CodeComponent component, Identifiable block, Identifiable reader, string action, CodeComponent definition)
    {
        var call = new InstanceMethodCall(block, "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(action); call.appendParameter(reader); component.call(call);
        string text = call.ResultString;
        if (text.StartsWith("BDE_")) throw new Exception(text);
        return text;
    }
    static CodeComponent Resolve(AscetDataBase database, Dictionary<string, object> identity, bool acquireReadIdentity = false)
    {
        string path = (string)identity["component"];
        if (!AscetClassResourceClosure.IsSandboxPath(path))
            throw new Exception("Isolated interface fixture required");
        int slash = path.LastIndexOf('\\');
        var component = Keep(database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent);
        if (!acquireReadIdentity && component.GetOID() != (string)identity["oid"]) throw new Exception("Fixture identity changed");
        return component;
    }
    static object GraphOrError(BlockDiagram diagram)
    {
        if (PublicGraphReader != null) return BulkPublic(PublicGraphAnchor, diagram, false);
        try { return AscetStructureExperiment.Graph(diagram); }
        catch (Exception error) { return new Dictionary<string, object> { {"unreadable", error.ToString()} }; }
    }
    static string SemanticObservation(object value)
    {
        var map = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>>(value);
        map.Remove("generation");
        var edges = new List<string>(); var entries = new List<object>();
        foreach (var row in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(map["entries"])) {
            if ((string)row["kind"] == "edge") { row.Remove("ref"); edges.Add(AscetStructureRead.Json.Serialize(row)); }
            else entries.Add(row);
        }
        edges.Sort(StringComparer.Ordinal); map["entries"] = entries; map["edge_semantics"] = edges;
        return AscetStructureRead.Json.Serialize(map);
    }
    static void ValidateCallers(object observation, Dictionary<string, object> fixture)
    {
        var state = (Dictionary<string, object>)observation;
        var discovery = (Dictionary<string, object>)state["discovery"];
        var actual = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(discovery["callers"]);
        var expected = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(fixture["callers"]);
        if (actual.Length != expected.Length) throw new Exception("Complete sandbox caller set changed; no mutation allowed");
        foreach (var caller in actual) {
            Dictionary<string, object> match = null;
            foreach (var row in expected) if ((string)row["oid"] == (string)caller["oid"]) match = row;
            if (match == null || (string)match["component"] != (string)caller["component"])
                throw new Exception("Unlisted or non-sandbox Class caller; no mutation allowed");
            var actualIds = new List<string>();
            foreach (var scope in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(caller["scopes"])) {
                if ((string)scope["diagram"] != "Main" && !((string)scope["diagram"]).StartsWith("Main/h"))
                    throw new Exception("Unobserved caller diagram; this study only covers Main and its hierarchy scopes");
                foreach (var occurrence in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(scope["occurrences"]))
                    actualIds.Add((string)scope["diagram"] + "/n" + Convert.ToInt32(occurrence["node"]));
            }
            var expectedIds = new List<string>();
            foreach (var instance in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(match["instances"]))
                expectedIds.Add((instance.ContainsKey("diagram") ? (string)instance["diagram"] : "Main") + "/n" + Convert.ToInt32(instance["node_id"]));
            actualIds.Sort(); expectedIds.Sort();
            if (AscetStructureRead.Json.Serialize(actualIds) != AscetStructureRead.Json.Serialize(expectedIds))
                throw new Exception("Complete Class occurrence set changed; no mutation allowed");
        }
    }
    static Dictionary<string, object> PublicTree(CodeComponent component, bool namesOnly = false)
    {
        var tree = new Dictionary<string, object>();
        var diagram = Keep(component.GetDiagramWithName("Main") as BlockDiagram);
        if (PublicGraphReader != null) return (Dictionary<string, object>)BulkPublic(component, diagram, true, namesOnly);
        AscetStructureExperiment.GraphTree(diagram, null, "Main", tree, 0); return tree;
    }
    static Dictionary<string, object> SnapshotTree(CodeComponent component, Identifiable reader)
    {
        if (ObservationBatchReader != null) return BatchObservation(component, component, "scopes");
        var result = new Dictionary<string, object>();
        foreach (string scope in PublicTree(component, true).Keys)
            result.Add(scope, AscetStructureRead.Read(component, reader, scope, new string[0]));
        return result;
    }
    static object PublicTreeOrError(CodeComponent component)
    {
        if (PublicGraphReader != null) return PublicTree(component);
        try { return PublicTree(component); }
        catch (Exception error) { return new Dictionary<string, object> { {"unreadable", error.ToString()} }; }
    }
    static Dictionary<string, object> PublicConnectedPinPositions(object value)
    {
        var result = new Dictionary<string, object>();
        var tree = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(AscetStructureRead.Json.Serialize(value));
        foreach (var entry in tree) {
            var graph = (Dictionary<string, object>)entry.Value;
            foreach (var edge in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(graph["edges"])) {
                var route = AscetStructureRead.Json.ConvertToType<int[][]>(edge["route"]);
                if (route.Length < 2) throw new Exception("Public edge route has no endpoints");
                foreach (string endpoint in new[] { "source", "target" }) {
                    var pin = (Dictionary<string, object>)edge[endpoint];
                    var native = (Dictionary<string, object>)pin["native"];
                    string key = entry.Key + "/p" + Convert.ToInt32(native["id"]);
                    var position = endpoint == "source" ? route[0] : route[route.Length - 1];
                    if (result.ContainsKey(key) && AscetStructureRead.Json.Serialize(result[key]) != AscetStructureRead.Json.Serialize(position))
                        throw new Exception("Public routes disagree on the same connected pin position");
                    result[key] = position;
                }
            }
        }
        return result;
    }
    static object Read(AscetClass component, List<CodeComponent> callers, List<BlockDiagram> retained,
                       List<Identifiable> readers, Identifiable signature, Identifiable discovery)
    {
        return Measure("complete_observation", () => ReadCore(component, callers, retained, readers, signature, discovery));
    }
    static object ReadCore(AscetClass component, List<CodeComponent> callers, List<BlockDiagram> retained,
                          List<Identifiable> readers, Identifiable signature, Identifiable discovery)
    {
        var rows = new List<object>();
        for (int i = 0; i < callers.Count; ++i) {
            var caller = callers[i];
            if (ObservationBatchReader != null) {
                var row = BatchObservation(caller, retained[i], "caller");
                if (row["cached"] != null)
                    row["public_connected_pin_positions"] = PublicConnectedPinPositions(row["public_tree"]);
                rows.Add(row); continue;
            }
            object cached = null; string cachedError = null;
            try { cached = AscetStructureRead.Read(caller, readers[i], "Main", new string[0]); }
            catch (Exception error) {
                if (!error.Message.Contains("BDE_SHARED_INTERFACE_CHANGED:") && !error.Message.Contains("BDE_UNSTORED_PIN:")) throw;
                cachedError = error.Message;
            }
            var fresh = Keep(caller.GetDiagramWithName("Main") as BlockDiagram);
            rows.Add(new Dictionary<string, object> { {"component", caller.GetNameWithPath()},
                {"cached", cached}, {"cached_error", cachedError}, {"public_fresh", GraphOrError(fresh)},
                {"public_retained", GraphOrError(retained[i])}, {"public_tree", PublicTreeOrError(caller)} });
            if (cached != null) {
                var row = (Dictionary<string, object>)rows[rows.Count - 1];
                row["public_connected_pin_positions"] = PublicConnectedPinPositions(row["public_tree"]);
            }
        }
        return new Dictionary<string, object> { {"signature", Native(component, signature)},
            {"discovery", Native(component, discovery)},
            {"configurations", Configurations(component, callers)},
            {"public_signature", PublicSignatureReader == null ? AscetClassInterfaceProbe.PublicRead(component) : Native(component, PublicSignatureReader)},
            {"body", GraphOrError(Keep(component.GetDiagramWithName("Main") as BlockDiagram))},
            {"callers", rows} };
    }
    static object Configurations(AscetClass definition, List<CodeComponent> callers)
    {
        return Measure("configuration_observation", () => ConfigurationsCore(definition, callers));
    }
    static object ConfigurationsCore(AscetClass definition, List<CodeComponent> callers)
    {
        var values = new SortedDictionary<string, object>(StringComparer.Ordinal);
        var owners = new List<CodeComponent>(callers); owners.Add(definition);
        foreach (var owner in owners) {
            if (ConfigurationGuard != null || ObservationBatchReader != null) {
                var observed = ConfigurationGuard == null ? BatchObservation(owner, owner, "configuration") :
                    (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                        GuardConfiguration(owner, ConfigurationBaselineCaptured ? "observe" : "capture")));
                if (observed.Count != 1) throw new Exception("Exactly one observed configuration owner required");
                foreach (var pair in observed) values.Add(pair.Key, pair.Value);
            } else values.Add(owner.GetOID(), Native(owner, ConfigurationReader));
        }
        if (ConfigurationGuard != null) ConfigurationBaselineCaptured = true;
        return values;
    }
    static object Owners(List<CodeComponent> owners, List<Identifiable> readers, Dictionary<string, object> result, string prefix)
    {
        return Measure("owner_observation", () => OwnersCore(owners, readers, result, prefix));
    }
    static object OwnersCore(List<CodeComponent> owners, List<Identifiable> readers, Dictionary<string, object> result, string prefix)
    {
        var rows = new List<object>();
        for (int i = 0; i < owners.Count; ++i) rows.Add(new Dictionary<string, object> {
            {"component", owners[i].GetNameWithPath()}, {"oid", owners[i].GetOID()}, {"native_recovery", "prepared"},
            {"scopes", prefix == null ? SnapshotTree(owners[i], readers[i]) : result[prefix + i]} });
        return rows;
    }
    static Dictionary<string, object> Observation(object observation, object owners)
    {
        return new Dictionary<string, object> { {"observation", observation}, {"owners", owners} };
    }
    static void SameObservation(Dictionary<string, object> before, Dictionary<string, object> current)
    {
        var a = (Dictionary<string, object>)before["observation"];
        var b = (Dictionary<string, object>)current["observation"];
        foreach (string key in new[] { "signature", "discovery", "configurations", "body", "public_signature" })
            if (!AscetClassStudyJournal.Same(a[key], b[key]))
                throw new Exception("Class all-owner " + key + " precondition conflict");
        if (!AscetClassStudyJournal.Same(before["owners"], current["owners"]))
            throw new Exception("Class all-owner scope precondition conflict");
    }
    static string Dispatch(AscetClassStudyJournal journal, string step, string phase, CodeComponent owner, string command, Func<string> action)
    {
        return Measure("dispatch_and_wal", () => journal == null ? action() :
            journal.Dispatch(step, phase, owner.GetNameWithPath(), owner.GetOID(), command, action));
    }
    static int Main(string[] args)
    {
        if (args.Length < 2 || args.Length > 4 || File.Exists(args[1])) return 2;
        var totalTimer = Stopwatch.StartNew();
        string operation = args.Length >= 3 ? args[2] : "add";
        bool retainApplied = operation.StartsWith("retain_closed_delete_") || operation == "retain_closed_create_argument";
        bool inverseRetained = operation == "inverse_retained";
        UseReadTemplateCache = operation == "observe" &&
            (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_OBSERVATION_MODE") ?? "bulk_public_v1") == "bulk_public_v1" &&
            Environment.GetEnvironmentVariable("ASCET_BD_CLASS_QUERY_CACHE") == "1";
        if (retainApplied) operation = operation.Substring(7);
        if (inverseRetained) operation = "closed_delete_argument";
        if (operation != "add" && operation != "materialize" && operation != "closed_create_argument" && operation != "closed_delete_argument" && operation != "closed_delete_return" && operation != "inspect_materialize" && operation != "reconcile_materialize" && operation != "verify_fixture" && operation != "delete_argument" && operation != "delete_return" && operation != "recover" && operation != "observe") return 2;
        var result = new Dictionary<string, object> { {"model_mutation_dispatched", false},
            {"fixed_read_template_cache", UseReadTemplateCache} }; Ascet ascet = null; int exit = 1;
        if (ProfileEnabled) result["native_profile"] = new Dictionary<string, object> {
            {"timing", "inclusive nested method totals; overlapping categories must not be summed"}, {"methods", ProfileMetrics} };
        AscetClass child = null; Identifiable mutation = null; bool added = false, prepared = false, dispatched = false;
        bool unknownSignature = false, restoreDispatched = false, retainingResult = false, inversePreflightPassed = false;
        bool inspectMaterial = operation == "inspect_materialize" || operation == "reconcile_materialize";
        bool closedDelete = operation == "closed_delete_argument" || operation == "closed_delete_return";
        bool closedCreate = operation == "closed_create_argument";
        bool materialize = operation == "materialize" || inspectMaterial || closedDelete || closedCreate;
        AscetClassStudyJournal journal = null;
        Dictionary<string, object> expectedObservation = null;
        var callers = new List<CodeComponent>(); var readers = new List<Identifiable>(); var materializers = new List<Identifiable>();
        var materialOwners = new List<CodeComponent>(); var materialReaders = new List<Identifiable>();
        System.Action save = () => Measure("result_publication", () => {
            File.WriteAllText(args[1], AscetStructureRead.Json.Serialize(result), new UTF8Encoding(false)); return 0;
        });
        try {
            var fixture = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[0]));
            bool acquireReadIdentity = fixture.ContainsKey("identity_resolution");
            if (acquireReadIdentity && (operation != "observe" || (string)fixture["identity_resolution"] != "native_read" ||
                    !fixture.ContainsKey("caller_resolution") || (string)fixture["caller_resolution"] != "native"))
                throw new Exception("Native identity acquisition is limited to a read-only automatic observation");
            object retainedOrigin = null;
            var retainedStudy = inverseRetained ? AscetClassStudyJournal.ReadRetained((string)fixture["retained_study_path"], out retainedOrigin) : null;
            if (inverseRetained) {
                if ((string)retainedStudy["status"] != "retained_applied" || !(bool)retainedStudy["outstanding"])
                    throw new Exception("A confirmed retained Class application is required");
                operation = (string)retainedStudy["operation"];
                if (operation != "closed_delete_argument" && operation != "closed_delete_return" && operation != "closed_create_argument")
                    throw new Exception("Unsupported retained Class operation");
                closedDelete = operation == "closed_delete_argument" || operation == "closed_delete_return";
                closedCreate = operation == "closed_create_argument";
                if ((string)retainedStudy["oid"] != (string)fixture["oid"] ||
                    (string)retainedStudy["component"] != (string)fixture["component"])
                    throw new Exception("Retained Class identity mismatch");
            }
            if (closedCreate && Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CREATION_BULK") == "1" &&
                    (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_OBSERVATION_MODE") ?? "bulk_public_v1") == "bulk_public_v1" &&
                    Environment.GetEnvironmentVariable("ASCET_BD_CLASS_QUERY_CACHE") == "1") {
                UseReadTemplateCache = true;
                result["fixed_read_template_cache"] = true;
            }
            if ((string)fixture["status"] != "ok") throw new Exception("Complete fixture required");
            bool automaticCallers = fixture.ContainsKey("caller_resolution") && (string)fixture["caller_resolution"] == "native";
            if (automaticCallers && fixture.ContainsKey("callers"))
                throw new Exception("Automatic Class executor input must not contain a fixture caller list");
            if (automaticCallers && operation != "observe" && !closedDelete && !closedCreate)
                throw new Exception("Automatic caller resolution is limited to observe and journaled closed interface operations");
            int endpointPid;
            if (!Int32.TryParse(Environment.GetEnvironmentVariable("ASCET_BD_STUDY_ENDPOINT_PID"), out endpointPid))
                throw new Exception("Experiment runner must verify endpoint PID");
            var process = System.Diagnostics.Process.GetProcessById(endpointPid);
            if (!String.Equals(process.ProcessName, "ASCET", StringComparison.OrdinalIgnoreCase))
                throw new Exception("Experiment endpoint is not ASCET");
            result["ascet_process_epoch"] = process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o");
            if (acquireReadIdentity && AscetStructureRead.ProcessEpoch() != (string)result["ascet_process_epoch"])
                throw new Exception("Read-only listener process identity differs");
            if (!acquireReadIdentity && operation != "verify_fixture" && (string)result["ascet_process_epoch"] != (string)fixture["ascet_process_epoch"])
                throw new Exception("Fixture process epoch changed; explicit fresh fixture verification required");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            var dirty = ascet.GetAllEditorsWithUnsavedChanges();
            if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editors");
            result["dirty_before"] = dirty.Length;
            var database = Keep(ascet.GetCurrentDataBase()); result["database"] = database.GetName();
            if (!acquireReadIdentity && !String.Equals((string)result["database"], (string)fixture["database"], StringComparison.OrdinalIgnoreCase))
                throw new Exception("Fixture database endpoint mismatch");
            child = Resolve(database, fixture, acquireReadIdentity) as AscetClass;
            if (child == null) throw new Exception("Class required");
            result["component"] = child.GetNameWithPath(); result["oid"] = child.GetOID();
            var databaseIdentity = Compile(child, "bde_database_identity.st");
            string databaseSession = AscetStructureRead.DatabaseIdentity(child, database, databaseIdentity);
            result["database_session"] = databaseSession;
            if (fixture.ContainsKey("expected_database_session") && (string)fixture["expected_database_session"] != databaseSession)
                throw new Exception("Class snapshot native database session changed; zero setters");
            var signature = Compile(child, "bde_class_interface_probe.st");
            string observationMode = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_OBSERVATION_MODE") ?? "bulk_public_v1";
            if (observationMode != "public_oracle" && observationMode != "bulk_public_v1")
                throw new Exception("Unknown Class observation strategy");
            bool bulkObservation = observationMode == "bulk_public_v1" && (operation == "observe" ||
                closedCreate && Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CREATION_BULK") == "1");
            result["bulk_creation_write_observation"] = bulkObservation && closedCreate;
            ConfigurationReader = Compile(child, bulkObservation
                ? "bde_class_configuration_read.st" : "bde_class_configuration_oracle_v2.st");
            if (bulkObservation)
            {
                PublicGraphAnchor = child;
                PublicGraphReader = Compile(child, "bde_public_graph_read.st");
                PublicSignatureReader = Compile(child, "bde_public_signature_read.st");
            }
            bool batchObservation = bulkObservation && Environment.GetEnvironmentVariable("ASCET_BD_CLASS_OBSERVATION_BATCH") == "1";
            if (batchObservation) {
                var factory = Compile(child, "bde_class_observation_batch.st");
                var bind = new InstanceMethodCall(factory, "value:value:value:", child);
                bind.appendParameter(PublicGraphReader); bind.appendParameter(StructureReader(child));
                bind.appendParameter(ConfigurationReader); child.call(bind);
                ObservationBatchReader = bind.ResultRemoteObject;
                if (child.getClassName(ObservationBatchReader) != "BlockContextTemplate")
                    throw new Exception("Fixed observation batch binding failed");
                Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, ObservationBatchReader));
            }
            result["fixed_observation_batch"] = batchObservation;
            bool nativeConfigurationGuard = bulkObservation && closedCreate &&
                Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CONFIGURATION_GUARD") == "1";
            if (nativeConfigurationGuard) {
                var factory = Compile(child, "bde_class_configuration_guard.st");
                var bind = new InstanceMethodCall(factory, "value:", child);
                bind.appendParameter(ConfigurationReader); child.call(bind);
                ConfigurationGuard = bind.ResultRemoteObject;
                if (child.getClassName(ConfigurationGuard) != "BlockContextTemplate")
                    throw new Exception("Fixed native configuration guard binding failed");
                Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, ConfigurationGuard));
            }
            result["native_configuration_guard"] = nativeConfigurationGuard;
            result["public_graph_strategy"] = PublicGraphReader == null ? "public_oracle" : "bulk_public_v1";
            var selectorMap = args.Length == 4 ? AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(args[3])) : null;
            if (inverseRetained && selectorMap == null) selectorMap = (Dictionary<string, object>)retainedStudy["selector"];
            if (inverseRetained && !AscetClassStudyJournal.Same(selectorMap, retainedStudy["selector"]))
                throw new Exception("Retained Class selector mismatch");
            if (operation == "observe" && selectorMap == null)
                selectorMap = new Dictionary<string, object> { {"diagram", "Main"}, {"method_alias", ""}, {"formal_alias", ""}, {"slot", "argument"} };
            if (selectorMap == null) {
                var baseline = (Dictionary<string, object>)Native(child, signature);
                var methods = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(baseline["methods"]);
                if (methods.Length != 1) throw new Exception("Multiple methods require an explicit exact selector");
                string slot = operation == "closed_delete_return" || operation == "delete_return" ? "return" : "argument";
                var formals = slot == "return" ? new[] { methods[0]["return"] as Dictionary<string, object> } : AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(methods[0]["arguments"]);
                if (formals.Length != 1 || formals[0] == null) throw new Exception("Multiple formals require an explicit exact selector");
                selectorMap = new Dictionary<string, object> { {"diagram", methods[0]["diagram"]}, {"method_alias", methods[0]["alias"]}, {"formal_alias", formals[0]["alias"]}, {"slot", slot} };
            }
            if (selectorMap.Count != 4) throw new Exception("Exact four-field selector required");
            var selector = closedCreate ? CreationSelector(selectorMap) : new[] { (string)selectorMap["diagram"], (string)selectorMap["method_alias"], (string)selectorMap["formal_alias"], (string)selectorMap["slot"] };
            if (selector[0] != "Main") throw new Exception("Unobserved definition diagram; this study covers Main only");
            result["selector"] = operation == "observe" ? null : selectorMap;
            var resolve = operation == "observe" ? null : Compile(child, closedCreate ? "bde_class_method_selector.st" : "bde_class_formal_selector.st");
            if (operation != "observe") mutation = BindStudy(child, closedCreate ? "bde_class_argument_creation.st" : "bde_class_interface_study.st", selector, resolve, null);
            if (!materialize && operation != "observe") Compile(child, "bde_class_materialize.st");
            var discovery = Compile(child, "bde_class_callers.st");
            if (fixture.ContainsKey("native_class_current_execution_recovery")) {
                var request = fixture["native_class_current_execution_recovery"] as Dictionary<string, object>;
                if (operation != "observe" || acquireReadIdentity || request == null ||
                    !(request.Count == 3 || request.Count == 4 && request.ContainsKey("plan")) ||
                    !(request["token"] is string) || !(request["origin_raw"] is string) ||
                    !(request["action"] is string) || Array.IndexOf(new[] { "classify", "recover" }, (string)request["action"]) < 0 ||
                    Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_EXECUTION_STUDY") != "1" ||
                    Environment.GetEnvironmentVariable("ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY") != "1")
                    throw new Exception("Exact opt-in CURRENT recovery request required");
                string token = (string)request["token"];
                var origin = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText((string)request["origin_raw"]));
                if (!origin.ContainsKey("current_execution_study") || !AscetClassStudyJournal.Same(origin["current_execution_study"], true) ||
                    !AscetClassStudyJournal.Same(origin["model_publication_outstanding"], true) ||
                    !AscetClassStudyJournal.Same(origin["ascet_process_epoch"], result["ascet_process_epoch"]) ||
                    !AscetClassStudyJournal.Same(origin["database_session"], databaseSession) ||
                    !AscetClassStudyJournal.Same(origin["database"], result["database"]) ||
                    !AscetClassStudyJournal.Same(origin["oid"], child.GetOID()))
                    throw new Exception("Exact outstanding CURRENT execution origin required");
                var marker = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText((string)origin["model_publication_pending"]));
                var domain = marker["domain"] as Dictionary<string, object>;
                if ((string)marker["native_token"] != (string)origin["model_publication_journal"] || domain == null ||
                    !AscetClassStudyJournal.Same(domain["process_epoch"], result["ascet_process_epoch"]) ||
                    !AscetClassStudyJournal.Same(domain["database"], result["database"]) ||
                    !AscetClassStudyJournal.Same(domain["oid"], child.GetOID()))
                    throw new Exception("Exact CURRENT execution quarantine domain required");
                var preparedRows = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(origin["current_execution_preflight"]);
                var expected = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(
                    Path.Combine(Path.GetDirectoryName((string)request["origin_raw"]), "expected.json")));
                var owners = new List<CodeComponent>();
                var expectedOwners = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(expected["owners"]);
                if (preparedRows.Length != expectedOwners.Length) throw new Exception("CURRENT recovery owner coverage differs");
                for (int index = 0; index < expectedOwners.Length; ++index) {
                    if ((string)preparedRows[index]["oid"] != (string)expectedOwners[index]["oid"] ||
                        (string)preparedRows[index]["token"] != token)
                        throw new Exception("CURRENT recovery owner order or token differs");
                    owners.Add(Resolve(database, expectedOwners[index]));
                }
                var publicationManager = ModelPublicationManager(child, signature, discovery);
                var executionManager = CurrentExecutionManager(child);
                var publication = PublicationClassification(child, publicationManager, token);
                var nativeRows = CurrentExecutionClassifications(owners, executionManager, token);
                string boundaryChecksum;
                string boundaryJournal = (string)origin["model_publication_journal"];
                if (marker.ContainsKey("current_recovery_head")) {
                    var boundaryHead = marker["current_recovery_head"] as Dictionary<string, object>;
                    if (boundaryHead == null) throw new Exception("Exact CURRENT recovery head required");
                    boundaryJournal = (string)boundaryHead["journal"];
                }
                var boundaryEvents = AscetClassStudyJournal.ReadEvents(boundaryJournal, out boundaryChecksum);
                var lastBoundary = boundaryEvents[boundaryEvents.Count - 1];
                var lastBoundaryPayload = (Dictionary<string, object>)lastBoundary["payload"];
                bool releaseBoundary = (string)lastBoundary["kind"] == "release_reconciled" ||
                    (string)lastBoundary["kind"] == "step_started" &&
                    lastBoundaryPayload.ContainsKey("command") && (string)lastBoundaryPayload["command"] == "release" ||
                    (string)lastBoundary["kind"] == "step_completed" &&
                    ((string)lastBoundaryPayload["step"]).EndsWith("/release");
                bool alreadyReleased = publication.ContainsKey("publication_record_present") &&
                    AscetClassStudyJournal.Same(publication["publication_record_present"], false);
                if (releaseBoundary || alreadyReleased) {
                    var releaseObservation = CurrentRecoveryObservation(child, owners, signature, discovery, result);
                    SameObservation(expected, releaseObservation);
                    publication["release_current_observation"] = releaseObservation;
                }
                result["model_publication_classification"] = publication;
                result["current_execution_classifications"] = nativeRows;
                result["current_execution_origin_sha256"] = AscetClassStudyJournal.Hash(File.ReadAllText((string)request["origin_raw"]));
                result["model_publication_outstanding"] = true; result["model_setters_called"] = 0;
                if ((string)request["action"] == "classify") {
                    if (request.Count != 3) throw new Exception("Classification cannot accept dispatch material");
                    result["status"] = "current_execution_classified"; exit = 0; return exit;
                }
                if (!(request["plan"] is string)) throw new Exception("Independent complete CURRENT recovery proof required");
                var recoveryProof = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText((string)request["plan"]));
                string originalChecksum;
                var originalEvents = AscetClassStudyJournal.ReadEvents((string)origin["model_publication_journal"], out originalChecksum);
                var originalIntent = (Dictionary<string, object>)originalEvents[0]["payload"];
                var classified = new Dictionary<string, object> { {"publication", publication}, {"owners", nativeRows} };
                if ((string)recoveryProof["operation"] != "class_current_execution_recovery" ||
                    !AscetClassStudyJournal.Same(recoveryProof["token"], token) ||
                    !AscetClassStudyJournal.Same(recoveryProof["domain"], domain) ||
                    !AscetClassStudyJournal.Same(recoveryProof["database_session"], databaseSession) ||
                    !AscetClassStudyJournal.Same(recoveryProof["classification"], classified) ||
                    !AscetClassStudyJournal.Same(recoveryProof["original_dispatch_replay_allowed"], false) ||
                    !AscetClassStudyJournal.Same(recoveryProof["production_executor_available"], false) ||
                    !AscetClassStudyJournal.Same(recoveryProof["origin_raw_sha256"], result["current_execution_origin_sha256"]) ||
                    !AscetClassStudyJournal.Same(recoveryProof["origin_journal_checksum"], originalChecksum) ||
                    !AscetClassStudyJournal.Same(originalIntent["operation"], "class_current_execution_study") ||
                    !AscetClassStudyJournal.Same(originalIntent["token"], token) ||
                    !AscetClassStudyJournal.Same(originalIntent["current_observation"], expected))
                    throw new Exception("CURRENT recovery proof, immutable origin or fresh classification differs");
                var checkedState = (Dictionary<string, object>)recoveryProof["verified_origin_state"];
                var reconciliation = recoveryProof.ContainsKey("reconciliation_required") ?
                    recoveryProof["reconciliation_required"] as Dictionary<string, object> : null;
                int accountingSteps = reconciliation == null ? 0 : (int)reconciliation["accounting_model_steps"];
                if (!AscetClassStudyJournal.Same(checkedState["phase"], publication["state"]) ||
                    !AscetClassStudyJournal.Same(checkedState["model_steps"], (int)publication["model_steps"] + accountingSteps) ||
                    accountingSteps < 0 || accountingSteps > 1)
                    throw new Exception("CURRENT recovery classified physical state differs");
                int activeOwners = 0;
                foreach (var member in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(nativeRows)) {
                    if (member["active_command"] == null) {
                        if (!AscetClassStudyJournal.Same(member["physical_prefix_matches"], true))
                            throw new Exception("CURRENT untouched physical prefix differs");
                        continue;
                    }
                    ++activeOwners;
                    if (reconciliation == null || !AscetClassStudyJournal.Same(reconciliation["oid"], member["oid"]) ||
                        !AscetClassStudyJournal.Same(reconciliation["original_command"], member["active_command"]) ||
                        !AscetClassStudyJournal.Same(reconciliation["kind"], member["active_kind"]) ||
                        !AscetClassStudyJournal.Same(reconciliation["already_accounted"], member["active_accounted"]) ||
                        !AscetClassStudyJournal.Same(member["active_pending_after_return"], true) ||
                        (bool)member["unknown_before_matches"] == (bool)member["unknown_after_matches"] ||
                        (string)reconciliation["outcome"] != ((bool)member["unknown_after_matches"] ? "after" : "before") ||
                        !AscetClassStudyJournal.Same(reconciliation["expected_native_changes"], member["unknown_native_changes"]))
                        throw new Exception("CURRENT active action has no exact unique metadata reconciliation proof");
                }
                if (activeOwners != (reconciliation == null ? 0 : 1)) throw new Exception("CURRENT reconciliation owner coverage differs");
                var recoveryHistory = recoveryProof.ContainsKey("recovery_history") ?
                    AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(recoveryProof["recovery_history"]) :
                    new Dictionary<string, object>[0];
                if (recoveryHistory.Length > 32) throw new Exception("CURRENT recovery history exceeds its bound");
                var priorRecoveryFiles = new Dictionary<string, string>(StringComparer.OrdinalIgnoreCase);
                var priorBindings = new List<object>();
                Dictionary<string, object> latestPriorIntent = null;
                foreach (var binding in recoveryHistory) {
                    string priorPath = Path.GetFullPath((string)binding["journal"]), checksum;
                    if (priorRecoveryFiles.ContainsKey(priorPath)) throw new Exception("Duplicate CURRENT recovery segment");
                    var priorEvents = AscetClassStudyJournal.ReadEvents(priorPath, out checksum);
                    var firstEnvelope = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(
                        File.ReadAllText(Path.Combine(priorPath, "000000.json")));
                    if (!AscetClassStudyJournal.Same(checksum, binding["checksum"]) ||
                        !AscetClassStudyJournal.Same(priorEvents.Count, binding["event_count"]) ||
                        !AscetClassStudyJournal.Same(firstEnvelope["checksum"], binding["intent_checksum"]))
                        throw new Exception("CURRENT prior recovery checksum or complete event count differs");
                    foreach (var priorEvent in priorEvents) if ((string)priorEvent["kind"] == "finished")
                        throw new Exception("A terminal CURRENT recovery cannot continue");
                    latestPriorIntent = (Dictionary<string, object>)priorEvents[0]["payload"];
                    foreach (var field in new[] { "operation", "token", "domain", "database_session", "origin_raw_sha256", "origin_journal_checksum",
                        "original_dispatch_replay_allowed", "production_executor_available" })
                        if (!AscetClassStudyJournal.Same(latestPriorIntent[field], recoveryProof[field]))
                            throw new Exception("CURRENT prior recovery belongs to a different immutable origin");
                    object earlier = latestPriorIntent.ContainsKey("recovery_history") ? latestPriorIntent["recovery_history"] : new object[0];
                    if (!AscetClassStudyJournal.Same(earlier, priorBindings))
                        throw new Exception("CURRENT recovery history omitted or reordered its predecessors");
                    priorBindings.Add(binding); priorRecoveryFiles.Add(priorPath, checksum);
                }
                object expectedRecoveryHead = null;
                if (marker.ContainsKey("current_recovery_head")) {
                    if (recoveryHistory.Length == 0) throw new Exception("CURRENT recovery quarantine requires every previous segment");
                    var last = recoveryHistory[recoveryHistory.Length - 1];
                    expectedRecoveryHead = new Dictionary<string, object> {
                        {"journal", last["journal"]}, {"intent_checksum", last["intent_checksum"]} };
                    if (!AscetClassStudyJournal.Same(marker["current_recovery_head"], expectedRecoveryHead))
                        throw new Exception("CURRENT quarantine head differs from its latest supplied recovery");
                } else if (latestPriorIntent != null && latestPriorIntent.ContainsKey("recovery_head_required") &&
                    AscetClassStudyJournal.Same(latestPriorIntent["recovery_head_required"], true))
                    throw new Exception("CURRENT quarantine head was removed after an earlier recovery");
                string priorRecoveryPath = null, priorRecoveryChecksum = null;
                if (recoveryProof.ContainsKey("metadata_retry")) {
                    var retry = recoveryProof["metadata_retry"] as Dictionary<string, object>;
                    if (retry == null || reconciliation == null ||
                        !AscetClassStudyJournal.Same(retry["profile"], "class_current_untouched_metadata_retry_v1") ||
                        !AscetClassStudyJournal.Same(retry["model_setters_called"], 0) ||
                        !AscetClassStudyJournal.Same(retry["complete_classification_unchanged"], true) ||
                        !AscetClassStudyJournal.Same(retry["original_dispatch_replay_allowed"], false))
                        throw new Exception("Only an unchanged first zero-setter metadata recovery may retry");
                    priorRecoveryPath = (string)retry["journal"];
                    var priorEvents = AscetClassStudyJournal.ReadEvents(priorRecoveryPath, out priorRecoveryChecksum);
                    if (priorEvents.Count != 2 || (string)priorEvents[1]["kind"] != "step_started" ||
                        !AscetClassStudyJournal.Same(priorRecoveryChecksum, retry["checksum"]))
                        throw new Exception("Failed metadata recovery WAL has completed or different actions");
                    var priorIntent = (Dictionary<string, object>)priorEvents[0]["payload"];
                    foreach (var field in new[] { "operation", "token", "domain", "database_session", "classification",
                        "verified_origin_state", "unknown_step", "unknown_native_action_completed", "reconciliation_required",
                        "original_dispatch_replay_allowed", "production_executor_available", "origin_raw_sha256", "origin_journal_checksum" })
                        if (!AscetClassStudyJournal.Same(priorIntent[field], recoveryProof[field]))
                            throw new Exception("Failed metadata recovery complete state changed");
                    var activeOwner = (string)reconciliation["oid"];
                    string activeComponent = null;
                    foreach (var owner in owners) if (owner.GetOID() == activeOwner) activeComponent = owner.GetNameWithPath();
                    var expectedRetry = new Dictionary<string, object> {
                        {"step", "recovery/" + activeOwner + "/reconcile_action"}, {"phase", "recovery"},
                        {"oid", activeOwner}, {"component", activeComponent}, {"command", "reconcile_action"},
                        {"database_session", databaseSession} };
                    if (!AscetClassStudyJournal.Same(priorEvents[1]["payload"], expectedRetry) ||
                        !AscetClassStudyJournal.Same(retry["dispatch"], expectedRetry))
                        throw new Exception("Failed recovery attempted a different or non-metadata action");
                }
                string recoveryPath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "current-recovery.wal");
                string pendingPath = (string)origin["model_publication_pending"];
                var recoveryJournal = new AscetClassStudyJournal(recoveryPath, pendingPath, domain);
                recoveryJournal.DatabaseSession = databaseSession;
                recoveryJournal.ContinuationToken = (string)origin["model_publication_journal"];
                recoveryJournal.VerifyIdentity = () => {
                    if (process.HasExited || process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o") != (string)result["ascet_process_epoch"])
                        throw new Exception("CURRENT recovery process epoch expired");
                    if (AscetStructureRead.DatabaseIdentity(child, Keep(ascet.GetCurrentDataBase()), databaseIdentity) != databaseSession)
                        throw new Exception("CURRENT recovery database expired");
                    var currentDirty = ascet.GetAllEditorsWithUnsavedChanges();
                    if (currentDirty == null || currentDirty.Length != 0) throw new Exception("CURRENT recovery conflicts with unsaved edits");
                    string nowChecksum;
                    AscetClassStudyJournal.ReadEvents((string)origin["model_publication_journal"], out nowChecksum);
                    if (nowChecksum != originalChecksum || AscetClassStudyJournal.Hash(File.ReadAllText((string)request["origin_raw"])) !=
                        (string)recoveryProof["origin_raw_sha256"])
                        throw new Exception("Immutable CURRENT origin changed during recovery");
                    if (priorRecoveryPath != null) {
                        string priorNow;
                        AscetClassStudyJournal.ReadEvents(priorRecoveryPath, out priorNow);
                        if (priorNow != priorRecoveryChecksum) throw new Exception("Failed metadata recovery WAL changed during retry");
                    }
                    foreach (var previousRecovery in priorRecoveryFiles) {
                        string previousNow;
                        AscetClassStudyJournal.ReadEvents(previousRecovery.Key, out previousNow);
                        if (previousNow != previousRecovery.Value) throw new Exception("CURRENT prior recovery changed during continuation");
                    }
                };
                recoveryJournal.VerifyPending(); recoveryJournal.VerifyIdentity();
                recoveryJournal.Append("intent", recoveryProof);
                result["current_execution_recovery_journal"] = recoveryPath; save();
                recoveryJournal.AttachCurrentRecoveryHead(expectedRecoveryHead);
                result["current_execution_recovery_journal"] = recoveryPath;
                var recoveryReceipts = new List<object>(); result["current_execution_recovery_receipts"] = recoveryReceipts;
                if (alreadyReleased) {
                    if (!releaseBoundary || !AscetClassStudyJournal.Same(checkedState["release_completed"], true) ||
                        !AscetClassStudyJournal.Same(checkedState["restored_observed"], true) ||
                        !AscetClassStudyJournal.Same(publication["release_witness_present"], true) ||
                        !AscetClassStudyJournal.Same(publication["release_witness_profile"], "class_current_release_witness_v1") ||
                        !AscetClassStudyJournal.Same(publication["release_witness_verified"], true) || reconciliation != null)
                        throw new Exception("CURRENT release reconciliation requires its exact absent record and complete native witness");
                    recoveryJournal.VerifyPending(); recoveryJournal.VerifyIdentity();
                    var releaseObservation = CurrentRecoveryObservation(child, owners, signature, discovery, result);
                    SameObservation(expected, releaseObservation);
                    var releasedPublication = PublicationClassification(child, publicationManager, token);
                    releasedPublication["release_current_observation"] = releaseObservation;
                    var releasedOwners = CurrentExecutionClassifications(owners, executionManager, token);
                    var releasedClassification = new Dictionary<string, object> {
                        {"publication", releasedPublication}, {"owners", releasedOwners} };
                    if (!AscetClassStudyJournal.Same(releasedClassification, classified))
                        throw new Exception("CURRENT released native/public/source baseline changed before metadata completion");
                    recoveryJournal.Append("release_reconciled", new Dictionary<string, object> {
                        {"observation", releaseObservation}, {"classification", releasedClassification}, {"model_setters_called", 0} });
                    result["current_execution_recovered"] = releaseObservation;
                    result["current_execution_recovered_classification"] = releasedClassification;
                    result["current_execution_release_reconciled_without_dispatch"] = true;
                    recoveryJournal.Append("finished", new Dictionary<string, object> {
                        {"status", "current_recovered"}, {"outstanding", false}, {"dispatch_count", 0} });
                    recoveryJournal.VerifyPending(); File.Delete(pendingPath);
                    result["model_publication_outstanding"] = false;
                    result["status"] = "current_execution_recovered"; exit = 0; return exit;
                }
                int initialSteps = (int)checkedState["model_steps"];
                Func<CodeComponent, string, bool, Dictionary<string, object>> dispatch = (owner, command, native) => {
                    string text = recoveryJournal.Dispatch("recovery/" + owner.GetOID() + "/" + command,
                        "recovery", owner.GetNameWithPath(), owner.GetOID(), command, () => {
                            bool metadata = command == "finish_restore" || command == "reconcile_restore" ||
                                command == "reconcile_action" || command == "release";
                            result["native_registry_mutation_dispatched"] = true;
                            if (!metadata) result["model_mutation_dispatched"] = true;
                            save();
                            return AscetStructureRead.Json.Serialize(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                                ModelPublicationAction(owner, native ? executionManager : publicationManager, token, command))));
                        });
                    var receipt = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(text);
                    result["model_setters_called"] = (int)receipt["model_steps"] - initialSteps;
                    recoveryReceipts.Add(receipt); save(); return receipt;
                };
                if (reconciliation != null) {
                    CodeComponent owner = null;
                    foreach (var item in owners) if (item.GetOID() == (string)reconciliation["oid"]) owner = item;
                    if (owner == null) throw new Exception("CURRENT reconciliation owner is absent");
                    var receipt = dispatch(owner, "reconcile_action", true);
                    if ((int)receipt["model_setters_called"] != 0 || (int)receipt["model_steps"] != initialSteps ||
                        !AscetClassStudyJournal.Same(receipt["active_pending_after_return"], false))
                        throw new Exception("CURRENT reconciliation invoked a new model setter or changed its exact accounting prefix");
                    result["reconciled_original_model_steps"] = accountingSteps;
                }
                string phase = (string)publication["state"];
                bool untouched = phase == "ready";
                if (Array.IndexOf(new[] { "signature_arguments_set", "publishing", "published" }, phase) >= 0) {
                    dispatch(child, "abort_signature_arguments", false); phase = "restore_signature_arguments_set";
                }
                if (phase == "restore_signature_arguments_set") {
                    dispatch(child, "restore_signature_commit", false); phase = "restoring";
                }
                if (!untouched && phase != "restoring" && phase != "restored")
                    throw new Exception("CURRENT recovery group has an unclassified signature phase");
                if (phase == "restoring") for (int i = owners.Count - 1; i >= 0; --i) {
                    var owner = owners[i];
                    var member = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                        ModelPublicationAction(owner, executionManager, token, "classify")));
                    if ((string)member["entry_state"] == "restored") continue;
                    foreach (var counters in new[] {
                        new[] { "publish_store_undo_completed", "publish_store_undo_steps", "undo_publish_store/" },
                        new[] { "inverse_completed", "forward_completed", "undo_apply/" } }) {
                        int done = (int)member[counters[0]], total = (int)member[counters[1]];
                        if (done < 0 || total < done || total > 100000) throw new Exception("Bounded CURRENT recovery prefix required");
                        for (int n = done + 1; n <= total; ++n) member = dispatch(owner, counters[2] + n, true);
                    }
                    if ((string)member["entry_state"] != "source_restored") member = dispatch(owner, "restore_store", true);
                    int restoreDone = (int)member["restore_store_undo_completed"], restoreTotal = (int)member["restore_store_undo_steps"];
                    if (restoreDone < 0 || restoreTotal < restoreDone || restoreTotal > 100000)
                        throw new Exception("Bounded dynamic CURRENT restoration store inverse required");
                    for (int n = restoreDone + 1; n <= restoreTotal; ++n) member = dispatch(owner, "undo_restore_store/" + n, true);
                    if ((string)member["state"] != "restored") dispatch(owner, "finish_restore", true);
                    dispatch(owner, "reconcile_restore", false);
                }
                var ownerReaders = new List<Identifiable>(); var recoveryCallers = new List<CodeComponent>();
                var callerReaders = new List<Identifiable>(); var callerDiagrams = new List<BlockDiagram>();
                foreach (var owner in owners) {
                    ownerReaders.Add(StructureReader(owner));
                    if (owner.GetOID() != child.GetOID()) {
                        recoveryCallers.Add(owner); callerReaders.Add(StructureReader(owner));
                        callerDiagrams.Add(Keep(owner.GetDiagramWithName("Main") as BlockDiagram));
                    }
                }
                var restored = Observation(Read(child, recoveryCallers, callerDiagrams, callerReaders, signature, discovery),
                    Owners(owners, ownerReaders, result, null));
                SameObservation(expected, restored);
                var finalClassification = new Dictionary<string, object> {
                    {"publication", PublicationClassification(child, publicationManager, token)},
                    {"owners", CurrentExecutionClassifications(owners, executionManager, token)} };
                result["current_execution_recovered"] = restored;
                result["current_execution_recovered_classification"] = finalClassification;
                if (!AscetClassStudyJournal.Same(checkedState["restored_observed"], true))
                    recoveryJournal.Append("observed", new Dictionary<string, object> {
                        {"phase", untouched ? "ready" : "restored"}, {"observation", restored}, {"classification", finalClassification} });
                dispatch(child, "release", false);
                recoveryJournal.Append("finished", new Dictionary<string, object> {
                    {"status", "current_recovered"}, {"outstanding", false}, {"dispatch_count", recoveryJournal.Dispatched} });
                recoveryJournal.VerifyPending(); File.Delete(pendingPath);
                result["model_publication_outstanding"] = false;
                result["status"] = "current_execution_recovered"; exit = 0; return exit;
            }
            if (fixture.ContainsKey("native_class_model_publication_recovery")) {
                var recoveryRequest = fixture["native_class_model_publication_recovery"] as Dictionary<string, object>;
                if (operation != "observe" || acquireReadIdentity || recoveryRequest == null || recoveryRequest.Count != 3 ||
                    !(recoveryRequest["token"] is string) || !(recoveryRequest["origin_raw"] is string) ||
                    !(recoveryRequest["action"] is string) ||
                    Array.IndexOf(new[] { "classify", "reconcile" }, (string)recoveryRequest["action"]) < 0 ||
                    Environment.GetEnvironmentVariable("ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY") != "1")
                    throw new Exception("Exact retained publication recovery request required");
                string recoveryToken = (string)recoveryRequest["token"];
                var originRaw = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText((string)recoveryRequest["origin_raw"]));
                if (originRaw.ContainsKey("current_execution_study") && AscetClassStudyJournal.Same(originRaw["current_execution_study"], true))
                    throw new Exception("CURRENT execution cannot use private-publication recovery");
                var originReceipts = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(originRaw["model_publication_receipts"]);
                if (originReceipts.Length == 0 || (string)originReceipts[0]["token"] != recoveryToken ||
                    !(bool)originRaw["model_publication_outstanding"] ||
                    !AscetClassStudyJournal.Same(originRaw["ascet_process_epoch"], result["ascet_process_epoch"]) ||
                    !AscetClassStudyJournal.Same(originRaw["database_session"], databaseSession) ||
                    !AscetClassStudyJournal.Same(originRaw["oid"], child.GetOID()))
                    throw new Exception("Retained publication recovery origin differs");
                var manager = ModelPublicationManager(child, signature, discovery);
                var classification = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                    ModelPublicationAction(child, manager, recoveryToken, "classify")));
                var signatureValues = new Dictionary<string, object>();
                foreach (string role in new[] { "actual", "current", "candidate", "native", "public" }) {
                    string text = classification[role + "_signature"] as string;
                    if (role == "public" && text == "BDE_CLASS_PROBE_ERROR: Formal model type unavailable")
                        signatureValues[role] = null;
                    else {
                        if (text == null || text.StartsWith("BDE_")) throw new Exception("Complete classification signature unavailable");
                        signatureValues[role] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
                    }
                }
                classification["signature_values"] = signatureValues;
                result["model_publication_classification"] = classification;
                result["model_publication_outstanding"] = true;
                result["model_setters_called"] = 0; save();
                if ((string)recoveryRequest["action"] == "classify") {
                    result["status"] = "publication_classified"; exit = 0; return exit;
                }
                string publicationState = (string)classification["state"];
                bool abortPublication = Array.IndexOf(new[] { "signature_arguments_set", "publishing", "published" }, publicationState) >= 0;
                bool commitRestoredSignature = publicationState == "restore_signature_arguments_set";
                if (!(abortPublication && classification.ContainsKey("candidate_signature_matches") && (bool)classification["candidate_signature_matches"] ||
                      (commitRestoredSignature || publicationState == "restoring" || publicationState == "restored") && (bool)classification["current_signature_matches"]))
                    throw new Exception("Publication recovery requires an exactly classified complete signature");
                string originJournal = (string)originRaw["model_publication_journal"];
                string pendingPath = (string)originRaw["model_publication_pending"];
                var marker = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(pendingPath));
                if ((string)marker["native_token"] != originJournal) throw new Exception("Publication quarantine belongs to another operation");
                var domain = marker["domain"] as Dictionary<string, object>;
                if (domain == null || !AscetClassStudyJournal.Same(domain["process_epoch"], result["ascet_process_epoch"]) ||
                    !AscetClassStudyJournal.Same(domain["database"], result["database"]) || !AscetClassStudyJournal.Same(domain["oid"], child.GetOID()))
                    throw new Exception("Publication quarantine domain changed");
                string recoveryPath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "model-recovery.wal");
                var recoveryJournal = new AscetClassStudyJournal(recoveryPath, pendingPath, domain);
                recoveryJournal.DatabaseSession = databaseSession; recoveryJournal.ContinuationToken = originJournal;
                recoveryJournal.VerifyIdentity = () => {
                    if (process.HasExited || process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o") != (string)result["ascet_process_epoch"])
                        throw new Exception("Publication recovery process expired");
                    if (AscetStructureRead.DatabaseIdentity(child, Keep(ascet.GetCurrentDataBase()), databaseIdentity) != databaseSession)
                        throw new Exception("Publication recovery database expired");
                };
                recoveryJournal.VerifyPending(); result["model_publication_recovery_journal"] = recoveryPath;
                recoveryJournal.Append("intent", new Dictionary<string, object> {
                    {"operation", "class_model_publication_recovery"}, {"token", recoveryToken}, {"domain", domain},
                    {"origin_raw_sha256", AscetClassStudyJournal.Hash(File.ReadAllText((string)recoveryRequest["origin_raw"]))},
                    {"origin_journal", originJournal}, {"classification", classification} });
                var classifications = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(classification["owners"]);
                foreach (var item in classifications) {
                    string state = (string)item["owner_state"];
                    if (!(state == "prepared" && (bool)item["current_matches"] && (int)item["publish_stores"] == 0 ||
                            state == "published" && (bool)item["candidate_matches"] ||
                            (state == "restore_started" || state == "source_restored" || state == "restored") && (bool)item["current_matches"]))
                        throw new Exception("Publication recovery source cannot be classified without setter replay");
                }
                var originExpectedPath = Path.Combine(Path.GetDirectoryName((string)recoveryRequest["origin_raw"]), "expected.json");
                var recoveryExpected = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText(originExpectedPath));
                var expectedOwners = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(recoveryExpected["owners"]);
                var recoveryOwners = new List<CodeComponent>(); var recoveryReaders = new List<Identifiable>();
                var recoveryCallers = new List<CodeComponent>(); var recoveryRetained = new List<BlockDiagram>();
                var recoveryCallerReaders = new List<Identifiable>();
                var recoveryReceipts = new List<object>(); result["model_publication_recovery_receipts"] = recoveryReceipts;
                foreach (var item in expectedOwners) {
                    var owner = Resolve(database, item); recoveryOwners.Add(owner); recoveryReaders.Add(StructureReader(owner));
                }
                Func<CodeComponent, string, object> recoverAction = (owner, command) => {
                    string text = recoveryJournal.Dispatch("recovery/" + owner.GetOID() + "/" + command,
                        "recovery", owner.GetNameWithPath(), owner.GetOID(), command, () => {
                            result["native_registry_mutation_dispatched"] = true;
                            if (command == "restore" || command == "abort_signature_arguments" || command == "restore_signature_commit")
                                result["model_mutation_dispatched"] = true;
                            save();
                            return AscetStructureRead.Json.Serialize(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                                ModelPublicationAction(owner, manager, recoveryToken, command))));
                        });
                    var receipt = AscetStructureRead.Json.DeserializeObject(text);
                    result["model_setters_called"] = (int)((Dictionary<string, object>)receipt)["model_steps"] - (int)classification["model_steps"];
                    recoveryReceipts.Add(receipt); save(); return receipt;
                };
                if (abortPublication) recoverAction(child, "abort_signature_arguments");
                if (abortPublication || commitRestoredSignature) recoverAction(child, "restore_signature_commit");
                for (int i = recoveryOwners.Count - 1; i >= 0; --i) {
                    var owner = recoveryOwners[i];
                    Dictionary<string, object> classified = null;
                    foreach (var item in classifications) if ((string)item["oid"] == owner.GetOID()) classified = item;
                    if (classified == null) throw new Exception("Publication recovery owner roster changed");
                    string state = (string)classified["owner_state"];
                    if (state == "restored") continue;
                    string command = state == "prepared" ? "reconcile_untouched" : state == "published" ? "restore" : "reconcile_restore";
                    recoverAction(owner, command);
                }
                foreach (var owner in recoveryOwners) if (owner.GetOID() != child.GetOID()) {
                    recoveryCallers.Add(owner); recoveryRetained.Add(Keep(owner.GetDiagramWithName("Main") as BlockDiagram));
                    recoveryCallerReaders.Add(StructureReader(owner));
                }
                result["model_publication_recovered"] = Observation(Read(child, recoveryCallers, recoveryRetained,
                    recoveryCallerReaders, signature, discovery), Owners(recoveryOwners, recoveryReaders, result, null));
                SameObservation(recoveryExpected, (Dictionary<string, object>)result["model_publication_recovered"]);
                recoveryJournal.Append("observed", new Dictionary<string, object> {
                    {"phase", "current_restored"}, {"observation", result["model_publication_recovered"]} });
                result["model_publication_recovery_release"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                    ModelPublicationAction(child, manager, recoveryToken, "release")));
                recoveryJournal.Append("finished", new Dictionary<string, object> { {"status", "current_restored"}, {"outstanding", false} });
                File.Delete(pendingPath); result["model_publication_outstanding"] = false;
                result["status"] = "publication_recovered"; exit = 0; return exit;
            }
            object initialDiscovery = automaticCallers ? Native(child, discovery) : null;
            System.Func<object, string> captureResourceClosure = value => operation == "observe"
                ? AscetClassResourceClosure.CaptureReadOnly(value, child.GetOID())
                : AscetClassResourceClosure.Capture(value, child.GetOID());
            string resourceClosure = automaticCallers ? captureResourceClosure(initialDiscovery) : null;
            if (automaticCallers) {
                result["caller_resolution"] = "native"; result["resource_closure"] = resourceClosure;
                result["resource_closure_sha256"] = AscetClassStudyJournal.Hash(resourceClosure);
                if (operation == "observe") {
                    try { AscetClassResourceClosure.Capture(initialDiscovery, child.GetOID()); }
                    catch (Exception referenceError) { result["write_resource_error"] = referenceError.Message; }
                }
                result["resource_closure_checks"] = 0; save();
                if (fixture.ContainsKey("expect_resource_closure_sha256") &&
                    (string)fixture["expect_resource_closure_sha256"] != (string)result["resource_closure_sha256"])
                    throw new Exception("Class resource closure precondition conflict; zero setters");
            }
            object callerIdentities = automaticCallers ? ((Dictionary<string, object>)initialDiscovery)["callers"] : fixture["callers"];
            var retained = new List<BlockDiagram>();
            foreach (var row in AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(callerIdentities)) {
                var caller = Resolve(database, row); callers.Add(caller);
                retained.Add(Keep(caller.GetDiagramWithName("Main") as BlockDiagram));
                readers.Add(StructureReader(caller));
                if (materialize) {
                    materialOwners.Add(caller); materialReaders.Add(readers[readers.Count - 1]);
                    materializers.Add(BindStudy(caller, "bde_class_materialize.st", selector, resolve, child));
                }
            }
            if (closedDelete || closedCreate) {
                materialOwners.Add(child); materialReaders.Add(Compile(child, "bde_structure_read.st"));
                materializers.Add(BindStudy(child, "bde_class_materialize.st", selector, resolve, child));
            }
            result["stage"] = "before_read"; save();
            result["before"] = Read(child, callers, retained, readers, signature, discovery); save();
            string baselineConfigurations = AscetStructureRead.Json.Serialize(((Dictionary<string, object>)result["before"])["configurations"]);
            if (!ConfigurationsUnchanged(child, callers, baselineConfigurations))
                throw new Exception("Class all-owner configuration changed during baseline capture; zero setters");
            result["configuration_storage_sha256"] = AscetClassStudyJournal.Hash(baselineConfigurations);
            result["configuration_guard_checks"] = 0; save();
            if (fixture.ContainsKey("expect_configuration_storage_sha256") &&
                (string)fixture["expect_configuration_storage_sha256"] != (string)result["configuration_storage_sha256"])
                throw new Exception("Class configuration storage precondition conflict; zero setters");
            if (automaticCallers) {
                if (captureResourceClosure(((Dictionary<string, object>)result["before"])["discovery"]) != resourceClosure)
                    throw new Exception("Class caller resource closure changed during resolution");
            } else ValidateCallers(result["before"], fixture);
            result["caller_set_preflight"] = "verified"; save();
            if (fixture.ContainsKey("expected_observation_path")) {
                expectedObservation = AscetStructureRead.Json.Deserialize<Dictionary<string, object>>(File.ReadAllText((string)fixture["expected_observation_path"]));
                var ownerList = new List<CodeComponent>(callers); ownerList.Add(child);
                var readerList = new List<Identifiable>(readers); readerList.Add(Compile(child, "bde_structure_read.st"));
                SameObservation(expectedObservation, Observation(result["before"], Owners(ownerList, readerList, result, null)));
                result["expected_complete_observation_verified"] = true;
            }
            if (closedDelete || closedCreate) {
                string journalPath = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL");
                string pendingPath = Environment.GetEnvironmentVariable("ASCET_BD_CLASS_PENDING");
                if (String.IsNullOrEmpty(journalPath) || String.IsNullOrEmpty(pendingPath))
                    throw new Exception("Closed Class interface operation requires a durable journal and instance quarantine");
                var domain = new Dictionary<string, object> { {"session", fixture.ContainsKey("journal_session") ? fixture["journal_session"] : "class-interface-study"},
                    {"database", result["database"]}, {"oid", result["oid"]}, {"process_epoch", result["ascet_process_epoch"]} };
                journal = new AscetClassStudyJournal(journalPath, pendingPath, domain);
                journal.DatabaseSession = databaseSession;
                if (!inverseRetained && fixture.ContainsKey("prepared_pending_token")) {
                    if ((string)fixture["prepared_pending_token"] != journalPath)
                        throw new Exception("Class prepared marker does not belong to this journal");
                    journal.ContinuationToken = journalPath;
                    journal.VerifyPending();
                }
                if (inverseRetained) {
                    if ((string)retainedStudy["database_session"] != databaseSession ||
                        (string)retainedStudy["ascet_process_epoch"] != (string)result["ascet_process_epoch"])
                        throw new Exception("Retained Class database/process identity expired");
                    journal.ContinuationToken = (string)retainedStudy["journal"];
                    journal.VerifyPending();
                }
                journal.VerifyIdentity = () => Measure("dispatch_precondition", () => {
                    var currentDatabase = Keep(ascet.GetCurrentDataBase());
                    if (AscetStructureRead.DatabaseIdentity(child, currentDatabase, databaseIdentity) != databaseSession)
                        throw new Exception("Native database identity changed before Class dispatch");
                    var currentDirty = ascet.GetAllEditorsWithUnsavedChanges();
                    if (currentDirty == null || currentDirty.Length != 0)
                        throw new Exception("Unsaved editor appeared before Class dispatch");
                    if (!ConfigurationsUnchanged(child, callers, baselineConfigurations))
                        throw new Exception("Class all-owner configuration storage changed before dispatch");
                    result["configuration_guard_checks"] = Convert.ToInt32(result["configuration_guard_checks"]) + 1;
                    if (automaticCallers) {
                        if (AscetClassResourceClosure.Capture(Native(child, discovery), child.GetOID()) != resourceClosure)
                            throw new Exception("Class caller resource closure changed before dispatch");
                        result["resource_closure_checks"] = Convert.ToInt32(result["resource_closure_checks"]) + 1;
                    }
                    return 0;
                });
                journal.Append("intent", new Dictionary<string, object> { {"domain", domain}, {"component", result["component"]},
                    {"journal_version", 2},
                    {"request_id", Path.GetFileName(journalPath)}, {"operation", operation}, {"selector", selectorMap},
                    {"database_session", databaseSession},
                    {"caller_resolution", automaticCallers ? "native" : "fixture"}, {"resource_closure", resourceClosure},
                    {"configuration_storage_sha256", result["configuration_storage_sha256"]},
                    {"execution_phase", inverseRetained ? "inverse_only" : retainApplied ? "apply_only" : "apply_and_inverse"},
                    {"retained_origin", retainedOrigin},
                    {"retained_study_sha256", inverseRetained ? AscetClassStudyJournal.Hash(File.ReadAllText((string)fixture["retained_study_path"])) : null},
                    {"fixture_sha256", AscetClassStudyJournal.Hash(File.ReadAllText(args[0]))} });
                result["journal"] = journalPath;
            }
            if (inverseRetained) {
                result["operation"] = operation;
                if (Action(child, mutation, "status") != "added")
                    throw new Exception("Retained Class signature state is not applied");
                var owners = Owners(materialOwners, materialReaders, result, null);
                var current = Observation(result["before"], owners);
                var expectedScopes = new List<object>();
                for (int i = 0; i < materialOwners.Count; ++i) expectedScopes.Add(new Dictionary<string, object> {
                    {"component", materialOwners[i].GetNameWithPath()}, {"oid", materialOwners[i].GetOID()},
                    {"native_recovery", "prepared"}, {"scopes", retainedStudy["owner_scopes_after_" + i]} });
                SameObservation(Observation(retainedStudy["after"], expectedScopes), current);
                for (int i = 0; i < materialOwners.Count; ++i)
                    if (MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "verify", child) != "applied")
                        throw new Exception("Retained Class owner is not completely applied");
                journal.Append("prepared_all", current); journal.Append("preflight_observed", current);
                current["phase"] = "after"; journal.Append("observed", current);
                current["native_owner_checks"] = new List<string>();
                var checks = (List<string>)current["native_owner_checks"];
                foreach (var owner in materialOwners) checks.Add("verified");
                journal.Append("inverse_preflight", current);
                inversePreflightPassed = true;
                result["restore"] = Dispatch(journal, "signature_restore", "inverse", child, "restore", () => {
                    result["model_mutation_dispatched"] = true; restoreDispatched = true;
                    return Action(child, mutation, "restore");
                });
                for (int i = materialOwners.Count - 1; i >= 0; --i) {
                    int index = i;
                    result["caller_restore_" + i] = Dispatch(journal, "restore_" + i, "inverse", materialOwners[i], "restore",
                        () => MaterialAction(materialOwners[index], materializers[index], materialReaders[index], "restore", child));
                    result["owner_scopes_restored_" + i] = SnapshotTree(materialOwners[i], materialReaders[i]);
                }
                result["restored"] = Read(child, callers, retained, readers, signature, discovery);
                var originalScopes = new List<object>();
                for (int i = 0; i < materialOwners.Count; ++i) originalScopes.Add(new Dictionary<string, object> {
                    {"component", materialOwners[i].GetNameWithPath()}, {"oid", materialOwners[i].GetOID()},
                    {"native_recovery", "prepared"}, {"scopes", retainedStudy["owner_scopes_before_" + i]} });
                var restored = Observation(result["restored"], Owners(materialOwners, materialReaders, result, "owner_scopes_restored_"));
                SameObservation(Observation(retainedStudy["before"], originalScopes), restored);
                restored["phase"] = "restored"; journal.Append("observed", restored);
                for (int i = 0; i < materialOwners.Count; ++i)
                    result["caller_release_" + i] = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "release", child);
                result["release"] = Action(child, mutation, "release");
                var inverseDirty = ascet.GetAllEditorsWithUnsavedChanges();
                if (inverseDirty == null || inverseDirty.Length != 0) throw new Exception("Inverse leaves dirty editors");
                result["dirty_after"] = inverseDirty.Length; result["status"] = "retained_restored";
                result["retained_source"] = fixture["retained_study_path"];
                result["inverse_target"] = Observation(retainedStudy["before"], originalScopes);
                exit = 0; return exit;
            }
            if (operation == "verify_fixture") {
                var observed = (Dictionary<string, object>)result["before"];
                if (AscetStructureRead.Json.Serialize(observed["body"]) != AscetStructureRead.Json.Serialize(fixture["class_graph"]) ||
                    AscetStructureRead.Json.Serialize(observed["signature"]) != AscetStructureRead.Json.Serialize(fixture["class_interface"]))
                    throw new Exception("Complete persisted Class baseline changed after restart");
                var expectedCallers = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(fixture["callers"]);
                var currentCallers = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(observed["callers"]);
                for (int i = 0; i < callers.Count; ++i) {
                    if (AscetStructureRead.Json.Serialize(expectedCallers[i]["graph"]) != AscetStructureRead.Json.Serialize(currentCallers[i]["public_fresh"]) ||
                        currentCallers[i]["cached"] == null || currentCallers[i]["cached_error"] != null)
                        throw new Exception("Complete persisted caller baseline changed after restart");
                }
                var verifiedDirty = ascet.GetAllEditorsWithUnsavedChanges();
                if (verifiedDirty == null || verifiedDirty.Length != 0) throw new Exception("Unsaved editors after fixture verification");
                result["dirty_after"] = verifiedDirty.Length; result["status"] = "verified_fixture";
                result["model_setters_called"] = 0; exit = 0; return exit;
            }
            if (inspectMaterial) {
                for (int i = 0; i < callers.Count; ++i) {
                    result["caller_state_" + i] = MaterialAction(callers[i], materializers[i], readers[i], "status", child);
                    result["caller_original_objects_match_" + i] = MaterialAction(callers[i], materializers[i], readers[i], "objects_match", child);
                    result["caller_registry_match_" + i] = MaterialAction(callers[i], materializers[i], readers[i], "registry_match", child);
                    foreach (string action in new[] { "before_snapshot", "current_snapshot" }) {
                        string text = MaterialAction(callers[i], materializers[i], readers[i], action, child);
                        result["caller_" + action + "_" + i] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
                    }
                }
                if (operation == "reconcile_materialize") {
                    var observed = (Dictionary<string, object>)result["before"];
                    if (AscetStructureRead.Json.Serialize(observed["body"]) != AscetStructureRead.Json.Serialize(fixture["class_graph"]))
                        throw new Exception("Class public fixture baseline not restored");
                    var expectedCallers = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(fixture["callers"]);
                    var currentCallers = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(observed["callers"]);
                    for (int i = 0; i < callers.Count; ++i) {
                        if (AscetStructureRead.Json.Serialize(expectedCallers[i]["graph"]) != AscetStructureRead.Json.Serialize(currentCallers[i]["public_fresh"]) ||
                            SemanticObservation(result["caller_before_snapshot_" + i]) != SemanticObservation(result["caller_current_snapshot_" + i]) ||
                            (string)result["caller_original_objects_match_" + i] != "true")
                            throw new Exception("Caller complete semantic/original-object baseline not restored");
                    }
                    for (int i = 0; i < callers.Count; ++i) {
                        result["caller_reconciled_" + i] = MaterialAction(callers[i], materializers[i], readers[i], "finish_verified_restore", child);
                        result["caller_release_" + i] = MaterialAction(callers[i], materializers[i], readers[i], "release", child);
                    }
                    inspectMaterial = false; materialize = false;
                    result["status"] = "reconciled"; result["model_setters_called"] = 0; exit = 0; return exit;
                }
                result["status"] = "diagnosed"; result["model_setters_called"] = 0; exit = 0; return exit;
            }
            if (operation == "observe") {
                for (int i = 0; i < callers.Count; ++i)
                    result["owner_scopes_observed_" + i] = SnapshotTree(callers[i], readers[i]);
                result["owner_scopes_observed_" + callers.Count] = SnapshotTree(child, StructureReader(child));
                if (fixture.ContainsKey("native_class_source_candidate_compile")) {
                    if (!(fixture["native_class_source_candidate_compile"] is bool) || !(bool)fixture["native_class_source_candidate_compile"])
                        throw new Exception("Exact candidate compilation preflight flag required");
                    SourceCandidateManager(child, signature);
                    result["native_source_candidate_compiled"] = true;
                    if (fixture.ContainsKey("native_class_source_runtime_oracle")) {
                        if (!(fixture["native_class_source_runtime_oracle"] is bool) || !(bool)fixture["native_class_source_runtime_oracle"])
                            throw new Exception("Exact native runtime source research flag required");
                        SourceRuntimeProbe(child);
                        result["native_source_runtime_compiled"] = true;
                    }
                    if (fixture.ContainsKey("native_class_retained_runtime_oracle")) {
                        if (!(fixture["native_class_retained_runtime_oracle"] is bool) || !(bool)fixture["native_class_retained_runtime_oracle"])
                            throw new Exception("Exact retained runtime compilation flag required");
                        RetainedRuntimeCapture(child); RetainedRuntimeProbe(child);
                        result["native_retained_runtime_compiled"] = true;
                    }
                    if (fixture.ContainsKey("native_class_runtime_patch_oracle")) {
                        if (!(fixture["native_class_runtime_patch_oracle"] is bool) || !(bool)fixture["native_class_runtime_patch_oracle"])
                            throw new Exception("Exact runtime patch compilation flag required");
                        RuntimePatchProbe(child); result["native_runtime_patch_compiled"] = true;
                    }
                    if (fixture.ContainsKey("native_class_model_publication_compile")) {
                        if (!(fixture["native_class_model_publication_compile"] is bool) ||
                            !(bool)fixture["native_class_model_publication_compile"])
                            throw new Exception("Exact model publication compilation flag required");
                        ModelPublicationManager(child, signature, discovery);
                        result["native_model_publication_compiled"] = true;
                    }
                    if (fixture.ContainsKey("native_class_current_identity_compile")) {
                        if (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_IDENTITY_AUDIT") != "1" ||
                            !(fixture["native_class_current_identity_compile"] is bool) ||
                            !(bool)fixture["native_class_current_identity_compile"])
                            throw new Exception("Exact opt-in current identity compilation flag required");
                        CurrentIdentityProbe(child); CurrentExecutionManager(child);
                        Compile(child, "current_class_context_probe.st");
                        result["native_current_identity_compiled"] = true;
                    }
                }
                if (fixture.ContainsKey("native_class_source_plan_oracle")) {
                    string sourcePlanMode = fixture["native_class_source_plan_oracle"] as string;
                    if (sourcePlanMode != "schema" && sourcePlanMode != "plan")
                        throw new Exception("Exact native Class source planning mode required");
                    var sourcePlanner = SourcePlanner(child);
                    var sourceOwners = new List<CodeComponent>(callers); sourceOwners.Add(child);
                    var sourcePlans = new List<object>();
                    foreach (var owner in sourceOwners) {
                        var sourcePlanValue = GraphBindings(owner, sourcePlanner, sourcePlanMode) as Dictionary<string, object>;
                        if (sourcePlanValue == null || !sourcePlanValue.ContainsKey("profile") ||
                            (string)sourcePlanValue["profile"] != "class_persisted_source_inverse_plan_v1" ||
                            (string)sourcePlanValue["mode"] != sourcePlanMode || (string)sourcePlanValue["oid"] != owner.GetOID() ||
                            (int)sourcePlanValue["model_setters_called"] != 0 || (bool)sourcePlanValue["store_called"] ||
                            (bool)sourcePlanValue["write_authorized"] || (bool)sourcePlanValue["native_merge_executor_available"] ||
                            !(sourcePlanValue["schema"] is object[]) || ((object[])sourcePlanValue["schema"]).Length == 0 ||
                            (sourcePlanMode == "plan" && (!(sourcePlanValue["plan"] is Dictionary<string, object>) ||
                                !sourcePlanValue.ContainsKey("source_graphs") ||
                                !(sourcePlanValue["source_graphs"] is Dictionary<string, object>))))
                            throw new Exception("Incomplete native source planning result");
                        sourcePlans.Add(new Dictionary<string, object> {
                            {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()},
                            {"result", sourcePlanValue} });
                    }
                    result["native_class_source_plans"] = sourcePlans;
                }
                if (fixture.ContainsKey("native_class_source_candidate")) {
                    var candidateRequest = fixture["native_class_source_candidate"] as Dictionary<string, object>;
                    if (candidateRequest == null || candidateRequest.Count != 2 ||
                        !candidateRequest.ContainsKey("action") || !candidateRequest.ContainsKey("token") ||
                        !(candidateRequest["action"] is string) || !(candidateRequest["token"] is string) ||
                        Array.IndexOf(new[] { "prepare", "inspect", "audit", "release", "status" }, (string)candidateRequest["action"]) < 0 ||
                        !System.Text.RegularExpressions.Regex.IsMatch((string)candidateRequest["token"], @"\Acand_[0-9a-f]{64}\z") ||
                        !automaticCallers || result.ContainsKey("write_resource_error") || expectedObservation == null)
                        throw new Exception("Exact isolated source candidate request and complete write resource roster required");
                    string candidateAction = (string)candidateRequest["action"], candidateToken = (string)candidateRequest["token"];
                    var candidateOwners = new List<CodeComponent>(callers); candidateOwners.Add(child);
                    var candidateRoster = new List<object>();
                    foreach (var owner in candidateOwners) candidateRoster.Add(new Dictionary<string, object> {
                        {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()} });
                    string candidateJournalPath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "candidate.wal");
                    var candidateJournal = new AscetClassStudyJournal(candidateJournalPath,
                        Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "candidate-unused.pending"), null);
                    result["candidate_journal"] = candidateJournalPath;
                    result["candidate_outstanding"] = candidateAction != "release";
                    candidateJournal.Append("intent", new Dictionary<string, object> {
                        {"operation", "class_source_candidate"}, {"action", candidateAction}, {"token", candidateToken},
                        {"database", result["database"]}, {"definition_oid", child.GetOID()},
                        {"process_epoch", result["ascet_process_epoch"]}, {"database_session", databaseSession},
                        {"owners", candidateRoster}, {"current_observation", expectedObservation},
                        {"model_setters_called", 0}, {"store_called", false} });
                    var candidateBlock = SourceCandidateManager(child, signature);
                    Identifiable runtimeSourceProbe = null;
                    Identifiable retainedRuntimeProbe = null;
                    Identifiable runtimePatchProbe = null;
                    if (fixture.ContainsKey("native_class_source_runtime_oracle")) {
                        if (!(fixture["native_class_source_runtime_oracle"] is bool) || !(bool)fixture["native_class_source_runtime_oracle"] || candidateAction != "audit")
                            throw new Exception("Runtime source probe requires the exact candidate audit action");
                        runtimeSourceProbe = SourceRuntimeProbe(child);
                    }
                    if (fixture.ContainsKey("native_class_retained_runtime_oracle")) {
                        if (!(fixture["native_class_retained_runtime_oracle"] is bool) || !(bool)fixture["native_class_retained_runtime_oracle"] || candidateAction != "audit")
                            throw new Exception("Retained runtime probe requires the exact candidate audit action");
                        retainedRuntimeProbe = RetainedRuntimeProbe(child);
                    }
                    if (fixture.ContainsKey("native_class_runtime_patch_oracle")) {
                        if (!(fixture["native_class_runtime_patch_oracle"] is bool) || !(bool)fixture["native_class_runtime_patch_oracle"] || candidateAction != "audit")
                            throw new Exception("Runtime patch probe requires the exact candidate audit action");
                        runtimePatchProbe = RuntimePatchProbe(child);
                    }
                    var candidateReceipts = new List<object>(); result["native_class_source_candidates"] = candidateReceipts;
                    for (int i = 0; i < candidateOwners.Count; ++i) {
                        var owner = candidateOwners[i];
                        var candidateDatabase = Keep(ascet.GetCurrentDataBase());
                        if (AscetStructureRead.DatabaseIdentity(child, candidateDatabase, databaseIdentity) != databaseSession ||
                            !ConfigurationsUnchanged(child, callers, baselineConfigurations) ||
                            captureResourceClosure(Native(child, discovery)) != resourceClosure)
                            throw new Exception("Candidate database/configuration/resource precondition changed");
                        var candidateDirty = ascet.GetAllEditorsWithUnsavedChanges();
                        if (candidateDirty == null || candidateDirty.Length != 0) throw new Exception("Unsaved candidate editor appeared");
                        candidateJournal.Append("candidate_step_started", new Dictionary<string, object> {
                            {"index", i}, {"oid", owner.GetOID()}, {"action", candidateAction}, {"token", candidateToken} });
                        var candidateCall = new InstanceMethodCall(candidateBlock, "value:value:value:", owner);
                        candidateCall.appendParameter(owner); candidateCall.appendParameter(candidateAction);
                        candidateCall.appendParameter(candidateToken); owner.call(candidateCall);
                        string candidateText = candidateCall.ResultString;
                        if (candidateText.StartsWith("BDE_CLASS_SOURCE_CANDIDATE_ERROR: ")) {
                            candidateJournal.Append("candidate_step_completed", new Dictionary<string, object> {
                                {"index", i}, {"oid", owner.GetOID()}, {"native_error", candidateText} });
                            candidateJournal.Append("finished", new Dictionary<string, object> {
                                {"status", "native_refusal"}, {"completed_count", i + 1}, {"model_setters_called", 0}, {"store_called", false} });
                            throw new Exception(candidateText);
                        }
                        var candidateReceipt = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(candidateText));
                        if (runtimeSourceProbe != null) {
                            var runtimeCall = new InstanceMethodCall(runtimeSourceProbe, "value:value:", owner);
                            runtimeCall.appendParameter(owner); runtimeCall.appendParameter(candidateToken); owner.call(runtimeCall);
                            string runtimeText = runtimeCall.ResultString;
                            if (runtimeText.StartsWith("BDE_CLASS_SOURCE_RUNTIME_ERROR: ")) throw new Exception(runtimeText);
                            ((Dictionary<string, object>)candidateReceipt)["runtime_source_audit"] =
                                AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(runtimeText));
                        }
                        if (retainedRuntimeProbe != null) {
                            var retainedCall = new InstanceMethodCall(retainedRuntimeProbe, "value:value:", owner);
                            retainedCall.appendParameter(owner); retainedCall.appendParameter(candidateToken); owner.call(retainedCall);
                            string retainedText = retainedCall.ResultString;
                            if (retainedText.StartsWith("BDE_CLASS_RETAINED_RUNTIME_ERROR: ")) throw new Exception(retainedText);
                            ((Dictionary<string, object>)candidateReceipt)["retained_runtime_audit"] =
                                AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(retainedText));
                        }
                        if (runtimePatchProbe != null) {
                            var patchCall = new InstanceMethodCall(runtimePatchProbe, "value:value:", owner);
                            patchCall.appendParameter(owner); patchCall.appendParameter(candidateToken); owner.call(patchCall);
                            string patchText = patchCall.ResultString;
                            if (patchText.StartsWith("BDE_CLASS_RUNTIME_PATCH_ERROR: ")) throw new Exception(patchText);
                            ((Dictionary<string, object>)candidateReceipt)["runtime_patch_audit"] =
                                AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(patchText));
                        }
                        candidateJournal.Append("candidate_step_completed", new Dictionary<string, object> {
                            {"index", i}, {"oid", owner.GetOID()}, {"receipt", candidateReceipt} });
                        candidateReceipts.Add(new Dictionary<string, object> {
                            {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()}, {"receipt", candidateReceipt} });
                        save();
                    }
                    candidateJournal.Append("finished", new Dictionary<string, object> {
                        {"status", "recorded"}, {"completed_count", candidateOwners.Count}, {"model_setters_called", 0}, {"store_called", false} });
                }
                if (fixture.ContainsKey("native_registry_extension_oracle")) {
                    if (!(fixture["native_registry_extension_oracle"] is bool) || !(bool)fixture["native_registry_extension_oracle"])
                        throw new Exception("Exact registry extension research flag required");
                    if (NativeBindingReader == null) NativeBindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    if (RegistryExtensionGuard == null) RegistryExtensionGuard = Compile(child, "bde_class_registry_extension_guard.st");
                    var outer = Compile(child, "bde_class_registry_extension_probe.st");
                    var bind = new InstanceMethodCall(outer, "value:value:", child);
                    bind.appendParameter(NativeBindingReader); bind.appendParameter(RegistryExtensionGuard); child.call(bind);
                    var extensionProbe = bind.ResultRemoteObject;
                    if (child.getClassName(extensionProbe) != "BlockContextTemplate") throw new Exception("Registry extension probe binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, extensionProbe));
                    var extensionOwners = new List<CodeComponent>(callers); extensionOwners.Add(child);
                    var extensionChecks = new List<object>();
                    foreach (var owner in extensionOwners) extensionChecks.Add(new Dictionary<string, object> {
                        {"oid", owner.GetOID()}, {"component", owner.GetNameWithPath()},
                        {"checks", AscetStructureRead.Json.DeserializeObject(Action(owner, extensionProbe, "audit"))} });
                    result["native_registry_extension_checks"] = extensionChecks;
                }
                if (fixture.ContainsKey("local_inverse_binding_oracle")) {
                    if (!(fixture["local_inverse_binding_oracle"] is bool) || !(bool)fixture["local_inverse_binding_oracle"])
                        throw new Exception("Exact local inverse binding research flag required");
                    var bindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    var bindingOwners = new List<CodeComponent>(callers); bindingOwners.Add(child);
                    var bindings = new List<object>();
                    foreach (var owner in bindingOwners) {
                        var item = new Dictionary<string, object> {
                            {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()},
                            {"current", GraphBindings(owner, bindingReader, "registry")} };
                        // An empty local identity map must never create replacement edge IDs.
                        try { item["empty_ids"] = GraphBindings(owner, bindingReader, "empty_ids"); }
                        catch (Exception error) { item["empty_ids_refusal"] = error.Message; }
                        try { item["fresh"] = GraphBindings(owner, bindingReader, "fresh"); }
                        catch (Exception error) { item["fresh_refusal"] = error.Message; }
                        bindings.Add(item);
                    }
                    result["local_inverse_bindings_observed"] = bindings;
                }
                if (fixture.ContainsKey("native_binding_checkpoint_oracle")) {
                    if (!(fixture["native_binding_checkpoint_oracle"] is bool) || !(bool)fixture["native_binding_checkpoint_oracle"])
                        throw new Exception("Exact native binding checkpoint research flag required");
                    if (NativeBindingReader == null) NativeBindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    var outer = Compile(child, "bde_class_binding_checkpoint_probe.st");
                    var bind = new InstanceMethodCall(outer, "value:", child);
                    bind.appendParameter(NativeBindingReader); child.call(bind);
                    var probe = bind.ResultRemoteObject;
                    if (child.getClassName(probe) != "BlockContextTemplate") throw new Exception("Native checkpoint probe binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, probe));
                    var checkpointOwners = new List<CodeComponent>(callers); checkpointOwners.Add(child);
                    var checkpoints = new List<object>();
                    foreach (var owner in checkpointOwners) checkpoints.Add(new Dictionary<string, object> {
                        {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()}, {"checks", BindingCheckpointAudit(owner, probe)} });
                    result["native_binding_checkpoints_observed"] = checkpoints;
                }
                if (fixture.ContainsKey("detached_projection_oracle")) {
                    if (!(fixture["detached_projection_oracle"] is bool) || !(bool)fixture["detached_projection_oracle"])
                        throw new Exception("Exact detached projection research flag required");
                    var projectionOwners = new List<CodeComponent>(callers); projectionOwners.Add(child);
                    var projections = new List<object>();
                    foreach (var owner in projectionOwners) projections.Add(new Dictionary<string, object> {
                        {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()}, {"scopes", DetachedFields(owner)} });
                    result["detached_projection_observed"] = projections;
                }
                if (fixture.ContainsKey("native_collection_copy_merge_oracle")) {
                    if (!(fixture["native_collection_copy_merge_oracle"] is bool) || !(bool)fixture["native_collection_copy_merge_oracle"])
                        throw new Exception("Exact native collection copy merge research flag required");
                    if (NativeBindingReader == null) NativeBindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    var merge = Compile(child, "bde_native_collection_merge.st");
                    var planOuter = Compile(child, "bde_native_keyed_collection_plan.st");
                    var planBind = new InstanceMethodCall(planOuter, "value:", child);
                    planBind.appendParameter(merge); child.call(planBind);
                    var planReader = planBind.ResultRemoteObject;
                    if (child.getClassName(planReader) != "BlockContextTemplate") throw new Exception("Native keyed plan binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, planReader));
                    var outer = Compile(child, "bde_native_collection_merge_probe.st");
                    var bind = new InstanceMethodCall(outer, "value:value:value:", child);
                    bind.appendParameter(NativeBindingReader); bind.appendParameter(merge); bind.appendParameter(planReader); child.call(bind);
                    var probe = bind.ResultRemoteObject;
                    if (child.getClassName(probe) != "BlockContextTemplate") throw new Exception("Native collection merge probe binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, probe));
                    var mergeOwners = new List<CodeComponent>(callers); mergeOwners.Add(child);
                    var checks = new List<object>();
                    foreach (var owner in mergeOwners) checks.Add(new Dictionary<string, object> {
                        {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()}, {"checks", BindingCheckpointAudit(owner, probe)} });
                    result["native_collection_copy_merges_observed"] = checks;
                }
                if (fixture.ContainsKey("native_graph_clone_oracle")) {
                    if (!(fixture["native_graph_clone_oracle"] is bool) || !(bool)fixture["native_graph_clone_oracle"])
                        throw new Exception("Exact private graph clone research flag required");
                    if (NativeBindingReader == null) NativeBindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    var clone = Compile(child, "bde_native_graph_clone.st");
                    string cloneMode = fixture.ContainsKey("native_graph_clone_mode") ? fixture["native_graph_clone_mode"] as string : "inspect";
                    if (cloneMode != "inspect" && cloneMode != "clone" && cloneMode != "splice" && cloneMode != "faults") throw new Exception("Exact private graph clone mode required");
                    if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(child, "bde_class_detached_projection.st");
                    var outer = Compile(child, "bde_native_graph_clone_probe.st");
                    var bind = new InstanceMethodCall(outer, "value:value:value:", child);
                    bind.appendParameter(NativeBindingReader); bind.appendParameter(clone); bind.appendParameter(DetachedProjectionReader); child.call(bind);
                    var probe = bind.ResultRemoteObject;
                    if (child.getClassName(probe) != "BlockContextTemplate") throw new Exception("Private graph clone probe binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, probe));
                    if (cloneMode == "splice" || cloneMode == "faults") {
                        var mergeReader = Compile(child, "bde_native_collection_merge.st");
                        var planOuter = Compile(child, "bde_native_private_collection_plan.st");
                        var planBind = new InstanceMethodCall(planOuter, "value:", child);
                        planBind.appendParameter(mergeReader); child.call(planBind);
                        var privatePlanReader = planBind.ResultRemoteObject;
                        if (child.getClassName(privatePlanReader) != "BlockContextTemplate") throw new Exception("Private graphical inverse plan binding failed");
                        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, privatePlanReader));
                        var spliceOuter = Compile(child, "bde_native_graph_splice.st");
                        var spliceBind = new InstanceMethodCall(spliceOuter, "value:value:", child);
                        spliceBind.appendParameter(DetachedProjectionReader); spliceBind.appendParameter(privatePlanReader); child.call(spliceBind);
                        var spliceReader = spliceBind.ResultRemoteObject;
                        if (child.getClassName(spliceReader) != "BlockContextTemplate") throw new Exception("Private graph splice reader binding failed");
                        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, spliceReader));
                        var executionReader = Compile(child, "bde_native_private_execution.st");
                        var executionBind = new InstanceMethodCall(spliceReader, "value:value:", child);
                        executionBind.appendParameter(executionReader); executionBind.appendParameter(cloneMode); child.call(executionBind);
                        spliceReader = executionBind.ResultRemoteObject;
                        if (child.getClassName(spliceReader) != "BlockContextTemplate") throw new Exception("Private graph execution binding failed");
                        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, spliceReader));
                        var probeOuter = Compile(child, "bde_native_graph_splice_probe.st");
                        var probeBind = new InstanceMethodCall(probeOuter, "value:value:", child);
                        probeBind.appendParameter(probe); probeBind.appendParameter(spliceReader); child.call(probeBind);
                        probe = probeBind.ResultRemoteObject;
                        if (child.getClassName(probe) != "BlockContextTemplate") throw new Exception("Private graph splice probe binding failed");
                        Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, probe));
                    }
                    var cloneOwners = new List<CodeComponent>(callers); cloneOwners.Add(child);
                    var checks = new List<object>();
                    foreach (var owner in cloneOwners) {
                        var value = (Dictionary<string, object>)BindingCheckpointAudit(owner, probe, true,
                            cloneMode == "inspect" ? "audit" : cloneMode == "faults" ? "splice" : cloneMode);
                        if (cloneMode == "splice" || cloneMode == "faults") foreach (var item in (object[])value["cases"]) {
                            var entry = (Dictionary<string, object>)item;
                            foreach (string stage in cloneMode == "faults" ?
                                    new[] { "before", "deleted", "preserved", "restored", "current", "current_restored" } :
                                    new[] { "before", "deleted", "preserved", "restored" }) {
                                string field = stage + "_projection_json";
                                entry[stage + "_projection"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)entry[field]));
                                entry.Remove(field);
                            }
                            var peer = (Dictionary<string, object>)entry["peer_merge"];
                            if ((bool)peer["tested"]) foreach (string stage in new[] { "after_primary", "both_deleted", "independent_only", "merged" }) {
                                string field = stage + "_projection_json";
                                peer[stage + "_projection"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)peer[field]));
                                peer.Remove(field);
                            }
                        }
                        checks.Add(new Dictionary<string, object> {
                            {"component", owner.GetNameWithPath()}, {"oid", owner.GetOID()}, {"checks", value} });
                    }
                    result["native_graph_clone_observed"] = checks;
                }
                if (fixture.ContainsKey("native_private_remote_oracle")) {
                    if (!(fixture["native_private_remote_oracle"] is bool) || !(bool)fixture["native_private_remote_oracle"])
                        throw new Exception("Exact private remote protocol research flag required");
                    if (NativeBindingReader == null) NativeBindingReader = Compile(child, "bde_class_local_inverse_bindings.st");
                    if (DetachedProjectionReader == null) DetachedProjectionReader = Compile(child, "bde_class_detached_projection.st");
                    var clone = Compile(child, "bde_native_graph_clone.st");
                    var cloneOuter = Compile(child, "bde_native_graph_clone_probe.st");
                    var cloneBind = new InstanceMethodCall(cloneOuter, "value:value:value:", child);
                    cloneBind.appendParameter(NativeBindingReader); cloneBind.appendParameter(clone);
                    cloneBind.appendParameter(DetachedProjectionReader); child.call(cloneBind);
                    var cloneProbe = cloneBind.ResultRemoteObject;
                    if (child.getClassName(cloneProbe) != "BlockContextTemplate") throw new Exception("Private remote clone probe binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, cloneProbe));
                    var merge = Compile(child, "bde_native_collection_merge.st");
                    var planOuter = Compile(child, "bde_native_private_collection_plan.st");
                    var planBind = new InstanceMethodCall(planOuter, "value:", child);
                    planBind.appendParameter(merge); child.call(planBind);
                    var plan = planBind.ResultRemoteObject;
                    if (child.getClassName(plan) != "BlockContextTemplate") throw new Exception("Private remote plan binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, plan));
                    var prepareOuter = Compile(child, "bde_native_private_remote_prepare.st");
                    var prepareBind = new InstanceMethodCall(prepareOuter, "value:value:", child);
                    prepareBind.appendParameter(cloneProbe); prepareBind.appendParameter(plan); child.call(prepareBind);
                    var prepare = prepareBind.ResultRemoteObject;
                    if (child.getClassName(prepare) != "BlockContextTemplate") throw new Exception("Private remote preparation binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, prepare));
                    var execution = Compile(child, "bde_native_private_execution.st");
                    var executionBind = new InstanceMethodCall(prepare, "value:value:", child);
                    executionBind.appendParameter(execution); executionBind.appendParameter(DetachedProjectionReader); child.call(executionBind);
                    prepare = executionBind.ResultRemoteObject;
                    if (child.getClassName(prepare) != "BlockContextTemplate") throw new Exception("Private remote executor binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, prepare));
                    var wireFactory = Compile(child, "bde_native_private_wire.st");
                    var wireBind = new InstanceMethodCall(prepare, "value:", child);
                    wireBind.appendParameter(wireFactory); child.call(wireBind);
                    prepare = wireBind.ResultRemoteObject;
                    if (child.getClassName(prepare) != "BlockContextTemplate") throw new Exception("Private remote wire factory binding failed");
                    Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(child, prepare));
                    var remoteOwners = new List<CodeComponent>(callers); remoteOwners.Add(child);
                    var checks = new List<object>();
                    foreach (var owner in remoteOwners) {
                        var domain = new Dictionary<string, object> { {"database", result["database"]},
                            {"database_session", databaseSession}, {"process_epoch", result["ascet_process_epoch"]},
                            {"oid", owner.GetOID()}, {"component", owner.GetNameWithPath()} };
                        System.Action verifyRemote = () => {
                            if (process.HasExited || process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o") != (string)result["ascet_process_epoch"])
                                throw new Exception("Private remote process epoch expired");
                            var nowDatabase = Keep(ascet.GetCurrentDataBase());
                            if (AscetStructureRead.DatabaseIdentity(child, nowDatabase, databaseIdentity) != databaseSession)
                                throw new Exception("Private remote database session expired");
                        };
                        checks.Add(new Dictionary<string, object> { {"component", domain["component"]}, {"oid", domain["oid"]},
                            {"checks", AscetPrivateStepStudy.Run(owner, prepare, cloneProbe,
                                args[1] + ".private-steps/" + (string)domain["oid"], domain,
                                value => Blocks.Add(new KeyValuePair<CodeComponent, Identifiable>(owner, value)), verifyRemote)} });
                    }
                    result["native_private_remote_observed"] = checks;
                }
                if (fixture.ContainsKey("creation_probe_selector")) {
                    var creation = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>>(fixture["creation_probe_selector"]);
                    var creationAliases = CreationSelector(creation);
                    var creationResolve = Compile(child, "bde_class_method_selector.st");
                    var creationBlock = BindStudy(child, "bde_class_argument_creation.st", creationAliases, creationResolve, null);
                    result["native_creation_preflight"] = Action(child, creationBlock, "validate");
                }
                if (fixture.ContainsKey("recovery_probe_selector")) {
                    var probeSelector = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>>(fixture["recovery_probe_selector"]);
                    bool creationProbe = probeSelector.ContainsKey("model_type");
                    if (!creationProbe && (probeSelector.Count != 4 || (string)probeSelector["diagram"] != "Main" ||
                        ((string)probeSelector["slot"] != "argument" && (string)probeSelector["slot"] != "return")))
                        throw new Exception("Exact recovery probe selector required");
                    if (DetachedProjectionReader == null)
                        DetachedProjectionReader = Compile(child, "bde_class_detached_projection.st");
                    var probe = BindDetachedReader(child, Compile(child, "bde_class_recovery_probe.st"));
                    var probeAliases = creationProbe ? CreationSelector(probeSelector) : new[] { (string)probeSelector["diagram"], (string)probeSelector["method_alias"],
                        (string)probeSelector["formal_alias"], (string)probeSelector["slot"] };
                    BindStudy(child, "bde_class_materialize.st", probeAliases, null, child);
                    result["native_detached_material_template_binding"] = "validated_no_actions";
                    var probeOwners = new List<CodeComponent>(callers); probeOwners.Add(child);
                    var probes = new List<object>();
                    foreach (var owner in probeOwners) probes.Add(RecoveryProbe(child, owner, probe, probeAliases));
                    result["native_recovery_probe"] = probes;
                }
                var observed = (Dictionary<string, object>)result["before"];
                if (AscetStructureRead.Json.Serialize(observed["signature"]) != AscetStructureRead.Json.Serialize(Native(child, signature)) ||
                    AscetStructureRead.Json.Serialize(observed["discovery"]) != AscetStructureRead.Json.Serialize(Native(child, discovery)))
                    throw new Exception("Class changed during independent owner observation");
                if (automaticCallers && captureResourceClosure(observed["discovery"]) != resourceClosure)
                    throw new Exception("Class resource closure changed during independent observation");
                var currentDatabase = Keep(ascet.GetCurrentDataBase());
                if (AscetStructureRead.DatabaseIdentity(child, currentDatabase, databaseIdentity) != databaseSession)
                    throw new Exception("Database changed during independent owner observation");
                if (acquireReadIdentity && AscetStructureRead.ProcessEpoch() != (string)result["ascet_process_epoch"])
                    throw new Exception("Read-only listener process changed during owner observation");
                dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
                if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved independent owner observation");
                if (fixture.ContainsKey("native_class_model_publication")) {
                    bool currentIdentityAudit = fixture.ContainsKey("native_class_current_identity_audit");
                    bool currentExecutionPreflight = fixture.ContainsKey("native_class_current_execution_preflight");
                    if (currentExecutionPreflight && (!currentIdentityAudit ||
                        Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_EXECUTION_PREFLIGHT") != "1" ||
                        !(fixture["native_class_current_execution_preflight"] is bool) ||
                        !(bool)fixture["native_class_current_execution_preflight"]))
                        throw new Exception("Exact opt-in setter-free CURRENT execution preflight required");
                    bool currentExecutionStudy = fixture.ContainsKey("native_class_current_execution_study");
                    if (currentExecutionStudy && (!currentExecutionPreflight ||
                        Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_EXECUTION_STUDY") != "1" ||
                        !(fixture["native_class_current_execution_study"] is bool) ||
                        !(bool)fixture["native_class_current_execution_study"]))
                        throw new Exception("Exact CURRENT physical study requires full native preparation");
                    var currentNativeFault = fixture.ContainsKey("native_class_current_fault") ?
                        fixture["native_class_current_fault"] as Dictionary<string, object> : null;
                    if (fixture.ContainsKey("native_class_current_fault") && (!currentExecutionStudy || currentNativeFault == null ||
                        currentNativeFault.Count != 2 || !(currentNativeFault["owner_index"] is int) ||
                        !(currentNativeFault["command"] is string) ||
                        Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_FAULT_STUDY") != "1" ||
                        !System.Text.RegularExpressions.Regex.IsMatch((string)currentNativeFault["command"], @"\A(apply/[1-9][0-9]*|publish_store|undo_apply/[1-9][0-9]*|undo_publish_store/[1-9][0-9]*|restore_store|undo_restore_store/[1-9][0-9]*)\z")))
                        throw new Exception("Exact opt-in CURRENT after-native before-accounting fault required");
                    bool currentCompleteStudy = fixture.ContainsKey("native_class_current_complete_study");
                    if (currentCompleteStudy && (!currentExecutionStudy ||
                        !(fixture["native_class_current_complete_study"] is bool) ||
                        !(bool)fixture["native_class_current_complete_study"] || currentNativeFault != null ||
                        !String.IsNullOrEmpty(Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT")) ||
                        Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_COMPLETE_STUDY") != "1"))
                        throw new Exception("Exact isolated complete CURRENT cycle requires explicit opt-in without fault injection");
                    if (currentExecutionStudy && Environment.GetEnvironmentVariable("ASCET_BD_CLASS_JOURNAL_FAIL_EVENT") != "before_native" &&
                        currentNativeFault == null && !currentCompleteStudy)
                        throw new Exception("CURRENT full physical execution requires its isolated complete-study opt-in");
                    bool currentContextAudit = fixture.ContainsKey("native_class_current_context_guard_audit");
                    if (currentContextAudit && (!currentExecutionPreflight ||
                        !(fixture["native_class_current_context_guard_audit"] is bool) ||
                        !(bool)fixture["native_class_current_context_guard_audit"]))
                        throw new Exception("Exact CURRENT guard audit requires full setter-free preparation");
                    if (currentIdentityAudit &&
                        (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_CURRENT_IDENTITY_AUDIT") != "1" ||
                         !(fixture["native_class_current_identity_audit"] is bool) ||
                         !(bool)fixture["native_class_current_identity_audit"]))
                        throw new Exception("Exact opt-in current identity research flag required");
                    var publicationRequest = fixture["native_class_model_publication"] as Dictionary<string, object>;
                    if (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY") != "1" ||
                        publicationRequest == null || !(publicationRequest.Count == 2 || publicationRequest.Count == 3 && publicationRequest.ContainsKey("fault_after_dispatch")) ||
                        !publicationRequest.ContainsKey("token") || !publicationRequest.ContainsKey("pending_path") ||
                        !(publicationRequest["token"] is string) || !(publicationRequest["pending_path"] is string) ||
                        !System.Text.RegularExpressions.Regex.IsMatch((string)publicationRequest["token"], @"\Acand_[0-9a-f]{64}\z") ||
                        expectedObservation == null || !automaticCallers || result.ContainsKey("write_resource_error") || acquireReadIdentity)
                        throw new Exception("Exact opt-in isolated publication study request/current context required");
                    string pendingPath = Path.GetFullPath((string)publicationRequest["pending_path"]);
                    string pendingRoot = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "AscetBdeTools", "pending") + Path.DirectorySeparatorChar;
                    if (!pendingPath.StartsWith(pendingRoot, StringComparison.OrdinalIgnoreCase) || File.Exists(pendingPath))
                        throw new Exception("Publication requires an unused instance quarantine path");
                    AscetClassResourceClosure.Capture(observed["discovery"], child.GetOID());
                    string publicationToken = (string)publicationRequest["token"];
                    var publicationOwners = new List<CodeComponent>(callers); publicationOwners.Add(child);
                    if (currentNativeFault != null && ((int)currentNativeFault["owner_index"] < 0 ||
                        (int)currentNativeFault["owner_index"] >= publicationOwners.Count))
                        throw new Exception("CURRENT native fault owner index differs from complete roster");
                    int publicationFaultAfter = 0, publicationDispatches = 0;
                    if (publicationRequest.ContainsKey("fault_after_dispatch")) {
                        if (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_PUBLICATION_FAULT_STUDY") != "1" ||
                            !(publicationRequest["fault_after_dispatch"] is int) ||
                            (int)publicationRequest["fault_after_dispatch"] < 1 ||
                            (int)publicationRequest["fault_after_dispatch"] > 4 + 2 * publicationOwners.Count)
                            throw new Exception("Exact opt-in publication completion-loss point required");
                        publicationFaultAfter = (int)publicationRequest["fault_after_dispatch"];
                    }
                    var publicationReaders = new List<Identifiable>(readers); publicationReaders.Add(StructureReader(child));
                    var manager = ModelPublicationManager(child, signature, discovery);
                    var domain = new Dictionary<string, object> { {"session", fixture["journal_session"]},
                        {"database", result["database"]}, {"oid", child.GetOID()}, {"process_epoch", result["ascet_process_epoch"]} };
                    string publicationPath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "model-publication.wal");
                    var publicationJournal = new AscetClassStudyJournal(publicationPath, pendingPath, domain);
                    publicationJournal.DatabaseSession = databaseSession;
                    publicationJournal.VerifyIdentity = () => {
                        if (process.HasExited || process.Id + "/" + process.StartTime.ToUniversalTime().ToString("o") != (string)result["ascet_process_epoch"])
                            throw new Exception("Publication process epoch expired");
                        var nowDatabase = Keep(ascet.GetCurrentDataBase());
                        if (AscetStructureRead.DatabaseIdentity(child, nowDatabase, databaseIdentity) != databaseSession)
                            throw new Exception("Publication database identity expired");
                        var currentDirty = ascet.GetAllEditorsWithUnsavedChanges();
                        if (currentDirty == null || currentDirty.Length != 0) throw new Exception("Publication conflicts with an unsaved editor");
                    };
                    result["model_publication_journal"] = publicationPath;
                    result["model_publication_pending"] = pendingPath;
                    result["model_publication_outstanding"] = true;
                    if (currentExecutionStudy) result["current_execution_study"] = true;
                    var receipts = new List<object>(); result["model_publication_receipts"] = receipts;
                    var publicationIntent = new Dictionary<string, object> {
                        {"operation", currentExecutionStudy ? "class_current_execution_study" : "class_model_publication_study"},
                        {"token", publicationToken}, {"domain", domain},
                        {"database_session", databaseSession}, {"current_observation", expectedObservation},
                        {"production_executor_available", false} };
                    if (currentExecutionStudy) {
                        var context = fixture["current_execution_public_context"] as Dictionary<string, object>;
                        if (context == null || context.Count != 2 || !(context["before"] is string) || !(context["applied"] is string))
                            throw new Exception("Complete original/applied public context paths required");
                        var values = new Dictionary<string, object>();
                        foreach (string role in new[] { "before", "applied" })
                            values[role] = AscetStructureRead.Json.DeserializeObject(File.ReadAllText((string)context[role]));
                        publicationIntent["public_inverse_context"] = values;
                    }
                    publicationJournal.Append("intent", publicationIntent);
                    Func<CodeComponent, string, object> nativeAction = (owner, command) => {
                        string text = ModelPublicationAction(owner, manager, publicationToken, command);
                        var value = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
                        receipts.Add(value); save(); return value;
                    };
                    var preparedPublication = new List<object>();
                    foreach (var owner in publicationOwners) preparedPublication.Add(nativeAction(owner, "prepare"));
                    publicationJournal.Append("prepared_all", new Dictionary<string, object> {
                        {"current_observation", expectedObservation}, {"owners", preparedPublication} });
                    nativeAction(child, "seal");
                    if (currentIdentityAudit) {
                        result["current_identity_preflight"] = CurrentIdentityAudit(child, CurrentIdentityProbe(child), publicationToken);
                        save();
                    }
                    var currentManager = currentExecutionPreflight ? CurrentExecutionManager(child) : null;
                    if (currentExecutionPreflight) {
                        var preparations = new List<object>();
                        result["current_execution_preflight"] = preparations;
                        foreach (var owner in publicationOwners) {
                            string text = ModelPublicationAction(owner, currentManager, publicationToken, "prepare");
                            preparations.Add(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text)));
                            save();
                        }
                        string preflightPath = Path.Combine(Path.GetDirectoryName(Path.GetFullPath(args[1])), "current-execution-preflight.wal");
                        var currentJournal = new AscetClassStudyJournal(preflightPath, pendingPath, domain);
                        currentJournal.Append("intent", new Dictionary<string, object> {
                            {"operation", "class_current_execution_preflight"}, {"token", publicationToken},
                            {"domain", domain}, {"database_session", databaseSession} });
                        currentJournal.Append("prepared_all", new Dictionary<string, object> {
                            {"current_observation", expectedObservation}, {"owners", preparations} });
                        var classification = new Dictionary<string, object> {
                            {"publication", PublicationClassification(child, manager, publicationToken)},
                            {"owners", CurrentExecutionClassifications(publicationOwners, currentManager, publicationToken)} };
                        result["current_execution_classification_preflight"] = classification;
                        currentJournal.Append("classification_observed", classification);
                        if (currentExecutionStudy) publicationJournal.Append("native_prepared", new Dictionary<string, object> {
                            {"owners", preparations}, {"identity", result["current_identity_preflight"]}, {"classification", classification} });
                        if (currentContextAudit) {
                            result["current_context_guard_audit"] = CurrentContextGuardAudit(child, currentManager, publicationToken);
                        }
                        currentJournal.Append("finished", new Dictionary<string, object> {
                            {"status", "prepared_only"}, {"model_setters_called", 0}, {"production_executor_available", false} });
                        result["current_execution_preflight_journal"] = preflightPath; save();
                    }
                    Func<CodeComponent, string, string, object> modelDispatch = (owner, command, phase) => {
                        string step = phase + "/" + owner.GetOID() + "/" + command;
                        string text = publicationJournal.Dispatch(step, phase, owner.GetNameWithPath(), owner.GetOID(), command, () => {
                            bool control = command == "signature_arguments" || command == "signature_commit" ||
                                command == "restore_signature_arguments" || command == "restore_signature_commit" ||
                                command == "inspect" || command == "reconcile_restore" || command == "release";
                            bool metadata = command == "inspect" || command == "reconcile_restore" ||
                                command == "release" || command == "finish_restore";
                            result["native_registry_mutation_dispatched"] = true;
                            if (!metadata) result["model_mutation_dispatched"] = true;
                            save();
                            string nativeCommand = command;
                            if (currentExecutionStudy && currentNativeFault != null && !control &&
                                owner == publicationOwners[(int)currentNativeFault["owner_index"]] &&
                                command == (string)currentNativeFault["command"])
                                nativeCommand += "@after_native_fault";
                            string nativeText = AscetStructureRead.Json.Serialize(AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                                ModelPublicationAction(owner, currentExecutionStudy && !control ? currentManager : manager,
                                    publicationToken, nativeCommand))));
                            ++publicationDispatches;
                            if (publicationDispatches == publicationFaultAfter) {
                                result["injected_publication_completion_loss"] = new Dictionary<string, object> {
                                    {"step", step}, {"dispatch_index", publicationDispatches}, {"native_result", nativeText},
                                    {"scope", "native action completed before coordinator WAL receipt; not a Cebra disconnect"} };
                                save();
                                throw new IOException("Injected publication completion recording loss after " + step);
                            }
                            return nativeText;
                        });
                        var value = AscetStructureRead.Json.DeserializeObject(text);
                        receipts.Add(value); save(); return value;
                    };
                    try {
                        modelDispatch(child, "signature_arguments", "apply");
                        modelDispatch(child, "signature_commit", "apply");
                        if (currentContextAudit) {
                            result["current_context_guard_publishing_audit"] = CurrentContextGuardAudit(child, currentManager, publicationToken);
                            save();
                        }
                        if (currentExecutionStudy) {
                            var nativePreparations = AscetStructureRead.Json.ConvertToType<Dictionary<string, object>[]>(result["current_execution_preflight"]);
                            for (int i = 0; i < publicationOwners.Count; ++i) {
                                int count = (int)nativePreparations[i]["forward_steps"];
                                for (int n = 1; n <= count; ++n) modelDispatch(publicationOwners[i], "apply/" + n, "apply");
                                modelDispatch(publicationOwners[i], "publish_store", "apply");
                            }
                            modelDispatch(child, "inspect", "apply");
                        } else {
                            foreach (var owner in publicationOwners) modelDispatch(owner, "publish", "apply");
                            nativeAction(child, "inspect");
                        }
                        result["model_publication_after"] = Observation(Read(child, callers, retained, readers, signature, discovery),
                            Owners(publicationOwners, publicationReaders, result, null));
                        var publishedEvent = new Dictionary<string, object> {
                            {"phase", "published"}, {"observation", result["model_publication_after"]} };
                        if (currentExecutionStudy) publishedEvent["classification"] = new Dictionary<string, object> {
                            {"publication", PublicationClassification(child, manager, publicationToken)},
                            {"owners", CurrentExecutionClassifications(publicationOwners, currentManager, publicationToken)} };
                        publicationJournal.Append("observed", publishedEvent);
                    } finally {
                        if (!publicationJournal.Failed && publicationJournal.ActiveStep == null) {
                            // Compensation is allowed only after every physical publication has a confirmed reply.
                            modelDispatch(child, "restore_signature_arguments", "inverse");
                            modelDispatch(child, "restore_signature_commit", "inverse");
                            for (int i = publicationOwners.Count - 1; i >= 0; --i) {
                                var owner = publicationOwners[i];
                                if (!currentExecutionStudy) { modelDispatch(owner, "restore", "inverse"); continue; }
                                var native = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                                    ModelPublicationAction(owner, currentManager, publicationToken, "classify")));
                                int storeCount = (int)native["publish_store_undo_steps"], appliedCount = (int)native["forward_completed"];
                                if (storeCount < 0 || storeCount > 100000 || appliedCount < 0 || appliedCount > 100000)
                                    throw new Exception("Bounded sealed CURRENT inverse plan required");
                                for (int n = 1; n <= storeCount; ++n) modelDispatch(owner, "undo_publish_store/" + n, "inverse");
                                for (int n = 1; n <= appliedCount; ++n) modelDispatch(owner, "undo_apply/" + n, "inverse");
                                var restoredStore = (Dictionary<string, object>)modelDispatch(owner, "restore_store", "inverse");
                                storeCount = (int)restoredStore["restore_store_undo_steps"];
                                if (storeCount < 0 || storeCount > 100000) throw new Exception("Bounded restoration collateral inverse required");
                                for (int n = 1; n <= storeCount; ++n) modelDispatch(owner, "undo_restore_store/" + n, "inverse");
                                modelDispatch(owner, "finish_restore", "inverse");
                                modelDispatch(owner, "reconcile_restore", "inverse");
                            }
                            result["model_publication_restored"] = Observation(Read(child, callers, retained, readers, signature, discovery),
                                Owners(publicationOwners, publicationReaders, result, null));
                            SameObservation(expectedObservation, (Dictionary<string, object>)result["model_publication_restored"]);
                            var restoredEvent = new Dictionary<string, object> {
                                {"phase", "restored"}, {"observation", result["model_publication_restored"]} };
                            if (currentExecutionStudy) {
                                var classified = new Dictionary<string, object> {
                                    {"publication", PublicationClassification(child, manager, publicationToken)},
                                    {"owners", CurrentExecutionClassifications(publicationOwners, currentManager, publicationToken)} };
                                result["current_execution_restored_classification"] = classified;
                                restoredEvent["classification"] = classified;
                            }
                            publicationJournal.Append("observed", restoredEvent);
                            if (currentExecutionStudy) modelDispatch(child, "release", "inverse");
                            else nativeAction(child, "release");
                            publicationJournal.Append("finished", new Dictionary<string, object> {
                                {"status", currentExecutionStudy ? "current_restored" : "restored"},
                                {"outstanding", false}, {"dispatch_count", publicationJournal.Dispatched} });
                            if (currentExecutionStudy) publicationJournal.VerifyPending();
                            File.Delete(pendingPath);
                            result["model_publication_outstanding"] = false;
                        }
                        save();
                    }
                    result["model_setters_called"] = ((Dictionary<string, object>)receipts[receipts.Count - 1])["model_steps"];
                    result["status"] = currentExecutionStudy ? "current_execution_restored" : "publication_restored";
                    exit = 0; return exit;
                }
                if (fixture.ContainsKey("native_class_model_publication_abandon")) {
                    string abandonToken = fixture["native_class_model_publication_abandon"] as string;
                    if (Environment.GetEnvironmentVariable("ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY") != "1" ||
                        abandonToken == null || !System.Text.RegularExpressions.Regex.IsMatch(abandonToken, @"\Acand_[0-9a-f]{64}\z") ||
                        !automaticCallers || expectedObservation == null)
                        throw new Exception("Exact undispatched model preparation cleanup request required");
                    var manager = ModelPublicationManager(child, signature, discovery);
                    result["model_publication_abandoned"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                        ModelPublicationAction(child, manager, abandonToken, "abandon")));
                }
                if (fixture.ContainsKey("native_class_model_publication_status")) {
                    string statusToken = fixture["native_class_model_publication_status"] as string;
                    if (statusToken == null || !System.Text.RegularExpressions.Regex.IsMatch(statusToken, @"\Acand_[0-9a-f]{64}\z") ||
                        !automaticCallers || expectedObservation == null)
                        throw new Exception("Exact model publication status request required");
                    var manager = ModelPublicationManager(child, signature, discovery);
                    result["model_publication_status"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(
                        ModelPublicationAction(child, manager, statusToken, "status")));
                }
                result["model_setters_called"] = 0; result["status"] = "observed"; exit = 0; return exit;
            }
            if (operation == "recover") {
                string state = Action(child, mutation, "status"); result["recovery_state"] = state;
                if (state == "added") {
                    result["restore"] = Action(child, mutation, "restore");
                    result["restored"] = Read(child, callers, retained, readers, signature, discovery);
                } else if (state != "prepared" && state != "restored") throw new Exception("Unknown mutation cannot replay");
                result["release"] = Action(child, mutation, "release"); result["status"] = "recovered"; exit = 0;
                return exit;
            }
            result["stage"] = "prepare_started"; save();
            result["prepare"] = Action(child, mutation, "prepare"); prepared = true; save();
            if (materialize) for (int i = 0; i < materialOwners.Count; ++i) {
                result["stage"] = "caller_prepare_" + i; save();
                result["caller_prepare_" + i] = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "prepare", child);
                result["owner_before_" + i] = AscetStructureRead.Read(materialOwners[i], materialReaders[i], "Main", new string[0]); save();
                result["owner_scopes_before_" + i] = SnapshotTree(materialOwners[i], materialReaders[i]); save();
            }
            if (journal != null) {
                var allPrepared = Observation(result["before"], Owners(materialOwners, materialReaders, result, "owner_scopes_before_"));
                journal.Append("prepared_all", allPrepared);
                var current = Observation(Read(child, callers, retained, readers, signature, discovery),
                    Owners(materialOwners, materialReaders, result, null));
                SameObservation(allPrepared, current);
                journal.Append("preflight_observed", current);
            }
            if (closedDelete) for (int i = 0; i < materialOwners.Count; ++i) {
                result["stage"] = "closure_prune_" + i; save();
                int index = i;
                string command = operation == "closed_delete_argument" ? "prune_argument" : "prune_return";
                result["closure_prune_" + i] = Dispatch(journal, "prune_" + i, "apply", materialOwners[i], command, () => {
                    result["model_mutation_dispatched"] = true; save();
                    return MaterialAction(materialOwners[index], materializers[index], materialReaders[index], command, child);
                }); save();
            }
            result["operation"] = operation; result["stage"] = operation + "_started"; save();
            string signatureCommand = closedCreate ? "create_argument" : closedDelete ? operation.Substring(7) : materialize ? "add" : operation;
            result["apply"] = Dispatch(journal, "signature_apply", "apply", child, signatureCommand, () => {
                result["model_mutation_dispatched"] = true; save(); dispatched = true;
                return Action(child, mutation, signatureCommand);
            }); added = true; save();
            if (materialize) for (int i = 0; i < materialOwners.Count; ++i) {
                result["stage"] = "caller_store_" + i; save();
                int index = i;
                result["caller_store_" + i] = Dispatch(journal, "store_" + i, "apply", materialOwners[i], "apply",
                    () => MaterialAction(materialOwners[index], materializers[index], materialReaders[index], "apply", child));
                result["owner_after_" + i] = AscetStructureRead.Read(materialOwners[i], materialReaders[i], "Main", new string[0]); save();
                result["owner_scopes_after_" + i] = SnapshotTree(materialOwners[i], materialReaders[i]); save();
            }
            result["stage"] = "after_read"; save();
            result["after"] = Read(child, callers, retained, readers, signature, discovery); save();
            var afterObservation = Observation(result["after"], Owners(materialOwners, materialReaders, result, "owner_scopes_after_"));
            if (journal != null) { afterObservation["phase"] = "after"; journal.Append("observed", afterObservation); }
            if (materialize) for (int i = 0; i < materialOwners.Count; ++i)
                result["caller_verify_" + i] = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "verify", child);
            if (retainApplied) {
                var retainedDirty = ascet.GetAllEditorsWithUnsavedChanges();
                if (retainedDirty == null || retainedDirty.Length != 0) throw new Exception("Retained Class application leaves dirty editors");
                if (AscetStructureRead.Json.Serialize(((Dictionary<string, object>)result["after"])["configurations"]) != baselineConfigurations)
                    throw new Exception("Retained Class application changed configuration storage");
                result["dirty_after"] = retainedDirty.Length; result["status"] = "retained_applied";
                result["stage"] = "apply_complete_native_recovery_retained";
                retainingResult = true; exit = 0; return exit;
            }
            if (journal != null) {
                var inverseObservation = Observation(Read(child, callers, retained, readers, signature, discovery),
                    Owners(materialOwners, materialReaders, result, null));
                SameObservation(afterObservation, inverseObservation);
                var checks = new List<string>(); foreach (var owner in materialOwners) checks.Add("verified");
                inverseObservation["native_owner_checks"] = checks;
                journal.Append("inverse_preflight", inverseObservation);
            }
            result["stage"] = "restore_started"; save();
            result["restore"] = Dispatch(journal, "signature_restore", "inverse", child, "restore", () => {
                restoreDispatched = true; return Action(child, mutation, "restore");
            }); added = false; save();
            if (materialize) for (int i = materialOwners.Count - 1; i >= 0; --i) {
                result["stage"] = "caller_restore_" + i; save();
                int index = i;
                result["caller_restore_" + i] = Dispatch(journal, "restore_" + i, "inverse", materialOwners[i], "restore",
                    () => MaterialAction(materialOwners[index], materializers[index], materialReaders[index], "restore", child));
                result["owner_restored_" + i] = AscetStructureRead.Read(materialOwners[i], materialReaders[i], "Main", new string[0]); save();
                result["owner_scopes_restored_" + i] = SnapshotTree(materialOwners[i], materialReaders[i]); save();
            }
            result["stage"] = "restored_read"; save();
            result["restored"] = Read(child, callers, retained, readers, signature, discovery); save();
            if (AscetStructureRead.Json.Serialize(((Dictionary<string, object>)result["restored"])["configurations"]) != baselineConfigurations)
                throw new Exception("Class original configuration storage not restored");
            if (journal != null) {
                var restoredObservation = Observation(result["restored"], Owners(materialOwners, materialReaders, result, "owner_scopes_restored_"));
                restoredObservation["phase"] = "restored"; journal.Append("observed", restoredObservation);
            }
            if (materialize) for (int i = 0; i < materialOwners.Count; ++i)
                result["caller_release_" + i] = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "release", child);
            result["release"] = Action(child, mutation, "release"); prepared = false;
            dirty = ascet.GetAllEditorsWithUnsavedChanges(); result["dirty_after"] = dirty == null ? -1 : dirty.Length;
            if (dirty == null || dirty.Length != 0) throw new Exception("Study leaves dirty editors");
            result["status"] = "ok"; result["stage"] = "study_complete"; exit = 0;
        } catch (Exception error) { result["status"] = "error"; result["error"] = error.ToString(); }
        finally {
            var cleanupTimer = Stopwatch.StartNew();
            if (journal != null && (journal.ActiveStep != null || journal.Failed && journal.Dispatched != 0)) {
                unknownSignature = true; result["unknown_journal_outcome"] = true;
            }
            if (dispatched && !result.ContainsKey("apply")) {
                unknownSignature = true; result["unknown_signature_outcome"] = true;
            }
            if (restoreDispatched && !result.ContainsKey("restore")) {
                unknownSignature = true; result["unknown_signature_inverse_outcome"] = true;
            }
            if (added && !retainingResult && !restoreDispatched && !unknownSignature) try {
                result["cleanup_restore"] = Dispatch(journal, "cleanup_signature", "cleanup", child, "restore", () => Action(child, mutation, "restore")); added = false;
            }
                catch (Exception error) { result["cleanup_error"] = error.ToString(); }
            if (materialize && !inspectMaterial && !retainingResult && (!inverseRetained || inversePreflightPassed && exit == 0)) for (int i = materializers.Count - 1; i >= 0; --i) try {
                if (result.ContainsKey("caller_release_" + i) || !result.ContainsKey("caller_prepare_" + i)) continue;
                string state = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "status", child);
                result["caller_final_state_" + i] = state;
                if ((state == "applied" || state == "pruned") && !added && !unknownSignature && !inverseRetained) {
                    int index = i;
                    result["caller_cleanup_restore_" + i] = Dispatch(journal, "cleanup_owner_" + i, "cleanup", materialOwners[i], "restore",
                        () => MaterialAction(materialOwners[index], materializers[index], materialReaders[index], "restore", child)); state = "restored";
                }
                if ((state == "prepared" || state == "restored") && !unknownSignature)
                    result["caller_cleanup_release_" + i] = MaterialAction(materialOwners[i], materializers[i], materialReaders[i], "release", child);
                else result["caller_record_outstanding"] = true;
            } catch (Exception error) {
                result["caller_final_state_error_" + i] = error.ToString();
                if (!result.ContainsKey("caller_release_" + i)) result["caller_record_outstanding"] = true;
            }
            if (child != null && mutation != null) try {
                string state = Action(child, mutation, "status"); result["native_final_state"] = state;
                if ((state == "prepared" || state == "restored") && (!inverseRetained || exit == 0)) {
                    result["cleanup_release"] = Action(child, mutation, "release"); prepared = false;
                } else { result["native_record_outstanding"] = true; }
            } catch (Exception error) { result["native_final_state_error"] = error.ToString(); }
            foreach (var pair in Blocks) try {
                var release = pair.Key.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(pair.Value.getIdentifier()); pair.Key.call(release); release.getResultVoid();
            } catch (Exception error) { result["release_error"] = error.ToString(); exit = 1; }
            for (int i = Kept.Count - 1; i >= 0; --i) try { Kept[i].finalize(); GC.SuppressFinalize(Kept[i]); } catch { }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) try { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); } catch { }
            result["outstanding"] = inverseRetained && exit != 0 || inspectMaterial || unknownSignature || added || prepared || result.ContainsKey("native_record_outstanding") || result.ContainsKey("caller_record_outstanding") ||
                result.ContainsKey("model_publication_outstanding") && (bool)result["model_publication_outstanding"];
            if (ProfileEnabled) {
                var profile = (Dictionary<string, object>)result["native_profile"];
                profile["cleanup_ms"] = cleanupTimer.Elapsed.TotalMilliseconds;
                profile["elapsed_before_final_publication_ms"] = totalTimer.Elapsed.TotalMilliseconds;
            }
            save();
            if (journal != null) try {
                journal.Append("finished", new Dictionary<string, object> {
                    {"status", exit == 0 ? retainingResult ? "retained_applied" : inverseRetained ? "retained_restored" : "restored" : journal.Dispatched == 0 ? "rejected_before_dispatch" : "needs_recovery"},
                    {"inverse_target", inverseRetained && result.ContainsKey("inverse_target") ? result["inverse_target"] : null},
                    {"outstanding", result["outstanding"]}, {"error", result.ContainsKey("error") ? result["error"] : null} });
            } catch (Exception error) { result["journal_terminal_error"] = error.ToString(); exit = 1; save(); }
        }
        return exit;
    }
}
