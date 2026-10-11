"""Fixed native structural bridge. Caller owns the shared ASCET lock."""
import os
from pathlib import Path
import bd_service
from bd_native_literal import NativeLiteralAdapter
from bd_edit_journal import fingerprint
from bd_edit_journal import NativePreconditionConflict
import bd_instance_pending


def compile_bridge():
    root = bd_service.ROOT
    sources = [root / 'scripts' / name for name in ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs')]
    resources = [root / 'scripts' / name for name in ('bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st', 'bde_recovery_release.st', 'bde_recovery_status.st', 'bde_managed_inverse_handoff.st', 'bde_connection_group_guard.st', 'bde_construction_group_guard.st', 'bde_native_collection_merge.st', 'bde_parent_order_inverse.st', 'bde_parent_order_evidence.st', 'bde_edge_restore_guard.st', 'bde_native_graph_current.st', 'bde_native_field_patch.st', 'bde_native_field_order_plan.st', 'bde_field_execution_status.st', 'bde_field_source_alias_plan.st', 'bde_source_graph_equal.st', 'bde_field_source_restore.st', 'bde_field_source_compensation.st', 'bde_persisted_source_graph.st', 'bde_delete_inverse_values.st', 'bde_drawing_order_evidence.st')]
    resources.extend(root / 'scripts' / name for name in ('bde_native_source_images.st', 'bde_field_native_capture.st',
        'bde_topology_native_capture.st', 'bde_topology_current_context.st', 'bde_topology_exact_inverse.st', 'bde_message_material_diagnostic.st',
        'bde_connect_material.st', 'bde_module_reference_snapshot.st', 'bde_module_persistent_references.st', 'bde_create_material.st', 'bde_message_declaration_capture.st', 'bde_message_creation_capture.st', 'bde_message_history_guard.st', 'bde_enum_definition_inventory.st', 'bde_enum_declaration_capture.st', 'bde_enum_creation_capture.st', 'bde_enum_history_guard.st', 'bde_declaration_capture.st', 'bde_declaration_cache_guard.st', 'bde_create_history.st', 'bde_create_finalize.st', 'bde_connect_history.st', 'bde_connect_local_plan.st',
        'bde_connect_local_plan_probe.st', 'bde_frozen_source_evidence.st',
        'bde_source_structural_correspondence.st', 'bde_topology_forward_source_normalization.st',
        'bde_source_logical_images.st', 'bde_frozen_image_merge.st', 'bde_topology_local_inverse.st',
        'bde_topology_head_handoff.st', 'bde_topology_owned_head_snapshot.st', 'bde_topology_owned_inverse.st',
        'bde_topology_managed_inverse.st', 'bde_topology_managed_terminal.st', 'bde_topology_inverse_values.st',
        'bde_observation_copy.st', 'bde_field_inverse_values.st', 'bde_field_local_inverse.st',
        'bde_field_source_identity_restore.st', 'bde_source_identity_normalization.st', 'bde_field_failure_compensation.st'))
    resources.extend(root / 'scripts' / name for name in ('bde_commit_resources.st', 'bde_commit_prepare.st', 'bde_commit_status.st', 'bde_commit_registered_models.st', 'bde_commit_registered_models_current.st', 'bde_commit_control.st', 'bde_commit_serializer_profile.st', 'bde_serializer_configuration.st', 'bde_commit_reference_record.st', 'bde_commit_reciprocal.st', 'bde_commit_reciprocal_current.st'))
    from bde_structure_stages import build
    resources.append(root / 'scripts/bde_reference_file_profile.st')
    resources.extend(root / 'scripts' / name for name in ('bde_reference_file_scan.st', 'bde_reference_file_query.st'))
    resources.append(root / 'scripts/bde_reference_file_prepare.st')
    resources.append(root / 'scripts/bde_commit_attempt.st')
    resources.append(root / 'scripts/bde_reference_baseline_lookup.st')
    resources.append(root / 'scripts/bde_commit_persistent_owners.st')
    resources.append(root / 'scripts/bde_persistent_owner_records.st')
    resources.append(root / 'scripts/bde_connect_runtime_lifecycle.st')
    from bde_commit_owner_current_resource import build as build_current_owners
    current_owner_resource = root / 'scripts/bde_commit_persistent_owners_current.st'
    if current_owner_resource.read_text(encoding='utf-8-sig') != build_current_owners():
        raise ValueError('Generated fixed CURRENT owner resource differs')
    resources.extend((current_owner_resource, root / 'scripts/bde_commit_owner_current_query.st'))
    staged_sources, _ = build()
    for name, expected in staged_sources.items():
        source = root / 'scripts' / name
        if source.read_text(encoding='utf-8-sig') != expected:
            raise ValueError('Generated fixed structural phase differs: ' + name)
        resources.append(source)
    binary = root / 'analysis/live-api/AscetStructureSession.exe'
    from bde_declaration_images import build as build_declaration_images, build_enum, build_message
    generated = binary.parent / 'bde_declaration_images.st'
    generated_source = build_declaration_images()
    if not generated.exists() or generated.read_text(encoding='utf-8-sig') != generated_source:
        generated.parent.mkdir(parents=True, exist_ok=True)
        generated.write_text(generated_source, encoding='utf-8')
    resources.append(generated)
    generated_enum = binary.parent / 'bde_enum_declaration_images.st'
    enum_source = build_enum()
    if not generated_enum.exists() or generated_enum.read_text(encoding='utf-8-sig') != enum_source:
        generated_enum.write_text(enum_source, encoding='utf-8')
    resources.append(generated_enum)
    generated_message = binary.parent / 'bde_message_declaration_images.st'
    message_source = build_message()
    if not generated_message.exists() or generated_message.read_text(encoding='utf-8-sig') != message_source:
        generated_message.write_text(message_source,encoding='utf-8')
    resources.append(generated_message)
    sources.append(root / 'scripts/bde_declaration_images.py')
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    bd_service.ensure_probe()
    if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in sources + resources + [dll, Path(__file__)]):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        bd_service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetStructureSession',
            f'/r:{dll}', '/r:System.Web.Extensions.dll', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in resources], *[str(p) for p in sources if p.suffix == '.cs']], 30, build_step=True)
    return binary


