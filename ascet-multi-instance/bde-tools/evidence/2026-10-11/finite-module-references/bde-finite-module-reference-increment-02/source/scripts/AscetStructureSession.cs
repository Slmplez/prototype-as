using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using de.etas.cebra;
using de.etas.cebra.socket;
using de.etas.cebra.toolAPI;
using de.etas.cebra.toolAPI.Ascet;
using de.etas.types;

// Fixed-operation bridge; source and selectors are embedded, never request fields.
class AscetStructureSession
{
    sealed class PreconditionConflict : Exception
    {
        public PreconditionConflict(string message) : base(message) { }
    }
    static Ascet ascet;
    static AscetDataBase database;
    static CodeComponent component;
    static Identifiable reader, editor, sessionGuard, orderInverse, orderKernel;
    static Identifiable referenceFileQuery;
    static bool referenceFileQueryUnknown;
#if BDE_ORDER_EVAL
    // Research-only fixed probe; absent from the production bridge binary.
    static Identifiable orderProbe;
#endif
    static string path, diagram, epoch, dbName, oid;
    static string Epoch()
    {
        return AscetStructureRead.ProcessEpoch();
    }
    static string Text(Dictionary<string, object> request, string key) { return (string)request[key]; }
    static object FieldFailureCompensationStatus(Dictionary<string, object> request)
    {
        string failureToken = Text(request, "token"), failureTransaction = Text(request, "transaction"),
            failureWitness = Text(request, "witness_token");
        if (!System.Text.RegularExpressions.Regex.IsMatch(failureToken, @"^edit_[0-9a-f]{64}$") ||
            !System.Text.RegularExpressions.Regex.IsMatch(failureTransaction, @"^edit_[0-9a-f]{64}$") ||
            !System.Text.RegularExpressions.Regex.IsMatch(failureWitness, @"^main_[0-9a-f]{64}$") ||
            failureToken == failureTransaction) throw new Exception("Exact retained compensation status required");
        var failureStatusBlocks = new List<Identifiable>();
        try {
            var failureStatusDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); failureStatusBlocks.Add(failureStatusDump);
            var failureStatusFactory = AscetStructureRead.Compile(component, "bde_field_failure_compensation.st"); failureStatusBlocks.Add(failureStatusFactory);
            var failureStatusBind = new InstanceMethodCall(failureStatusFactory, "value:", component);
            failureStatusBind.appendParameter(failureStatusDump); component.call(failureStatusBind);
            var failureStatus = failureStatusBind.ResultRemoteObject; failureStatusBlocks.Add(failureStatus);
            var failureStatusCall = new InstanceMethodCall(failureStatus, "value:value:value:", component);
            failureStatusCall.appendParameter(component); failureStatusCall.appendParameter(failureToken);
            // Production exposes classification only. No action/code/selector from the request.
            failureStatusCall.appendParameter(new [] { "inspect", failureTransaction, failureWitness, "" });
            component.call(failureStatusCall); string failureStatusValue = failureStatusCall.ResultString;
            if (failureStatusValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(failureStatusValue);
            var failureStatusReply = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(failureStatusValue));
            var failureStatusProof = failureStatusReply["compensation"] as Dictionary<string, object>;
            failureStatusReply["restored_observation"] = failureStatusProof == null || failureStatusProof["after"] == null ? null :
                AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)failureStatusProof["after"]));
            return failureStatusReply;
        } finally {
            for (int i = failureStatusBlocks.Count - 1; i >= 0; --i) {
                var failureStatusRelease = component.createControlMessageCall("destroyObjectForId:");
                failureStatusRelease.appendParameter(failureStatusBlocks[i].getIdentifier()); component.call(failureStatusRelease); failureStatusRelease.getResultVoid();
            }
        }
    }
    static void Check()
    {
        if (Epoch() != epoch) throw new Exception("ASCET process changed");
        var current = ascet.GetCurrentDataBase();
        try {
            if (current == null || current.nullHandle() || !String.Equals(current.GetName(), dbName, StringComparison.OrdinalIgnoreCase)) throw new Exception("Database changed");
            if (sessionGuard != null) {
                int slash = path.LastIndexOf('\\');
                var fresh = current.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash));
                try {
                    if (fresh == null || fresh.nullHandle()) throw new Exception("Current component unavailable");
                    var guard = new InstanceMethodCall(sessionGuard, "value:value:", component);
                    guard.appendParameter(current); guard.appendParameter(fresh); component.call(guard);
                    if (!guard.ResultBoolean) throw new Exception("Native database session or component ownership changed");
                } finally { if (fresh != null) { fresh.finalize(); GC.SuppressFinalize(fresh); } }
            }
        }
        finally { if (current != null) { current.finalize(); GC.SuppressFinalize(current); } }
        if (component.GetOID() != oid || component.GetNameWithPath().Trim('\\') != path) throw new Exception("Component identity changed");
        var dirty = ascet.GetAllEditorsWithUnsavedChanges();
        if (dirty == null || dirty.Length != 0) throw new Exception("Unsaved editor changes; structural operation deferred");
    }
    static Identifiable CompileEditor(string command)
    {
        string profile = Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR");
        if (String.IsNullOrEmpty(profile)) return AscetStructureRead.Compile(component, "bde_structure_edit.st");
        if (profile != "staged_v1") throw new Exception("Unsupported fixed structural executor profile");
        var materials = new List<Identifiable>();
        bool success = false;
        try {
            var phases = new Identifiable[5];
            phases[0] = AscetStructureRead.Compile(component, "bde_structure_stage_common.st"); materials.Add(phases[0]);
            if (command == "prepare" || command == "validate") {
                phases[1] = AscetStructureRead.Compile(component, "bde_structure_stage_prepare.st"); materials.Add(phases[1]);
            } else {
                phases[2] = AscetStructureRead.Compile(component, "bde_structure_stage_guard.st"); materials.Add(phases[2]);
                if (command != "validate_revert" && command != "validate_managed_inverse") {
                    phases[3] = AscetStructureRead.Compile(component, "bde_structure_stage_apply.st"); materials.Add(phases[3]);
                    phases[4] = AscetStructureRead.Compile(component, "bde_structure_stage_terminal.st"); materials.Add(phases[4]);
                }
            }
            var array = component.createClassMethodCall("Array", "with:with:");
            array.appendParameter(phases[0]); array.appendParameter(phases[1]); component.call(array);
            var bundle = array.ResultRemoteObject; materials.Add(bundle);
            for (int i = 2; i < phases.Length; ++i) {
                var extend = new InstanceMethodCall(bundle, "copyWith:", component);
                extend.appendParameter(phases[i]); component.call(extend);
                bundle = extend.ResultRemoteObject; materials.Add(bundle);
            }
            var dispatcher = AscetStructureRead.Compile(component, "bde_structure_dispatch.st"); materials.Add(dispatcher);
            AscetStructureRead.Trace("editor.stages_bind.begin " + command);
            var bind = new InstanceMethodCall(dispatcher, "value:", component);
            bind.appendParameter(bundle); component.call(bind);
            var bound = bind.ResultRemoteObject;
            if (component.getClassName(bound) != "BlockContextTemplate") throw new Exception("Fixed staged structural dispatcher binding failed");
            success = true;
            AscetStructureRead.Trace("editor.stages_bind.done " + command);
            return bound;
        } finally {
            for (int i = materials.Count - 1; i >= 0; --i) {
                try {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(materials[i].getIdentifier()); component.call(release); release.getResultVoid();
                } catch (Exception cleanupError) {
                    AscetStructureRead.Trace("editor.stage_cleanup.failed " + cleanupError.Message);
                    if (success) throw;
                }
            }
        }
    }
    static Identifiable BuildCommitResourceCollector(List<Identifiable> blocks)
    {
        var referenceDecoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); blocks.Add(referenceDecoder);
        var factory = AscetStructureRead.Compile(component, "bde_commit_resources.st"); blocks.Add(factory);
        var bind = new InstanceMethodCall(factory, "value:", component);
        bind.appendParameter(referenceDecoder); component.call(bind);
        var collector = bind.ResultRemoteObject; blocks.Add(collector); return collector;
    }
    static Identifiable BindCommitPreparation(Identifiable original)
    {
        if (diagram != "Main" || Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR") != "staged_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_RESOURCE_CAPTURE") != "prepare_v1")
            throw new Exception("Fixed staged Main commit preparation profile required");
        var materials = new List<Identifiable>(); bool success = false;
        try {
            var collector = BuildCommitResourceCollector(materials);
            string registeredProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_REGISTERED_MODELS");
            string controlProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_CONTROL_CAPTURE");
            string reciprocalProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_RECIPROCAL_CAPTURE");
            string referenceBaselineProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_REFERENCE_BASELINE");
            string persistentOwnersProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_PERSISTENT_OWNERS");
            if (!String.IsNullOrEmpty(persistentOwnersProfile)
                    && (persistentOwnersProfile != "component_source_v1" || referenceBaselineProfile != "reference_file_v1"))
                throw new Exception("Fixed component/source owner capture requires original reference-file preparation");
            if (!String.IsNullOrEmpty(referenceBaselineProfile)
                    && (referenceBaselineProfile != "reference_file_v1" || reciprocalProfile != "outgoing_v1"))
                throw new Exception("Fixed reference-file baseline requires reciprocal preparation");
            if (!String.IsNullOrEmpty(reciprocalProfile) && (reciprocalProfile != "outgoing_v1" || controlProfile != "ctree_v1"))
                throw new Exception("Fixed reciprocal capture requires all-leaf CTree preparation");
            if (!String.IsNullOrEmpty(controlProfile) && (controlProfile != "ctree_v1" || registeredProfile != "loaded_sg_v1"))
                throw new Exception("Fixed CTree capture requires loaded SG preparation");
            if (!String.IsNullOrEmpty(registeredProfile)) {
                if (registeredProfile != "loaded_sg_v1") throw new Exception("Unknown fixed registered-model capture profile");
                var modelCollector = AscetStructureRead.Compile(component, "bde_commit_registered_models.st"); materials.Add(modelCollector);
                var pair = component.createClassMethodCall("Array", !String.IsNullOrEmpty(referenceBaselineProfile) ? "with:with:with:with:with:" :
                    !String.IsNullOrEmpty(reciprocalProfile) ? "with:with:with:with:" :
                    String.IsNullOrEmpty(controlProfile) ? "with:with:" : "with:with:with:");
                pair.appendParameter(collector); pair.appendParameter(modelCollector);
                if (!String.IsNullOrEmpty(controlProfile)) {
                    var controlCollector = AscetStructureRead.Compile(component, "bde_commit_control.st"); materials.Add(controlCollector);
                    pair.appendParameter(controlCollector);
                }
                if (!String.IsNullOrEmpty(reciprocalProfile)) {
                    var referenceDecoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); materials.Add(referenceDecoder);
                    var reciprocalFactory = AscetStructureRead.Compile(component, "bde_commit_reciprocal.st"); materials.Add(reciprocalFactory);
                    var reciprocalBind = new InstanceMethodCall(reciprocalFactory, "value:", component);
                    reciprocalBind.appendParameter(referenceDecoder); component.call(reciprocalBind);
                    var reciprocalCollector = reciprocalBind.ResultRemoteObject; materials.Add(reciprocalCollector);
                    pair.appendParameter(reciprocalCollector);
                }
                if (!String.IsNullOrEmpty(referenceBaselineProfile)) {
                    var referenceProfiler = AscetStructureRead.Compile(component, "bde_reference_file_profile.st"); materials.Add(referenceProfiler);
                    var referenceScanner = AscetStructureRead.Compile(component, "bde_reference_file_scan.st"); materials.Add(referenceScanner);
                    var referenceFactory = AscetStructureRead.Compile(component, "bde_reference_file_prepare.st"); materials.Add(referenceFactory);
                    var referenceBind = new InstanceMethodCall(referenceFactory, "value:value:", component);
                    referenceBind.appendParameter(referenceProfiler); referenceBind.appendParameter(referenceScanner); component.call(referenceBind);
                    var baselineCollector = referenceBind.ResultRemoteObject; materials.Add(baselineCollector);
                    pair.appendParameter(baselineCollector);
                }
                component.call(pair);
                collector = pair.ResultRemoteObject; materials.Add(collector);
                if (!String.IsNullOrEmpty(persistentOwnersProfile)) {
                    var ownerDecoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); materials.Add(ownerDecoder);
                    var ownerFactory = AscetStructureRead.Compile(component, "bde_commit_persistent_owners.st"); materials.Add(ownerFactory);
                    var ownerBind = new InstanceMethodCall(ownerFactory, "value:", component);
                    ownerBind.appendParameter(ownerDecoder); component.call(ownerBind);
                    var ownerCollector = ownerBind.ResultRemoteObject; materials.Add(ownerCollector);
                    var extend = new InstanceMethodCall(collector, "copyWith:", component);
                    extend.appendParameter(ownerCollector); component.call(extend);
                    collector = extend.ResultRemoteObject; materials.Add(collector);
                }
            }
            var binder = AscetStructureRead.Compile(component, "bde_commit_prepare.st"); materials.Add(binder);
            var call = new InstanceMethodCall(binder, "value:value:value:", component);
            call.appendParameter(original); call.appendParameter(collector); call.appendParameter(database);
            component.call(call); var bound = call.ResultRemoteObject;
            if (component.getClassName(bound) != "BlockContextTemplate")
                throw new Exception("Fixed same-dispatch commit preparation binding failed");
            success = true; return bound;
        } finally {
            if (success) materials.Add(original);
            for (int i = materials.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(materials[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static Identifiable BuildTopologyLocalPlanner(List<Identifiable> blocks)
    {
        Func<string, Identifiable> compile = name => {
            var value = AscetStructureRead.Compile(component, name); blocks.Add(value); return value;
        };
        var patchFactory = compile("bde_native_field_patch.st");
        var order = compile("bde_native_field_order_plan.st");
        var patchBind = new InstanceMethodCall(patchFactory, "value:", component);
        patchBind.appendParameter(order); component.call(patchBind);
        var patch = patchBind.ResultRemoteObject; blocks.Add(patch);
        var same = compile("bde_source_graph_equal.st");
        var correspondence = compile("bde_source_structural_correspondence.st");
        var logicalFactory = compile("bde_source_logical_images.st");
        var logicalBind = new InstanceMethodCall(logicalFactory, "value:value:", component);
        logicalBind.appendParameter(correspondence); logicalBind.appendParameter(same); component.call(logicalBind);
        var logical = logicalBind.ResultRemoteObject; blocks.Add(logical);
        var mergeFactory = compile("bde_frozen_image_merge.st");
        var mergeBind = new InstanceMethodCall(mergeFactory, "value:", component);
        mergeBind.appendParameter(order); component.call(mergeBind);
        var merge = mergeBind.ResultRemoteObject; blocks.Add(merge);
        var localFactory = compile("bde_topology_local_inverse.st");
        var bundle = component.createClassMethodCall("Array", "with:with:with:with:");
        bundle.appendParameter(patch); bundle.appendParameter(logical); bundle.appendParameter(merge); bundle.appendParameter(same);
        component.call(bundle); var helpers = bundle.ResultRemoteObject; blocks.Add(helpers);
        var localBind = new InstanceMethodCall(localFactory, "value:", component);
        localBind.appendParameter(helpers); component.call(localBind);
        var planner = localBind.ResultRemoteObject; blocks.Add(planner);
        if (component.getClassName(planner) != "BlockContextTemplate")
            throw new Exception("Fixed local topology inverse binding failed");
        return planner;
    }

    static Identifiable BuildTopologyOwnedPlanner(List<Identifiable> blocks)
    {
        var local = BuildTopologyLocalPlanner(blocks);
        var copier = AscetStructureRead.Compile(component, "bde_observation_copy.st"); blocks.Add(copier);
        var valuesFactory = AscetStructureRead.Compile(component, "bde_topology_inverse_values.st"); blocks.Add(valuesFactory);
        var valuesBind = new InstanceMethodCall(valuesFactory, "value:", component);
        valuesBind.appendParameter(copier); component.call(valuesBind);
        var values = valuesBind.ResultRemoteObject; blocks.Add(values);
        var merge = AscetStructureRead.Compile(component, "bde_native_collection_merge.st"); blocks.Add(merge);
        var array = component.createClassMethodCall("Array", "with:with:with:");
        array.appendParameter(local); array.appendParameter(values); array.appendParameter(merge); component.call(array);
        var helpers = array.ResultRemoteObject; blocks.Add(helpers);
        var factory = AscetStructureRead.Compile(component, "bde_topology_owned_inverse.st"); blocks.Add(factory);
        var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(helpers); component.call(bind);
        var planner = bind.ResultRemoteObject; blocks.Add(planner);
        if (component.getClassName(planner) != "BlockContextTemplate")
            throw new Exception("Fixed actual-owned topology inverse binding failed");
        return planner;
    }

    static object ManagedTopology(Dictionary<string, object> request, bool compileOnly)
    {
        if (diagram != "Main" || Environment.GetEnvironmentVariable("ASCET_BD_MANAGED_TOPOLOGY_INVERSE") != "native_source_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_LOCAL_INVERSE") != "native_source_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_EXACT_INVERSE") != "native_source_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION") != "identity_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_ORDER_INVERSE_EXPERIMENTAL") != "1"
                || Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR") != "staged_v1")
            throw new Exception("Managed topology requires explicit fixed retained Main native/source/order profiles");
        var blocks = new List<Identifiable>();
        try {
            var planner = BuildTopologyOwnedPlanner(blocks);
            var current = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); blocks.Add(current);
            var terminal = AscetStructureRead.Compile(component, "bde_topology_managed_terminal.st"); blocks.Add(terminal);
            var helpers = component.createClassMethodCall("Array", "with:with:with:");
            helpers.appendParameter(planner); helpers.appendParameter(current); helpers.appendParameter(terminal); component.call(helpers);
            var bundle = helpers.ResultRemoteObject; blocks.Add(bundle);
            var factory = AscetStructureRead.Compile(component, "bde_topology_managed_inverse.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(bundle); component.call(bind);
            var executor = bind.ResultRemoteObject; blocks.Add(executor);
            if (component.getClassName(executor) != "BlockContextTemplate")
                throw new Exception("Fixed managed topology executor binding failed");
            if (compileOnly) {
                // Compile the recovery reader as well, without invoking it or the executor.
                var recoveryReader = AscetStructureRead.Compile(component, "bde_recovery_status.st"); blocks.Add(recoveryReader);
                return new { compiled = true, profile = "native_topology_execution_v1",
                    model_setters_called = 0, store_called = false, write_authorized = false };
            }
            string token = Text(request, "token"), owner = Text(request, "head_change_id"),
                state = Text(request, "expected_state"), result = Text(request, "result_change_id");
            foreach (string id in new [] { token, owner, result })
                if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact topology managed identities required");
            if (token == owner || result == token || result == owner || (state != "applied" && state != "reverted"))
                throw new Exception("Distinct topology managed owners and terminal state required");
            bool executing = Text(request, "cmd") == "managed_topology_inverse";
            var call = new InstanceMethodCall(executor, "value:value:", component);
            call.appendParameter(component); call.appendParameter(new [] {
                executing ? "execute" : "validate", token, owner, state, result,
                executing ? Text(request, "parent_order_expect_signature") : "",
                executing ? Text(request, "graphical_expect_signature") : "" });
            component.call(call); string value = call.ResultString;
            if (value.StartsWith("BDE_TOPOLOGY_MANAGED_CONFLICT:", StringComparison.Ordinal)) throw new PreconditionConflict(value);
            if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(value);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static object CreateMaterial(Dictionary<string, object> request, bool compileOnly)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_MATERIAL") != "identity_v1")
            throw new Exception("Explicit isolated fixed Main creation material profile required");
        string token = null, action = null;
        if (!compileOnly) {
            token = Text(request, "token"); action = Text(request, "action");
            if (!System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$") ||
                    Array.IndexOf(new [] { "prepare", "inspect_prepared", "capture_attached", "reconcile_attached", "inspect_attached", "inspect_original", "inspect_attached_read_cache" }, action) < 0)
                throw new Exception("Exact retained creation token and fixed capture action required");
        }
        var blocks = new List<Identifiable>();
        try {
            Func<string, Identifiable> fixedCompile = name => {
                var block = AscetStructureRead.Compile(component, name); blocks.Add(block); return block;
            };
            var native = fixedCompile("bde_native_graph_current.st");
            var source = fixedCompile("bde_native_source_images.st");
            var parentOrder = fixedCompile("bde_parent_order_evidence.st");
            var drawingFactory = fixedCompile("bde_drawing_order_evidence.st");
            var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
            drawingBind.appendParameter(parentOrder); component.call(drawingBind);
            var drawing = drawingBind.ResultRemoteObject; blocks.Add(drawing);
            var array = component.createClassMethodCall("Array", "with:with:with:with:");
            array.appendParameter(native); array.appendParameter(source); array.appendParameter(parentOrder); array.appendParameter(drawing);
            component.call(array); var helpers = array.ResultRemoteObject; blocks.Add(helpers);
            string declarationProfile = Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS");
            if (declarationProfile != null && declarationProfile != "body_v1" && declarationProfile != "enum_body_v1" && declarationProfile != "message_body_v1")
                throw new Exception("Unknown fixed creation declaration profile");
            if (declarationProfile == "body_v1") {
                var declarationReader = fixedCompile("bde_declaration_images.st");
                var declarationFactory = fixedCompile("bde_declaration_capture.st");
                var declarationBind = new InstanceMethodCall(declarationFactory, "value:", component);
                declarationBind.appendParameter(declarationReader); component.call(declarationBind);
                var declarationCapture = declarationBind.ResultRemoteObject; blocks.Add(declarationCapture);
                var extended = new InstanceMethodCall(helpers, "copyWith:", component);
                extended.appendParameter(declarationCapture); component.call(extended);
                helpers = extended.ResultRemoteObject; blocks.Add(helpers);
            }
            if (declarationProfile == "enum_body_v1") {
                var enumCreationReader = fixedCompile("bde_enum_declaration_images.st");
                var enumCreationBodyFactory = fixedCompile("bde_enum_declaration_capture.st");
                var enumCreationBodyBind = new InstanceMethodCall(enumCreationBodyFactory, "value:", component);
                enumCreationBodyBind.appendParameter(enumCreationReader); component.call(enumCreationBodyBind);
                var enumCreationCollector = enumCreationBodyBind.ResultRemoteObject; blocks.Add(enumCreationCollector);
                var enumCreationFactory = fixedCompile("bde_enum_creation_capture.st");
                var enumCreationBind = new InstanceMethodCall(enumCreationFactory, "value:value:", component);
                enumCreationBind.appendParameter(enumCreationCollector); enumCreationBind.appendParameter(compileOnly ? "" : token);
                component.call(enumCreationBind); var enumCreationCapture = enumCreationBind.ResultRemoteObject; blocks.Add(enumCreationCapture);
                var enumCreationExtended = new InstanceMethodCall(helpers, "copyWith:", component);
                enumCreationExtended.appendParameter(enumCreationCapture); component.call(enumCreationExtended);
                helpers = enumCreationExtended.ResultRemoteObject; blocks.Add(helpers);
                var enumCreationProfiled = new InstanceMethodCall(helpers, "copyWith:", component);
                enumCreationProfiled.appendParameter("enum_body_v1"); component.call(enumCreationProfiled);
                helpers = enumCreationProfiled.ResultRemoteObject; blocks.Add(helpers);
            }
            if (declarationProfile == "message_body_v1") {
                var messageReader = fixedCompile("bde_message_declaration_images.st");
                var messageFactory = fixedCompile("bde_message_declaration_capture.st");
                var messageBind = new InstanceMethodCall(messageFactory, "value:", component);
                messageBind.appendParameter(messageReader); component.call(messageBind);
                var messageCollector = messageBind.ResultRemoteObject; blocks.Add(messageCollector);
                var messageCreationFactory = fixedCompile("bde_message_creation_capture.st");
                var messageCreationBind = new InstanceMethodCall(messageCreationFactory, "value:value:", component);
                messageCreationBind.appendParameter(messageCollector); messageCreationBind.appendParameter(compileOnly ? "" : token);
                component.call(messageCreationBind); var messageCapture = messageCreationBind.ResultRemoteObject; blocks.Add(messageCapture);
                var messageExtended = new InstanceMethodCall(helpers, "copyWith:", component);
                messageExtended.appendParameter(messageCapture); component.call(messageExtended);
                helpers = messageExtended.ResultRemoteObject; blocks.Add(helpers);
                var messageProfiled = new InstanceMethodCall(helpers, "copyWith:", component);
                messageProfiled.appendParameter("message_body_v1"); component.call(messageProfiled);
                helpers = messageProfiled.ResultRemoteObject; blocks.Add(helpers);
            }
            if (action == "inspect_attached_read_cache") {
                if (declarationProfile != "message_body_v1") throw new Exception("Independent fixed Module message cache-read profile required");
                var cache = fixedCompile("bde_declaration_cache_guard.st");
                var guarded = new InstanceMethodCall(helpers, "copyWith:", component);
                guarded.appendParameter(cache); component.call(guarded);
                helpers = guarded.ResultRemoteObject; blocks.Add(helpers);
            }
            var factory = fixedCompile("bde_create_material.st");
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(helpers); component.call(bind);
            var capture = bind.ResultRemoteObject; blocks.Add(capture);
            if (component.getClassName(capture) != "BlockContextTemplate") throw new Exception("Fixed creation material binding failed");
            if (compileOnly) return new { profile = declarationProfile == "message_body_v1" ? "native_create_material_v4" : declarationProfile == "enum_body_v1" ? "native_create_material_v3" : declarationProfile == "body_v1" ? "native_create_material_v2" : "native_create_material_v1", compiled = true,
                model_setters_called = 0, store_called = false, write_authorized = false, managed_inverse_enabled = false };
            var call = new InstanceMethodCall(capture, "value:value:", component);
            call.appendParameter(component); call.appendParameter(new [] { token, action }); component.call(call);
            string evidence = call.ResultString;
            if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static object MessageMaterialDiagnostic(Dictionary<string, object> request, bool compileOnly)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_MATERIAL") != "identity_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "message_body_v1")
            throw new Exception("Explicit isolated original Module message diagnostic required");
        string token = compileOnly ? "" : Text(request, "token");
        if (!compileOnly && !System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$"))
            throw new Exception("Exact retained original message token required");
        var blocks = new List<Identifiable>();
        try {
            var guard = AscetStructureRead.Compile(component, "bde_declaration_cache_guard.st"); blocks.Add(guard);
            var factory = AscetStructureRead.Compile(component, "bde_message_material_diagnostic.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(guard); component.call(bind);
            var probe = bind.ResultRemoteObject; blocks.Add(probe);
            if (component.getClassName(probe) != "BlockContextTemplate") throw new Exception("Fixed message diagnostic binding failed");
            if (compileOnly) return new { profile = "native_message_material_diagnostic_v1", compiled = true,
                model_setters_called = 0, store_called = false, write_authorized = false };
            var call = new InstanceMethodCall(probe, "value:value:", component);
            call.appendParameter(component); call.appendParameter(token); component.call(call);
            string evidence = call.ResultString;
            if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static object CreateHistory(Dictionary<string, object> request, bool compileOnly, bool finalize = false)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_HISTORY") != "native_source_exact_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_MATERIAL") != "identity_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR") != "staged_v1")
            throw new Exception("Explicit isolated retained Main graphical creation history required");
        if (finalize && Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1")
            throw new Exception("Explicit original graphical finalization profile required");
        string declarationHistory = Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_HISTORY");
        bool enumPreparation = declarationHistory == "enum_prepare_exact_v1";
        bool enumExecution = declarationHistory == "enum_body_exact_v1";
        bool messagePreparation = declarationHistory == "message_prepare_exact_v1";
        bool messageExecution = declarationHistory == "message_body_exact_v1";
        if (declarationHistory != null && declarationHistory != "body_exact_v1" && !enumPreparation && !enumExecution && !messagePreparation && !messageExecution)
            throw new Exception("Unknown fixed declaration history profile");
        if (declarationHistory == "body_exact_v1"
                && Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "body_v1")
            throw new Exception("Declaration history requires original body capture profile");
        if ((enumPreparation || enumExecution) && Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "enum_body_v1")
            throw new Exception("Enum history requires original enum body capture");
        if ((messagePreparation || messageExecution) && Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "message_body_v1")
            throw new Exception("Message history preparation requires original Module body capture");
        string declarationFinalize = Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_FINALIZE");
        bool enumFinalize = declarationFinalize == "enum_body_original_release_v1";
        bool messageFinalize = declarationFinalize == "message_body_original_release_v1";
        if (declarationFinalize != null && declarationFinalize != "body_original_release_v1" && !enumFinalize && !messageFinalize)
            throw new Exception("Unknown fixed declaration finalization profile");
        if (declarationFinalize == "body_original_release_v1" && (declarationHistory != "body_exact_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
            throw new Exception("Declaration finalization requires original body history and graphical finalization");
        if (enumFinalize && (!enumExecution || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
            throw new Exception("Enum finalization requires original Enum executable history and graphical finalization");
        if (finalize && (enumPreparation || enumExecution) && !enumFinalize)
            throw new Exception("Independent Enum finalization profile required");
        if (messageFinalize && (!messageExecution || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
            throw new Exception("Message finalization requires original Module executable history and graphical finalization");
        if (finalize && (messagePreparation || messageExecution) && !messageFinalize)
            throw new Exception("Independent Module message finalization profile required");
        string action = null, token = null, owner = null, state = null, result = null, signature = null;
        if (!compileOnly) {
            action = Text(request, "action"); token = Text(request, "token"); owner = Text(request, "owner");
            state = Text(request, "state"); result = Text(request, "result_change_id"); signature = Text(request, "prepared_signature");
            if (enumPreparation && action != "prepare")
                throw new Exception("Enum history preparation only; execution is not authorized");
            if (messagePreparation && action != "prepare")
                throw new Exception("Message history preparation only; execution is not authorized");
            if (messageExecution && Array.IndexOf(new [] { "prepare", "execute", "inspect", "status" }, action) < 0)
                throw new Exception("Fixed message execution action required");
            if (enumExecution && Array.IndexOf(new [] { "prepare", "execute", "inspect", "status" }, action) < 0)
                throw new Exception("Fixed Enum execution action required");
            foreach (string identity in new [] { token, owner, result })
                if (!System.Text.RegularExpressions.Regex.IsMatch(identity, @"^edit_[0-9a-f]{64}$"))
                    throw new Exception("Exact retained creation history identities required");
            if (Array.IndexOf(finalize ? new [] { "prepare", "execute", "status" } : new [] { "prepare", "execute", "inspect", "status", "diagnose", "cache_controls" }, action) < 0
                    || (state != "applied" && state != "reverted") || result == token || result == owner
                    || (action == "execute" ? !System.Text.RegularExpressions.Regex.IsMatch(signature,
                        "^" + token + (finalize ? @"/f[1-9][0-9]*$" : @"/b[1-9][0-9]*$")) : signature != "")
                    || (finalize && state != "reverted"))
                throw new Exception("Fixed creation mode/state, distinct result and prepared signature required");
        }
        var blocks = new List<Identifiable>();
        try {
            Func<string, Identifiable> compile = name => {
                var block = AscetStructureRead.Compile(component, name); blocks.Add(block); return block;
            };
            var native = compile("bde_native_graph_current.st");
            var source = compile("bde_native_source_images.st");
            var order = compile("bde_parent_order_evidence.st");
            var drawingFactory = compile("bde_drawing_order_evidence.st");
            var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
            drawingBind.appendParameter(order); component.call(drawingBind);
            var drawing = drawingBind.ResultRemoteObject; blocks.Add(drawing);
            var fieldOrder = compile("bde_native_field_order_plan.st");
            var patchFactory = compile("bde_native_field_patch.st");
            var patchBind = new InstanceMethodCall(patchFactory, "value:", component);
            patchBind.appendParameter(fieldOrder); component.call(patchBind);
            var patch = patchBind.ResultRemoteObject; blocks.Add(patch);
            var exporter = compile("bde_frozen_source_evidence.st");
            var array = component.createClassMethodCall("Array", "with:with:with:with:");
            array.appendParameter(native); array.appendParameter(source); array.appendParameter(order); array.appendParameter(drawing);
            component.call(array); var helpers = array.ResultRemoteObject; blocks.Add(helpers);
            foreach (var helper in new [] { patch, exporter }) {
                var extend = new InstanceMethodCall(helpers, "copyWith:", component);
                extend.appendParameter(helper); component.call(extend);
                helpers = extend.ResultRemoteObject; blocks.Add(helpers);
            }
            if ((!finalize && (declarationHistory == "body_exact_v1" || enumPreparation || enumExecution || messagePreparation || messageExecution)) || (finalize && (declarationFinalize == "body_original_release_v1" || enumFinalize || messageFinalize))) {
                var declarationReader = compile(messagePreparation || messageExecution ? "bde_message_declaration_images.st" : enumPreparation || enumExecution ? "bde_enum_declaration_images.st" : "bde_declaration_images.st");
                var extend = new InstanceMethodCall(helpers, "copyWith:", component);
                extend.appendParameter(declarationReader); component.call(extend);
                helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                var cacheGuard = compile("bde_declaration_cache_guard.st");
                extend = new InstanceMethodCall(helpers, "copyWith:", component);
                extend.appendParameter(cacheGuard); component.call(extend);
                helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                if (enumPreparation || enumExecution) {
                    var enumGuard = compile("bde_enum_history_guard.st");
                    extend = new InstanceMethodCall(helpers, "copyWith:", component);
                    extend.appendParameter(enumGuard); component.call(extend);
                    helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                    if (enumExecution) {
                        extend = new InstanceMethodCall(helpers, "copyWith:", component);
                        extend.appendParameter(finalize ? "enum_body_original_release_v1" : "enum_body_exact_v1"); component.call(extend);
                        helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                    }
                }
                if (messagePreparation || messageExecution) {
                    var messageGuard = compile("bde_message_history_guard.st");
                    extend = new InstanceMethodCall(helpers, "copyWith:", component);
                    extend.appendParameter(messageGuard); component.call(extend);
                    helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                    extend = new InstanceMethodCall(helpers, "copyWith:", component);
                    extend.appendParameter(finalize ? "message_body_original_release_v1" : messageExecution ? "message_body_exact_v1" : "message_prepare_exact_v1"); component.call(extend);
                    helpers = extend.ResultRemoteObject; blocks.Add(helpers);
                }
            }
            var factory = compile(finalize ? "bde_create_finalize.st" : "bde_create_history.st");
            if (compileOnly && finalize) compile("bde_recovery_release.st");
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(helpers); component.call(bind);
            var executor = bind.ResultRemoteObject; blocks.Add(executor);
            if (component.getClassName(executor) != "BlockContextTemplate")
                throw new Exception("Fixed retained creation history binding failed");
            if (compileOnly) return new { profile = finalize ? messageFinalize ? "native_create_finalize_execution_v4" : enumFinalize ? "native_create_finalize_execution_v3" : declarationFinalize == "body_original_release_v1"
                ? "native_create_finalize_execution_v2" : "native_create_finalize_execution_v1"
                : enumExecution ? "native_create_exact_execution_v3"
                : enumPreparation ? "native_create_enum_exact_preparation_v1"
                 : messagePreparation ? "native_create_message_exact_preparation_v1"
                 : messageExecution ? "native_create_exact_execution_v4"
                : declarationHistory == "body_exact_v1" ? "native_create_exact_execution_v2" : "native_create_exact_execution_v1", compiled = true,
                model_setters_called = 0, store_called = false, write_authorized = false };
            var call = new InstanceMethodCall(executor, "value:value:", component);
            call.appendParameter(component); call.appendParameter(finalize
                ? new [] { action, token, owner, result, signature }
                : new [] { action, token, owner, state, result, signature });
            component.call(call); string value = call.ResultString;
            if (value.StartsWith("BDE_CREATE_HISTORY_CONFLICT:", StringComparison.Ordinal)
                    || value.StartsWith("BDE_CREATE_FINALIZE_CONFLICT:", StringComparison.Ordinal)) throw new PreconditionConflict(value);
            if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(value);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }

    static object ConnectMaterial(Dictionary<string, object> request)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_MATERIAL") != "identity_v1")
            throw new Exception("Explicit isolated fixed Main connection material profile required");
        string token = Text(request, "token"), mode = Text(request, "action");
        string references = Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_REFERENCES") ?? "none";
        if (references != "none" && references != "module_inbound_v1" && references != "module_persistent_v1")
            throw new Exception("Unknown fixed Module inbound reference capture profile");
        if (!System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$") ||
                Array.IndexOf(new [] { "prepare", "inspect_prepared", "capture_attached", "inspect_attached", "inspect_detached", "inspect_original" }, mode) < 0)
            throw new Exception("Exact retained connect token and fixed material action required");
        var blocks = new List<Identifiable>();
        try {
            Func<string, Identifiable> fixedCompile = name => {
                var block = AscetStructureRead.Compile(component, name); blocks.Add(block); return block;
            };
            var native = fixedCompile("bde_native_graph_current.st");
            var source = fixedCompile("bde_native_source_images.st");
            var parentOrder = fixedCompile("bde_parent_order_evidence.st");
            var drawingFactory = fixedCompile("bde_drawing_order_evidence.st");
            var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
            drawingBind.appendParameter(parentOrder); component.call(drawingBind);
            var drawing = drawingBind.ResultRemoteObject; blocks.Add(drawing);
            var endpoint = fixedCompile("bde_edge_restore_guard.st");
            var array = component.createClassMethodCall("Array", "with:with:with:with:");
            array.appendParameter(native); array.appendParameter(source); array.appendParameter(parentOrder); array.appendParameter(drawing);
            component.call(array); var baseHelpers = array.ResultRemoteObject; blocks.Add(baseHelpers);
            var extend = new InstanceMethodCall(baseHelpers, "copyWith:", component);
            extend.appendParameter(endpoint); component.call(extend); var endpointHelpers = extend.ResultRemoteObject; blocks.Add(endpointHelpers);
            var referenceReader = references != "none" ? fixedCompile("bde_module_reference_snapshot.st") : null;
            var extendReferences = new InstanceMethodCall(endpointHelpers, "copyWith:", component);
            extendReferences.appendParameter(referenceReader); component.call(extendReferences);
            var helpers = extendReferences.ResultRemoteObject; blocks.Add(helpers);
            if (references == "module_persistent_v1") {
                var decoder = fixedCompile("bde_commit_reference_record.st");
                var persistentFactory = fixedCompile("bde_module_persistent_references.st");
                var bindPersistent = new InstanceMethodCall(persistentFactory, "value:", component);
                bindPersistent.appendParameter(decoder); component.call(bindPersistent);
                var persistentReader = bindPersistent.ResultRemoteObject; blocks.Add(persistentReader);
                var extendPersistent = new InstanceMethodCall(helpers, "copyWith:", component);
                extendPersistent.appendParameter(persistentReader); component.call(extendPersistent);
                helpers = extendPersistent.ResultRemoteObject; blocks.Add(helpers);
            }
            var factory = fixedCompile("bde_connect_material.st");
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(helpers); component.call(bind);
            var capture = bind.ResultRemoteObject; blocks.Add(capture);
            if (component.getClassName(capture) != "BlockContextTemplate") throw new Exception("Fixed connect material binding failed");
            var call = new InstanceMethodCall(capture, "value:value:", component);
            call.appendParameter(component); call.appendParameter(new [] { token, mode, references }); component.call(call);
            string evidence = call.ResultString;
            if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }

    static object ConnectHistory(Dictionary<string, object> request, bool compileOnly)
    {
        bool localHistory = Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_HISTORY") == "native_source_local_v1";
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || (!localHistory && Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_HISTORY") != "native_source_exact_v1")
                || Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_MATERIAL") != "identity_v1")
            throw new Exception("Explicit isolated fixed Main connection history profile required");
        string connectHistoryMode = null, connectHistoryToken = null, connectHistoryOwner = null,
            connectHistoryState = null, connectHistoryResult = null, connectHistorySignature = null;
        if (!compileOnly) {
            connectHistoryMode = Text(request, "action"); connectHistoryToken = Text(request, "token");
            connectHistoryOwner = Text(request, "owner"); connectHistoryState = Text(request, "state");
            connectHistoryResult = Text(request, "result_change_id"); connectHistorySignature = Text(request, "prepared_signature");
            foreach (string identity in new [] { connectHistoryToken, connectHistoryOwner, connectHistoryResult })
                if (!System.Text.RegularExpressions.Regex.IsMatch(identity, @"^edit_[0-9a-f]{64}$"))
                    throw new Exception("Exact retained connection history identities required");
            if (Array.IndexOf(new [] { "prepare", "execute", "inspect", "status" }, connectHistoryMode) < 0
                    || (connectHistoryState != "applied" && connectHistoryState != "reverted")
                    || connectHistoryResult == connectHistoryToken || connectHistoryResult == connectHistoryOwner
                    || (connectHistoryMode == "execute" ? !System.Text.RegularExpressions.Regex.IsMatch(
                        connectHistorySignature, "^" + connectHistoryToken + @"/c[1-9][0-9]*$") : connectHistorySignature != ""))
                throw new Exception("Fixed connection mode, distinct result, terminal state and prepared signature required");
        }
        var blocks = new List<Identifiable>();
        try {
            Func<string, Identifiable> fixedCompile = name => {
                var block = AscetStructureRead.Compile(component, name); blocks.Add(block); return block;
            };
            var native = fixedCompile("bde_native_graph_current.st");
            var source = fixedCompile("bde_native_source_images.st");
            var parentOrder = fixedCompile("bde_parent_order_evidence.st");
            var drawingFactory = fixedCompile("bde_drawing_order_evidence.st");
            var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
            drawingBind.appendParameter(parentOrder); component.call(drawingBind);
            var drawing = drawingBind.ResultRemoteObject; blocks.Add(drawing);
            var endpoint = fixedCompile("bde_edge_restore_guard.st");
            var order = fixedCompile("bde_native_field_order_plan.st");
            var patchFactory = fixedCompile("bde_native_field_patch.st");
            var patchBind = new InstanceMethodCall(patchFactory, "value:", component);
            patchBind.appendParameter(order); component.call(patchBind);
            var patch = patchBind.ResultRemoteObject; blocks.Add(patch);
            var array = component.createClassMethodCall("Array", "with:with:with:with:");
            array.appendParameter(native); array.appendParameter(source); array.appendParameter(parentOrder); array.appendParameter(drawing);
            component.call(array); var bundle = array.ResultRemoteObject; blocks.Add(bundle);
            foreach (var helper in new [] { endpoint, patch }) {
                var extend = new InstanceMethodCall(bundle, "copyWith:", component);
                extend.appendParameter(helper); component.call(extend);
                bundle = extend.ResultRemoteObject; blocks.Add(bundle);
            }
            if (localHistory) {
                var planner = BuildConnectLocalPlanner(blocks);
                var exporter = fixedCompile("bde_frozen_source_evidence.st");
                var probeFactory = fixedCompile("bde_connect_local_plan_probe.st");
                var probeBind = new InstanceMethodCall(probeFactory, "value:value:", component);
                probeBind.appendParameter(planner); probeBind.appendParameter(exporter); component.call(probeBind);
                var probe = probeBind.ResultRemoteObject; blocks.Add(probe);
                foreach (var helper in new [] { planner, probe }) {
                    var extend = new InstanceMethodCall(bundle, "copyWith:", component);
                    extend.appendParameter(helper); component.call(extend);
                    bundle = extend.ResultRemoteObject; blocks.Add(bundle);
                }
            }
            var factory = fixedCompile("bde_connect_history.st");
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(bundle); component.call(bind);
            var executor = bind.ResultRemoteObject; blocks.Add(executor);
            if (component.getClassName(executor) != "BlockContextTemplate")
                throw new Exception("Fixed exact connection history binding failed");
            if (compileOnly) return new { profile = localHistory ? "native_connect_local_execution_v1" : "native_connect_exact_execution_v1", compiled = true,
                model_setters_called = 0, store_called = false, write_authorized = false };
            var call = new InstanceMethodCall(executor, "value:value:", component);
            call.appendParameter(component); call.appendParameter(new [] { connectHistoryMode, connectHistoryToken,
                connectHistoryOwner, connectHistoryState, connectHistoryResult, connectHistorySignature });
            component.call(call); string value = call.ResultString;
            if (value.StartsWith("BDE_CONNECT_HISTORY_CONFLICT:", StringComparison.Ordinal)) throw new PreconditionConflict(value);
            if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(value);
            var decoded = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
            if (decoded.ContainsKey("local_plan_encoded")) {
                decoded["local_plan"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)decoded["local_plan_encoded"]));
                decoded.Remove("local_plan_encoded");
            }
            return decoded;
        } finally {
            for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }

    static Identifiable BuildConnectLocalPlanner(List<Identifiable> blocks)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || (Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_LOCAL_PLAN") != "native_source_v1"
                    && Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_HISTORY") != "native_source_local_v1"))
            throw new Exception("Explicit isolated fixed local connect planning profile required");
        Func<string, Identifiable> compile = name => {
            var value = AscetStructureRead.Compile(component, name); blocks.Add(value); return value;
        };
        var order = compile("bde_native_field_order_plan.st");
        var patchFactory = compile("bde_native_field_patch.st");
        var patchBind = new InstanceMethodCall(patchFactory, "value:", component);
        patchBind.appendParameter(order); component.call(patchBind);
        var patch = patchBind.ResultRemoteObject; blocks.Add(patch);
        var mergeFactory = compile("bde_frozen_image_merge.st");
        var mergeBind = new InstanceMethodCall(mergeFactory, "value:", component);
        mergeBind.appendParameter(order); component.call(mergeBind);
        var merge = mergeBind.ResultRemoteObject; blocks.Add(merge);
        var copier = compile("bde_observation_copy.st");
        var typedFactory = compile("bde_topology_inverse_values.st");
        var typedBind = new InstanceMethodCall(typedFactory, "value:", component);
        typedBind.appendParameter(copier); component.call(typedBind);
        var typed = typedBind.ResultRemoteObject; blocks.Add(typed);
        var physical = compile("bde_native_collection_merge.st");
        var native = compile("bde_native_graph_current.st");
        var source = compile("bde_native_source_images.st");
        var parentOrder = compile("bde_parent_order_evidence.st");
        var drawingFactory = compile("bde_drawing_order_evidence.st");
        var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
        drawingBind.appendParameter(parentOrder); component.call(drawingBind);
        var drawing = drawingBind.ResultRemoteObject; blocks.Add(drawing);
        var pair = component.createClassMethodCall("Array", "with:with:");
        pair.appendParameter(parentOrder); pair.appendParameter(drawing); component.call(pair);
        var evidence = pair.ResultRemoteObject; blocks.Add(evidence);
        var strictSame = compile("bde_source_graph_equal.st");
        var correspondence = compile("bde_source_structural_correspondence.st");
        var logicalFactory = compile("bde_source_logical_images.st");
        var logicalBind = new InstanceMethodCall(logicalFactory, "value:value:", component);
        logicalBind.appendParameter(correspondence); logicalBind.appendParameter(strictSame); component.call(logicalBind);
        var logical = logicalBind.ResultRemoteObject; blocks.Add(logical);
        var endpoint = compile("bde_edge_restore_guard.st");
        var array = component.createClassMethodCall("Array", "with:with:with:with:");
        array.appendParameter(patch); array.appendParameter(merge); array.appendParameter(typed); array.appendParameter(physical);
        component.call(array); var helpers = array.ResultRemoteObject; blocks.Add(helpers);
        foreach (var helper in new [] { native, source, evidence, logical, endpoint }) {
            var extend = new InstanceMethodCall(helpers, "copyWith:", component);
            extend.appendParameter(helper); component.call(extend); helpers = extend.ResultRemoteObject; blocks.Add(helpers);
        }
        var factory = compile("bde_connect_local_plan.st");
        var bind = new InstanceMethodCall(factory, "value:", component);
        bind.appendParameter(helpers); component.call(bind);
        var planner = bind.ResultRemoteObject; blocks.Add(planner);
        if (component.getClassName(planner) != "BlockContextTemplate")
            throw new Exception("Fixed local connect planner binding failed");
        return planner;
    }

    static Identifiable BuildFieldSourceProjection(List<Identifiable> blocks, Identifiable restore)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_FIELD_SOURCE_PROJECTION") != "active_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") != "native_source_v1"
                || Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1")
            throw new Exception("Explicit isolated active field source projection profile required");
        Func<string, Identifiable> compile = name => {
            var block = AscetStructureRead.Compile(component, name); blocks.Add(block); return block;
        };
        var order = compile("bde_native_field_order_plan.st"); var mergeFactory = compile("bde_frozen_image_merge.st");
        var mergeBind = new InstanceMethodCall(mergeFactory, "value:", component); mergeBind.appendParameter(order); component.call(mergeBind);
        var merge = mergeBind.ResultRemoteObject; blocks.Add(merge);
        var same = compile("bde_source_graph_equal.st"); var correspondence = compile("bde_source_structural_correspondence.st");
        var logicalFactory = compile("bde_source_logical_images.st");
        var logicalBind = new InstanceMethodCall(logicalFactory, "value:value:", component);
        logicalBind.appendParameter(correspondence); logicalBind.appendParameter(same); component.call(logicalBind);
        var logical = logicalBind.ResultRemoteObject; blocks.Add(logical);
        var helpersCall = component.createClassMethodCall("Array", "with:with:with:");
        helpersCall.appendParameter(restore); helpersCall.appendParameter(logical); helpersCall.appendParameter(merge); component.call(helpersCall);
        var helpers = helpersCall.ResultRemoteObject; blocks.Add(helpers); return helpers;
    }

#if BDE_MAIN_WORKFLOW_EVAL
    static object CommitReferencePrivate(Dictionary<string, object> request) {
        string token = Text(request, "token");
        if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || !System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$"))
            throw new Exception("Exact isolated original reference material required");
        var blocks = new List<Identifiable>(); bool known = true;
        try {
            var decoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); blocks.Add(decoder);
            var factory = AscetStructureRead.Compile(component, "bde_commit_reference_private.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(decoder); component.call(bind); var probe = bind.ResultRemoteObject; blocks.Add(probe);
            var call = new InstanceMethodCall(probe, "value:value:", component);
            call.appendParameter(component); call.appendParameter(token); known = false; component.call(call);
            string encoded = call.ResultString;
            if (String.IsNullOrEmpty(encoded)) throw new Exception("Unknown reference private comparison; preserve evidence");
            known = true;
            if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
        } finally {
            if (known) for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static object CommitControlDiffPrivate(Dictionary<string, object> request) {
        string token = Text(request, "token");
        if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || !System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$"))
            throw new Exception("Exact isolated original control material required");
        var blocks = new List<Identifiable>(); bool known = true;
        try {
            var collector = AscetStructureRead.Compile(component, "bde_commit_control.st"); blocks.Add(collector);
            var factory = AscetStructureRead.Compile(component, "bde_commit_control_diff_private.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(collector); component.call(bind); var probe = bind.ResultRemoteObject; blocks.Add(probe);
            var call = new InstanceMethodCall(probe, "value:value:value:", component);
            call.appendParameter(component); call.appendParameter(token); call.appendParameter(database);
            known = false; component.call(call); string encoded = call.ResultString;
            if (String.IsNullOrEmpty(encoded)) throw new Exception("Unknown control private test; preserve material");
            known = true;
            if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encoded);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded));
        } finally {
            if (known) for (int i = blocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
    static object CommitModelsDiffPrivate() {
            if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal))
                throw new Exception("Fixed isolated private SG diff context required");
            var privateModelBlocks = new List<Identifiable>(); bool privateModelKnown = true;
            try {
                var currentModel = AscetStructureRead.Compile(component, "bde_commit_registered_models_current.st"); privateModelBlocks.Add(currentModel);
                var privateModelFactory = AscetStructureRead.Compile(component, "bde_commit_model_diff_private.st"); privateModelBlocks.Add(privateModelFactory);
                var bindPrivateModel = new InstanceMethodCall(privateModelFactory, "value:", component);
                bindPrivateModel.appendParameter(currentModel); component.call(bindPrivateModel);
                var privateModel = bindPrivateModel.ResultRemoteObject; privateModelBlocks.Add(privateModel);
                var probePrivateModel = new InstanceMethodCall(privateModel, "value:", component);
                probePrivateModel.appendParameter(component); privateModelKnown = false; component.call(probePrivateModel);
                string encodedPrivateModel = probePrivateModel.ResultString;
                if (String.IsNullOrEmpty(encodedPrivateModel)) throw new Exception("Unknown private SG diff; preserve helper references");
                privateModelKnown = true;
                if (encodedPrivateModel.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(encodedPrivateModel);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encodedPrivateModel));
            } finally {
                if (privateModelKnown) for (int i = privateModelBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(privateModelBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
    static object MessageBeforeStudy(Dictionary<string, object> request)
    {
        string messageToken = Text(request, "token"), messageAction = Text(request, "action");
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || !System.Text.RegularExpressions.Regex.IsMatch(messageToken, @"^message_[0-9a-f]{64}$")
                || Array.IndexOf(new [] { "capture", "check", "export", "release" }, messageAction) < 0)
            throw new Exception("Fixed isolated primitive-message original body study required");
        var messageBlocks = new List<Identifiable>();
        try {
            var bodyReader = AscetStructureRead.Compile(component, "bde_message_declaration_images.st"); messageBlocks.Add(bodyReader);
            var bodyFactory = AscetStructureRead.Compile(component, "bde_message_declaration_capture.st"); messageBlocks.Add(bodyFactory);
            var bindBody = new InstanceMethodCall(bodyFactory, "value:", component);
            bindBody.appendParameter(bodyReader); component.call(bindBody);
            var bodyCollector = bindBody.ResultRemoteObject; messageBlocks.Add(bodyCollector);
            var studyFactory = AscetStructureRead.Compile(component, "bde_message_before_study.st"); messageBlocks.Add(studyFactory);
            var bindStudy = new InstanceMethodCall(studyFactory, "value:", component);
            bindStudy.appendParameter(bodyCollector); component.call(bindStudy);
            var study = bindStudy.ResultRemoteObject; messageBlocks.Add(study);
            var studyCall = new InstanceMethodCall(study, "value:value:", component);
            studyCall.appendParameter(component); studyCall.appendParameter(new [] { messageToken, messageAction });
            component.call(studyCall); string studyValue = studyCall.ResultString;
            if (studyValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(studyValue);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(studyValue));
        } finally {
            for (int i = messageBlocks.Count - 1; i >= 0; --i) {
                var destroy = component.createControlMessageCall("destroyObjectForId:");
                destroy.appendParameter(messageBlocks[i].getIdentifier()); component.call(destroy); destroy.getResultVoid();
            }
        }
    }

    static object EnumBeforeStudy(Dictionary<string, object> request)
    {
        string enumStudyName = Text(request, "name"), enumStudyToken = Text(request, "token"),
            enumStudyAction = Text(request, "action");
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || !System.Text.RegularExpressions.Regex.IsMatch(enumStudyName, @"^[A-Za-z_][A-Za-z0-9_]{0,63}$")
                || !System.Text.RegularExpressions.Regex.IsMatch(enumStudyToken, @"^enum_[0-9a-f]{64}$")
                || (enumStudyAction != "capture" && enumStudyAction != "check" && enumStudyAction != "export" && enumStudyAction != "release"))
            throw new Exception("Fixed isolated exact enum before study required");
        var enumStudyDefinition = database.GetItemInFolder(enumStudyName, "BDE_Tool_Experiments") as AscetEnumeration;
        var enumStudyBlocks = new List<Identifiable>();
        try {
            if (enumStudyDefinition == null || enumStudyDefinition.nullHandle()) throw new Exception("Exact existing isolated enum missing");
            var enumBodyReader = AscetStructureRead.Compile(component, "bde_enum_declaration_images.st"); enumStudyBlocks.Add(enumBodyReader);
            var enumBodyFactory = AscetStructureRead.Compile(component, "bde_enum_declaration_capture.st"); enumStudyBlocks.Add(enumBodyFactory);
            var enumBodyBind = new InstanceMethodCall(enumBodyFactory, "value:", component);
            enumBodyBind.appendParameter(enumBodyReader); component.call(enumBodyBind);
            var enumBodyCollector = enumBodyBind.ResultRemoteObject; enumStudyBlocks.Add(enumBodyCollector);
            var enumBeforeFactory = AscetStructureRead.Compile(component, "bde_enum_before_study.st"); enumStudyBlocks.Add(enumBeforeFactory);
            var enumBeforeBind = new InstanceMethodCall(enumBeforeFactory, "value:", component);
            enumBeforeBind.appendParameter(enumBodyCollector); component.call(enumBeforeBind);
            var enumBeforeQuery = enumBeforeBind.ResultRemoteObject; enumStudyBlocks.Add(enumBeforeQuery);
            var enumBeforeCall = new InstanceMethodCall(enumBeforeQuery, "value:value:value:", component);
            enumBeforeCall.appendParameter(component); enumBeforeCall.appendParameter(enumStudyDefinition);
            enumBeforeCall.appendParameter(new [] { enumStudyToken, enumStudyAction }); component.call(enumBeforeCall);
            string enumBeforeValue = enumBeforeCall.ResultString;
            if (enumBeforeValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(enumBeforeValue);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(enumBeforeValue));
        } finally {
            for (int i = enumStudyBlocks.Count - 1; i >= 0; --i) {
                var enumStudyRelease = component.createControlMessageCall("destroyObjectForId:");
                enumStudyRelease.appendParameter(enumStudyBlocks[i].getIdentifier()); component.call(enumStudyRelease); enumStudyRelease.getResultVoid();
            }
            if (enumStudyDefinition != null) { enumStudyDefinition.finalize(); GC.SuppressFinalize(enumStudyDefinition); }
        }
    }

    static object ConnectSourceRepair(Dictionary<string, object> request, bool certificate = false)
    {
        if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                || Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_SOURCE_REPAIR") != "identity_v1")
            throw new Exception("Explicit isolated source-only restoration profile required");
        string repairMode = Text(request, "action"), repairToken = Text(request, "token"), repairOwner = Text(request, "owner"),
            fieldToken = Text(request, "field_token"), fieldOwner = Text(request, "field_owner"),
            repairId = Text(request, "repair_id"), repairSignature = Text(request, "signature");
        foreach (string id in new [] { repairToken, repairOwner, fieldToken, fieldOwner, repairId })
            if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact original runtime identities required");
        if (Array.IndexOf(certificate ? new [] { "inspect", "certify" } : new [] { "prepare", "execute", "status", "release" }, repairMode) < 0
                || (repairMode == "execute" ? repairSignature != repairId + "/r1" :
                    repairMode == "certify" ? repairSignature != repairId + "/m1" : repairSignature != ""))
            throw new Exception("Fixed source restoration mode/signature required");
        var repairBlocks = new List<Identifiable>();
        try {
            Func<string, Identifiable> compileRepair = name => {
                var block = AscetStructureRead.Compile(component, name); repairBlocks.Add(block); return block;
            };
            var native = compileRepair("bde_native_graph_current.st"); var source = compileRepair("bde_native_source_images.st");
            var order = compileRepair("bde_native_field_order_plan.st"); var patchFactory = compileRepair("bde_native_field_patch.st");
            var bindPatch = new InstanceMethodCall(patchFactory, "value:", component);
            bindPatch.appendParameter(order); component.call(bindPatch); var patch = bindPatch.ResultRemoteObject; repairBlocks.Add(patch);
            var exporter = compileRepair("bde_frozen_source_evidence.st");
            var array = component.createClassMethodCall("Array", "with:with:with:with:");
            array.appendParameter(native); array.appendParameter(source); array.appendParameter(patch); array.appendParameter(exporter); component.call(array);
            var helpers = array.ResultRemoteObject; repairBlocks.Add(helpers);
            var factory = compileRepair(certificate ? "bde_connect_source_repair_certify.st" : "bde_connect_source_repair.st");
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(helpers); component.call(bind);
            var kernel = bind.ResultRemoteObject; repairBlocks.Add(kernel);
            if (component.getClassName(kernel) != "BlockContextTemplate") throw new Exception("Fixed source-only repair binding failed");
            var repairCall = new InstanceMethodCall(kernel, "value:value:", component); repairCall.appendParameter(component);
            repairCall.appendParameter(new [] { repairMode, repairToken, repairOwner, fieldToken, fieldOwner, repairId, repairSignature }); component.call(repairCall);
            string reply = repairCall.ResultString;
            if (reply.StartsWith("BDE_CONNECT_SOURCE_REPAIR_CONFLICT:", StringComparison.Ordinal)) throw new PreconditionConflict(reply);
            if (reply.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(reply);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(reply));
        } finally {
            for (int i = repairBlocks.Count - 1; i >= 0; --i) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(repairBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }

    static object TopologyTerminalRecovery(Dictionary<string, object> request, bool compileOnly)
    {
        if (diagram != "Main" || Environment.GetEnvironmentVariable("ASCET_BD_MANAGED_TOPOLOGY_TERMINAL_CERTIFICATION") != "metadata_v1")
            throw new Exception("Explicit isolated fixed metadata certification profile required");
        var blocks = new List<Identifiable>();
        try {
            var terminal = AscetStructureRead.Compile(component, "bde_topology_managed_terminal.st"); blocks.Add(terminal);
            var factory = AscetStructureRead.Compile(component, "bde_topology_terminal_recovery.st"); blocks.Add(factory);
            var bind = new InstanceMethodCall(factory, "value:", component); bind.appendParameter(terminal); component.call(bind);
            var certificate = bind.ResultRemoteObject; blocks.Add(certificate);
            if (component.getClassName(certificate) != "BlockContextTemplate") throw new Exception("Fixed terminal certificate binding failed");
            if (compileOnly) return new { profile = "retained_managed_terminal_certification_v1", compiled = true,
                model_setters_called = 0, store_called = false, patch_execute_called = false };
            string action = Text(request, "action"), token = Text(request, "token"), head = Text(request, "head_change_id"),
                state = Text(request, "expected_state"), result = Text(request, "result_change_id"),
                witness = Text(request, "witness_token"), transaction = Text(request, "recovery_id");
            foreach (string id in new [] { token, head, result, transaction })
                if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact retained topology certification identities required");
            if (!System.Text.RegularExpressions.Regex.IsMatch(witness, @"^main_[0-9a-f]{64}$") ||
                (action != "inspect" && action != "prepare" && action != "certify") || (state != "applied" && state != "reverted"))
                throw new Exception("Exact fixed topology certification action/state/witness required");
            var certificationCall = new InstanceMethodCall(certificate, "value:value:", component);
            certificationCall.appendParameter(component); certificationCall.appendParameter(new [] {
                action, token, head, state, result, witness, transaction,
                action == "certify" ? Text(request, "prepared_signature") : "" });
            component.call(certificationCall); string value = certificationCall.ResultString;
            if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(value);
            return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
        } finally {
            for (int index = blocks.Count - 1; index >= 0; --index) {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(blocks[index].getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
    }
#endif
    static object Handle(Dictionary<string, object> request)
    {
        if (referenceFileQueryUnknown)
            throw new Exception("Unknown reference capture reply; close this bridge and inspect retained material in a fresh connection");
        string command = Text(request, "cmd");
        if (command == "open")
        {
            if (ascet != null) throw new Exception("Already open");
            path = Text(request, "component").Trim('\\'); diagram = Text(request, "diagram");
            if (!System.Text.RegularExpressions.Regex.IsMatch(path, @"^BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+$")) throw new Exception("Sandbox only");
            if (!System.Text.RegularExpressions.Regex.IsMatch(diagram, @"^Main(?:/h(?:0|[1-9][0-9]{0,9})){0,16}$")) throw new Exception("Canonical Main hierarchy scope required");
            foreach (string part in diagram.Split('/')) if (part != "Main" && Int64.Parse(part.Substring(1)) > Int32.MaxValue) throw new Exception("Hierarchy ID out of range");
            var domain = (Dictionary<string, object>)request["domain"];
            epoch = Text(domain, "process_epoch"); dbName = Text(domain, "database"); oid = Text(domain, "oid");
            if (Epoch() != epoch) throw new Exception("Stale process");
            Cebra.initCebraToolIndependent(false, false, null, null); Cebra.initialized = true;
            string port = Environment.GetEnvironmentVariable("ASCET_BD_PROBE_PORT");
            ToolClient.registerTool("Ascet", new ToolEntry("127.0.0.1", port == null ? 32503 : Int32.Parse(port)));
            ascet = new Ascet(); if (ascet.nullHandle()) throw new Exception("No ASCET handle");
            database = ascet.GetCurrentDataBase();
            if (database == null || database.nullHandle())
                throw new Exception("No active database; open the explicitly selected database before structural operations");
            int slash = path.LastIndexOf('\\');
            component = database.GetItemInFolder(path.Substring(slash + 1), path.Substring(0, slash)) as CodeComponent;
            if (component == null) throw new Exception("Component unavailable");
            Check(); reader = AscetStructureRead.Compile(component, "bde_structure_read.st");
            var guardFactory = AscetStructureRead.Compile(component, "bde_session_guard.st");
            try {
                var bind = new InstanceMethodCall(guardFactory, "value:value:", component);
                bind.appendParameter(database); bind.appendParameter(component); component.call(bind);
                sessionGuard = bind.ResultRemoteObject;
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(guardFactory.getIdentifier()); component.call(release); release.getResultVoid();
            }
            return new { capability = "experimental_structural_sandbox", component = path, oid = oid };
        }
        if (component == null) throw new Exception("Not open");
        // Frozen report pages are bound by the native retained-material query.
        // Re-resolving the live component per page changes cache timestamps and
        // adds model reads without making the immutable report any fresher.
        bool retainedReferencePage = command == "commit_reference_baseline_lookup" || (command == "commit_reference_file_capture"
            && (Text(request, "action") == "page" || Text(request, "action") == "inspect" || Text(request, "action") == "profile"));
        if (retainedReferencePage) {
            if (Epoch() != epoch) throw new Exception("Stale process for retained reference report");
        } else Check();
        if (command == "commit_reference_baseline_lookup") {
            string lookupToken = Text(request, "token");
            var lookupRows = request["requests"] as object[];
            if (diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(lookupToken, @"^edit_[0-9a-f]{64}$")
                    || lookupRows == null || lookupRows.Length < 1 || lookupRows.Length > 16)
                throw new Exception("One to sixteen fixed original reference lookup requests required");
            var lookupCommand = new List<string>(); lookupCommand.Add(lookupToken);
            var lookupKeys = new HashSet<string>();
            foreach (object entry in lookupRows) {
                var row = entry as Dictionary<string, object>;
                if (row == null || row.Count != 2 || !row.ContainsKey("attribute") || !row.ContainsKey("global_id"))
                    throw new Exception("Exact reference lookup key required");
                string attribute = row["attribute"] as string;
                var globalId = row["global_id"] as object[];
                if ((attribute != "DBReferenceList" && attribute != "DBReferencedByList") || globalId == null || globalId.Length != 20)
                    throw new Exception("Fixed reference attribute and 20 original ID octets required");
                var identity = new StringBuilder(attribute); lookupCommand.Add(attribute);
                foreach (object part in globalId) {
                    if (!(part is int) || (int)part < 0 || (int)part > 255)
                        throw new Exception("Exact reference global ID octets required");
                    lookupCommand.Add(((int)part).ToString()); identity.Append('/').Append((int)part);
                }
                if (!lookupKeys.Add(identity.ToString())) throw new Exception("Duplicate original reference lookup request");
            }
            var lookupBlock = AscetStructureRead.Compile(component, "bde_reference_baseline_lookup.st");
            try {
                var lookupCall = new InstanceMethodCall(lookupBlock, "value:value:value:", component);
                lookupCall.appendParameter(component); lookupCall.appendParameter(lookupCommand.ToArray()); lookupCall.appendParameter(database);
                referenceFileQueryUnknown = true; component.call(lookupCall);
                string lookupEncoded = lookupCall.ResultString;
                if (String.IsNullOrEmpty(lookupEncoded)) throw new Exception("Unknown retained reference lookup reply; retain original material");
                if (lookupEncoded.StartsWith("BDE_", StringComparison.Ordinal)) {
                    referenceFileQueryUnknown = false; throw new Exception(lookupEncoded);
                }
                var lookupDecoded = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(lookupEncoded));
                referenceFileQueryUnknown = false; return lookupDecoded;
            } finally {
                if (!referenceFileQueryUnknown) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(lookupBlock.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "commit_reference_file_capture") {
            string referenceToken = Text(request, "token"), referenceAction = Text(request, "action"), referenceSection = Text(request, "section");
            if (!(request["profile_index"] is int) || !(request["offset"] is int) || !(request["limit"] is int))
                throw new Exception("Exact integer reference page fields required");
            int referenceIndex = (int)request["profile_index"], referenceOffset = (int)request["offset"], referenceLimit = (int)request["limit"];
            if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(referenceToken, @"^edit_[0-9a-f]{64}$")
                    || referenceIndex < 1 || referenceIndex > 16 || referenceOffset < 0 || referenceOffset > 1000000
                    || referenceLimit < 1 || referenceLimit > 64
                    || (referenceAction != "scan" && referenceAction != "inspect" && referenceAction != "page" && referenceAction != "profile")
                    || (referenceAction == "page" && Array.IndexOf(new [] { "events", "records", "keys_first", "keys_second", "failures", "gv_images" }, referenceSection) < 0)
                    || (referenceAction != "page" && (referenceSection != "" || referenceOffset != 0)))
                throw new Exception("Exact isolated retained reference capture query required");
            if (referenceFileQuery == null) {
                var scan = AscetStructureRead.Compile(component, "bde_reference_file_scan.st");
                var referenceFactory = AscetStructureRead.Compile(component, "bde_reference_file_query.st");
                var referenceBind = new InstanceMethodCall(referenceFactory, "value:", component);
                referenceBind.appendParameter(scan); component.call(referenceBind); referenceFileQuery = referenceBind.ResultRemoteObject;
                foreach (var temporary in new [] { referenceFactory, scan }) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(temporary.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
            var referenceCall = new InstanceMethodCall(referenceFileQuery, "value:value:value:", component);
            referenceCall.appendParameter(component); referenceCall.appendParameter(new [] { referenceAction, referenceToken,
                referenceIndex.ToString(), referenceSection, referenceOffset.ToString(), referenceLimit.ToString() });
            referenceCall.appendParameter(database); referenceFileQueryUnknown = true; component.call(referenceCall);
            string referenceEncoded = referenceCall.ResultString;
            if (String.IsNullOrEmpty(referenceEncoded)) throw new Exception("Unknown reference capture; inspect retained attempt, never replay");
            if (referenceEncoded.StartsWith("BDE_", StringComparison.Ordinal)) {
                referenceFileQueryUnknown = false; throw new Exception(referenceEncoded);
            }
            var referenceDecoded = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(referenceEncoded));
            referenceFileQueryUnknown = false;
            return referenceDecoded;
        }
        if (command == "commit_reference_file_profile") {
            string referenceProfileToken = Text(request, "token");
            if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(referenceProfileToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact isolated original reference file material required");
            var referenceProfileBlock = AscetStructureRead.Compile(component, "bde_reference_file_profile.st"); bool referenceProfileKnown = true;
            try {
                var referenceProfileCall = new InstanceMethodCall(referenceProfileBlock, "value:value:value:", component);
                referenceProfileCall.appendParameter(component); referenceProfileCall.appendParameter(referenceProfileToken); referenceProfileCall.appendParameter(database);
                referenceProfileKnown = false; component.call(referenceProfileCall); string referenceProfileEncoded = referenceProfileCall.ResultString;
                if (String.IsNullOrEmpty(referenceProfileEncoded)) throw new Exception("Unknown reference file profile; retain evidence");
                referenceProfileKnown = true;
                if (referenceProfileEncoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(referenceProfileEncoded);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(referenceProfileEncoded));
            } finally {
                if (referenceProfileKnown) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(referenceProfileBlock.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "commit_serializer_profile") {
            string serializerProfileToken = Text(request, "token");
            if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(serializerProfileToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact isolated original serializer material required");
            var serializerProfileBlock = AscetStructureRead.Compile(component, "bde_commit_serializer_profile.st"); bool serializerProfileKnown = true;
            try {
                var serializerProfileCall = new InstanceMethodCall(serializerProfileBlock, "value:value:value:", component);
                serializerProfileCall.appendParameter(component); serializerProfileCall.appendParameter(serializerProfileToken); serializerProfileCall.appendParameter(database);
                serializerProfileKnown = false; component.call(serializerProfileCall); string serializerProfileEncoded = serializerProfileCall.ResultString;
                if (String.IsNullOrEmpty(serializerProfileEncoded)) throw new Exception("Unknown serializer profile; retain evidence");
                serializerProfileKnown = true;
                if (serializerProfileEncoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(serializerProfileEncoded);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(serializerProfileEncoded));
            } finally {
                if (serializerProfileKnown) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(serializerProfileBlock.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "commit_serializer_configuration") {
            string serializerConfigurationToken = Text(request, "token");
            if (diagram != "Main" || !path.TrimStart('\\').StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(serializerConfigurationToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact isolated original serializer material required");
            var serializerConfigurationBlock = AscetStructureRead.Compile(component, "bde_serializer_configuration.st"); bool serializerConfigurationKnown = true;
            try {
                var serializerConfigurationCall = new InstanceMethodCall(serializerConfigurationBlock, "value:value:value:", component);
                serializerConfigurationCall.appendParameter(component); serializerConfigurationCall.appendParameter(serializerConfigurationToken); serializerConfigurationCall.appendParameter(database);
                serializerConfigurationKnown = false; component.call(serializerConfigurationCall); string serializerConfigurationEncoded = serializerConfigurationCall.ResultString;
                if (String.IsNullOrEmpty(serializerConfigurationEncoded)) throw new Exception("Unknown serializer configuration; retain original material");
                serializerConfigurationKnown = true;
                if (serializerConfigurationEncoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(serializerConfigurationEncoded);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(serializerConfigurationEncoded));
            } finally {
                if (serializerConfigurationKnown) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(serializerConfigurationBlock.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "commit_resources") {
            string resourceToken = Text(request, "token"), resourceAction = Text(request, "action");
            if (diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(resourceToken, @"^edit_[0-9a-f]{64}$")
                    || (resourceAction != "inspect" && resourceAction != "check" && resourceAction != "audit" && resourceAction != "attempt"))
                throw new Exception("Exact original Main commit material query required");
            if (resourceAction == "attempt") {
                var attemptBlock = AscetStructureRead.Compile(component, "bde_commit_attempt.st");
                try {
                    var attemptCall = new InstanceMethodCall(attemptBlock, "value:value:value:", component);
                    attemptCall.appendParameter(component); attemptCall.appendParameter(resourceToken); attemptCall.appendParameter(database);
                    referenceFileQueryUnknown = true; component.call(attemptCall);
                    string attemptEncoded = attemptCall.ResultString;
                    if (String.IsNullOrEmpty(attemptEncoded)) throw new Exception("Unknown capture attempt query; retain original material");
                    if (attemptEncoded.StartsWith("BDE_", StringComparison.Ordinal)) {
                        referenceFileQueryUnknown = false; throw new Exception(attemptEncoded);
                    }
                    var attemptDecoded = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(attemptEncoded));
                    referenceFileQueryUnknown = false; return attemptDecoded;
                } finally {
                    if (!referenceFileQueryUnknown) {
                        var release = component.createControlMessageCall("destroyObjectForId:");
                        release.appendParameter(attemptBlock.getIdentifier()); component.call(release); release.getResultVoid();
                    }
                }
            }
            var resourceBlocks = new List<Identifiable>(); bool resourceReplyKnown = true;
            try {
                var collector = BuildCommitResourceCollector(resourceBlocks);
                var currentModels = AscetStructureRead.Compile(component, "bde_commit_registered_models_current.st"); resourceBlocks.Add(currentModels);
                var currentControl = AscetStructureRead.Compile(component, "bde_commit_control.st"); resourceBlocks.Add(currentControl);
                var referenceDecoder = AscetStructureRead.Compile(component, "bde_commit_reference_record.st"); resourceBlocks.Add(referenceDecoder);
                var reciprocalFactory = AscetStructureRead.Compile(component, "bde_commit_reciprocal_current.st"); resourceBlocks.Add(reciprocalFactory);
                var reciprocalBind = new InstanceMethodCall(reciprocalFactory, "value:", component);
                reciprocalBind.appendParameter(referenceDecoder); component.call(reciprocalBind);
                var currentReciprocal = reciprocalBind.ResultRemoteObject; resourceBlocks.Add(currentReciprocal);
                var currentHelpers = component.createClassMethodCall("Array", "with:with:with:with:");
                currentHelpers.appendParameter(collector); currentHelpers.appendParameter(currentModels);
                currentHelpers.appendParameter(currentControl); currentHelpers.appendParameter(currentReciprocal); component.call(currentHelpers);
                var currentPair = currentHelpers.ResultRemoteObject; resourceBlocks.Add(currentPair);
                var resourceQueryFactory = AscetStructureRead.Compile(component, "bde_commit_status.st"); resourceBlocks.Add(resourceQueryFactory);
                var resourceBind = new InstanceMethodCall(resourceQueryFactory, "value:", component);
                resourceBind.appendParameter(currentPair); component.call(resourceBind);
                var query = resourceBind.ResultRemoteObject; resourceBlocks.Add(query);
                var queryCall = new InstanceMethodCall(query, "value:value:value:", component);
                queryCall.appendParameter(component); queryCall.appendParameter(new [] { resourceAction, resourceToken });
                queryCall.appendParameter(database); resourceReplyKnown = false; component.call(queryCall);
                string resourceEncoded = queryCall.ResultString;
                if (String.IsNullOrEmpty(resourceEncoded)) throw new Exception("Unknown retained resource query; preserve material");
                resourceReplyKnown = true;
                if (resourceEncoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(resourceEncoded);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(resourceEncoded));
            } finally {
                if (resourceReplyKnown) for (int i = resourceBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(resourceBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "validate_managed_topology_inverse" || command == "managed_topology_inverse")
            return ManagedTopology(request, false);
        if (command == "field_failure_compensation_status") return FieldFailureCompensationStatus(request);
        if (command == "topology_owned_head_snapshot") {
            string snapshotToken = Text(request, "token"), snapshotOwner = Text(request, "owner"), snapshotState = Text(request, "state");
            foreach (string id in new [] { snapshotToken, snapshotOwner })
                if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact topology history identities required");
            if (snapshotToken == snapshotOwner || (snapshotState != "applied" && snapshotState != "reverted") || diagram != "Main")
                throw new Exception("Distinct ordinary Main topology owner and terminal state required");
            var snapshotBlock = AscetStructureRead.Compile(component, "bde_topology_owned_head_snapshot.st");
            try {
                var snapshotCall = new InstanceMethodCall(snapshotBlock, "value:value:", component);
                snapshotCall.appendParameter(component); snapshotCall.appendParameter(new [] { snapshotToken, snapshotOwner, snapshotState });
                component.call(snapshotCall); string snapshotValue = snapshotCall.ResultString;
                if (snapshotValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(snapshotValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(snapshotValue));
            } finally {
                var snapshotRelease = component.createControlMessageCall("destroyObjectForId:");
                snapshotRelease.appendParameter(snapshotBlock.getIdentifier()); component.call(snapshotRelease); snapshotRelease.getResultVoid();
            }
        }
        if (command == "connect_history_compile") return ConnectHistory(request, true);
        if (command == "connect_history") return ConnectHistory(request, false);
        if (command == "connect_material") return ConnectMaterial(request);
        if (command == "enum_definition_inventory") {
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal))
                throw new Exception("Fixed isolated enum library definition inventory only");
            string enumName = request.ContainsKey("name") ? Text(request, "name") : "";
            if (enumName != "" && !System.Text.RegularExpressions.Regex.IsMatch(enumName, @"^[A-Za-z_][A-Za-z0-9_]{0,63}$"))
                throw new Exception("Exact bounded existing enumeration name required");
            var enumFolder = database.GetFolder("BDE_Tool_Experiments");
            Identifiable inventory = null;
            try {
                if (enumFolder == null || enumFolder.nullHandle()) throw new Exception("Isolated enum folder missing");
                inventory = AscetStructureRead.Compile(component, "bde_enum_definition_inventory.st");
                var enumInventoryCall = new InstanceMethodCall(inventory, "value:value:value:", component);
                enumInventoryCall.appendParameter(component); enumInventoryCall.appendParameter(enumFolder); enumInventoryCall.appendParameter(enumName);
                component.call(enumInventoryCall); string enumInventoryValue = enumInventoryCall.ResultString;
                if (enumInventoryValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(enumInventoryValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(enumInventoryValue));
            } finally {
                if (inventory != null) {
                    var destroy = component.createControlMessageCall("destroyObjectForId:");
                    destroy.appendParameter(inventory.getIdentifier()); component.call(destroy); destroy.getResultVoid();
                }
                if (enumFolder != null) { enumFolder.finalize(); GC.SuppressFinalize(enumFolder); }
            }
        }
        if (command == "create_material_compile") return CreateMaterial(request, true);
        if (command == "create_material") return CreateMaterial(request, false);
        if (command == "create_history_compile") return CreateHistory(request, true);
        if (command == "create_history") return CreateHistory(request, false);
        if (command == "create_finalize_compile") return CreateHistory(request, true, true);
        if (command == "create_finalize") return CreateHistory(request, false, true);
#if BDE_MAIN_WORKFLOW_EVAL
        if (command == "message_before_study") return MessageBeforeStudy(request);
        if (command == "commit_models_diff_private") return CommitModelsDiffPrivate();
        if (command == "commit_control_diff_private") return CommitControlDiffPrivate(request);
        if (command == "commit_reference_private") return CommitReferencePrivate(request);
        if (command == "message_material_diagnostic") return MessageMaterialDiagnostic(request, false);
        if (command == "message_material_diagnostic_compile") return MessageMaterialDiagnostic(request, true);
        if (command == "message_declaration_inventory") {
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal))
                throw new Exception("Fixed isolated Module message inventory only");
            var messageInventory = AscetStructureRead.Compile(component, "bde_message_declaration_inventory.st");
            try {
                var messageInventoryCall = new InstanceMethodCall(messageInventory, "value:", component);
                messageInventoryCall.appendParameter(component); component.call(messageInventoryCall);
                string messageInventoryValue = messageInventoryCall.ResultString;
                if (messageInventoryValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(messageInventoryValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(messageInventoryValue));
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(messageInventory.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "enum_before_study") return EnumBeforeStudy(request);
        if (command == "enum_history_terminal_certificate") {
            string certToken = Text(request, "token"), certResult = Text(request, "result_change_id"), certMode = Text(request, "action");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || Environment.GetEnvironmentVariable("ASCET_BD_ENUM_REFERENCE_REPAIR") != "exact_v1"
                    || !System.Text.RegularExpressions.Regex.IsMatch(certToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(certResult, @"^edit_[0-9a-f]{64}$")
                    || certToken == certResult || (certMode != "inspect" && certMode != "certify"))
                throw new Exception("Exact isolated original Enum metadata certificate required");
            var certBlocks = new List<Identifiable>();
            try {
                Func<string, Identifiable> compile = name => { var value = AscetStructureRead.Compile(component, name); certBlocks.Add(value); return value; };
                var sourceReader = compile("bde_native_source_images.st"); var exporter = compile("bde_frozen_source_evidence.st");
                var certOrder = compile("bde_parent_order_evidence.st"); var certDrawingFactory = compile("bde_drawing_order_evidence.st");
                var drawingBind = new InstanceMethodCall(certDrawingFactory, "value:", component);
                drawingBind.appendParameter(certOrder); component.call(drawingBind); var certDrawing = drawingBind.ResultRemoteObject; certBlocks.Add(certDrawing);
                var certGuard = compile("bde_enum_history_guard.st");
                var array = component.createClassMethodCall("Array", "with:with:with:with:");
                array.appendParameter(sourceReader); array.appendParameter(exporter); array.appendParameter(certOrder); array.appendParameter(certDrawing); component.call(array);
                var firstHelpers = array.ResultRemoteObject; certBlocks.Add(firstHelpers);
                var extend = new InstanceMethodCall(firstHelpers, "copyWith:", component); extend.appendParameter(certGuard); component.call(extend);
                var certHelpers = extend.ResultRemoteObject; certBlocks.Add(certHelpers);
                var certFactory = compile("bde_enum_history_terminal_certificate.st"); var certBind = new InstanceMethodCall(certFactory, "value:", component);
                certBind.appendParameter(certHelpers); component.call(certBind); var certBlock = certBind.ResultRemoteObject; certBlocks.Add(certBlock);
                var certCall = new InstanceMethodCall(certBlock, "value:value:", component);
                certCall.appendParameter(component); certCall.appendParameter(new [] { certMode, certToken, certResult }); component.call(certCall);
                string certValue = certCall.ResultString;
                if (certValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(certValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(certValue));
            } finally {
                for (int i = certBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(certBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "enum_reference_sync") {
            string syncToken = Text(request, "token"), syncResult = Text(request, "result_change_id"),
                syncMode = Text(request, "action"), syncSignature = Text(request, "signature");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || Environment.GetEnvironmentVariable("ASCET_BD_ENUM_REFERENCE_REPAIR") != "exact_v1"
                    || !System.Text.RegularExpressions.Regex.IsMatch(syncToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(syncResult, @"^edit_[0-9a-f]{64}$")
                    || syncToken == syncResult || Array.IndexOf(new [] { "prepare", "inspect_prepared", "execute", "status" }, syncMode) < 0
                    || (syncMode == "execute" ? syncSignature != syncResult + "/r1" : syncSignature != ""))
                throw new Exception("Fixed isolated unknown Enum exact reference repair required");
            var syncBlocks = new List<Identifiable>();
            try {
                Func<string, Identifiable> compile = name => { var value = AscetStructureRead.Compile(component, name); syncBlocks.Add(value); return value; };
                var order = compile("bde_native_field_order_plan.st");
                var patchFactory = compile("bde_native_field_patch.st");
                var patchBind = new InstanceMethodCall(patchFactory, "value:", component); patchBind.appendParameter(order); component.call(patchBind);
                var nativePatch = patchBind.ResultRemoteObject; syncBlocks.Add(nativePatch);
                var cache = compile("bde_declaration_cache_guard.st"); var guard = compile("bde_enum_history_guard.st");
                var array = component.createClassMethodCall("Array", "with:with:with:");
                array.appendParameter(nativePatch); array.appendParameter(cache); array.appendParameter(guard); component.call(array);
                var helpers = array.ResultRemoteObject; syncBlocks.Add(helpers);
                var syncFactory = compile("bde_enum_reference_sync.st"); var bind = new InstanceMethodCall(syncFactory, "value:", component);
                bind.appendParameter(helpers); component.call(bind); var executor = bind.ResultRemoteObject; syncBlocks.Add(executor);
                var syncCall = new InstanceMethodCall(executor, "value:value:", component);
                syncCall.appendParameter(component); syncCall.appendParameter(new [] { syncMode, syncToken, syncResult, syncSignature }); component.call(syncCall);
                string syncValue = syncCall.ResultString;
                if (syncValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(syncValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(syncValue));
            } finally {
                for (int i = syncBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(syncBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "enum_history_failure_diagnostic") {
            string failureToken = Text(request, "token"), failureResult = Text(request, "result_change_id");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(failureToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(failureResult, @"^edit_[0-9a-f]{64}$")
                    || failureToken == failureResult)
                throw new Exception("Exact isolated original unknown Enum execution required");
            var probe = AscetStructureRead.Compile(component, "bde_enum_history_failure_probe.st");
            Identifiable failureGuard = null;
            try {
                failureGuard = AscetStructureRead.Compile(component, "bde_enum_history_guard.st");
                var probeCall = new InstanceMethodCall(probe, "value:value:value:", component);
                probeCall.appendParameter(component); probeCall.appendParameter(new [] { failureToken, failureResult });
                probeCall.appendParameter(failureGuard);
                component.call(probeCall); string probeValue = probeCall.ResultString;
                if (probeValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(probeValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(probeValue));
            } finally {
                if (failureGuard != null) {
                    var guardRelease = component.createControlMessageCall("destroyObjectForId:");
                    guardRelease.appendParameter(failureGuard.getIdentifier()); component.call(guardRelease); guardRelease.getResultVoid();
                }
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(probe.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "connect_source_images") {
            string imageToken = Text(request, "token"), owner = Text(request, "owner"), state = Text(request, "state");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(imageToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(owner, @"^edit_[0-9a-f]{64}$")
                    || (state != "applied" && state != "reverted"))
                throw new Exception("Fixed isolated retained connect diagnostic required");
            var blocks = new List<Identifiable>();
            try {
                Func<string, Identifiable> compile = name => { var value = AscetStructureRead.Compile(component, name); blocks.Add(value); return value; };
                var native = compile("bde_native_graph_current.st");
                var source = compile("bde_native_source_images.st");
                var exporter = compile("bde_frozen_source_evidence.st");
                var imageFactory = compile("bde_connect_source_images.st");
                var array = component.createClassMethodCall("Array", "with:with:with:");
                array.appendParameter(native); array.appendParameter(source); array.appendParameter(exporter); component.call(array);
                var helpers = array.ResultRemoteObject; blocks.Add(helpers);
                var bind = new InstanceMethodCall(imageFactory, "value:", component); bind.appendParameter(helpers); component.call(bind);
                var bound = bind.ResultRemoteObject; blocks.Add(bound);
                var imageCall = new InstanceMethodCall(bound, "value:value:", component);
                imageCall.appendParameter(component); imageCall.appendParameter(new [] { imageToken, owner, state }); component.call(imageCall);
                string text = imageCall.ResultString;
                if (text.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(text);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(text));
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "connect_source_repair") return ConnectSourceRepair(request);
        if (command == "connect_source_repair_certificate") return ConnectSourceRepair(request, true);
        if (command == "connect_local_plan_compile" || command == "connect_local_plan") {
            string localToken = null, owner = null, state = null;
            if (command == "connect_local_plan") {
                localToken = Text(request, "token"); owner = Text(request, "owner"); state = Text(request, "state");
                if (!System.Text.RegularExpressions.Regex.IsMatch(localToken, @"^edit_[0-9a-f]{64}$") ||
                        !System.Text.RegularExpressions.Regex.IsMatch(owner, @"^edit_[0-9a-f]{64}$") ||
                        (state != "applied" && state != "reverted"))
                    throw new Exception("Exact retained connect owner/state required");
            }
            var blocks = new List<Identifiable>();
            try {
                var planner = BuildConnectLocalPlanner(blocks);
                var frozen = AscetStructureRead.Compile(component, "bde_frozen_source_evidence.st"); blocks.Add(frozen);
                var probe = AscetStructureRead.Compile(component, "bde_connect_local_plan_probe.st"); blocks.Add(probe);
                var bind = new InstanceMethodCall(probe, "value:value:", component);
                bind.appendParameter(planner); bind.appendParameter(frozen); component.call(bind);
                var bound = bind.ResultRemoteObject; blocks.Add(bound);
                if (component.getClassName(bound) != "BlockContextTemplate")
                    throw new Exception("Fixed local connect export binding failed");
                if (command == "connect_local_plan_compile") return new {
                    profile = "native_connect_local_plan_v1", compiled = true,
                    model_setters_called = 0, store_called = false, write_authorized = false };
                var localPlanCall = new InstanceMethodCall(bound, "value:value:", component);
                localPlanCall.appendParameter(component); localPlanCall.appendParameter(new [] { localToken, owner, state }); component.call(localPlanCall);
                string value = localPlanCall.ResultString;
                if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new PreconditionConflict(value);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "topology_managed_compile") return ManagedTopology(request, true);
        if (command == "topology_unstarted_recovery") {
            if (diagram != "Main" || Environment.GetEnvironmentVariable("ASCET_BD_MANAGED_TOPOLOGY_TERMINAL_CERTIFICATION") != "metadata_v1")
                throw new Exception("Explicit isolated unstarted metadata recovery profile required");
            string action = Text(request, "action"), unstartedToken = Text(request, "token"), head = Text(request, "head_change_id"),
                state = Text(request, "expected_state"), result = Text(request, "result_change_id"), witness = Text(request, "witness_token");
            foreach (string id in new [] { unstartedToken, head, result })
                if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact unstarted history identities required");
            if (unstartedToken == head || unstartedToken == result || head == result
                    || Array.IndexOf(new [] { "inspect", "abandon", "inspect_abandoned", "finish_abandoned" }, action) < 0
                    || (state != "applied" && state != "reverted") || !System.Text.RegularExpressions.Regex.IsMatch(witness, @"^main_[0-9a-f]{64}$"))
                throw new Exception("Exact fixed unstarted action/state/witness required");
            var recoveryBlock = AscetStructureRead.Compile(component, "bde_topology_unstarted_recovery.st");
            try {
                var recoveryCall = new InstanceMethodCall(recoveryBlock, "value:value:", component);
                recoveryCall.appendParameter(component); recoveryCall.appendParameter(new [] { action, unstartedToken, head, state, result, witness });
                component.call(recoveryCall); string value = recoveryCall.ResultString;
                if (value.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(value);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(value));
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(recoveryBlock.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "topology_terminal_recovery_compile") return TopologyTerminalRecovery(request, true);
        if (command == "topology_terminal_recovery") return TopologyTerminalRecovery(request, false);
        if (command == "topology_managed_inspect") {
            var inspector = AscetStructureRead.Compile(component, "bde_topology_managed_inspect.st");
            try {
                var inspectionCall = new InstanceMethodCall(inspector, "value:value:", component);
                inspectionCall.appendParameter(component); inspectionCall.appendParameter(Text(request, "token")); component.call(inspectionCall);
                string inspectedValue = inspectionCall.ResultString;
                if (inspectedValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(inspectedValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(inspectedValue));
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(inspector.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "rewire_inverse_inspect") {
            string retainedToken = Text(request, "token");
            if (diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(retainedToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact retained Main rewire token required");
            var blocks = new List<Identifiable>();
            try {
                var copier = AscetStructureRead.Compile(component, "bde_observation_copy.st"); blocks.Add(copier);
                var rewireValuesFactory = AscetStructureRead.Compile(component, "bde_field_inverse_values.st"); blocks.Add(rewireValuesFactory);
                var valuesBind = new InstanceMethodCall(rewireValuesFactory, "value:", component);
                valuesBind.appendParameter(copier); component.call(valuesBind);
                var planner = valuesBind.ResultRemoteObject; blocks.Add(planner);
                var rewireProbeFactory = AscetStructureRead.Compile(component, "bde_rewire_inverse_inspect.st"); blocks.Add(rewireProbeFactory);
                var bind = new InstanceMethodCall(rewireProbeFactory, "value:", component);
                bind.appendParameter(planner); component.call(bind);
                var probe = bind.ResultRemoteObject; blocks.Add(probe);
                var inspect = new InstanceMethodCall(probe, "value:value:", component);
                inspect.appendParameter(component); inspect.appendParameter(retainedToken); component.call(inspect);
                string evidence = inspect.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "main_declaration_images") {
            string nativeToken = Text(request, "token"), studyToken = Text(request, "study_token"), imageAction = Text(request, "action");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(nativeToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(studyToken, @"^decl_[0-9a-f]{64}$")
                    || Array.IndexOf(new [] { "capture", "check", "export", "release" }, imageAction) < 0)
                throw new Exception("Fixed isolated retained declaration image request required");
            var imageBlocks = new List<Identifiable>();
            try {
                var reader = AscetStructureRead.Compile(component, "bde_declaration_images.st"); imageBlocks.Add(reader);
                var declarationImageFactory = AscetStructureRead.Compile(component, "bde_create_declaration_images_probe.st"); imageBlocks.Add(declarationImageFactory);
                var bind = new InstanceMethodCall(declarationImageFactory, "value:", component);
                bind.appendParameter(reader); component.call(bind);
                var probe = bind.ResultRemoteObject; imageBlocks.Add(probe);
                var declarationImageCall = new InstanceMethodCall(probe, "value:value:", component);
                declarationImageCall.appendParameter(component);
                declarationImageCall.appendParameter(new [] { nativeToken, studyToken, imageAction }); component.call(declarationImageCall);
                string evidence = declarationImageCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = imageBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(imageBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "main_declaration_inventory") {
            string declarationToken = Text(request, "token");
            if (diagram != "Main" || !path.StartsWith("BDE_Tool_Experiments\\Trial_", StringComparison.Ordinal)
                    || !System.Text.RegularExpressions.Regex.IsMatch(declarationToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Fixed isolated retained declaration token required");
            var declarationProbe = AscetStructureRead.Compile(component, "bde_create_declaration_probe.st");
            try {
                var inventoryCall = new InstanceMethodCall(declarationProbe, "value:value:", component);
                inventoryCall.appendParameter(component); inventoryCall.appendParameter(declarationToken); component.call(inventoryCall);
                string declarationEvidence = inventoryCall.ResultString;
                if (declarationEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(declarationEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(declarationEvidence));
            } finally {
                var releaseDeclaration = component.createControlMessageCall("destroyObjectForId:");
                releaseDeclaration.appendParameter(declarationProbe.getIdentifier()); component.call(releaseDeclaration); releaseDeclaration.getResultVoid();
            }
        }
        if (command == "main_source_material_private") {
            if (diagram != "Main") throw new Exception("Fixed Main private source material required");
            var materialBlocks = new List<Identifiable>();
            try {
                var images = AscetStructureRead.Compile(component, "bde_native_source_images.st"); materialBlocks.Add(images);
                var order = AscetStructureRead.Compile(component, "bde_native_field_order_plan.st"); materialBlocks.Add(order);
                var patchFactory = AscetStructureRead.Compile(component, "bde_native_field_patch.st"); materialBlocks.Add(patchFactory);
                var bindPatch = new InstanceMethodCall(patchFactory, "value:", component);
                bindPatch.appendParameter(order); component.call(bindPatch);
                var nativePatch = bindPatch.ResultRemoteObject; materialBlocks.Add(nativePatch);
                var same = AscetStructureRead.Compile(component, "bde_source_graph_equal.st"); materialBlocks.Add(same);
                var dump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); materialBlocks.Add(dump);
                var privateSourceFactory = AscetStructureRead.Compile(component, "bde_source_material_private.st"); materialBlocks.Add(privateSourceFactory);
                var makeHelpers = component.createClassMethodCall("Array", "with:with:with:with:");
                makeHelpers.appendParameter(images); makeHelpers.appendParameter(nativePatch);
                makeHelpers.appendParameter(same); makeHelpers.appendParameter(dump); component.call(makeHelpers);
                var helpers = makeHelpers.ResultRemoteObject; materialBlocks.Add(helpers);
                var bindProbe = new InstanceMethodCall(privateSourceFactory, "value:", component);
                bindProbe.appendParameter(helpers); component.call(bindProbe);
                var probe = bindProbe.ResultRemoteObject; materialBlocks.Add(probe);
                var inspect = new InstanceMethodCall(probe, "value:", component);
                inspect.appendParameter(component); component.call(inspect);
                string evidence = inspect.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = materialBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(materialBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "main_field_inverse_values_private" || command == "main_topology_inverse_values_private") {
            if (diagram != "Main") throw new Exception("Fixed Main private field observation required");
            var privateBlocks = new List<Identifiable>();
            try {
                var privateCopier = AscetStructureRead.Compile(component, "bde_observation_copy.st"); privateBlocks.Add(privateCopier);
                var privatePlannerFactory = AscetStructureRead.Compile(component,
                    command == "main_topology_inverse_values_private" ? "bde_topology_inverse_values.st" : "bde_field_inverse_values.st"); privateBlocks.Add(privatePlannerFactory);
                var privatePlannerBind = new InstanceMethodCall(privatePlannerFactory, "value:", component);
                privatePlannerBind.appendParameter(privateCopier); component.call(privatePlannerBind);
                var planner = privatePlannerBind.ResultRemoteObject; privateBlocks.Add(planner);
                var privateFieldFactory = AscetStructureRead.Compile(component,
                    command == "main_topology_inverse_values_private" ? "bde_topology_inverse_values_private.st" : "bde_field_inverse_values_private.st"); privateBlocks.Add(privateFieldFactory);
                var privateHelperCall = component.createClassMethodCall("Array", "with:with:");
                privateHelperCall.appendParameter(planner); privateHelperCall.appendParameter(privateCopier); component.call(privateHelperCall);
                var privateHelpers = privateHelperCall.ResultRemoteObject; privateBlocks.Add(privateHelpers);
                var bind = new InstanceMethodCall(privateFieldFactory, "value:", component);
                bind.appendParameter(privateHelpers); component.call(bind);
                var probe = bind.ResultRemoteObject; privateBlocks.Add(probe);
                var privateFieldCall = new InstanceMethodCall(probe, "value:", component);
                privateFieldCall.appendParameter(component); component.call(privateFieldCall);
                string evidence = privateFieldCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = privateBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(privateBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "main_staged_executor_compile") {
            if (Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR") != "staged_v1")
                throw new Exception("Fixed staged executor profile required");
            var staged = CompileEditor("apply");
            try {
                return new { profile = "fixed_structural_stages_v1", compiled = true,
                    definition_bound = false, operation_dispatched = false,
                    model_setters_called = 0, store_called = false };
            } finally {
                var releaseStaged = component.createControlMessageCall("destroyObjectForId:");
                releaseStaged.appendParameter(staged.getIdentifier()); component.call(releaseStaged); releaseStaged.getResultVoid();
            }
        }
        if (command == "main_current_source") {
            if (diagram != "Main") throw new Exception("Fixed Main persisted source observation required");
            var sourceBlocks = new List<Identifiable>();
            try {
                var nativeReader = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); sourceBlocks.Add(nativeReader);
                var sourceDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); sourceBlocks.Add(sourceDump);
                var sourceFactory = AscetStructureRead.Compile(component, "bde_main_current_source.st"); sourceBlocks.Add(sourceFactory);
                var sourceBundle = component.createClassMethodCall("Array", "with:with:");
                sourceBundle.appendParameter(nativeReader); sourceBundle.appendParameter(sourceDump); component.call(sourceBundle);
                var helpers = sourceBundle.ResultRemoteObject; sourceBlocks.Add(helpers);
                var sourceBind = new InstanceMethodCall(sourceFactory, "value:", component);
                sourceBind.appendParameter(helpers); component.call(sourceBind);
                var sourceProbe = sourceBind.ResultRemoteObject; sourceBlocks.Add(sourceProbe);
                var sourceCall = new InstanceMethodCall(sourceProbe, "value:", component);
                sourceCall.appendParameter(component); component.call(sourceCall);
                string sourceEvidence = sourceCall.ResultString;
                if (sourceEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(sourceEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(sourceEvidence));
            } finally {
                for (int i = sourceBlocks.Count - 1; i >= 0; --i) {
                    var releaseSource = component.createControlMessageCall("destroyObjectForId:");
                    releaseSource.appendParameter(sourceBlocks[i].getIdentifier()); component.call(releaseSource); releaseSource.getResultVoid();
                }
            }
        }
        if (command == "field_source_normalization_private" || command == "topology_source_normalization_private"
                || command == "topology_source_logical_private") {
            string normalizationToken = Text(request, "token");
            bool logicalSourceProbe = command == "topology_source_logical_private";
            bool structuralSourceProbe = command != "field_source_normalization_private";
            if ((structuralSourceProbe
                    ? Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1"
                    : Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") != "native_source_v1")
                    || diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(normalizationToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Fixed isolated private source normalization context required");
            var normalizationBlocks = new List<Identifiable>();
            try {
                var normalization = AscetStructureRead.Compile(component, "bde_source_identity_normalization.st"); normalizationBlocks.Add(normalization);
                var images = AscetStructureRead.Compile(component, "bde_native_source_images.st"); normalizationBlocks.Add(images);
                var same = AscetStructureRead.Compile(component, "bde_source_graph_equal.st"); normalizationBlocks.Add(same);
                var normalizationProbeFactory = AscetStructureRead.Compile(component, structuralSourceProbe
                    ? "bde_topology_source_normalization_private.st" : "bde_source_identity_normalization_private.st"); normalizationBlocks.Add(normalizationProbeFactory);
                var bundle = component.createClassMethodCall("Array", "with:with:with:");
                bundle.appendParameter(normalization); bundle.appendParameter(images); bundle.appendParameter(same); component.call(bundle);
                var helpers = bundle.ResultRemoteObject; normalizationBlocks.Add(helpers);
                if (structuralSourceProbe) {
                    var nativePatchTemplate = AscetStructureRead.Compile(component, "bde_native_field_patch.st"); normalizationBlocks.Add(nativePatchTemplate);
                    var nativeOrderReader = AscetStructureRead.Compile(component, "bde_native_field_order_plan.st"); normalizationBlocks.Add(nativeOrderReader);
                    var nativePatchBind = new InstanceMethodCall(nativePatchTemplate, "value:", component);
                    nativePatchBind.appendParameter(nativeOrderReader); component.call(nativePatchBind);
                    var nativePatch = nativePatchBind.ResultRemoteObject; normalizationBlocks.Add(nativePatch);
                    var structuralCorrespondence = AscetStructureRead.Compile(component, "bde_source_structural_correspondence.st"); normalizationBlocks.Add(structuralCorrespondence);
                    var sourceDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); normalizationBlocks.Add(sourceDump);
                    foreach (var helper in new [] {nativePatch, structuralCorrespondence, sourceDump}) {
                        var extend = new InstanceMethodCall(helpers, "copyWith:", component);
                        extend.appendParameter(helper); component.call(extend);
                        helpers = extend.ResultRemoteObject; normalizationBlocks.Add(helpers);
                    }
                    if (logicalSourceProbe) {
                        var logicalFactory = AscetStructureRead.Compile(component, "bde_source_logical_images.st"); normalizationBlocks.Add(logicalFactory);
                        var logicalBind = new InstanceMethodCall(logicalFactory, "value:value:", component);
                        logicalBind.appendParameter(structuralCorrespondence); logicalBind.appendParameter(same); component.call(logicalBind);
                        var logicalImages = logicalBind.ResultRemoteObject; normalizationBlocks.Add(logicalImages);
                        var frozenFactory = AscetStructureRead.Compile(component, "bde_frozen_image_merge.st"); normalizationBlocks.Add(frozenFactory);
                        var frozenBind = new InstanceMethodCall(frozenFactory, "value:", component);
                        frozenBind.appendParameter(nativeOrderReader); component.call(frozenBind);
                        var frozenMerge = frozenBind.ResultRemoteObject; normalizationBlocks.Add(frozenMerge);
                        foreach (var helper in new [] {logicalImages, frozenMerge}) {
                            var extend = new InstanceMethodCall(helpers, "copyWith:", component);
                            extend.appendParameter(helper); component.call(extend);
                            helpers = extend.ResultRemoteObject; normalizationBlocks.Add(helpers);
                        }
                    }
                }
                var bind = new InstanceMethodCall(normalizationProbeFactory, "value:", component);
                bind.appendParameter(helpers); component.call(bind);
                var probe = bind.ResultRemoteObject; normalizationBlocks.Add(probe);
                var inspect = new InstanceMethodCall(probe, "value:value:", component);
                inspect.appendParameter(component); inspect.appendParameter(normalizationToken); component.call(inspect);
                string evidence = inspect.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = normalizationBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(normalizationBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "field_source_inspect" || command == "field_source_alias_private") {
            string sourceToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(sourceToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact retained field source token required");
            Identifiable sourceDump = null, sourceFactory = null, sourceProbe = null, aliasPlanner = null;
            try {
                sourceDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st");
                sourceFactory = AscetStructureRead.Compile(component, command == "field_source_inspect"
                    ? "bde_field_source_probe.st" : "bde_field_source_alias_private.st");
                if (command == "field_source_alias_private") aliasPlanner = AscetStructureRead.Compile(component, "bde_field_source_alias_plan.st");
                var bindSource = new InstanceMethodCall(sourceFactory, aliasPlanner == null ? "value:" : "value:value:", component);
                bindSource.appendParameter(sourceDump); if (aliasPlanner != null) bindSource.appendParameter(aliasPlanner);
                component.call(bindSource); sourceProbe = bindSource.ResultRemoteObject;
                var inspectSource = new InstanceMethodCall(sourceProbe, "value:value:", component);
                inspectSource.appendParameter(component); inspectSource.appendParameter(sourceToken); component.call(inspectSource);
                string sourceEvidence = inspectSource.ResultString;
                if (sourceEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(sourceEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(sourceEvidence));
            } finally {
                foreach (var helper in new [] { sourceProbe, sourceFactory, sourceDump, aliasPlanner }) if (helper != null) {
                    var releaseSource = component.createControlMessageCall("destroyObjectForId:");
                    releaseSource.appendParameter(helper.getIdentifier()); component.call(releaseSource); releaseSource.getResultVoid();
                }
            }
        }
        if (command == "field_local_handoff_finish") {
            string fieldToken = Text(request, "token"), inverseId = Text(request, "inverse_id");
            if (Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") != "native_source_v1"
                    || diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(fieldToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(inverseId, @"^edit_[0-9a-f]{64}$") || fieldToken == inverseId)
                throw new Exception("Fixed isolated partial local material handoff required");
            var handoffFinish = AscetStructureRead.Compile(component, "bde_local_handoff_finish.st");
            try {
                var handoffCall = new InstanceMethodCall(handoffFinish, "value:value:value:", component);
                handoffCall.appendParameter(component); handoffCall.appendParameter(fieldToken);
                handoffCall.appendParameter(inverseId); component.call(handoffCall);
                string handoffEvidence = handoffCall.ResultString;
                if (handoffEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(handoffEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(handoffEvidence));
            } finally {
                var releaseHandoff = component.createControlMessageCall("destroyObjectForId:");
                releaseHandoff.appendParameter(handoffFinish.getIdentifier()); component.call(releaseHandoff);
                releaseHandoff.getResultVoid();
            }
        }
        if (command == "field_local_terminal_recover") {
            string fieldToken = Text(request, "token"), witnessToken = Text(request, "witness_token");
            if (Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") != "native_source_v1"
                    || diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(fieldToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(witnessToken, @"^main_[0-9a-f]{64}$"))
                throw new Exception("Fixed isolated local terminal recovery context required");
            var terminalRecovery = AscetStructureRead.Compile(component, "bde_local_literal_terminal_recovery.st");
            try {
                var terminalCall = new InstanceMethodCall(terminalRecovery, "value:value:value:", component);
                terminalCall.appendParameter(component); terminalCall.appendParameter(fieldToken);
                terminalCall.appendParameter(witnessToken); component.call(terminalCall);
                string terminalEvidence = terminalCall.ResultString;
                if (terminalEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(terminalEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(terminalEvidence));
            } finally {
                var releaseTerminal = component.createControlMessageCall("destroyObjectForId:");
                releaseTerminal.appendParameter(terminalRecovery.getIdentifier()); component.call(releaseTerminal);
                releaseTerminal.getResultVoid();
            }
        }
        if (command == "field_failure_compensation") {
            string fieldToken = Text(request, "token"), transaction = Text(request, "transaction"),
                witnessToken = Text(request, "witness_token"), action = Text(request, "action");
            if (!System.Text.RegularExpressions.Regex.IsMatch(fieldToken, @"^edit_[0-9a-f]{64}$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(transaction, @"^edit_[0-9a-f]{64}$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(witnessToken, @"^main_[0-9a-f]{64}$") ||
                fieldToken == transaction || (action != "inspect" && action != "prepare" && action != "check" && action != "apply"))
                throw new Exception("Exact distinct field compensation transaction required");
            var repairBlocks = new List<Identifiable>();
            try {
                var failureDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); repairBlocks.Add(failureDump);
                var failureFactory = AscetStructureRead.Compile(component, "bde_field_failure_compensation.st"); repairBlocks.Add(failureFactory);
                var failureBind = new InstanceMethodCall(failureFactory, "value:", component);
                failureBind.appendParameter(failureDump); component.call(failureBind);
                var failureRepair = failureBind.ResultRemoteObject; repairBlocks.Add(failureRepair);
                var failureCall = new InstanceMethodCall(failureRepair, "value:value:value:", component);
                failureCall.appendParameter(component); failureCall.appendParameter(fieldToken);
                failureCall.appendParameter(new [] { action, transaction, witnessToken, Text(request, "prepared_signature") });
                component.call(failureCall); string failureValue = failureCall.ResultString;
                if (failureValue.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(failureValue);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(failureValue));
            } finally {
                for (int i = repairBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(repairBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "topology_terminal_fidelity") {
            string fidelityToken = Text(request, "token"), transaction = Text(request, "transaction"),
                witnessToken = Text(request, "witness_token"), action = Text(request, "action");
            if (diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(fidelityToken, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(transaction, @"^edit_[0-9a-f]{64}$")
                    || !System.Text.RegularExpressions.Regex.IsMatch(witnessToken, @"^main_[0-9a-f]{64}$")
                    || transaction == fidelityToken || (action != "prepare" && action != "check" && action != "apply" && action != "inspect"))
                throw new Exception("Exact distinct retained topology fidelity transaction required");
            var fidelityBlocks = new List<Identifiable>();
            try {
                var order = AscetStructureRead.Compile(component, "bde_native_field_order_plan.st"); fidelityBlocks.Add(order);
                var patchFactory = AscetStructureRead.Compile(component, "bde_native_field_patch.st"); fidelityBlocks.Add(patchFactory);
                var patchBind = new InstanceMethodCall(patchFactory, "value:", component);
                patchBind.appendParameter(order); component.call(patchBind);
                var nativePatch = patchBind.ResultRemoteObject; fidelityBlocks.Add(nativePatch);
                var sourceSame = AscetStructureRead.Compile(component, "bde_source_graph_equal.st"); fidelityBlocks.Add(sourceSame);
                var sourceDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); fidelityBlocks.Add(sourceDump);
                var helperCall = component.createClassMethodCall("Array", "with:with:with:");
                helperCall.appendParameter(nativePatch); helperCall.appendParameter(sourceSame); helperCall.appendParameter(sourceDump);
                component.call(helperCall); var helpers = helperCall.ResultRemoteObject; fidelityBlocks.Add(helpers);
                var fidelityFactory = AscetStructureRead.Compile(component, "bde_topology_terminal_fidelity.st"); fidelityBlocks.Add(fidelityFactory);
                var bind = new InstanceMethodCall(fidelityFactory, "value:", component); bind.appendParameter(helpers); component.call(bind);
                var repair = bind.ResultRemoteObject; fidelityBlocks.Add(repair);
                var execute = new InstanceMethodCall(repair, "value:value:value:", component);
                execute.appendParameter(component); execute.appendParameter(fidelityToken);
                execute.appendParameter(new [] { action, transaction, witnessToken, Text(request, "prepared_signature") });
                component.call(execute); string evidence = execute.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = fidelityBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(fidelityBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "topology_owned_compile") {
            var blocks = new List<Identifiable>();
            try {
                var planner = BuildTopologyOwnedPlanner(blocks);
                blocks.Add(AscetStructureRead.Compile(component, "bde_frozen_source_evidence.st"));
                blocks.Add(AscetStructureRead.Compile(component, "bde_topology_owned_plan_probe.st"));
                return new Dictionary<string, object> {
                    { "profile", "actual_owned_topology_inverse_plan_v1" }, { "compiled", true },
                    { "model_setters_called", 0 }, { "store_called", false }, { "write_authorized", false }
                };
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "topology_owned_plan") {
            string ownedToken = Text(request, "token"), owner = Text(request, "owner"), state = Text(request, "state");
            if (!System.Text.RegularExpressions.Regex.IsMatch(ownedToken, @"^edit_[0-9a-f]{64}$") ||
                    !System.Text.RegularExpressions.Regex.IsMatch(owner, @"^edit_[0-9a-f]{64}$") ||
                    ownedToken == owner || (state != "applied" && state != "reverted"))
                throw new Exception("Exact distinct owned topology history required");
            var blocks = new List<Identifiable>();
            try {
                var planner = BuildTopologyOwnedPlanner(blocks);
                var dump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st"); blocks.Add(dump);
                var frozen = AscetStructureRead.Compile(component, "bde_frozen_source_evidence.st"); blocks.Add(frozen);
                var probe = AscetStructureRead.Compile(component, "bde_topology_owned_plan_probe.st"); blocks.Add(probe);
                var bind = new InstanceMethodCall(probe, "value:value:value:", component);
                bind.appendParameter(planner); bind.appendParameter(dump); bind.appendParameter(frozen); component.call(bind);
                var bound = bind.ResultRemoteObject; blocks.Add(bound);
                var ownedCall = new InstanceMethodCall(bound, "value:value:", component);
                ownedCall.appendParameter(component); ownedCall.appendParameter(new [] { ownedToken, owner, state }); component.call(ownedCall);
                string evidence = ownedCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                var reply = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
                return reply;
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "field_material_inspect" || command == "field_patch_private" || command == "retained_field_failure_probe" ||
                command == "topology_material_inspect") {
            string fieldToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(fieldToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact retained field token required");
            var fieldProbe = AscetStructureRead.Compile(component, command == "topology_material_inspect"
                ? "bde_topology_material_probe.st" : command == "field_patch_private"
                ? "bde_native_field_patch_private.st" : command == "retained_field_failure_probe"
                ? "bde_retained_field_failure_probe.st" : "bde_field_material_probe.st");
            try {
                var fieldCall = new InstanceMethodCall(fieldProbe, "value:value:", component);
                fieldCall.appendParameter(component); fieldCall.appendParameter(fieldToken); component.call(fieldCall);
                string fieldEvidence = fieldCall.ResultString;
                if (fieldEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(fieldEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(fieldEvidence));
            } finally {
                var fieldRelease = component.createControlMessageCall("destroyObjectForId:");
                fieldRelease.appendParameter(fieldProbe.getIdentifier()); component.call(fieldRelease); fieldRelease.getResultVoid();
            }
        }
        if (command == "main_configuration" || command == "main_overlay_status") {
            if (diagram != "Main") throw new Exception("Fixed Main presentation observer required");
            string presentationToken = command == "main_overlay_status" ? Text(request, "token") : null;
            if (presentationToken != null && !System.Text.RegularExpressions.Regex.IsMatch(presentationToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact actual diff identity required");
            var observer = AscetStructureRead.Compile(component, command == "main_configuration" ? "bde_class_configuration_read.st" : "bde_overlay.st");
            try {
                var observerCall = new InstanceMethodCall(observer, command == "main_configuration" ? "value:" : "value:value:value:", component);
                observerCall.appendParameter(component);
                if (presentationToken != null) {
                    observerCall.appendParameter("status|Main|" + presentationToken);
                    observerCall.appendParameter(new string[0]);
                }
                component.call(observerCall);
                string evidence = observerCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return command == "main_configuration" ? AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence)) : (object)evidence;
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(observer.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "main_readonly_witness") {
            string witnessToken = Text(request, "token"), witnessAction = Text(request, "action");
            if (diagram != "Main" || !System.Text.RegularExpressions.Regex.IsMatch(witnessToken, @"^main_[0-9a-f]{64}$") ||
                (witnessAction != "capture" && witnessAction != "check" && witnessAction != "export" && witnessAction != "release"))
                throw new Exception("Exact fixed Main read-only witness required");
            var witnessBlocks = new List<Identifiable>();
            try {
                var witnessCurrent = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); witnessBlocks.Add(witnessCurrent);
                var witnessFactory = AscetStructureRead.Compile(component, "bde_main_workflow_witness.st"); witnessBlocks.Add(witnessFactory);
                var witnessBind = new InstanceMethodCall(witnessFactory, "value:", component);
                witnessBind.appendParameter(witnessCurrent); component.call(witnessBind);
                var witness = witnessBind.ResultRemoteObject; witnessBlocks.Add(witness);
                var witnessCall = new InstanceMethodCall(witness, "value:value:", component);
                witnessCall.appendParameter(component); witnessCall.appendParameter(new [] { witnessAction, witnessToken }); component.call(witnessCall);
                string evidence = witnessCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = witnessBlocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(witnessBlocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
#endif
#if BDE_MOVE_RECOVERY_EVAL
        if (command == "retained_move_restore") {
            string sourceMove = Text(request, "token"), restoreMove = Text(request, "restoration_token"),
                actionMove = Text(request, "action");
            if (!System.Text.RegularExpressions.Regex.IsMatch(sourceMove, @"^edit_[0-9a-f]{64}$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(restoreMove, @"^edit_[0-9a-f]{64}$") ||
                sourceMove == restoreMove || (actionMove != "prepare" && actionMove != "check" &&
                actionMove != "execute" && actionMove != "inspect")) throw new Exception("Exact separate move restoration required");
            var moveBlocks = new List<Identifiable>();
            try {
                var moveCurrent = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); moveBlocks.Add(moveCurrent);
                var moveFactory = AscetStructureRead.Compile(component, "bde_retained_move_restore.st"); moveBlocks.Add(moveFactory);
                var moveBind = new InstanceMethodCall(moveFactory, "value:", component);
                moveBind.appendParameter(moveCurrent); component.call(moveBind);
                var moveRestore = moveBind.ResultRemoteObject; moveBlocks.Add(moveRestore);
                var moveCall = new InstanceMethodCall(moveRestore, "value:value:", component);
                moveCall.appendParameter(component); moveCall.appendParameter(new [] { actionMove, sourceMove,
                    restoreMove, actionMove == "prepare" ? "" : Text(request, "prepared_signature") });
                component.call(moveCall);
                string moveEvidence = moveCall.ResultString;
                if (moveEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(moveEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(moveEvidence));
            } finally {
                for (int i = moveBlocks.Count - 1; i >= 0; --i) {
                    var moveRelease = component.createControlMessageCall("destroyObjectForId:");
                    moveRelease.appendParameter(moveBlocks[i].getIdentifier()); component.call(moveRelease); moveRelease.getResultVoid();
                }
            }
        }
        if (command == "retained_move_probe") {
            string moveToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(moveToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact retained move token required");
            var moveProbe = AscetStructureRead.Compile(component, "bde_retained_move_probe.st");
            try {
                var inspectMove = new InstanceMethodCall(moveProbe, "value:value:", component);
                inspectMove.appendParameter(component); inspectMove.appendParameter(moveToken); component.call(inspectMove);
                string moveEvidence = inspectMove.ResultString;
                if (moveEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(moveEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(moveEvidence));
            } finally {
                var moveRelease = component.createControlMessageCall("destroyObjectForId:");
                moveRelease.appendParameter(moveProbe.getIdentifier()); component.call(moveRelease); moveRelease.getResultVoid();
            }
        }
#endif
#if BDE_SCOPE_LIFECYCLE_EVAL
        if (command == "scope_legacy_read") {
            string legacySource;
            using (var legacyStream = typeof(AscetStructureRead).Assembly.GetManifestResourceStream("bde_structure_read.st"))
            using (var legacyText = new StreamReader(legacyStream)) legacySource = legacyText.ReadToEnd();
            int legacyStart = legacySource.IndexOf("[:component :diagramName :targets |", StringComparison.Ordinal);
            int legacyEnd = legacySource.LastIndexOf("] value", StringComparison.Ordinal);
            if (legacyStart < 0 || legacyEnd <= legacyStart) throw new Exception("Fixed reader body boundary differs");
            legacySource = legacySource.Substring(legacyStart, legacyEnd - legacyStart);
            const string modernAcquisition = "registry := lifecycle value: component value: 'acquire' value: scope.";
            const string modernGeneration = "at: 'generation' put: (lifecycle value: component value: 'generation' value: scope)";
            const string modernCheckpoint = "(currentCertificate and: [((registry at: 'checkpointVersion' ifAbsent: [0]) = 2) and:";
            if (!legacySource.Contains(modernAcquisition) || !legacySource.Contains(modernGeneration) || !legacySource.Contains(modernCheckpoint))
                throw new Exception("Fixed legacy reader transformation differs");
            legacySource = legacySource.Replace(modernAcquisition,
                "registry := roots at: scope ifAbsentPut: [roots size >= 64 ifTrue: [component error: 'Structural scope registry full']. Dictionary new at: 'ids' put: IdentityDictionary new; at: 'counter' put: 0; yourself].");
            legacySource = legacySource.Replace(modernGeneration, "at: 'generation' put: ((registry at: 'generation' ifAbsent: [0]) + 1)");
            legacySource = legacySource.Replace(modernCheckpoint, "(((registry at: 'checkpointVersion' ifAbsent: [0]) = 2) and:");
            legacySource = legacySource.Replace("sameSource value: graphSource value: (registry at: 'checkpoint')]]]]]) ifTrue:",
                "sameSource value: graphSource value: (registry at: 'checkpoint')]]]]) ifTrue:");
            var legacyReader = AscetStructureRead.CompileSource(component, "fixed_legacy_scope_reader", legacySource);
            try { return AscetStructureRead.Read(component, legacyReader, diagram, new string[0]); }
            finally {
                var legacyRelease = component.createControlMessageCall("destroyObjectForId:");
                legacyRelease.appendParameter(legacyReader.getIdentifier()); component.call(legacyRelease); legacyRelease.getResultVoid();
            }
        }
        if (command == "scope_inventory" || command == "scope_policy_tests" || command == "scope_retire") {
            var scopeProbe = AscetStructureRead.Compile(component, "bde_scope_inventory.st");
            try {
                var scopeCall = new InstanceMethodCall(scopeProbe, "value:value:", component);
                scopeCall.appendParameter(component);
                if (command == "scope_retire") {
                    if (!(request["expected_generation"] is int) || (int)request["expected_generation"] <= 0)
                        throw new Exception("Exact positive scope generation required");
                    scopeCall.appendParameter(new [] {"retire", ((int)request["expected_generation"]).ToString()});
                } else scopeCall.appendParameter(command == "scope_inventory" ? "inventory" : "policy_tests");
                component.call(scopeCall);
                string scopeEvidence = scopeCall.ResultString;
                if (scopeEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(scopeEvidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(scopeEvidence));
            } finally {
                var scopeRelease = component.createControlMessageCall("destroyObjectForId:");
                scopeRelease.appendParameter(scopeProbe.getIdentifier()); component.call(scopeRelease); scopeRelease.getResultVoid();
            }
        }
        if (command == "scope_target_read") {
            string scopePath = Text(request, "component").Trim('\\');
            if (scopePath.Length > 2048 || !System.Text.RegularExpressions.Regex.IsMatch(scopePath, @"^[A-Za-z0-9_]+(?:\\[A-Za-z0-9_]+)+$"))
                throw new Exception("Exact read-only component path required");
            int slash = scopePath.LastIndexOf('\\');
            var scopeComponent = database.GetItemInFolder(scopePath.Substring(slash + 1), scopePath.Substring(0, slash)) as CodeComponent;
            if (scopeComponent == null || scopeComponent.nullHandle()) throw new Exception("Read-only scope component unavailable");
            try {
                if (scopeComponent.GetNameWithPath().Trim('\\') != scopePath) throw new Exception("Read-only scope path identity changed");
                if (request.ContainsKey("inspect_only") && request["inspect_only"] is bool && (bool)request["inspect_only"]) {
                    var kindProbe = AscetStructureRead.Compile(scopeComponent, "bde_scope_inventory.st");
                    try {
                        var kindCall = new InstanceMethodCall(kindProbe, "value:value:", scopeComponent);
                        kindCall.appendParameter(scopeComponent); kindCall.appendParameter("diagram_kind"); scopeComponent.call(kindCall);
                        string kindEvidence = kindCall.ResultString;
                        if (kindEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(kindEvidence);
                        return new { component = scopePath, oid = scopeComponent.GetOID(),
                            kind = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(kindEvidence)) };
                    } finally {
                        var kindRelease = scopeComponent.createControlMessageCall("destroyObjectForId:");
                        kindRelease.appendParameter(kindProbe.getIdentifier()); scopeComponent.call(kindRelease); kindRelease.getResultVoid();
                    }
                }
                return new { component = scopePath, oid = scopeComponent.GetOID(),
                    structure = AscetStructureRead.Read(scopeComponent, reader, "Main", new string[0]) };
            } finally { scopeComponent.finalize(); GC.SuppressFinalize(scopeComponent); }
        }
#endif
#if BDE_DRAWING_LINEAGE_EVAL
        if (command == "attached_drawing_order") {
            string repairToken = Text(request, "restoration_token"), action = Text(request, "action");
            if (!System.Text.RegularExpressions.Regex.IsMatch(repairToken, @"^edit_[0-9a-f]{64}$") ||
                (action != "probe" && action != "prepare" && action != "check" && action != "execute" && action != "inspect"))
                throw new Exception("Exact attached restoration token/action required");
            var orderBlocks = new List<Identifiable>();
            try {
                var orderCurrent = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); orderBlocks.Add(orderCurrent);
                var attachedFactory = AscetStructureRead.Compile(component, "bde_attached_drawing_order.st"); orderBlocks.Add(attachedFactory);
                var attachedBind = new InstanceMethodCall(attachedFactory, "value:", component);
                attachedBind.appendParameter(orderCurrent); component.call(attachedBind);
                var attachedBlock = attachedBind.ResultRemoteObject; orderBlocks.Add(attachedBlock);
                string[] orderArguments;
                if (action == "prepare") {
                    var physicalRefs = Array.ConvertAll((object[])request["physical"], value => (string)value);
                    var drawingRefs = Array.ConvertAll((object[])request["drawing"], value => (string)value);
                    foreach (var refs in new [] {physicalRefs, drawingRefs}) foreach (string value in refs)
                        if (!System.Text.RegularExpressions.Regex.IsMatch(value, @"^[ne](0|[1-9][0-9]*)$"))
                            throw new Exception("Exact attached graphical references required");
                    orderArguments = new [] {action, repairToken, String.Join(",", physicalRefs), String.Join(",", drawingRefs)};
                } else orderArguments = new [] {action, repairToken, action == "probe" || action == "inspect" ? "" : Text(request, "prepared_signature")};
                var orderCall = new InstanceMethodCall(attachedBlock, "value:value:", component);
                orderCall.appendParameter(component); orderCall.appendParameter(orderArguments); component.call(orderCall);
                string attachedEvidence = orderCall.ResultString;
                if (attachedEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(attachedEvidence);
                var orderResult = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(attachedEvidence));
                string currentKey = action == "probe" ? "raw_current" : "current";
                orderResult[action == "probe" ? "raw_current" : "graphical_current"] =
                    AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)orderResult[currentKey]));
                if (orderResult.ContainsKey("actual") && orderResult["actual"] != null)
                    orderResult["graphical_actual"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)orderResult["actual"]));
                return orderResult;
            } finally {
                for (int i = orderBlocks.Count - 1; i >= 0; --i) {
                    var orderRelease = component.createControlMessageCall("destroyObjectForId:");
                    orderRelease.appendParameter(orderBlocks[i].getIdentifier()); component.call(orderRelease); orderRelease.getResultVoid();
                }
            }
        }
        if (command == "retained_layout_restore") {
            string sourceToken = Text(request, "token"), restorationToken = Text(request, "restoration_token"), action = Text(request, "action");
            if (!System.Text.RegularExpressions.Regex.IsMatch(sourceToken, @"^edit_[0-9a-f]{64}$") ||
                !System.Text.RegularExpressions.Regex.IsMatch(restorationToken, @"^edit_[0-9a-f]{64}$") ||
                sourceToken == restorationToken || (action != "prepare" && action != "prepare_completion" && action != "check" && action != "execute" && action != "inspect"))
                throw new Exception("Exact separate restoration source/action required");
            var retainedBlocks = new List<Identifiable>();
            try {
                var retainedCurrent = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); retainedBlocks.Add(retainedCurrent);
                var retainedFactory = AscetStructureRead.Compile(component, "bde_retained_layout_restore.st"); retainedBlocks.Add(retainedFactory);
                var retainedBind = new InstanceMethodCall(retainedFactory, "value:", component);
                retainedBind.appendParameter(retainedCurrent); component.call(retainedBind);
                var retainedRestore = retainedBind.ResultRemoteObject; retainedBlocks.Add(retainedRestore);
                string[] retainedArguments;
                if (action == "prepare") {
                    var physicalRefs = Array.ConvertAll((object[])request["physical"], value => (string)value);
                    var drawingRefs = Array.ConvertAll((object[])request["drawing"], value => (string)value);
                    foreach (var refs in new [] { physicalRefs, drawingRefs }) foreach (string value in refs)
                        if (!System.Text.RegularExpressions.Regex.IsMatch(value, @"^[ne](0|[1-9][0-9]*)$"))
                            throw new Exception("Exact existing graphical references required");
                    retainedArguments = new [] { action, sourceToken, restorationToken, String.Join(",", physicalRefs), String.Join(",", drawingRefs) };
                } else retainedArguments = new [] { action, sourceToken, restorationToken,
                    Text(request, action == "prepare_completion" ? "partial_restoration_token" : "prepared_signature") };
                var retainedCall = new InstanceMethodCall(retainedRestore, "value:value:", component);
                retainedCall.appendParameter(component); retainedCall.appendParameter(retainedArguments); component.call(retainedCall);
                string retainedEvidence = retainedCall.ResultString;
                if (retainedEvidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(retainedEvidence);
                var retainedResult = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(retainedEvidence));
                retainedResult["graphical_current"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)retainedResult["current"]));
                if (retainedResult["actual"] != null)
                    retainedResult["graphical_actual"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)retainedResult["actual"]));
                if (retainedResult.ContainsKey("combined_current") && retainedResult["combined_current"] != null) {
                    retainedResult["combined_graphical_current"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)retainedResult["combined_current"]));
                    retainedResult["combined_graphical_actual"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)retainedResult["combined_actual"]));
                }
                return retainedResult;
            } finally {
                for (int i = retainedBlocks.Count - 1; i >= 0; --i) {
                    var retainedRelease = component.createControlMessageCall("destroyObjectForId:");
                    retainedRelease.appendParameter(retainedBlocks[i].getIdentifier()); component.call(retainedRelease); retainedRelease.getResultVoid();
                }
            }
        }
        if (command == "drawing_lineage_probe") {
            string lineageToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(lineageToken, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact native token required");
            var blocks = new List<Identifiable>();
            try {
                var current = AscetStructureRead.Compile(component, "bde_native_graph_current.st"); blocks.Add(current);
                var lineageFactory = AscetStructureRead.Compile(component, "bde_drawing_lineage_probe.st"); blocks.Add(lineageFactory);
                var bind = new InstanceMethodCall(lineageFactory, "value:", component);
                bind.appendParameter(current); component.call(bind);
                var probe = bind.ResultRemoteObject; blocks.Add(probe);
                var lineageCall = new InstanceMethodCall(probe, "value:value:", component);
                lineageCall.appendParameter(component); lineageCall.appendParameter(lineageToken); component.call(lineageCall);
                string evidence = lineageCall.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                var lineageResult = (Dictionary<string, object>)AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
                lineageResult["raw_current"] = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject((string)lineageResult["raw_current"]));
                return lineageResult;
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
#endif
#if BDE_DETACHED_MATERIAL_EVAL
        if (command == "detached_material_eval") {
            string evalToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(evalToken, @"^edit_[0-9a-f]{64}$"))
                throw new Exception("Exact native token required");
            var blocks = new List<Identifiable>();
            try {
                var evalFactory = AscetStructureRead.Compile(component, "bde_structure_edit.st"); blocks.Add(evalFactory);
                var bind = new InstanceMethodCall(evalFactory, "value:", component);
                bind.appendParameter((Identifiable)null); component.call(bind);
                var dispatcher = bind.ResultRemoteObject; blocks.Add(dispatcher);
                var block = AscetStructureRead.Compile(component, "bde_detached_material_probe.st"); blocks.Add(block);
                var bindProbe = new InstanceMethodCall(block, "value:value:", component);
                bindProbe.appendParameter(dispatcher); bindProbe.appendParameter(reader); component.call(bindProbe);
                var probe = bindProbe.ResultRemoteObject; blocks.Add(probe);
                var run = new InstanceMethodCall(probe, "value:value:", component);
                run.appendParameter(component); run.appendParameter(evalToken); component.call(run);
                string evidence = run.ResultString;
                if (evidence.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidence);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(evidence));
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
#endif
#if BDE_PARENT_ORDER_EVAL
        if (command == "parent_order_evidence_eval") {
            var blocks = new List<Identifiable>();
            try {
                AscetStructureRead.Read(component, reader, diagram, new string[0]);
                string[] names = { "bde_native_collection_merge.st", "bde_parent_order_inverse.st",
                    "bde_class_local_inverse_bindings.st", "bde_native_graph_clone.st", "bde_parent_order_evidence.st",
                    "bde_parent_order_evidence_probe.st", "bde_recovery_status.st", "bde_edge_restore_guard.st" };
                foreach (string name in names) {
                    try { blocks.Add(AscetStructureRead.Compile(component, name)); }
                    catch (Exception failure) { throw new Exception("Parent evidence compilation failed: " + name, failure); }
                }
                Identifiable dispatcher;
                try { dispatcher = AscetStructureRead.Compile(component, "bde_structure_edit.st"); }
                catch (Exception failure) { throw new Exception("Parent evidence dispatcher compilation failed", failure); }
                blocks.Add(dispatcher);
                var bindPlan = new InstanceMethodCall(blocks[1], "value:", component);
                bindPlan.appendParameter(blocks[0]); component.call(bindPlan);
                var plan = bindPlan.ResultRemoteObject; blocks.Add(plan);
                var makeEvidence = component.createClassMethodCall("Array", "with:with:");
                makeEvidence.appendParameter(blocks[4]); makeEvidence.appendParameter(blocks[7]); component.call(makeEvidence);
                var evidence = makeEvidence.ResultRemoteObject; blocks.Add(evidence);
                foreach (var argument in new [] { plan, evidence }) {
                    var bind = new InstanceMethodCall(dispatcher, "value:", component);
                    bind.appendParameter(argument); component.call(bind);
                    var bound = bind.ResultRemoteObject; blocks.Add(bound);
                    if (component.getClassName(bound) != "BlockContextTemplate")
                        throw new Exception("Fixed structural dispatcher evidence/inverse binding failed");
                }
                var makeHelpers = component.createClassMethodCall("Array", "with:with:with:");
                makeHelpers.appendParameter(plan); makeHelpers.appendParameter(blocks[4]);
                makeHelpers.appendParameter(blocks[7]); component.call(makeHelpers);
                var helpers = makeHelpers.ResultRemoteObject; blocks.Add(helpers);
                var bindProbe = new InstanceMethodCall(blocks[5], "value:value:value:", component);
                bindProbe.appendParameter(blocks[2]); bindProbe.appendParameter(blocks[3]);
                bindProbe.appendParameter(helpers); component.call(bindProbe);
                var probe = bindProbe.ResultRemoteObject; blocks.Add(probe);
                var run = new InstanceMethodCall(probe, "value:", component);
                run.appendParameter(component); component.call(run);
                string evidenceEncoded = run.ResultString;
                if (evidenceEncoded.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(evidenceEncoded);
                var receipt = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(evidenceEncoded);
                receipt["dispatcher_compiled"] = true; receipt["dispatcher_bound"] = true;
                receipt["recovery_reader_compiled"] = true;
                return receipt;
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        if (command == "parent_order_eval") {
            var blocks = new List<Identifiable>();
            try {
                AscetStructureRead.Read(component, reader, diagram, new string[0]);
                string[] names = { "bde_native_collection_merge.st", "bde_parent_order_inverse.st",
                    "bde_class_local_inverse_bindings.st", "bde_native_graph_clone.st", "bde_parent_order_inverse_probe.st" };
                foreach (string name in names) blocks.Add(AscetStructureRead.Compile(component, name));
                var dispatcher = AscetStructureRead.Compile(component, "bde_structure_edit.st"); blocks.Add(dispatcher);
                var bindPlan = new InstanceMethodCall(blocks[1], "value:", component);
                bindPlan.appendParameter(blocks[0]); component.call(bindPlan);
                var plan = bindPlan.ResultRemoteObject; blocks.Add(plan);
                var bindDispatcher = new InstanceMethodCall(dispatcher, "value:", component);
                bindDispatcher.appendParameter(plan); component.call(bindDispatcher);
                var boundDispatcher = bindDispatcher.ResultRemoteObject; blocks.Add(boundDispatcher);
                if (component.getClassName(boundDispatcher) != "BlockContextTemplate")
                    throw new Exception("Fixed structural dispatcher order binding failed");
                var bindProbe = new InstanceMethodCall(blocks[4], "value:value:value:", component);
                bindProbe.appendParameter(blocks[2]); bindProbe.appendParameter(blocks[3]); bindProbe.appendParameter(plan);
                component.call(bindProbe);
                var probe = bindProbe.ResultRemoteObject; blocks.Add(probe);
                var run = new InstanceMethodCall(probe, "value:", component);
                run.appendParameter(component); component.call(run);
                string text = run.ResultString;
                if (text.StartsWith("BDE_", StringComparison.Ordinal)) throw new Exception(text);
                var receipt = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(text);
                receipt["dispatcher_compiled"] = true; receipt["dispatcher_bound"] = true;
                return receipt;
            } finally {
                for (int i = blocks.Count - 1; i >= 0; --i) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(blocks[i].getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
#endif
#if BDE_CLASS_SHAPE_EVAL
        if (command == "class_shape_recovery") {
            var block = AscetStructureRead.Compile(component, "bde_class_shape_recovery.st");
            try {
                var bind = component.createClassMethodCall("Array", "with:"); bind.appendParameter(reader); component.call(bind);
                var parameters = bind.ResultRemoteObject;
                var recoveryEntries = request.ContainsKey("mapping") ? request["mapping"] as object[] : null;
                if (recoveryEntries != null) {
                    var grow = new InstanceMethodCall(parameters, "copyWith:", component); grow.appendParameter(1); component.call(grow); parameters = grow.ResultRemoteObject;
                    var mapping = new string[recoveryEntries.Length]; for (int i = 0; i < recoveryEntries.Length; ++i) mapping[i] = (string)recoveryEntries[i];
                    grow = new InstanceMethodCall(parameters, "copyWith:", component); grow.appendParameter(mapping); component.call(grow); parameters = grow.ResultRemoteObject;
                }
                var probe = new InstanceMethodCall(block, "value:value:value:", component);
                probe.appendParameter(component); probe.appendParameter(Text(request, "action")); probe.appendParameter(parameters); component.call(probe);
                if (probe.ResultString.StartsWith("BDE_CLASS_SHAPE_RECOVERY_ERROR:")) throw new Exception(probe.ResultString);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(probe.ResultString));
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "class_shape") {
            var block = AscetStructureRead.Compile(component, "bde_class_shape_probe.st");
            try {
                var probe = new InstanceMethodCall(block, "value:value:", component);
                probe.appendParameter(component); probe.appendParameter(Text(request, "token")); component.call(probe);
                if (probe.ResultString.StartsWith("BDE_CLASS_SHAPE_ERROR:")) throw new Exception(probe.ResultString);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(probe.ResultString));
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
#endif
#if BDE_PORT_ABORT_EVAL
        if (command == "port_abort") {
            var block = AscetStructureRead.Compile(component, "bde_hierarchy_port_abort.st");
            try {
                var probe = new InstanceMethodCall(block, "value:value:", component);
                probe.appendParameter(component); probe.appendParameter(Text(request, "token")); component.call(probe);
                if (probe.ResultString != "unstored_private_graph_restored") throw new Exception(probe.ResultString);
                return new { unstored_private_graph_restored = true, store_called = false };
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
#endif
#if BDE_HIERARCHY_RECOVERY_EVAL
        if (command == "hierarchy_recovery") {
            var block = AscetStructureRead.Compile(component, "bde_hierarchy_recovery.st");
            try {
                var probe = new InstanceMethodCall(block, "value:value:value:", component);
                probe.appendParameter(component); probe.appendParameter(Text(request, "token"));
                probe.appendParameter(reader); component.call(probe);
                if (probe.ResultString != "recovery_record_verified") throw new Exception(probe.ResultString);
                return new { recovery_record_verified = true, model_setters_called = 0 };
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
#endif
#if BDE_SOURCE_EVAL
        if (command == "source_eval") {
            var block = AscetStructureRead.Compile(component, "bde_source_eval.st");
            try {
                var probe = new InstanceMethodCall(block, "value:value:value:", component);
                probe.appendParameter(component); probe.appendParameter(Text(request, "action"));
                probe.appendParameter(Text(request, "token")); component.call(probe);
                string text = probe.ResultString;
                if (text.StartsWith("BDE_SOURCE_ERROR:")) throw new Exception(text);
                return AscetStructureRead.Json.DeserializeObject(text);
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
#endif
        if (command == "validate_connection_group" || command == "validate_construction_group") {
            var tokenValues = request["tokens"] as object[];
            if (tokenValues == null || tokenValues.Length < 1 || tokenValues.Length > 16) throw new Exception("Bounded connection tokens required");
            var tokens = new string[tokenValues.Length];
            for (int i = 0; i < tokenValues.Length; ++i) {
                tokens[i] = tokenValues[i] as string;
                if (tokens[i] == null || !System.Text.RegularExpressions.Regex.IsMatch(tokens[i], @"^edit_[0-9a-f]{64}$")) throw new Exception("Invalid connection token");
            }
            bool construction = command == "validate_construction_group";
            var block = AscetStructureRead.Compile(component, construction ? "bde_construction_group_guard.st" : "bde_connection_group_guard.st");
            try {
                var guard = new InstanceMethodCall(block, "value:value:value:", component);
                guard.appendParameter(component); guard.appendParameter(tokens); guard.appendParameter(reader); component.call(guard);
                if (guard.ResultString != (construction ? "construction_group_verified" : "connection_group_verified")) throw new PreconditionConflict(guard.ResultString);
                if (construction) return new { construction_group_verified = true, model_setters_called = 0 };
                return new { connection_group_verified = true, model_setters_called = 0 };
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "field_source_recovery") {
            string materialToken = Text(request, "token"), action = Text(request, "action");
            string transaction = Text(request, "transaction_id"), failed = Text(request, "failed_change_id");
            int sequence;
            if (!System.Text.RegularExpressions.Regex.IsMatch(materialToken, @"^edit_[0-9a-f]{64}$") ||
                    !System.Text.RegularExpressions.Regex.IsMatch(transaction, @"^source_[0-9a-f]{64}$") ||
                    !System.Text.RegularExpressions.Regex.IsMatch(failed, @"^edit_[0-9a-f]{64}$") ||
                    (action != "inspect" && action != "prepare" && action != "apply") ||
                    !Int32.TryParse(Text(request, "execution_sequence"), out sequence) || sequence < 0 ||
                    (action != "inspect" && sequence == 0)) throw new Exception("Exact source recovery context required");
            Identifiable aliases = null, same = null, restoreTemplate = null, restore = null;
            Identifiable statusReader = null, sourceDump = null, template = null, block = null, sourceRecoveryBundle = null;
            try {
                aliases = AscetStructureRead.Compile(component, "bde_field_source_alias_plan.st");
                same = AscetStructureRead.Compile(component, "bde_source_graph_equal.st");
                restoreTemplate = AscetStructureRead.Compile(component, "bde_field_source_restore.st");
                var restoreBind = new InstanceMethodCall(restoreTemplate, "value:value:", component);
                restoreBind.appendParameter(aliases); restoreBind.appendParameter(same); component.call(restoreBind);
                restore = restoreBind.ResultRemoteObject;
                statusReader = AscetStructureRead.Compile(component, "bde_field_execution_status.st");
                sourceDump = AscetStructureRead.Compile(component, "bde_persisted_source_graph.st");
                template = AscetStructureRead.Compile(component, "bde_field_source_compensation.st");
                var createSourceBundle = component.createClassMethodCall("Array", "with:with:with:with:");
                createSourceBundle.appendParameter(restore); createSourceBundle.appendParameter(statusReader);
                createSourceBundle.appendParameter(same); createSourceBundle.appendParameter(sourceDump); component.call(createSourceBundle);
                sourceRecoveryBundle = createSourceBundle.ResultRemoteObject;
                var bindSource = new InstanceMethodCall(template, "value:", component);
                bindSource.appendParameter(sourceRecoveryBundle); component.call(bindSource);
                block = bindSource.ResultRemoteObject;
                var sourceRecoveryCall = new InstanceMethodCall(block, "value:value:value:", component);
                sourceRecoveryCall.appendParameter(component); sourceRecoveryCall.appendParameter(materialToken);
                sourceRecoveryCall.appendParameter(new string[] { action, transaction, failed, sequence.ToString() }); component.call(sourceRecoveryCall);
                string encodedSourceRecovery = sourceRecoveryCall.ResultString;
                if (encodedSourceRecovery.StartsWith("BDE_SOURCE_COMPENSATION_ERROR:")) throw new Exception(encodedSourceRecovery);
                return AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encodedSourceRecovery));
            } finally {
                foreach (var resource in new [] { aliases, same, restoreTemplate, restore, statusReader, sourceDump, template, block, sourceRecoveryBundle })
                    if (resource != null) {
                        var release = component.createControlMessageCall("destroyObjectForId:");
                        release.appendParameter(resource.getIdentifier()); component.call(release); release.getResultVoid();
                    }
            }
        }
        if (command == "recovery_status") {
            string recoveryToken = Text(request, "token");
            if (!System.Text.RegularExpressions.Regex.IsMatch(recoveryToken, @"^edit_[0-9a-f]{64}$")) throw new Exception("Invalid native token");
            var block = AscetStructureRead.Compile(component, "bde_recovery_status.st");
            try {
                var status = new InstanceMethodCall(block, "value:value:value:", component);
                status.appendParameter(component); status.appendParameter(recoveryToken); status.appendParameter(reader); component.call(status);
                string encodedStatus = status.ResultString;
                if (encodedStatus.StartsWith("BDE_RECOVERY_ERROR:")) throw new Exception(encodedStatus);
                return AscetStructureRead.DecodeRecoveryResult(encodedStatus);
            } finally {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
        if (command == "release" || command == "discard_prepared" || command == "retain_inverse") {
            var block = AscetStructureRead.Compile(component, "bde_recovery_release.st");
            Identifiable releaseBound = null;
            try {
                string inverseId = request.ContainsKey("inverse_id") ? Text(request, "inverse_id") : "";
                if (inverseId != "" && !System.Text.RegularExpressions.Regex.IsMatch(inverseId, @"^edit_[0-9a-f]{64}$"))
                    throw new Exception("Exact durable inverse identity required for release");
                string materialToken = Text(request, "token");
                if (!System.Text.RegularExpressions.Regex.IsMatch(materialToken, @"^edit_[0-9a-f]{64}$") ||
                    (command == "retain_inverse" && (inverseId == "" || inverseId == materialToken)))
                    throw new Exception("Exact original material and distinct inverse owner required");
                var callRelease = new InstanceMethodCall(block, "value:value:value:", component);
                callRelease.appendParameter(component); callRelease.appendParameter(materialToken);
                string declarationReleaseProfile = Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_FINALIZE");
                bool enumReleaseProfile = declarationReleaseProfile == "enum_body_original_release_v1";
                bool messageReleaseProfile = declarationReleaseProfile == "message_body_original_release_v1";
                if (declarationReleaseProfile != null && declarationReleaseProfile != "body_original_release_v1" && !enumReleaseProfile && !messageReleaseProfile)
                    throw new Exception("Unknown fixed declaration material release profile");
                if (declarationReleaseProfile == "body_original_release_v1"
                        && (Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_HISTORY") != "body_exact_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "body_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
                    throw new Exception("Original declaration material release requires complete finalization profiles");
                if (enumReleaseProfile
                        && (Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_HISTORY") != "enum_body_exact_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "enum_body_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
                    throw new Exception("Original Enum material release requires its complete independent finalization profiles");
                if (messageReleaseProfile
                        && (Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATION_HISTORY") != "message_body_exact_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_DECLARATIONS") != "message_body_v1"
                        || Environment.GetEnvironmentVariable("ASCET_BD_CREATE_FINALIZE") != "original_release_v1"))
                    throw new Exception("Original Module message release requires complete independent finalization profiles");
                callRelease.appendParameter(command == "retain_inverse" ? "retain_reverted" : command == "release"
                    ? messageReleaseProfile ? "reverted_message_declaration" : enumReleaseProfile ? "reverted_enum_declaration" : declarationReleaseProfile == "body_original_release_v1" ? "reverted_declaration" : "reverted" : "prepared"); component.call(callRelease);
                releaseBound = callRelease.ResultRemoteObject;
                var finishRelease = new InstanceMethodCall(releaseBound, "value:", component);
                finishRelease.appendParameter(inverseId); component.call(finishRelease);
                string expectedMaterialResult = command == "retain_inverse" ? "retained" : "released";
                if (command == "discard_prepared" && finishRelease.ResultString == "released_commit_retained")
                    return new { released = true, commit_resources_retained = true, native_token = materialToken };
                if (finishRelease.ResultString != expectedMaterialResult) throw new Exception(finishRelease.ResultString);
                if (command == "retain_inverse") return new { retained = true, profile = "retained_inverse_v1",
                    native_token = materialToken, owner_change_id = inverseId, state = "reverted", model_setters_called = 0 };
                return new { released = true };
            } finally {
                if (releaseBound != null) {
                    var releaseNested = component.createControlMessageCall("destroyObjectForId:");
                    releaseNested.appendParameter(releaseBound.getIdentifier()); component.call(releaseNested); releaseNested.getResultVoid();
                }
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(block.getIdentifier()); component.call(release); release.getResultVoid();
            }
        }
#if BDE_ORDER_EVAL
        if (command == "order_eval")
        {
            if (orderProbe == null) orderProbe = AscetStructureRead.Compile(component, "bde_order_eval.st");
            var probeCall = new InstanceMethodCall(orderProbe, "value:value:value:", component);
            probeCall.appendParameter(component); probeCall.appendParameter(Text(request, "action"));
            probeCall.appendParameter(Text(request, "token")); component.call(probeCall);
            string value = probeCall.ResultString;
            if (value.StartsWith("BDE_ORDER_ERROR:")) throw new Exception(value);
            return AscetStructureRead.Json.DeserializeObject(value);
        }
#endif
        if (command == "observe_public_tree") {
            var independent = component.GetDiagramWithName("Main") as BlockDiagram;
            if (independent == null) throw new Exception("Ordinary root BDE required");
            try {
                var graphs = new Dictionary<string, object>();
                AscetStructureExperiment.GraphTree(independent, null, "Main", graphs, 0);
                return graphs;
            } finally { independent.finalize(); GC.SuppressFinalize(independent); }
        }
        if (command == "observe_public")
        {
            if (diagram != "Main") throw new Exception("Use the independent full hierarchy oracle for child scopes");
            var independent = component.GetDiagramWithName(diagram);
            try {
                if (independent is BlockDiagram) return AscetStructureExperiment.Graph((BlockDiagram)independent);
                if (independent is StateMachineDiagram) return AscetStructureExperiment.Machine((StateMachineDiagram)independent);
                throw new Exception("Unsupported public verification diagram");
            } finally { independent.finalize(); GC.SuppressFinalize(independent); }
        }
        if (command == "observe_public_inventory") {
            // Diagnostic: count all Smalltalk API handles before the .NET
            // identifyBlockDiagramElement switch can discard unknown classes.
            var independent = component.GetDiagramWithName(diagram);
            var query = new InstanceMethodCall(independent, "getAllDiagramElements", independent); independent.call(query);
            var collection = query.ResultRemoteObject;
            var size = new InstanceMethodCall(collection, "size", independent); independent.call(size);
            var rows = new List<object>();
            for (int i = 1; i <= Convert.ToInt32(size.ResultObject); ++i) {
                var at = new InstanceMethodCall(collection, "at:", independent); at.appendParameter(i); independent.call(at);
                var node = at.ResultRemoteObject;
                var native = new InstanceMethodCall(node, "diagramElement", independent); independent.call(native);
                var id = new InstanceMethodCall(native.ResultRemoteObject, "identifier", independent); independent.call(id);
                rows.Add(new { api_class = independent.getClassName(node), native_class = independent.getClassName(native.ResultRemoteObject), id = id.ResultObject });
            }
            independent.finalize(); GC.SuppressFinalize(independent);
            return rows;
        }
        if (command == "observe_models") {
            var rows = new List<object>();
            var defaults = component.GetDefaultData();
            var declarations = new List<AscetModelElement>(component.GetAllModelElements());
            var discrete = component as AscetDiscreteComponent;
            if (discrete != null) declarations.AddRange(discrete.GetAllImplementationCasts());
            foreach (var m in declarations) {
                var row = new Dictionary<string,object>();
                row["name"] = m.GetName(); row["kind"] = m.GetType().Name;
                row["model_type"] = m is PrimitiveModelElement ? ((PrimitiveModelElement)m).GetModelType() : null;
                if (m.IsMessage()) row["message"] = new Dictionary<string,object> {
                    {"scope", m.GetScope()}, {"send", m.IsSendMessage()}, {"receive", m.IsReceiveMessage()},
                    {"send_receive", m.IsSendReceiveMessage()}, {"global_label", m.GetName()} };
                if (defaults != null && !defaults.nullHandle() && m is PrimitiveModelElement && m.GetScope() == "local") {
                    var data = defaults.GetItem((PrimitiveModelElement)m);
                    var scalar = data as ReadOnlyScalarData;
                    if (scalar != null && !scalar.nullHandle()) {
                        row["default_value"] = (string)row["model_type"] == "enum" ? (object)scalar.GetStringValue() :
                            (string)row["model_type"] == "log" ? (object)scalar.GetBooleanValue() : scalar.GetDoubleValue();
                        row["default_configuration_oid"] = defaults.GetOID();
                    }
                    var array = data as ReadOnlyArrayData;
                    if (array != null && !array.nullHandle() && m is ArrayElement) {
                        row["array_values"] = (string)row["model_type"] == "log" ? (object)array.GetBooleanValue() : array.GetDoubleValue();
                        row["array_size"] = array.GetSize(); row["array_max_size"] = array.GetMaxSize();
                        row["array_declared_max_size"] = ((ArrayElement)m).GetMaxSize();
                        row["default_configuration_oid"] = defaults.GetOID();
                    }
                    var matrix = data as ReadOnlyMatrixData;
                    var distribution = m as DistributionElement;
                    if (array != null && !array.nullHandle() && distribution != null) {
                        row["distribution_values"] = (string)row["model_type"] == "log" ? (object)array.GetBooleanValue() : array.GetDoubleValue();
                        row["distribution_size"] = array.GetSize(); row["distribution_max_size"] = array.GetMaxSize();
                        row["distribution_declared_max_size"] = distribution.GetMaxSize();
                        row["default_configuration_oid"] = defaults.GetOID();
                    }
                    if (matrix != null && !matrix.nullHandle() && m is MatrixElement) {
                        row["matrix_values"] = (string)row["model_type"] == "log" ? (object)matrix.GetBooleanValue() : matrix.GetDoubleValue();
                        row["matrix_size"] = new int[] { matrix.GetXSize(), matrix.GetYSize() };
                        row["matrix_max_size"] = new int[] { matrix.GetMaxXSize(), matrix.GetMaxYSize() };
                        row["matrix_declared_max_size"] = new int[] { ((MatrixElement)m).GetMaxXSize(), ((MatrixElement)m).GetMaxYSize() };
                        row["default_configuration_oid"] = defaults.GetOID();
                    }
                    var tableData = data as OneDTableData;
                    var tableData2 = data as TwoDTableData;
                    if (tableData != null) {
                        var x = tableData.GetDistribution(); var y = tableData.GetValue();
                        row["table_x"] = x.GetDoubleValue();
                        row["table_values"] = (string)row["model_type"] == "log" ? (object)y.GetBooleanValue() : y.GetDoubleValue();
                        row["table_size"] = tableData.GetSize();
                        row["table_declared_max_size"] = ((OneDTableElement)m).GetMaxSize();
                        row["interpolation_linear"] = tableData.IsInterpolationLinear(); row["interpolation_rounded"] = tableData.IsInterpolationRounded();
                        row["extrapolation_constant"] = tableData.IsExtrapolationConstant(); row["default_configuration_oid"] = defaults.GetOID();
                        x.finalize(); GC.SuppressFinalize(x); y.finalize(); GC.SuppressFinalize(y);
                    }
                    if (tableData2 != null) {
                        var x = tableData2.GetXDistribution(); var y = tableData2.GetYDistribution(); var z = tableData2.GetValue();
                        row["table_x"] = x.GetDoubleValue(); row["table_y"] = y.GetDoubleValue();
                        row["table_values"] = (string)row["model_type"] == "log" ? (object)z.GetBooleanValue() : z.GetDoubleValue();
                        row["table_size"] = new int[] {tableData2.GetXSize(),tableData2.GetYSize()};
                        row["table_declared_max_size"] = new int[] {((TwoDTableElement)m).GetMaxXSize(),((TwoDTableElement)m).GetMaxYSize()};
                        row["interpolation_linear"] = tableData2.IsInterpolationLinear(); row["interpolation_rounded"] = tableData2.IsInterpolationRounded();
                        row["extrapolation_constant"] = tableData2.IsExtrapolationConstant(); row["default_configuration_oid"] = defaults.GetOID();
                        x.finalize(); GC.SuppressFinalize(x); y.finalize(); GC.SuppressFinalize(y); z.finalize(); GC.SuppressFinalize(z);
                    }
                    if (data != null) { data.finalize(); GC.SuppressFinalize(data); }
                }
                if (m.IsComplex() || (string)row["model_type"] == "enum") {
                    var represented = m.GetRepresentedClass();
                    row["definition_path"] = represented.GetNameWithPath(); row["definition_oid"] = represented.GetOID();
                    var enumeration = represented as AscetEnumeration;
                    if (enumeration != null) row["enum_values"] = enumeration.GetEnumerators();
                    represented.finalize(); GC.SuppressFinalize(represented);
                }
                var table = m as OneDTableElement;
                if (table != null) {
                    row["group_table"] = table.IsGroupCharTable(); row["fixed_table"] = table.IsFixedCharTable();
                    if ((bool)row["group_table"]) {
                        var x = table.GetXDistribution(); row["x_distribution_name"] = x.GetName(); x.finalize(); GC.SuppressFinalize(x);
                        var table2 = m as TwoDTableElement;
                        if (table2 != null) { var y = table2.GetYDistribution(); row["y_distribution_name"] = y.GetName(); y.finalize(); GC.SuppressFinalize(y); }
                    }
                }
                rows.Add(row);
                m.finalize(); GC.SuppressFinalize(m);
            }
            if (defaults != null) { defaults.finalize(); GC.SuppressFinalize(defaults); }
            return rows;
        }
        if (command == "observe_enum") {
            string enumName = Text(request, "name");
            if (!System.Text.RegularExpressions.Regex.IsMatch(enumName, @"^[A-Za-z_][A-Za-z0-9_]{0,63}$")) throw new Exception("Exact enum name required");
            var enumeration = database.GetItemInFolder(enumName, "BDE_Tool_Experiments") as AscetEnumeration;
            if (enumeration == null || enumeration.nullHandle()) return new { status = "absent" };
            try {
                return new { status = "read", path = enumeration.GetNameWithPath(), oid = enumeration.GetOID(), items = enumeration.GetEnumerators() };
            } finally { enumeration.finalize(); GC.SuppressFinalize(enumeration); }
        }
        if (command == "observe")
        {
            var list = new List<string>(); foreach (var v in (object[])request["targets"]) list.Add((string)v);
            return AscetStructureRead.Read(component, reader, diagram, list.ToArray());
        }
        if (command == "handoff_inverse") {
            string materialToken = Text(request, "token"), head = Text(request, "head_change_id"), inverseId = Text(request, "inverse_id"), state = Text(request, "expected_state");
            foreach (string id in new [] { materialToken, head, inverseId })
                if (!System.Text.RegularExpressions.Regex.IsMatch(id, @"^edit_[0-9a-f]{64}$")) throw new Exception("Exact managed identities required");
            if ((state != "applied" && state != "reverted") || inverseId == head || inverseId == materialToken) throw new Exception("Invalid managed handoff direction or owner");
            var block = AscetStructureRead.Compile(component, "bde_managed_inverse_handoff.st");
            Identifiable bound = null;
            try {
                var bind = new InstanceMethodCall(block, "value:value:value:", component);
                bind.appendParameter(component); bind.appendParameter(materialToken); bind.appendParameter(head); component.call(bind); bound = bind.ResultRemoteObject;
                var finish = new InstanceMethodCall(bound, "value:value:", component);
                finish.appendParameter(inverseId); finish.appendParameter(state); component.call(finish);
                if (finish.ResultString != "handed_off") throw new Exception(finish.ResultString);
                return new { retained = true, profile = "retained_inverse_v1", native_token = materialToken,
                    previous_owner_change_id = head, owner_change_id = inverseId, state = state, model_setters_called = 0 };
            } finally {
                foreach (var item in new [] { bound, block }) if (item != null) {
                    var release = component.createControlMessageCall("destroyObjectForId:");
                    release.appendParameter(item.getIdentifier()); component.call(release); release.getResultVoid();
                }
            }
        }
        bool managedInverse = command == "managed_inverse" || command == "validate_managed_inverse";
        if (command != "prepare" && command != "validate" && command != "apply" && command != "revert" && command != "validate_revert" && !managedInverse) throw new Exception("Unknown command");
        if (Environment.GetEnvironmentVariable("ASCET_BD_CONNECT_REFERENCES") == "module_persistent_v1"
                && (command == "apply" || command == "revert" || command == "managed_inverse"))
            throw new PreconditionConflict("Finite Module reference capture is preparation-only; persistent write and inverse closure remain unverified");
        // Recovery data lives in explicit native records, never captured locals.
        // Compile a fresh fixed dispatcher for each operation.
        if (editor != null) {
            var release = component.createControlMessageCall("destroyObjectForId:");
            release.appendParameter(editor.getIdentifier()); component.call(release); release.getResultVoid();
        }
        editor = CompileEditor(command);
        string token = Text(request, "token");
        if (!System.Text.RegularExpressions.Regex.IsMatch(token, @"^edit_[0-9a-f]{64}$")) throw new Exception("Invalid native token");
        bool plansOperation = command == "prepare" || command == "validate";
        var values = new List<string> { diagram, command, plansOperation ? Text(request, "operation") : "", token };
        var arguments = plansOperation ? (object[])request["arguments"] : new object[] { new object[0] };
        var targets = (object[])arguments[0]; values.Add(targets.Length.ToString());
        foreach (var target in targets) values.Add((string)target);
        for (int i = 1; i < arguments.Length; ++i) values.Add(Convert.ToString(arguments[i], System.Globalization.CultureInfo.InvariantCulture));
        if (managedInverse) {
            string head = Text(request, "head_change_id"), resultId = Text(request, "result_change_id"), state = Text(request, "expected_state");
            if (!System.Text.RegularExpressions.Regex.IsMatch(head, @"^edit_[0-9a-f]{64}$") ||
                    !System.Text.RegularExpressions.Regex.IsMatch(resultId, @"^edit_[0-9a-f]{64}$") ||
                    (state != "applied" && state != "reverted") || resultId == head || resultId == token)
                throw new Exception("Exact managed head, distinct result and terminal direction required");
            values.Add(head); values.Add(state); values.Add(resultId);
        }
        if (command == "revert" && request.ContainsKey("parent_order_expect_signature"))
            values.Add(Text(request, "parent_order_expect_signature"));
        if ((command == "apply" || command == "revert") && request.ContainsKey("graphical_expect_signature"))
            values.Add(Text(request, "graphical_expect_signature"));
        de.etas.cebra.toolAPI.Common.DataBaseItem definition = null;
        if (plansOperation && Text(request, "operation") == "create_block" && (arguments.Length == 6 || arguments.Length == 7)
                && ((string)arguments[1] == "enumeration" || (string)arguments[1] == "component"
                    || ((string)arguments[1]).EndsWith("_message", StringComparison.Ordinal) && ((string)arguments[5]).StartsWith("ENUM|", StringComparison.Ordinal))) {
            string definitionPath = ((string)arguments[5]).Trim('\\');
            bool messageEnum = ((string)arguments[1]).EndsWith("_message", StringComparison.Ordinal);
            if (messageEnum) definitionPath = definitionPath.Substring(5).Trim('\\');
            if ((string)arguments[1] == "enumeration" && definitionPath.StartsWith("NEWENUM|", StringComparison.Ordinal)) {
                definition = database.GetFolder("BDE_Tool_Experiments");
                if (definition == null || definition.nullHandle()) throw new Exception("Sandbox definition folder missing");
            } else {
            int slash = definitionPath.LastIndexOf('\\');
            if (slash < 1) throw new Exception("Full definition path required");
            definition = database.GetItemInFolder(definitionPath.Substring(slash + 1), definitionPath.Substring(0, slash));
            if (definition == null || definition.nullHandle()) throw new Exception("Definition not found");
            if (((string)arguments[1] == "enumeration" || messageEnum) && !(definition is AscetEnumeration)) throw new Exception("Enumeration definition required");
            if ((string)arguments[1] == "component" && !(definition is CodeComponent)) throw new Exception("Code component definition required");
            }
        }
        var factory = editor;
        Identifiable orderEvidence = null;
        Identifiable edgeGuard = null;
        Identifiable evidenceBundle = null;
        Identifiable graphicalReader = null;
        Identifiable fieldRawGraphicalReader = null;
        Identifiable fieldNativeSourceReader = null;
        Identifiable fieldNativeCaptureFactory = null;
        Identifiable fieldNativeCaptureHelpers = null;
        Identifiable fieldObservationCopier = null;
        Identifiable fieldValuesTemplate = null;
        Identifiable fieldValuesPlanner = null;
        Identifiable fieldLocalTemplate = null;
        Identifiable fieldLocalPlanner = null;
        Identifiable fieldIdentitySourceRestore = null;
        Identifiable fieldForwardSourceNormalizer = null;
        Identifiable fieldPatchFactory = null;
        Identifiable fieldPatchTemplate = null;
        Identifiable fieldOrderReader = null;
        Identifiable fieldStatusReader = null;
        Identifiable fieldSourceAliases = null;
        Identifiable fieldSourceSame = null;
        Identifiable fieldSourceTemplate = null;
        Identifiable fieldSourceFactory = null;
        Identifiable fieldBaseBundle = null;
        Identifiable fieldSourceBundle = null;
        Identifiable deleteInverseReader = null;
        Identifiable drawingFactory = null;
        Identifiable drawingReader = null;
        Identifiable baseBundle = null;
        Identifiable topologyCurrentFactory = null;
        Identifiable topologyCurrentReader = null;
        Identifiable topologyCurrentContext = null;
        Identifiable topologyExactFactory = null;
        Identifiable topologyExactPlanner = null;
        Identifiable topologySourceCorrespondence = null;
        Identifiable topologySourceNormalizeFactory = null;
        Identifiable topologySourceNormalizeHelpers = null;
        Identifiable topologySourceNormalizer = null;
        Identifiable topologySourceCaptureBase = null;
        Identifiable topologyLocalPlanner = null;
        var topologyLocalBlocks = new List<Identifiable>();
        bool bindingSucceeded = false;
        try {
            Identifiable boundDefinition = definition;
            bool localTopology = Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_LOCAL_INVERSE") == "native_source_v1";
            if (localTopology && (diagram != "Main"
                    || Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1"
                    || Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_EXACT_INVERSE") != "native_source_v1"
                    || Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION") != "identity_v1"
                    || Environment.GetEnvironmentVariable("ASCET_BD_ORDER_INVERSE_EXPERIMENTAL") != "1"
                    || Environment.GetEnvironmentVariable("ASCET_BD_OPERATION_EXECUTOR") != "staged_v1"))
                throw new Exception("Local topology inverse requires staged retained Main native/source/order profiles");
            if (plansOperation && (Text(request, "operation") == "set_literal" || Text(request, "operation") == "set_comment" ||
                    Text(request, "operation") == "move_node" || Text(request, "operation") == "set_edge_route" ||
                    Text(request, "operation") == "rewire_data")) {
                bool localField = Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") == "native_source_v1";
                bool sourceNormalize = Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_IDENTITY_NORMALIZATION") == "identity_v1";
                if (sourceNormalize && !localField) throw new Exception("Source identity normalization requires fixed local native/source profile");
                if (localField && Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1")
                    throw new Exception("Local field inverse requires original source identity capture");
                fieldRawGraphicalReader = AscetStructureRead.Compile(component, "bde_native_graph_current.st");
                graphicalReader = fieldRawGraphicalReader; fieldRawGraphicalReader = null;
                if (Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") == "identity_v1") {
                fieldRawGraphicalReader = graphicalReader; graphicalReader = null;
                fieldNativeSourceReader = AscetStructureRead.Compile(component, "bde_native_source_images.st");
                fieldNativeCaptureFactory = AscetStructureRead.Compile(component, "bde_field_native_capture.st");
                if (localField) {
                    fieldObservationCopier = AscetStructureRead.Compile(component, "bde_observation_copy.st");
                    fieldValuesTemplate = AscetStructureRead.Compile(component, "bde_field_inverse_values.st");
                    var valuesBind = new InstanceMethodCall(fieldValuesTemplate, "value:", component);
                    valuesBind.appendParameter(fieldObservationCopier); component.call(valuesBind);
                    fieldValuesPlanner = valuesBind.ResultRemoteObject;
                    if (component.getClassName(fieldValuesPlanner) != "BlockContextTemplate")
                        throw new Exception("Fixed local typed inverse binding failed");
                    fieldIdentitySourceRestore = AscetStructureRead.Compile(component, "bde_field_source_identity_restore.st");
                    fieldLocalTemplate = AscetStructureRead.Compile(component, "bde_field_local_inverse.st");
                    var localBind = new InstanceMethodCall(fieldLocalTemplate, "value:value:", component);
                    localBind.appendParameter(fieldValuesPlanner); localBind.appendParameter(
                        Environment.GetEnvironmentVariable("ASCET_BD_FIELD_SOURCE_PROJECTION") == "active_v1"
                            ? BuildFieldSourceProjection(topologyLocalBlocks, fieldIdentitySourceRestore) : fieldIdentitySourceRestore);
                    component.call(localBind); fieldLocalPlanner = localBind.ResultRemoteObject;
                    if (component.getClassName(fieldLocalPlanner) != "BlockContextTemplate")
                        throw new Exception("Fixed native/source local inverse binding failed");
                    if (sourceNormalize) fieldForwardSourceNormalizer = AscetStructureRead.Compile(component, "bde_source_identity_normalization.st");
                }
                var nativeCaptureHelpers = component.createClassMethodCall("Array", sourceNormalize ? "with:with:with:with:with:" :
                    (localField ? "with:with:with:with:" : "with:with:with:"));
                nativeCaptureHelpers.appendParameter(fieldRawGraphicalReader);
                nativeCaptureHelpers.appendParameter(fieldNativeSourceReader);
                if (localField) nativeCaptureHelpers.appendParameter(fieldLocalPlanner);
                if (sourceNormalize) nativeCaptureHelpers.appendParameter(fieldForwardSourceNormalizer);
                nativeCaptureHelpers.appendParameter(diagram.Split('/')[0]); component.call(nativeCaptureHelpers);
                fieldNativeCaptureHelpers = nativeCaptureHelpers.ResultRemoteObject;
                var bindNativeCapture = new InstanceMethodCall(fieldNativeCaptureFactory, "value:", component);
                bindNativeCapture.appendParameter(fieldNativeCaptureHelpers); component.call(bindNativeCapture);
                graphicalReader = bindNativeCapture.ResultRemoteObject;
                if (component.getClassName(graphicalReader) != "BlockContextTemplate")
                    throw new Exception("Fixed field native/source capture binding failed");
                }
                fieldPatchTemplate = AscetStructureRead.Compile(component, "bde_native_field_patch.st");
                fieldOrderReader = AscetStructureRead.Compile(component, "bde_native_field_order_plan.st");
                fieldStatusReader = AscetStructureRead.Compile(component, "bde_field_execution_status.st");
                fieldSourceAliases = AscetStructureRead.Compile(component, "bde_field_source_alias_plan.st");
                fieldSourceSame = AscetStructureRead.Compile(component, "bde_source_graph_equal.st");
                fieldSourceTemplate = AscetStructureRead.Compile(component, "bde_field_source_restore.st");
                AscetStructureRead.Trace("field.source_bind.begin");
                var sourceBind = new InstanceMethodCall(fieldSourceTemplate, "value:value:", component);
                sourceBind.appendParameter(fieldSourceAliases); sourceBind.appendParameter(fieldSourceSame); component.call(sourceBind);
                fieldSourceFactory = sourceBind.ResultRemoteObject;
                if (component.getClassName(fieldSourceFactory) != "BlockContextTemplate")
                    throw new Exception("Fixed field source restoration binding failed");
                AscetStructureRead.Trace("field.source_bind.done");
                AscetStructureRead.Trace("field.patch_bind.begin");
                var fieldBind = new InstanceMethodCall(fieldPatchTemplate, "value:", component);
                fieldBind.appendParameter(fieldOrderReader); component.call(fieldBind);
                fieldPatchFactory = fieldBind.ResultRemoteObject;
                if (component.getClassName(fieldPatchFactory) != "BlockContextTemplate")
                    throw new Exception("Fixed field order/patch binding failed");
                AscetStructureRead.Trace("field.patch_bind.done");
                AscetStructureRead.Trace("field.bundle3.begin");
                var fieldBundle = component.createClassMethodCall("Array", "with:with:with:");
                fieldBundle.appendParameter(graphicalReader); fieldBundle.appendParameter(fieldPatchFactory);
                fieldBundle.appendParameter(fieldStatusReader); component.call(fieldBundle);
                fieldBaseBundle = fieldBundle.ResultRemoteObject;
                AscetStructureRead.Trace("field.bundle3.done");
                AscetStructureRead.Trace("field.bundle4.begin");
                var sourceExtend = new InstanceMethodCall(fieldBaseBundle, "copyWith:", component);
                sourceExtend.appendParameter(fieldSourceFactory); component.call(sourceExtend);
                fieldSourceBundle = sourceExtend.ResultRemoteObject;
                AscetStructureRead.Trace("field.bundle4.done");
                AscetStructureRead.Trace("field.bundle5.begin");
                var sameExtend = new InstanceMethodCall(fieldSourceBundle, "copyWith:", component);
                sameExtend.appendParameter(fieldSourceSame); component.call(sameExtend);
                evidenceBundle = sameExtend.ResultRemoteObject; boundDefinition = evidenceBundle;
                AscetStructureRead.Trace("field.bundle5.done");
            }
            if (plansOperation && (Text(request, "operation") == "disconnect_data" || Text(request, "operation") == "delete_node")) {
                orderEvidence = AscetStructureRead.Compile(component, "bde_parent_order_evidence.st");
                edgeGuard = AscetStructureRead.Compile(component, "bde_edge_restore_guard.st");
                graphicalReader = AscetStructureRead.Compile(component, "bde_native_graph_current.st");
                if (Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") == "identity_v1") {
                    fieldRawGraphicalReader = graphicalReader; graphicalReader = null;
                    fieldNativeSourceReader = AscetStructureRead.Compile(component, "bde_native_source_images.st");
                    fieldNativeCaptureFactory = AscetStructureRead.Compile(component, "bde_topology_native_capture.st");
                    bool exactTopology = Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_EXACT_INVERSE") == "native_source_v1";
                    bool normalizeTopology = Environment.GetEnvironmentVariable("ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION") == "identity_v1";
                    if (normalizeTopology && (!exactTopology || diagram != "Main"))
                        throw new Exception("Topology source normalization requires exact retained Main topology profile");
                    if (exactTopology) {
                        fieldPatchTemplate = AscetStructureRead.Compile(component, "bde_native_field_patch.st");
                        fieldOrderReader = AscetStructureRead.Compile(component, "bde_native_field_order_plan.st");
                        var topologyPatchBind = new InstanceMethodCall(fieldPatchTemplate, "value:", component);
                        topologyPatchBind.appendParameter(fieldOrderReader); component.call(topologyPatchBind);
                        fieldPatchFactory = topologyPatchBind.ResultRemoteObject;
                        fieldSourceSame = AscetStructureRead.Compile(component, "bde_source_graph_equal.st");
                        topologyExactFactory = AscetStructureRead.Compile(component, "bde_topology_exact_inverse.st");
                        var exactBind = new InstanceMethodCall(topologyExactFactory, "value:value:", component);
                        exactBind.appendParameter(fieldPatchFactory); exactBind.appendParameter(fieldSourceSame);
                        component.call(exactBind); topologyExactPlanner = exactBind.ResultRemoteObject;
                        if (component.getClassName(topologyExactPlanner) != "BlockContextTemplate")
                            throw new Exception("Fixed exact topology inverse binding failed");
                    }
                    if (normalizeTopology) {
                        fieldForwardSourceNormalizer = AscetStructureRead.Compile(component, "bde_source_identity_normalization.st");
                        topologySourceCorrespondence = AscetStructureRead.Compile(component, "bde_source_structural_correspondence.st");
                        topologySourceNormalizeFactory = AscetStructureRead.Compile(component, "bde_topology_forward_source_normalization.st");
                        var normalizeHelpers = component.createClassMethodCall("Array", "with:with:with:with:");
                        normalizeHelpers.appendParameter(fieldForwardSourceNormalizer); normalizeHelpers.appendParameter(topologySourceCorrespondence);
                        normalizeHelpers.appendParameter(fieldPatchFactory); normalizeHelpers.appendParameter(fieldSourceSame);
                        component.call(normalizeHelpers); topologySourceNormalizeHelpers = normalizeHelpers.ResultRemoteObject;
                        var normalizeBind = new InstanceMethodCall(topologySourceNormalizeFactory, "value:", component);
                        normalizeBind.appendParameter(topologySourceNormalizeHelpers); component.call(normalizeBind);
                        topologySourceNormalizer = normalizeBind.ResultRemoteObject;
                        if (component.getClassName(topologySourceNormalizer) != "BlockContextTemplate")
                            throw new Exception("Fixed topology source normalization binding failed");
                    }
                    var topologyHelpers = component.createClassMethodCall("Array", exactTopology ? "with:with:with:with:" : "with:with:with:");
                    topologyHelpers.appendParameter(fieldRawGraphicalReader);
                    topologyHelpers.appendParameter(fieldNativeSourceReader);
                    topologyHelpers.appendParameter(diagram.Split('/')[0]);
                    if (exactTopology) topologyHelpers.appendParameter(topologyExactPlanner);
                    component.call(topologyHelpers);
                    fieldNativeCaptureHelpers = topologyHelpers.ResultRemoteObject;
                    if (normalizeTopology) {
                        topologySourceCaptureBase = fieldNativeCaptureHelpers;
                        var normalizeExtend = new InstanceMethodCall(topologySourceCaptureBase, "copyWith:", component);
                        normalizeExtend.appendParameter(topologySourceNormalizer); component.call(normalizeExtend);
                        fieldNativeCaptureHelpers = normalizeExtend.ResultRemoteObject;
                    }
                    if (localTopology) {
                        topologyLocalPlanner = BuildTopologyLocalPlanner(topologyLocalBlocks);
                        topologyLocalBlocks.Add(fieldNativeCaptureHelpers);
                        var localExtend = new InstanceMethodCall(fieldNativeCaptureHelpers, "copyWith:", component);
                        localExtend.appendParameter(topologyLocalPlanner); component.call(localExtend);
                        fieldNativeCaptureHelpers = localExtend.ResultRemoteObject;
                        topologyLocalBlocks.Add(fieldNativeCaptureHelpers);
                        var headHandoff = AscetStructureRead.Compile(component, "bde_topology_head_handoff.st");
                        topologyLocalBlocks.Add(headHandoff);
                        var headExtend = new InstanceMethodCall(fieldNativeCaptureHelpers, "copyWith:", component);
                        headExtend.appendParameter(headHandoff); component.call(headExtend);
                        fieldNativeCaptureHelpers = headExtend.ResultRemoteObject;
                    }
                    var topologyCaptureBind = new InstanceMethodCall(fieldNativeCaptureFactory, "value:", component);
                    topologyCaptureBind.appendParameter(fieldNativeCaptureHelpers); component.call(topologyCaptureBind);
                    graphicalReader = topologyCaptureBind.ResultRemoteObject;
                    if (component.getClassName(graphicalReader) != "BlockContextTemplate")
                        throw new Exception("Fixed ordinary topology source capture binding failed");
                }
                deleteInverseReader = AscetStructureRead.Compile(component, "bde_delete_inverse_values.st");
                drawingFactory = AscetStructureRead.Compile(component, "bde_drawing_order_evidence.st");
                var drawingBind = new InstanceMethodCall(drawingFactory, "value:", component);
                drawingBind.appendParameter(orderEvidence); component.call(drawingBind);
                drawingReader = drawingBind.ResultRemoteObject;
                if (component.getClassName(drawingReader) != "BlockContextTemplate") throw new Exception("Fixed drawing reader binding failed");
                var bundle = component.createClassMethodCall("Array", "with:with:with:with:");
                bundle.appendParameter(orderEvidence); bundle.appendParameter(edgeGuard);
                bundle.appendParameter(graphicalReader); bundle.appendParameter(deleteInverseReader); component.call(bundle);
                baseBundle = bundle.ResultRemoteObject;
                var extend = new InstanceMethodCall(baseBundle, "copyWith:", component);
                extend.appendParameter(drawingReader); component.call(extend);
                evidenceBundle = extend.ResultRemoteObject; boundDefinition = evidenceBundle;
            }
            if ((command == "revert" || command == "validate_revert") &&
                    Environment.GetEnvironmentVariable("ASCET_BD_ORDER_INVERSE_EXPERIMENTAL") == "1") {
                if (orderInverse == null) {
                    orderKernel = AscetStructureRead.Compile(component, "bde_native_collection_merge.st");
                    var orderFactory = AscetStructureRead.Compile(component, "bde_parent_order_inverse.st");
                    try {
                        var orderBind = new InstanceMethodCall(orderFactory, "value:", component);
                        orderBind.appendParameter(orderKernel); component.call(orderBind);
                        orderInverse = orderBind.ResultRemoteObject;
                        if (component.getClassName(orderInverse) != "BlockContextTemplate")
                            throw new Exception("Fixed parent order inverse binding failed");
                    } finally {
                        var releaseOrder = component.createControlMessageCall("destroyObjectForId:");
                        releaseOrder.appendParameter(orderFactory.getIdentifier()); component.call(releaseOrder); releaseOrder.getResultVoid();
                    }
                }
                deleteInverseReader = AscetStructureRead.Compile(component, "bde_delete_inverse_values.st");
                var inverseBundle = component.createClassMethodCall("Array", "with:with:");
                inverseBundle.appendParameter(orderInverse); inverseBundle.appendParameter(deleteInverseReader); component.call(inverseBundle);
                evidenceBundle = inverseBundle.ResultRemoteObject; boundDefinition = evidenceBundle;
            }
            if ((command == "revert" || command == "validate_revert" || command == "managed_inverse" ||
                    command == "validate_managed_inverse") &&
                    Environment.GetEnvironmentVariable("ASCET_BD_LOCAL_FIELD_INVERSE") == "native_source_v1") {
                if (Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") != "identity_v1")
                    throw new Exception("Fresh local planner requires retained source identity profile");
                fieldObservationCopier = AscetStructureRead.Compile(component, "bde_observation_copy.st");
                fieldValuesTemplate = AscetStructureRead.Compile(component, "bde_field_inverse_values.st");
                var freshValuesBind = new InstanceMethodCall(fieldValuesTemplate, "value:", component);
                freshValuesBind.appendParameter(fieldObservationCopier); component.call(freshValuesBind);
                fieldValuesPlanner = freshValuesBind.ResultRemoteObject;
                fieldIdentitySourceRestore = AscetStructureRead.Compile(component, "bde_field_source_identity_restore.st");
                fieldLocalTemplate = AscetStructureRead.Compile(component, "bde_field_local_inverse.st");
                var freshLocalBind = new InstanceMethodCall(fieldLocalTemplate, "value:value:", component);
                freshLocalBind.appendParameter(fieldValuesPlanner); freshLocalBind.appendParameter(
                    Environment.GetEnvironmentVariable("ASCET_BD_FIELD_SOURCE_PROJECTION") == "active_v1"
                        ? BuildFieldSourceProjection(topologyLocalBlocks, fieldIdentitySourceRestore) : fieldIdentitySourceRestore);
                component.call(freshLocalBind); fieldLocalPlanner = freshLocalBind.ResultRemoteObject;
                if (component.getClassName(fieldValuesPlanner) != "BlockContextTemplate" ||
                        component.getClassName(fieldLocalPlanner) != "BlockContextTemplate")
                    throw new Exception("Fresh fixed local inverse planner binding failed");
                if (boundDefinition == null) boundDefinition = fieldLocalPlanner;
                else {
                    var freshLocalExtend = new InstanceMethodCall(boundDefinition, "copyWith:", component);
                    freshLocalExtend.appendParameter(fieldLocalPlanner); component.call(freshLocalExtend);
                    evidenceBundle = freshLocalExtend.ResultRemoteObject; boundDefinition = evidenceBundle;
                }
            }
            if ((command == "revert" || command == "validate_revert") &&
                    Environment.GetEnvironmentVariable("ASCET_BD_SOURCE_MATERIAL_CAPTURE") == "identity_v1") {
                topologyCurrentReader = AscetStructureRead.Compile(component, "bde_native_graph_current.st");
                topologyCurrentFactory = AscetStructureRead.Compile(component, "bde_topology_current_context.st");
                var currentContextBind = new InstanceMethodCall(topologyCurrentFactory, "value:value:", component);
                currentContextBind.appendParameter(boundDefinition); currentContextBind.appendParameter(topologyCurrentReader);
                component.call(currentContextBind); topologyCurrentContext = currentContextBind.ResultRemoteObject;
                if (component.getClassName(topologyCurrentContext) != "Dictionary")
                    throw new Exception("Fixed topology CURRENT context binding failed");
                if (localTopology) {
                    topologyLocalPlanner = BuildTopologyLocalPlanner(topologyLocalBlocks);
                    var attachPlanner = new InstanceMethodCall(topologyCurrentContext, "at:put:", component);
                    attachPlanner.appendParameter("localTopologyPlanner"); attachPlanner.appendParameter(topologyLocalPlanner);
                    component.call(attachPlanner);
                }
                boundDefinition = topologyCurrentContext;
            }
            AscetStructureRead.Trace("editor.bind.begin " + command);
            var bind = new InstanceMethodCall(factory, "value:", component);
            bind.appendParameter(boundDefinition); component.call(bind); editor = bind.ResultRemoteObject;
            bindingSucceeded = true;
            AscetStructureRead.Trace("editor.bind.done " + command);
        } finally {
            for (int i = topologyLocalBlocks.Count - 1; i >= 0; --i) {
                var releaseLocal = component.createControlMessageCall("destroyObjectForId:");
                releaseLocal.appendParameter(topologyLocalBlocks[i].getIdentifier()); component.call(releaseLocal); releaseLocal.getResultVoid();
            }
            try {
                var release = component.createControlMessageCall("destroyObjectForId:");
                release.appendParameter(factory.getIdentifier()); component.call(release); release.getResultVoid();
            } catch (Exception cleanupError) {
                AscetStructureRead.Trace("editor.cleanup.failed " + cleanupError.Message);
                if (bindingSucceeded) throw;
            }
            if (definition != null) { definition.finalize(); GC.SuppressFinalize(definition); }
            foreach (var material in new [] { evidenceBundle, edgeGuard, orderEvidence, graphicalReader, fieldPatchFactory,
                    fieldRawGraphicalReader, fieldNativeSourceReader, fieldNativeCaptureFactory, fieldNativeCaptureHelpers,
                    fieldObservationCopier, fieldValuesTemplate, fieldValuesPlanner, fieldLocalTemplate,
                    fieldLocalPlanner, fieldIdentitySourceRestore, fieldForwardSourceNormalizer,
                    fieldPatchTemplate, fieldOrderReader, fieldStatusReader, fieldSourceAliases, fieldSourceSame,
                    fieldSourceTemplate, fieldSourceFactory, fieldBaseBundle, fieldSourceBundle, deleteInverseReader,
                    drawingFactory, drawingReader, baseBundle, topologyCurrentFactory,
                    topologyCurrentReader, topologyCurrentContext, topologyExactFactory, topologyExactPlanner,
                    topologySourceCorrespondence, topologySourceNormalizeFactory, topologySourceNormalizeHelpers,
                    topologySourceNormalizer, topologySourceCaptureBase }) if (material != null) {
                try {
                    var releaseEvidence = component.createControlMessageCall("destroyObjectForId:");
                    releaseEvidence.appendParameter(material.getIdentifier()); component.call(releaseEvidence); releaseEvidence.getResultVoid();
                } catch (Exception cleanupError) {
                    AscetStructureRead.Trace("evidence.cleanup.failed " + cleanupError.Message);
                    if (bindingSucceeded) throw;
                }
            }
        }
        string commitCaptureProfile = Environment.GetEnvironmentVariable("ASCET_BD_COMMIT_RESOURCE_CAPTURE");
        if (commitCaptureProfile != null && commitCaptureProfile != "prepare_v1")
            throw new Exception("Unknown fixed commit-resource preparation profile");
        bool commitPreparation = command == "prepare" && commitCaptureProfile == "prepare_v1";
        if (commitPreparation) editor = BindCommitPreparation(editor);
        AscetStructureRead.Trace("editor.dispatch.begin " + command);
        var call = new InstanceMethodCall(editor, "value:value:value:", component);
        call.appendParameter(component); call.appendParameter(values.ToArray()); call.appendParameter(reader);
        if (commitPreparation) referenceFileQueryUnknown = true;
        component.call(call);
        string encoded = call.ResultString;
        if (commitPreparation) {
            if (String.IsNullOrEmpty(encoded)) throw new Exception("Unknown prepared resource capture; retain material and do not replay");
            if (encoded.StartsWith("BDE_", StringComparison.Ordinal)) referenceFileQueryUnknown = false;
        }
        AscetStructureRead.Trace("editor.dispatch.done " + command);
        if (encoded.StartsWith("BDE_STRUCTURE_CONFLICT:", StringComparison.Ordinal)) throw new PreconditionConflict(encoded);
        if (encoded.StartsWith("BDE_STRUCTURE_ERROR:")) throw new Exception(encoded);
        if (encoded.StartsWith("BDE_COMMIT_", StringComparison.Ordinal)) throw new Exception(encoded);
        if (commitPreparation) {
            var envelope = AscetStructureRead.Decode(AscetStructureRead.Json.DeserializeObject(encoded)) as Dictionary<string, object>;
            if (envelope == null || envelope.Count != 3 || !envelope.ContainsKey("profile")
                    || !Object.Equals(envelope["profile"], "native_commit_preparation_envelope_v1")
                    || !envelope.ContainsKey("preparation_encoded") || !envelope.ContainsKey("commit_resources"))
                throw new Exception("Exact same-dispatch resource preparation envelope required");
            var preparedWithResources = new { preparation = AscetStructureRead.DecodeEditResult(
                    AscetStructureRead.Json.DeserializeObject((string)envelope["preparation_encoded"])),
                commit_resources = envelope["commit_resources"] };
            referenceFileQueryUnknown = false;
            return preparedWithResources;
        }
        return AscetStructureRead.DecodeEditResult(AscetStructureRead.Json.DeserializeObject(encoded));
    }
    static void Main()
    {
        Console.InputEncoding = new UTF8Encoding(false); Console.OutputEncoding = new UTF8Encoding(false);
        var protocol = Console.Out; Console.SetOut(Console.Error);
        try
        {
            string line;
            while ((line = Console.ReadLine()) != null)
            {
                if (line.Length > 131072) throw new Exception("Request too large");
                try
                {
                    var request = (Dictionary<string, object>)AscetStructureRead.Json.DeserializeObject(line);
                    if (Text(request, "cmd") == "close") break;
                    protocol.WriteLine(AscetStructureRead.Json.Serialize(new { ok = true, result = Handle(request) }));
                }
                catch (PreconditionConflict e) { protocol.WriteLine(AscetStructureRead.Json.Serialize(new {
                    ok = false, code = "PRECONDITION_CONFLICT", mutation_started = false, error = e.Message })); }
                catch (Exception e) { protocol.WriteLine(AscetStructureRead.Json.Serialize(new { ok = false, error = e.ToString() })); }
                protocol.Flush();
            }
        }
        finally
        {
            // A lost reply must not trigger further Cebra cleanup on the same
            // connection. Native material is pinned by the original registry.
            if (referenceFileQueryUnknown) Environment.Exit(0);
            if (ascet != null && !ascet.nullHandle())
            {
#if BDE_ORDER_EVAL
                if (orderProbe != null) {
                    var releaseProbe = ascet.createControlMessageCall("destroyObjectForId:");
                    releaseProbe.appendParameter(orderProbe.getIdentifier()); ascet.call(releaseProbe); releaseProbe.getResultVoid();
                }
#endif
                foreach (var block in new [] { editor, reader, sessionGuard, orderInverse, orderKernel,
                        referenceFileQueryUnknown ? null : referenceFileQuery }) if (block != null)
                { var release = ascet.createControlMessageCall("destroyObjectForId:"); release.appendParameter(block.getIdentifier()); ascet.call(release); release.getResultVoid(); }
            }
            foreach (SmalltalkToolAPI api in new SmalltalkToolAPI[] { component, database })
                if (api != null) { api.finalize(); GC.SuppressFinalize(api); }
            GC.Collect(); GC.WaitForPendingFinalizers();
            if (ascet != null && !ascet.nullHandle()) { ascet.DisconnectFromTool(); GC.SuppressFinalize(ascet); }
            Environment.Exit(0);
        }
    }
}
