"Fixed eval-only capture of retained connect source images and native sharing.
 No source normalization, setters, store or inverse dispatch."
[:helpers | [:component :context |
 component handleExceptionsIn: [
 | token owner state record material head root source before after current raw bindings evidence out |
 (helpers isArray and: [helpers size = 3 and: [context isArray and: [context size = 3]]])
   ifFalse: [component error: 'Fixed retained-connect image context required'].
 token := context first. owner := context at: 2. state := context last.
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'connectMaterial'. head := material at: 'historyHead'.
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: component getOID, '/Main'.
 ((record at: 'owner') == component item and: [(material at: 'root') == root and: [
   (record at: 'operation') = 'connect_data' and: [(record at: 'state') = state and: [
   (head at: 'owner') = owner and: [(head at: 'state') = state and: [
   (material at: 'generation') = (root at: 'generation')]]]]]])
   ifFalse: [component error: 'Actual retained source diagnostic owner/state expired'].
 before := head at: 'beforeSource'. after := head at: 'afterSource'. source := before at: 'sourceRoot'.
 (source == (after at: 'sourceRoot') and: [source == (record at: 'diagram') specification specSourceInternalOrNil])
   ifFalse: [component error: 'Actual retained source diagnostic root expired'].
 current := (helpers at: 2) value: component value: (Array with: source with:
   ((before at: 'snapshots') keys, (after at: 'snapshots') keys)).
 (current isKindOf: Dictionary) ifFalse: [component error: current asString].
 raw := helpers first value: component value:
   ((head at: 'beforeNative') keys, (head at: 'afterNative') keys,
     (Array with: (record at: 'diagram') topGraphicalHierarchy)).
 (raw isKindOf: Dictionary) ifFalse: [component error: raw asString].
 bindings := (raw at: 'tokens') copy.
 ((before at: 'snapshots') keys, (after at: 'snapshots') keys, (current at: 'snapshots') keys)
   do: [:object | bindings at: object ifAbsentPut: ['source_only_', (bindings size + 1) printString]].
 evidence := (helpers at: 3) value: component value:
   ((Array with: source with: (before at: 'snapshots') with: (after at: 'snapshots')
     with: (current at: 'snapshots')) copyWith: (current at: 'snapshots'))
       , (Array with: bindings).
 (evidence isKindOf: Dictionary) ifFalse: [component error: evidence asString].
 out := Dictionary new at: 'profile' put: 'retained_connect_source_diagnostic_v1';
   at: 'token' put: token; at: 'owner' put: owner; at: 'state' put: state;
   at: 'source_images' put: evidence;
   at: 'native_current' put: ((raw at: 'imageFor') value: (raw at: 'snapshots'));
   at: 'native_fields' put: ((raw at: 'diagnosticsFor') value: (raw at: 'snapshots'));
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'write_authorized' put: false; yourself.
 ((current at: 'verify') value and: [(raw at: 'verify') value])
   ifFalse: [component error: 'Actual source/native changed during diagnostic capture'].
 (raw at: 'encode') value: out
 ] ifFail: [:error | 'BDE_CONNECT_SOURCE_DIAGNOSTIC_ERROR: ', error messageText]
]]