class NativeStructureAdapter(NativeLiteralAdapter):
    build = staticmethod(compile_bridge)
    graphical_evidence_required = True
    local_delete_inverse_capable = True
    drawing_evidence_required = True
    causal_drawing_witness_capable = True
    retained_inverse_material_capable = True
    managed_inverse_operations = frozenset(('set_literal', 'set_comment', 'move_node', 'set_edge_route', 'rewire_data'))
    topology_head_snapshot_operations = frozenset()
    managed_topology_operations = frozenset()
    connect_history_capable = False
    connect_local_history_capable = False
    create_material_capable = False
    create_history_capable = False
    create_declaration_history_capable = False
    create_enum_history_preparation_capable = False
    create_enum_history_capable = False
    create_message_history_preparation_capable = False
    create_message_history_capable = False
    create_finalize_capable = False
    create_declaration_finalize_capable = False
    create_enum_finalize_capable = False
    create_message_finalize_capable = False
    # Enable only after the fixed native field and source planners share the
    # same exact CURRENT contract; a collected-value plan cannot authorize it.
    local_field_inverse_capable = False
    field_execution_required = True

    def __init__(self, component, diagram='Main', connect_reference_targets=None, **options):
        super().__init__(component, **options)
        self.diagram = diagram
        environment = os.environ if self.environment is None else self.environment
        commit_profile = environment.get('ASCET_BD_COMMIT_RESOURCE_CAPTURE')
        registered_profile = environment.get('ASCET_BD_COMMIT_REGISTERED_MODELS')
        control_profile = environment.get('ASCET_BD_COMMIT_CONTROL_CAPTURE')
        reciprocal_profile = environment.get('ASCET_BD_COMMIT_RECIPROCAL_CAPTURE')
        reference_baseline = environment.get('ASCET_BD_COMMIT_REFERENCE_BASELINE')
        persistent_owners = environment.get('ASCET_BD_COMMIT_PERSISTENT_OWNERS')
        if persistent_owners is not None and (persistent_owners != 'component_source_v1' or reference_baseline != 'reference_file_v1'):
            raise ValueError('Persistent owners require the fixed original reference-file preparation profile')
        if reference_baseline is not None and (reference_baseline != 'reference_file_v1' or reciprocal_profile != 'outgoing_v1'):
            raise ValueError('Reference-file baseline requires the fixed reciprocal preparation profile')
        if reciprocal_profile is not None and (reciprocal_profile != 'outgoing_v1' or control_profile != 'ctree_v1'):
            raise ValueError('Reciprocal capture requires the fixed all-leaf CTree preparation profile')
        if control_profile is not None and (control_profile != 'ctree_v1' or registered_profile != 'loaded_sg_v1' or commit_profile != 'prepare_v1'):
            raise ValueError('CTree control capture requires the fixed loaded SG preparation profile')
        if registered_profile is not None and (registered_profile != 'loaded_sg_v1' or commit_profile != 'prepare_v1'):
            raise ValueError('Registered model capture requires the fixed commit preparation profile')
        if commit_profile is not None and commit_profile != 'prepare_v1':
            raise ValueError('Unknown fixed commit-resource preparation profile')
        if commit_profile and (self.diagram != 'Main' or environment.get('ASCET_BD_OPERATION_EXECUTOR') != 'staged_v1'):
            raise ValueError('Commit capture requires the fixed staged Main preparation profile')
        self.commit_resource_capture_capable = commit_profile == 'prepare_v1'
        self.commit_resource_receipt_profile = ('native_commit_prepare_v6' if persistent_owners else 'native_commit_prepare_v5' if reference_baseline else 'native_commit_prepare_v4' if reciprocal_profile else 'native_commit_prepare_v3' if control_profile else
            'native_commit_prepare_v2' if registered_profile else 'native_commit_prepare_v1')
        self.commit_resources_prepared = None
        create_profile = environment.get('ASCET_BD_CREATE_MATERIAL')
        if create_profile is not None and create_profile != 'identity_v1':
            raise ValueError('Unknown fixed creation material profile')
        if create_profile == 'identity_v1':
            if self.diagram != 'Main' or environment.get('ASCET_BD_OPERATION_EXECUTOR') != 'staged_v1':
                raise ValueError('Creation capture requires the fixed staged Main executor')
            self.create_material_capable = True
        declaration_profile = environment.get('ASCET_BD_CREATE_DECLARATIONS')
        if declaration_profile is not None and declaration_profile not in ('body_v1', 'enum_body_v1','message_body_v1'):
            raise ValueError('Unknown fixed creation declaration body profile')
        if declaration_profile is not None and not self.create_material_capable:
            raise ValueError('Declaration body capture requires retained staged Main creation material')
        create_history = environment.get('ASCET_BD_CREATE_HISTORY')
        if create_history is not None and create_history != 'native_source_exact_v1':
            raise ValueError('Unknown fixed creation history profile')
        if create_history == 'native_source_exact_v1':
            if not self.create_material_capable or self.diagram != 'Main':
                raise ValueError('Creation history requires retained staged Main factory material')
            self.create_history_capable = True
        declaration_history = environment.get('ASCET_BD_CREATE_DECLARATION_HISTORY')
        if declaration_history is not None and declaration_history not in ('body_exact_v1', 'enum_prepare_exact_v1', 'enum_body_exact_v1','message_prepare_exact_v1','message_body_exact_v1'):
            raise ValueError('Unknown fixed creation declaration history profile')
        if declaration_history == 'body_exact_v1':
            if not self.create_history_capable or declaration_profile != 'body_v1':
                raise ValueError('Declaration history requires original body capture and exact creation history')
            self.create_declaration_history_capable = True
        if declaration_history in ('enum_prepare_exact_v1', 'enum_body_exact_v1'):
            if not self.create_history_capable or declaration_profile != 'enum_body_v1':
                raise ValueError('Enum history preparation requires its original enum body capture profile')
            self.create_enum_history_preparation_capable = True
            self.create_enum_history_capable = declaration_history == 'enum_body_exact_v1'
        if declaration_history in ('message_prepare_exact_v1','message_body_exact_v1'):
            if not self.create_history_capable or declaration_profile != 'message_body_v1':
                raise ValueError('Message history preparation requires its original Module body capture profile')
            self.create_message_history_preparation_capable = True
            self.create_message_history_capable = declaration_history=='message_body_exact_v1'
        finalize_profile = environment.get('ASCET_BD_CREATE_FINALIZE')
        if finalize_profile is not None and finalize_profile != 'original_release_v1':
            raise ValueError('Unknown fixed original graphical finalization profile')
        if finalize_profile == 'original_release_v1':
            if not self.create_history_capable:
                raise ValueError('Finalization requires retained exact graphical creation history')
            self.create_finalize_capable = True
        declaration_finalize = environment.get('ASCET_BD_CREATE_DECLARATION_FINALIZE')
        if declaration_finalize is not None and declaration_finalize not in ('body_original_release_v1','enum_body_original_release_v1','message_body_original_release_v1'):
            raise ValueError('Unknown fixed original declaration finalization profile')
        if declaration_finalize == 'body_original_release_v1':
            if not self.create_finalize_capable or not self.create_declaration_history_capable:
                raise ValueError('Declaration finalization requires original body history and graphical finalization')
            self.create_declaration_finalize_capable = True
        if declaration_finalize == 'enum_body_original_release_v1':
            if not self.create_finalize_capable or not self.create_enum_history_capable:
                raise ValueError('Enum finalization requires original Enum body and executable same-object history')
            self.create_enum_finalize_capable = True
        if declaration_finalize == 'message_body_original_release_v1':
            if not self.create_finalize_capable or not self.create_message_history_capable:
                raise ValueError('Message finalization requires original Module body and executable same-object history')
            self.create_message_finalize_capable = True
        connect_profile = environment.get('ASCET_BD_CONNECT_HISTORY')
        if connect_profile is not None and connect_profile not in ('native_source_exact_v1', 'native_source_local_v1'):
            raise ValueError('Unknown fixed connection history profile')
        if connect_profile in ('native_source_exact_v1', 'native_source_local_v1'):
            if (self.diagram != 'Main' or environment.get('ASCET_BD_CONNECT_MATERIAL') != 'identity_v1'
                    or environment.get('ASCET_BD_OPERATION_EXECUTOR') != 'staged_v1'):
                raise ValueError('Connection history requires fixed retained Main material and staged executor')
            self.connect_history_capable = True
            self.connect_local_history_capable = connect_profile == 'native_source_local_v1'
        reference_profile = environment.get('ASCET_BD_CONNECT_REFERENCES')
        if reference_profile is not None and (reference_profile not in ('module_inbound_v1', 'module_persistent_v1', 'module_owner_records_v1') or not self.connect_history_capable):
            raise ValueError('Module inbound references require fixed retained Main connection material')
        self.connect_reference_capture_capable = reference_profile in ('module_inbound_v1', 'module_persistent_v1', 'module_owner_records_v1')
        self.connect_persistent_reference_capture_capable = reference_profile in ('module_persistent_v1', 'module_owner_records_v1')
        self.connect_owner_record_capture_capable = reference_profile == 'module_owner_records_v1'
        from bd_module_persistent_references import target_requests
        self.connect_reference_targets = target_requests([] if connect_reference_targets is None else connect_reference_targets)
        if self.connect_reference_targets and not self.connect_persistent_reference_capture_capable:
            raise ValueError('Explicit target capture requires fixed persistent Main connection material')
        managed_topology = environment.get('ASCET_BD_MANAGED_TOPOLOGY_INVERSE')
        if managed_topology is not None and managed_topology != 'native_source_v1':
            raise ValueError('Unknown fixed managed topology profile')
        if managed_topology == 'native_source_v1' and environment.get('ASCET_BD_TOPOLOGY_LOCAL_INVERSE') != 'native_source_v1':
            raise ValueError('Managed topology requires retained local topology profile')
        if environment.get('ASCET_BD_TOPOLOGY_LOCAL_INVERSE') == 'native_source_v1' and (
                self.diagram != 'Main'
                or environment.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'
                or environment.get('ASCET_BD_TOPOLOGY_EXACT_INVERSE') != 'native_source_v1'
                or environment.get('ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION') != 'identity_v1'
                or environment.get('ASCET_BD_ORDER_INVERSE_EXPERIMENTAL') != '1'
                or environment.get('ASCET_BD_OPERATION_EXECUTOR') != 'staged_v1'):
            raise ValueError('Local topology inverse requires staged retained Main native/source/order profiles')
        if environment.get('ASCET_BD_TOPOLOGY_LOCAL_INVERSE') == 'native_source_v1':
            self.topology_head_snapshot_operations = frozenset(('disconnect_data', 'delete_node'))
            if managed_topology == 'native_source_v1':
                self.managed_topology_operations = self.topology_head_snapshot_operations
        if environment.get('ASCET_BD_TOPOLOGY_EXACT_INVERSE') == 'native_source_v1' and (
                environment.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'):
            raise ValueError('Exact topology inverse requires retained native/source identity capture')
        if environment.get('ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION') == 'identity_v1' and (
                self.diagram != 'Main'
                or environment.get('ASCET_BD_TOPOLOGY_EXACT_INVERSE') != 'native_source_v1'
                or environment.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'):
            raise ValueError('Topology source normalization requires exact retained Main topology profile')
        if environment.get('ASCET_BD_SOURCE_IDENTITY_NORMALIZATION') == 'identity_v1' and (
                environment.get('ASCET_BD_LOCAL_FIELD_INVERSE') != 'native_source_v1'
                or environment.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1'):
            raise ValueError('Source identity normalization requires fixed local inverse and original source capture')
        if environment.get('ASCET_BD_LOCAL_FIELD_INVERSE') == 'native_source_v1':
            if environment.get('ASCET_BD_SOURCE_MATERIAL_CAPTURE') != 'identity_v1':
                raise ValueError('Local field inverse requires original source identity capture')
            self.local_field_inverse_capable = True  # Explicit isolated experimental gate only.
        projection = environment.get('ASCET_BD_FIELD_SOURCE_PROJECTION')
        if projection is not None and projection != 'active_v1':
            raise ValueError('Unknown active field source projection profile')
        if projection == 'active_v1' and (self.diagram != 'Main' or not self.local_field_inverse_capable):
            raise ValueError('Active field source projection requires retained local Main native/source profile')

    def open_request(self, domain):
        return {**super().open_request(domain), 'diagram': self.diagram}

    def observe(self, domain, targets):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'observe', 'targets': targets})

    def prepare(self, domain, token, operation, arguments):
        bd_instance_pending.check(domain)
        connect = operation == 'connect_data' and self.connect_history_capable
        creation = operation == 'create_block' and self.create_material_capable
        if connect and (len(arguments) != 3 or arguments[0] != []):
            raise ValueError('Exact retained connect history requires full Main preparation')
        self._ensure_open(domain)
        self.parent_order_before = self.parent_order_expected = None
        self.prepared_operation = operation
        self.commit_resources_prepared = None
        result = self._exchange({'cmd': 'prepare', 'token': token, 'operation': operation, 'arguments': arguments})
        self.connect_material_prepared = self.connect_material_actual = None
        self.create_material_prepared = self.create_material_actual = None
        try:
            before = self._preparation(result, token)
            if creation:
                from bd_create_material import validate, bind_preparation
                self.create_material_prepared = validate(self._exchange({'cmd':'create_material',
                    'action':'prepare','token':token}),token=token,oid=domain['oid'],kind=arguments[1],phase='prepared')
                if self.create_material_prepared.get('profile') in ('native_create_material_v3','native_create_material_v4'):
                    bind_preparation(self.create_material_prepared, before, arguments)
            if connect:
                if before.get('targets') != []:
                    raise ValueError('Exact retained connect history requires full Main preparation')
                from bd_connect_material import validate
                material_request = {'cmd': 'connect_material', 'action': 'prepare', 'token': token}
                if self.connect_reference_targets:
                    material_request['persistent_target_keys'] = self.connect_reference_targets.copy()
                self.connect_material_prepared = validate(self._exchange(material_request), token=token, component_oid=domain['oid'],
                    source=arguments[1], target=arguments[2], phase='prepared')
                self._check_connect_reference_profile(self.connect_material_prepared)
                if self.connect_reference_capture_capable and self.connect_material_prepared['module_references']['generation'] != before.get('generation'):
                    raise ValueError('Module reference capture differs from the original Main generation')
        except Exception as error:
            # The fixed prepare reply was received. No model mutation was
            # dispatched; discard only this exact prepared native record.
            if (connect or creation) and not self.commit_resource_capture_capable:
                try:
                    self.prepare_cleanup = self.discard_prepared(domain, token)
                except Exception as cleanup_error:
                    raise RuntimeError('Insertion preparation failed: ' + str(error)
                        + '; exact prepared cleanup failed: ' + str(cleanup_error)) from error
            raise
        return before

    def _preparation(self, result, token):
        if getattr(self, 'commit_resource_capture_capable', False):
            if not isinstance(result, dict) or set(result) != {'preparation', 'commit_resources'}:
                raise ValueError('Same-dispatch prepared commit-resource envelope required')
            from bd_commit_resources import validate
            proof = validate(result['commit_resources'], token=token, component_oid=self.domain['oid'])
            if proof['profile'] != getattr(self, 'commit_resource_receipt_profile', 'native_commit_prepare_v1'):
                raise ValueError('Prepared resource coverage differs from the requested fixed profile')
            self.commit_resources_prepared = proof
            result = result['preparation']
        elif isinstance(result, dict) and 'commit_resources' in result:
            raise ValueError('Unexpected resource preparation receipt without its fixed profile')
        self.inverse_expected = None
        self.drawing_order_before = self.drawing_order_expected = None
        self.drawing_order_witness = None
        self.graphical_current = self.graphical_signature = None
        if 'observation' not in result:
            return result
        if 'field_local_inverse_profile' in result:
            if (self.local_field_inverse_capable is not True
                    or set(result) != {'observation', 'inverse_expected', 'field_local_inverse_profile', 'native_token'}
                    or result['field_local_inverse_profile'] != 'native_source_local_inverse_v1'
                    or result['native_token'] != token):
                raise ValueError('Fixed local field inverse preparation binding/shape differs')
            from bd_delete_inverse import _rows
            _rows(result['observation']); _rows(result['inverse_expected'])
            self.inverse_expected = result['inverse_expected']
            return result['observation']
        from bd_parent_order_effects import signature, validate_preparation
        before, expected = result['parent_order_before'], result['parent_order_expected']
        validate_preparation(before, expected, token=token, diagram=self.diagram)
        if result.get('parent_order_signature') != signature(before):
            raise ValueError('Native CURRENT parent signature differs from its full image')
        self.parent_order_before, self.parent_order_expected = before, expected
        self.parent_order_preflight_token = token
        if 'graphical_current' not in result or 'graphical_signature' not in result:
            raise ValueError('Native parent operation lacks complete graphical preflight')
        from bd_native_graphical_effects import validate_current
        validate_current(result['graphical_current'])
        import re
        if not re.fullmatch(re.escape(token) + r'/g[1-9][0-9]*', result['graphical_signature']):
            raise ValueError('Graphical preflight is not bound to this native token')
        self.graphical_current = result['graphical_current']
        self.graphical_signature = result['graphical_signature']
        from bd_drawing_order_effects import validate_preparation as validate_drawing
        self.drawing_order_before, self.drawing_order_expected = result.get('drawing_order_before'), result.get('drawing_order_expected')
        self.drawing_order_witness = result.get('drawing_order_witness')
        validate_drawing(self.drawing_order_before, self.drawing_order_expected, token=token, diagram=self.diagram,
                         physical_before=before, physical_expected=expected)
        if 'inverse_expected' in result:
            self.inverse_expected = result['inverse_expected']
        return result['observation']

    def validate(self, domain, operation, arguments):
        self._ensure_open(domain)
        # A protocol identifier only: validate never registers a recovery record.
        token = 'edit_' + fingerprint({'domain': domain, 'operation': operation, 'arguments': arguments})
        return self._preparation(self._exchange({'cmd': 'validate', 'token': token, 'operation': operation, 'arguments': arguments}), token)

    def observe_public(self, domain):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'observe_public'})

    def field_failure_status(self, domain, token, transaction, witness):
        """Classify a separate retained restoration; never prepare/apply or replay."""
        self._ensure_open(domain)
        return self._exchange({'cmd': 'field_failure_compensation_status', 'token': token,
            'transaction': transaction, 'witness_token': witness})

    def validate_revert(self, domain, token):
        self._ensure_open(domain)
        self.parent_order_before = self.parent_order_expected = None
        return self._preparation(self._exchange({'cmd': 'validate_revert', 'token': token}), token)

    def validate_connection_group(self, domain, tokens):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'validate_connection_group', 'tokens': tokens})

    def validate_construction_group(self, domain, tokens):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'validate_construction_group', 'tokens': tokens})

    def observe_models(self, domain):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'observe_models'})

    def apply(self, token):
        if getattr(self, 'commit_resource_capture_capable', False):
            raise NativePreconditionConflict('Commit resource capture is preparation-only; complete persistent diff/inverse is required before writing')
        if (getattr(self, 'connect_persistent_reference_capture_capable', False)
                and getattr(self, 'prepared_operation', None) == 'connect_data'):
            raise NativePreconditionConflict('Finite Module reference capture is preparation-only; persistent write and inverse closure remain unverified')
        if self.create_material_capable and getattr(self, 'prepared_operation', None) == 'create_block':
            material = self.create_material_prepared
            if material is None or material['native_token'] != token:
                raise ValueError('Exact prepared creation capture required')
            self.field_execution = None
            self.library_effects = self.scope_effects = []
            self.parent_order_effects = self.drawing_order_effects = []
            self.create_pending = bd_instance_pending.begin(self.domain, 'create_apply', token)
            try:
                result = self._exchange({'cmd':'apply','token':token})
            except NativePreconditionConflict:
                bd_instance_pending.confirmed(self.create_pending)
                raise
            if 'observation' in result:
                self.library_effects = result.get('library_effects',[])
                self.scope_effects = result.get('scope_effects',[])
            from bd_create_material import validate
            self.create_material_actual = validate(self._exchange({'cmd':'create_material',
                'action':'capture_attached','token':token}),token=token,oid=self.domain['oid'],
                kind=material['kind'],phase='attached')
            return result.get('observation',result)
        if self.connect_history_capable and getattr(self, 'prepared_operation', None) == 'connect_data':
            material = self.connect_material_prepared
            if material is None or material['native_token'] != token:
                raise ValueError('Exact original prepared connection material required')
            self.field_execution = None
            self.library_effects = self.scope_effects = []
            self.parent_order_effects = self.drawing_order_effects = []
            self.connect_pending = bd_instance_pending.begin(self.domain, 'connect_apply', token)
            try:
                result = self._exchange({'cmd': 'apply', 'token': token})
            except NativePreconditionConflict:
                bd_instance_pending.confirmed(self.connect_pending)
                raise
            self.connect_material_actual = self._exchange({'cmd': 'connect_material', 'action': 'capture_attached', 'token': token})
            from bd_connect_material import validate
            self.connect_material_actual = validate(self.connect_material_actual, token=token,
                component_oid=self.domain['oid'], source=material['source'], target=material['target'], phase='attached')
            self._check_connect_reference_profile(self.connect_material_actual)
            return result.get('observation', result)
        return self._mutate('apply', token)

    def _check_connect_reference_profile(self, material):
        expected = ('native_connect_material_v4' if getattr(self, 'connect_owner_record_capture_capable', False) else
            'native_connect_material_v3' if getattr(self, 'connect_persistent_reference_capture_capable', False) else
            'native_connect_material_v2' if self.connect_reference_capture_capable else 'native_connect_material_v1')
        if material['profile'] != expected:
            raise ValueError('Connect reference coverage differs from the explicit fixed capture profile')
        if expected in ('native_connect_material_v3', 'native_connect_material_v4'):
            from bd_module_persistent_references import target_requests
            targets = material['module_persistent_references']['before'].get('requested_reciprocal_targets', [])
            actual = target_requests([bytes(key).hex() for key in targets])
            if actual != getattr(self, 'connect_reference_targets', []):
                raise ValueError('Prepared native target coverage differs from this exact original request')

    def prepare_connect_history(self, domain, token, owner, state, result_id):
        if not self.connect_history_capable:
            raise ValueError('Fixed connection history profile is disabled')
        self._ensure_open(domain)
        return self._exchange({'cmd': 'connect_history', 'action': 'prepare', 'token': token,
            'owner': owner, 'state': state, 'result_change_id': result_id, 'prepared_signature': ''})

    def execute_connect_history(self, domain, prepared):
        self._ensure_open(domain)
        context = {k: prepared[k] for k in ('owner_change_id', 'state', 'result_change_id', 'signature')}
        self.connect_pending = bd_instance_pending.begin(domain, 'connect_history', prepared['native_token'], context=context)
        try:
            return self._exchange({'cmd': 'connect_history', 'action': 'execute', 'token': prepared['native_token'],
                'owner': prepared['owner_change_id'], 'state': prepared['state'],
                'result_change_id': prepared['result_change_id'], 'prepared_signature': prepared['signature']})
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(self.connect_pending)
            raise

    def connect_history_status(self, domain, prepared):
        self._ensure_open(domain)
        query_id = 'edit_' + fingerprint({'connect_terminal_query': prepared['result_change_id']})
        return self._exchange({'cmd': 'connect_history', 'action': 'status', 'token': prepared['native_token'],
            'owner': prepared['result_change_id'], 'state': 'reverted' if prepared['state'] == 'applied' else 'applied',
            'result_change_id': query_id, 'prepared_signature': ''})

    def connect_material_status(self, domain, token):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'connect_material', 'action': 'inspect_attached', 'token': token})

    def confirm_connect(self, domain, command, token, *, context=None):
        import json
        expected = {'domain': domain, 'command': command, 'native_token': token, 'automatic_retry': False}
        if context is not None:
            expected['managed_context'] = context
        marker = bd_instance_pending.pending_path(domain)
        if json.loads(marker.read_text(encoding='utf-8')) != expected:
            raise ValueError('Another connection request owns quarantine')
        bd_instance_pending.confirmed(marker)

    def confirm_create(self, domain, token):
        import json
        expected = dict(domain=domain, command='create_apply',native_token=token,automatic_retry=False)
        marker = bd_instance_pending.pending_path(domain)
        if json.loads(marker.read_text(encoding='utf-8')) != expected:
            raise ValueError('Another creation request owns quarantine')
        bd_instance_pending.confirmed(marker)

    def create_material_status(self, domain, token, *, reconcile=False):
        self._ensure_open(domain)
        if self.create_material_capable is not True:
            raise ValueError('Fixed original creation material profile is disabled')
        return self._exchange({'cmd': 'create_material', 'token': token,
            'action': 'reconcile_attached' if reconcile else 'inspect_attached'})

    def prepare_create_history(self, domain, token, owner, state, result_id):
        if not self.create_history_capable:
            raise ValueError('Fixed creation history profile is disabled')
        self._ensure_open(domain)
        return self._exchange(dict(cmd='create_history',action='prepare',token=token,
            owner=owner,state=state,result_change_id=result_id,prepared_signature=''))

    def execute_create_history(self, domain, prepared):
        if prepared.get('kind') in ('receive_message','send_message','send_receive_message'):
            if not self.create_message_history_capable:
                raise ValueError('Message history preparation does not authorize execution')
            if prepared.get('profile')!='native_create_message_exact_preparation_v2':
                raise ValueError('Message execution requires a separately bound exact execution preparation')
        if prepared.get('kind') == 'enumeration' and not self.create_enum_history_capable:
            raise ValueError('Enum history preparation does not authorize execution')
        if prepared.get('kind') == 'enumeration' and prepared.get('profile') != 'native_create_enum_exact_preparation_v2':
            raise ValueError('Enum execution requires a separately bound exact execution preparation')
        if not self.create_history_capable:
            raise ValueError('Fixed creation history profile is disabled')
        if prepared.get('kind') == 'variable' and not self.create_declaration_history_capable:
            raise ValueError('Fixed declaration creation history profile is disabled')
        self._ensure_open(domain)
        context = {k:prepared[k] for k in ('owner_change_id','state','result_change_id','signature')}
        marker = bd_instance_pending.begin(domain,'create_history',prepared['native_token'],context=context)
        try:
            return self._exchange(dict(cmd='create_history',action='execute',token=prepared['native_token'],
                owner=prepared['owner_change_id'],state=prepared['state'],
                result_change_id=prepared['result_change_id'],prepared_signature=prepared['signature']))
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(marker)
            raise

    def create_history_status(self, domain, prepared):
        if not self.create_history_capable:
            raise ValueError('Fixed creation history profile is disabled')
        self._ensure_open(domain)
        query = 'edit_' + fingerprint(dict(create_terminal_query=prepared['result_change_id']))
        return self._exchange(dict(cmd='create_history',action='status',token=prepared['native_token'],
            owner=prepared['result_change_id'],state='reverted' if prepared['state']=='applied' else 'applied',
            result_change_id=query,prepared_signature=''))

    def confirm_create_history(self, domain, prepared):
        import json
        expected = dict(domain=domain,command='create_history',native_token=prepared['native_token'],
            automatic_retry=False,managed_context={k:prepared[k]
                for k in ('owner_change_id','state','result_change_id','signature')})
        marker = bd_instance_pending.pending_path(domain)
        if json.loads(marker.read_text(encoding='utf-8')) != expected:
            raise ValueError('Another creation history request owns quarantine')
        bd_instance_pending.confirmed(marker)

    def prepare_create_finalize(self, domain, token, owner, result_id):
        if not self.create_finalize_capable:
            raise ValueError('Fixed original graphical finalization profile is disabled')
        self._ensure_open(domain)
        return self._exchange(dict(cmd='create_finalize', action='prepare', token=token, owner=owner,
            state='reverted', result_change_id=result_id, prepared_signature=''))

    def execute_create_finalize(self, domain, prepared):
        if not self.create_finalize_capable:
            raise ValueError('Fixed original graphical finalization profile is disabled')
        self._ensure_open(domain)
        context={k:prepared[k] for k in ('owner_change_id','result_change_id','signature')}
        marker=bd_instance_pending.begin(domain,'create_finalize',prepared['native_token'],context=context)
        try:
            return self._exchange(dict(cmd='create_finalize',action='execute',token=prepared['native_token'],
                owner=prepared['owner_change_id'],state='reverted',result_change_id=prepared['result_change_id'],
                prepared_signature=prepared['signature']))
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(marker)
            raise

    def create_finalize_status(self, domain, prepared):
        if not self.create_finalize_capable:
            raise ValueError('Fixed original graphical finalization profile is disabled')
        self._ensure_open(domain)
        return self._exchange(dict(cmd='create_finalize',action='status',token=prepared['native_token'],
            owner=prepared['owner_change_id'],state='reverted',result_change_id=prepared['result_change_id'],prepared_signature=''))

    def confirm_create_finalize(self, domain, prepared):
        import json
        expected=dict(domain=domain,command='create_finalize',native_token=prepared['native_token'],automatic_retry=False,
            managed_context={k:prepared[k] for k in ('owner_change_id','result_change_id','signature')})
        marker=bd_instance_pending.pending_path(domain)
        if json.loads(marker.read_text(encoding='utf-8'))!=expected:
            raise ValueError('Another finalization request owns quarantine')
        bd_instance_pending.confirmed(marker)

    def revert(self, domain, token, *, expected_operation=None):
        bd_instance_pending.check(domain)
        self._ensure_open(domain)
        self.expected_operation = expected_operation
        return self._mutate('revert', token)

    def _mutate(self, command, token):
        self.field_execution = None
        self.library_effects = []
        self.scope_effects = []
        self.parent_order_effects = []
        self.graphical_actual = None
        self.drawing_order_effects = []
        request = {'cmd': command, 'token': token}
        if command == 'revert':
            if getattr(self, 'parent_order_preflight_token', None) != token:
                self.validate_revert(self.domain, token)
            if self.parent_order_before is not None:
                from bd_parent_order_effects import signature
                request['parent_order_expect_signature'] = signature(self.parent_order_before)
        if getattr(self, 'graphical_signature', None) is not None:
            request['graphical_expect_signature'] = self.graphical_signature
        marker = bd_instance_pending.begin(self.domain, command, token)
        try:
            result = self._exchange(request)
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(marker)
            raise
        # Other failures leave quarantine, even when the bridge process exits.
        if 'observation' in result:
            self.field_execution = result.get('field_execution')
            self.library_effects = result.get('library_effects', [])
            self.scope_effects = result.get('scope_effects', [])
            self.parent_order_effects = result.get('parent_order_effects', [])
            self.drawing_order_effects = result.get('drawing_order_effects', [])
            if self.parent_order_effects:
                from bd_native_graphical_effects import validate_actual_diff
                if fingerprint(result.get('graphical_current')) != fingerprint(self.graphical_current):
                    raise ValueError('Actual native CURRENT differs from durable preflight')
                self.graphical_actual = result.get('graphical_actual')
                validate_actual_diff(self.graphical_current, self.graphical_actual)
                from bd_drawing_order_effects import postcondition as drawing_postcondition
                if not drawing_postcondition(self.drawing_order_effects, self.drawing_order_before, self.drawing_order_expected):
                    raise ValueError('Actual drawing order differs from durable preflight')
            result = result['observation']
        if self.field_execution is not None:
            from bd_field_execution import validate
            validate(self.field_execution, token=token, operation=self.field_execution['operation'],
                     direction='forward' if command == 'apply' else 'undo')
            self.field_pending = marker
        elif (getattr(self, 'prepared_operation', None) in self.managed_inverse_operations
              or getattr(self, 'expected_operation', None) in self.managed_inverse_operations):
            raise ValueError('Field operation lacks native execution proof; preserve quarantine')
        else:
            bd_instance_pending.confirmed(marker)
        return result

    def confirm_field(self, domain, command, token):
        import json
        marker = self.field_pending
        if json.loads(marker.read_text(encoding='utf-8')) != {
                'domain': domain, 'command': command, 'native_token': token, 'automatic_retry': False}:
            raise ValueError('Another request owns native field execution quarantine')
        bd_instance_pending.confirmed(marker)

    def release(self, domain, token, *, inverse_id=None):
        self._ensure_open(domain)
        return self._exchange({'cmd':'release', 'token':token, **({'inverse_id': inverse_id} if inverse_id else {})})

    def retain_inverse(self, domain, token, inverse_id):
        self._ensure_open(domain)
        self.retention_pending = bd_instance_pending.begin(domain, 'retain_inverse', token)
        # The caller commits the received ownership proof before clearing this
        # cross-STORE marker. Lost replies or journal failures retain quarantine.
        return self._exchange({'cmd': 'retain_inverse', 'token': token, 'inverse_id': inverse_id})

    def confirm_retention(self, domain, token, inverse_id):
        import json
        marker = self.retention_pending
        if json.loads(marker.read_text(encoding='utf-8')) != {
                'domain': domain, 'command': 'retain_inverse', 'native_token': token, 'automatic_retry': False}:
            raise ValueError('Another request owns material retention quarantine')
        bd_instance_pending.confirmed(marker)

    def topology_owned_head_snapshot(self, domain, token, owner, state):
        self._ensure_open(domain)
        return self._exchange({'cmd': 'topology_owned_head_snapshot', 'token': token,
            'owner': owner, 'state': state})

    def discard_prepared(self, domain, token):
        self._ensure_open(domain)
        return self._exchange({'cmd':'discard_prepared', 'token':token})

    def recovery_status(self, domain, token):
        self._ensure_open(domain)
        return self._exchange({'cmd':'recovery_status', 'token':token})

    def commit_resource_status(self, domain, token, *, check=False):
        self._ensure_open(domain)
        from bd_commit_resources import status
        return status(self._exchange({'cmd':'commit_resources', 'action':'check' if check else 'inspect', 'token':token}),
                      token=token, component_oid=domain['oid'], checked=check)

    def source_recovery(self, domain, token, action, transaction_id, failed_id, sequence=0):
        self._ensure_open(domain)
        # This distinct recovery transaction never clears or replaces the
        # original pending marker. Its caller persists intent before dispatch.
        return self._exchange({'cmd': 'field_source_recovery', 'token': token, 'action': action,
            'transaction_id': transaction_id, 'failed_change_id': failed_id,
            'execution_sequence': str(sequence)})

    def validate_managed_inverse(self, domain, token, head, state, result_id):
        self._ensure_open(domain)
        result = self._exchange({'cmd': 'validate_managed_inverse', 'token': token,
            'head_change_id': head, 'expected_state': state, 'result_change_id': result_id})
        return self._preparation(result, token)

    def validate_managed_topology_inverse(self, domain, token, head, state, result_id, operation):
        if operation not in self.managed_topology_operations:
            raise ValueError('Fixed managed topology operation unavailable')
        self._ensure_open(domain)
        self.managed_topology_expected_operation = operation
        return self._preparation(self._exchange({'cmd': 'validate_managed_topology_inverse', 'token': token,
            'head_change_id': head, 'expected_state': state, 'result_change_id': result_id}), token)

    def managed_topology_inverse(self, domain, token, head, state, result_id, operation):
        if operation not in self.managed_topology_operations or operation != getattr(self, 'managed_topology_expected_operation', None):
            raise ValueError('Prepared fixed managed topology operation required')
        self._ensure_open(domain)
        context = {'head_change_id': head, 'expected_state': state, 'result_change_id': result_id}
        marker = bd_instance_pending.begin(domain, 'managed_inverse', token, context=context)
        self.library_effects = []; self.scope_effects = []
        self.parent_order_effects = []; self.drawing_order_effects = []
        self.graphical_actual = None; self.field_execution = None; self.topology_execution = None
        self.managed_pending = marker
        try:
            result = self._exchange({'cmd': 'managed_topology_inverse', 'token': token, **context,
                'parent_order_expect_signature': __import__('bd_parent_order_effects').signature(self.parent_order_before),
                'graphical_expect_signature': self.graphical_signature})
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(marker)
            raise
        from bd_topology_execution import validate
        validate(result['topology_execution'], token=token, operation=operation, head=head, result_id=result_id, state=state)
        from bd_parent_order_effects import postcondition
        from bd_drawing_order_effects import postcondition as drawing_postcondition
        from bd_native_graphical_effects import same_current, summary
        if (not postcondition(result['parent_order_effects'], self.parent_order_before, self.parent_order_expected)
                or not drawing_postcondition(result['drawing_order_effects'], self.drawing_order_before, self.drawing_order_expected)
                or not same_current(result['graphical_current'], self.graphical_current)):
            raise ValueError('Actual managed topology order or graphical preparation differs; preserve quarantine')
        summary(result['graphical_current'], result['graphical_actual'])
        self.parent_order_effects = result['parent_order_effects']; self.drawing_order_effects = result['drawing_order_effects']
        self.graphical_actual = result['graphical_actual']; self.topology_execution = result['topology_execution']
        return result['observation']

    def managed_inverse(self, domain, token, head, state, result_id):
        self._ensure_open(domain)
        context = {'head_change_id': head, 'expected_state': state, 'result_change_id': result_id}
        marker = bd_instance_pending.begin(domain, 'managed_inverse', token, context=context)
        self.library_effects = []; self.scope_effects = []; self.parent_order_effects = []
        self.graphical_actual = None; self.drawing_order_effects = []
        self.field_execution = None
        try:
            result = self._exchange({'cmd': 'managed_inverse', 'token': token, **context})
        except NativePreconditionConflict:
            bd_instance_pending.confirmed(marker)
            raise
        # Persist the observed model result before acknowledging this marker.
        self.managed_pending = marker
        if 'observation' in result:
            self.field_execution = result.get('field_execution')
            from bd_field_execution import validate
            validate(self.field_execution, token=token, operation=self.field_execution['operation'],
                     direction='redo' if state == 'reverted' else 'undo')
            result = result['observation']
        return result

    def confirm_managed(self, domain, token, head, state, result_id, *, handoff=False):
        import json
        marker = self.managed_handoff_pending if handoff else self.managed_pending
        expected = {'domain': domain, 'command': 'handoff_inverse' if handoff else 'managed_inverse',
            'native_token': token, 'automatic_retry': False,
            'managed_context': {'head_change_id': head, 'expected_state': state, 'result_change_id': result_id}}
        if json.loads(marker.read_text(encoding='utf-8')) != expected:
            raise ValueError('Another managed history request owns quarantine')
        bd_instance_pending.confirmed(marker)

    def handoff_inverse(self, domain, token, head, state, result_id):
        self._ensure_open(domain)
        context = {'head_change_id': head, 'expected_state': state, 'result_change_id': result_id}
        self.managed_handoff_pending = bd_instance_pending.begin(domain, 'handoff_inverse', token, context=context)
        return self._exchange({'cmd': 'handoff_inverse', 'token': token, 'head_change_id': head,
            'expected_state': state, 'inverse_id': result_id})
