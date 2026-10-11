"Execute the real staged guard against detached, deliberately non-executable
 test frames. No production edit token, registry, reader or mutator is supplied."
[:guard | [:component | component handleExceptionsIn: [
 | results message |
 message := 'Finite Module reference capture is preparation-only; persistent write and inverse closure remain unverified'.
 results := #('apply' 'revert' 'validate_revert') collect: [:mode |
   | record material registry frame state answer |
   state := mode = 'apply' ifTrue: ['prepared'] ifFalse: ['applied'].
   material := Dictionary new at: 'profile' put: 'native_connect_material_v3'; yourself.
   record := Dictionary new at: 'component' put: component getOID; at: 'diagramName' put: 'Main';
     at: 'state' put: state; at: 'operation' put: 'connect_data'; at: 'args' put: #();
     at: 'targets' put: #(); at: 'connectMaterial' put: material; yourself.
   registry := Dictionary new at: 'detached_guard_control' put: record; yourself.
   frame := Dictionary new at: 'component' put: component; at: 'mode' put: mode;
     at: 'registry' put: registry; at: 'token' put: 'detached_guard_control';
     at: 'command' put: (Array with: 'Main'); yourself.
   answer := component handleExceptionsIn: [guard value: frame. 'UNEXPECTED_ACCEPT']
     ifFail: [:error | error messageText].
   answer = message ifFalse: [component error: 'Expected original-profile guard did not refuse: ', answer].
   ((record at: 'state') = state and: [(record at: 'connectMaterial') == material and: [registry size = 1]])
     ifFalse: [component error: 'Detached guard control mutated original material'].
   Dictionary new at: 'mode' put: mode; at: 'rejected' put: true; at: 'error' put: answer;
     at: 'detached_material_preserved' put: true; yourself].
 Dictionary new at: 'profile' put: 'native_connect_preparation_guard_controls_v1';
   at: 'component_oid' put: component getOID; at: 'controls' put: results asArray;
   at: 'guard_invocations' put: 3; at: 'production_token_used' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'persistent_write_called' put: false; at: 'connection_edit_dispatched' put: false; yourself
 ] ifFail: [:error | 'BDE_CONNECT_GUARD_PROBE_ERROR: ', error messageText]
]]
