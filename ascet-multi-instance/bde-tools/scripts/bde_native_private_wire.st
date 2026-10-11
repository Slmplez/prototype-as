[:component :material :token |
 component handleExceptionsIn: [
 | executor checkpoint clone ids references register ref referencedAt contents rows cells primitiveRows steps current original currentRows originalRows stepRows boundaryRows point originalX emit closed |
 ((material isKindOf: Dictionary) and: [(material at: 'profile') = 'native_private_remote_material_v1' and: [
   (material at: 'write_authorized') == false and: [token isString and: [token size = 32]]]])
   ifFalse: [component error: 'Exact private remote material and token required'].
 executor := material at: 'executor'. checkpoint := material at: 'checkpoint'. clone := material at: 'clone'.
 current := executor at: 'currentCheckpoint'. steps := executor at: 'primitiveSteps'.
 original := material at: 'originalFieldCheckpoint'.
 point := material at: 'independentPoint'. originalX := material at: 'independentX'.
 ids := IdentityDictionary new. references := OrderedCollection new.
 register := [:object |
   (object isNil or: [object isNumber or: [(object isKindOf: Symbol) or: [object == true or: [object == false]]]])
     ifFalse: [ids at: object ifAbsent: [
       references size >= 100000 ifTrue: [component error: 'Private wire reference bound exceeded'].
       references add: object. ids at: object put: references size]]
 ].
 current keys do: [:object | register value: object].
 current keysAndValuesDo: [:object :entry | | value |
   value := entry at: 'value'. (entry at: 'kind') = 'value' ifFalse: [
     (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :member |
       register value: key. register value: member]] ifFalse: [value do: [:member | register value: member]]]
 ].
 original keysAndValuesDo: [:object :entry | | value |
   value := entry at: 'value'. (entry at: 'kind') = 'value' ifFalse: [
     (value isKindOf: Dictionary) ifTrue: [value keysAndValuesDo: [:key :member |
       register value: key. register value: member]] ifFalse: [value do: [:member | register value: member]]]
 ].
 steps do: [:step | register value: (step at: 2). register value: (step at: 3). register value: step last].
 referencedAt := [:saved :target | | found |
   found := OrderedCollection new.
   saved keysAndValuesDo: [:object :entry | (entry at: 'kind') = 'fields' ifTrue: [
     (entry at: 'value') doWithIndex: [:value :index | value == target ifTrue: [
       found add: (object class name asString, '/', (object class allInstVarNames at: index) asString)]]]].
   found isEmpty ifTrue: ['none'] ifFalse: [found first]
 ].
 ref := [:object |
   object isNil ifTrue: [Array with: 'nil'] ifFalse: [
   (object == true or: [object == false]) ifTrue: [Array with: 'bool' with: object] ifFalse: [
   object isNumber ifTrue: [Array with: 'number' with: object class name asString with: object printString] ifFalse: [
   (object isKindOf: Symbol) ifTrue: [Array with: 'symbol' with: object asString] ifFalse: [
     Array with: 'ref' with: (ids at: object ifAbsent: [component error: 'Unknown private wire reference: ',
       object class name asString, '/owned=', (current includesKey: object) printString,
       '/registered=', (references anySatisfy: [:entry | entry == object]) printString,
       '/current=', (referencedAt value: current value: object),
       '/observed=', (referencedAt value: (executor at: 'captureCheckpoint') value value: object)])]]]]
 ].
 contents := [:value |
   (value isKindOf: Dictionary) ifTrue: [
     (value keys asSortedCollection: [:left :right | (ref value: left) printString < (ref value: right) printString])
       collect: [:key | Array with: (ref value: key) with: (ref value: (value at: key))]
   ] ifFalse: [((value isKindOf: Set) or: [value isKindOf: IdentitySet]) ifTrue: [
     (value asSortedCollection: [:left :right | (ref value: left) printString < (ref value: right) printString])
       collect: [:member | ref value: member]
   ] ifFalse: [(value collect: [:member | ref value: member]) asArray]]
 ].
 rows := [:saved | saved keys collect: [:object | | entry kind value |
   entry := saved at: object. kind := entry at: 'kind'. value := entry at: 'value'.
   Dictionary new at: 'ref' put: (ids at: object); at: 'class' put: object class name asString;
     at: 'kind' put: kind;
     at: 'values' put: (kind = 'value'
       ifTrue: [object isString ifTrue: [value asCebraString asArray] ifFalse: [value asArray]]
       ifFalse: [contents value: value]); yourself
 ]].
 cells := [:edits | edits collect: [:entry |
   Dictionary new at: 'ref' put: (ids at: (entry at: 'object'));
     at: 'kind' put: (entry at: 'kind'); at: 'index' put: (entry at: 'index' ifAbsent: [0]);
     at: 'before' put: ((entry at: 'kind') = 'fields' ifTrue: [ref value: (entry at: 'before')]
       ifFalse: [contents value: (entry at: 'before')]);
     at: 'after' put: ((entry at: 'kind') = 'fields' ifTrue: [ref value: (entry at: 'after')]
       ifFalse: [contents value: (entry at: 'after')]); yourself
 ]].
 currentRows := rows value: current.
 originalRows := rows value: original.
 primitiveRows := [:schedule | schedule collect: [:step | Dictionary new at: 'kind' put: step first;
   at: 'ref' put: (ids at: (step at: 2)); at: 'index' put: (ref value: (step at: 3));
   at: 'value' put: (ref value: step last); yourself]].
 stepRows := primitiveRows value: steps.
 boundaryRows := OrderedCollection new.
 references doWithIndex: [:object :index | (current includesKey: object) ifFalse: [
   (object == (checkpoint at: 'owner') or: [((object isKindOf: DBBaseObject) or: [object isKindOf: DBProxy]) or: [
     (object isKindOf: SGDBObject) or: [(object isKindOf: SGAliasMethod) or: [
       #('CgFont' 'CgDeviceIndependentImage' 'EtasIcon') includes: object class name asString]]]])
     ifFalse: [component error: 'Unaudited mutable private wire boundary: ', object class name asString,
       '/current=', (referencedAt value: current value: object),
       '/original=', (referencedAt value: original value: object),
       '/cloned=', (((clone at: 'memo') values anySatisfy: [:entry | entry == object]) printString),
       '/source=', ((clone at: 'memo') includesKey: object) printString].
   boundaryRows add: (Dictionary new at: 'ref' put: index; at: 'class' put: object class name asString;
     at: 'reference_only' put: true; yourself)]].
 emit := [:value | | out encode |
   out := WriteStream on: String new.
   encode := [:item |
     item isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
     item isString ifTrue: [out nextPutAll: '{"$s":['. item asCebraString doWithIndex: [:byte :index |
       index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString]. out nextPutAll: ']}'] ifFalse: [
     ((item == true or: [item == false]) or: [item isInteger]) ifTrue: [out nextPutAll: item printString] ifFalse: [
     (item isKindOf: Dictionary) ifTrue: [out nextPutAll: '{"$d":['.
       item keys asSortedCollection doWithIndex: [:key :index | index > 1 ifTrue: [out nextPut: $,].
         out nextPut: $[. encode value: key. out nextPut: $,. encode value: (item at: key). out nextPut: $]]. out nextPutAll: ']}']
       ifFalse: [item isCollection ifFalse: [component error: 'Unsupported private wire JSON value'].
         out nextPut: $[. item asArray doWithIndex: [:entry :index | index > 1 ifTrue: [out nextPut: $,]. encode value: entry]. out nextPut: $]]]]].
     out position > 16777216 ifTrue: [component error: 'Private wire JSON bound exceeded']
   ]. encode value: value. out contents
 ].
 closed := false.
 [:request |
  component handleExceptionsIn: [
   | action index result value status observed changes physical physicalEntry physicalRows |
   ((request isKindOf: Array) and: [request size = 3 and: [
     (request allSatisfy: [:entry | entry isString]) and: [request first = token]]])
       ifFalse: [component error: 'Private wire session mismatch'].
   closed ifTrue: [component error: 'Private wire released'].
   action := request at: 2.
   (#('export' 'observe' 'step' 'recover' 'perturb' 'reset' 'release' 'registry_owner'
      'physical_begin' 'physical_next' 'physical_fail_before' 'physical_fail_after'
      'physical_reconcile' 'physical_disturb' 'physical_reset') includes: action)
     ifFalse: [component error: 'Unknown fixed private wire command'].
   index := (request last) asNumber.
   (index isInteger and: [index >= 0 and: [index <= 100000 and: [index printString = request last]]])
     ifFalse: [component error: 'Exact private wire index required'].
   ((#('step' 'recover' 'physical_begin' 'physical_next' 'physical_fail_before'
       'physical_fail_after' 'physical_reconcile') includes: action) or: [index = 0])
     ifFalse: [component error: 'Read-only private wire command takes zero index'].
   ((checkpoint at: 'owner') == component item and: [
     ((clone at: 'verifyCorrespondence') value: clone) and: [(checkpoint at: 'verifyCurrent') value]])
       ifFalse: [component error: 'Private wire original lineage changed'].
   action = 'registry_owner' ifTrue: [component item] ifFalse: [
   action = 'release' ifTrue: [
     ((((executor at: 'status') value) at: 'state') = 'recovered' and: [
       (executor at: 'currentMatches') value])
       ifFalse: [component error: 'Private release requires completely recovered CURRENT'].
     closed := true
   ].
   value := nil.
   action = 'step' ifTrue: [value := (executor at: 'executeNext') value: index].
   action = 'recover' ifTrue: [value := (executor at: 'recoverNext') value: index].
   action = 'physical_begin' ifTrue: [value := (executor at: 'beginPhysicalRecovery') value: index].
   action = 'physical_next' ifTrue: [value := (executor at: 'nextPhysicalRecovery') value: index value: 'none'].
   action = 'physical_fail_before' ifTrue: [value := (executor at: 'nextPhysicalRecovery') value: index value: 'before_write'].
   action = 'physical_fail_after' ifTrue: [value := (executor at: 'nextPhysicalRecovery') value: index value: 'after_write'].
   action = 'physical_reconcile' ifTrue: [value := (executor at: 'reconcilePhysicalRecovery') value: index].
   action = 'physical_disturb' ifTrue: [value := (executor at: 'disturbPhysical') value].
   action = 'physical_reset' ifTrue: [value := (executor at: 'resetPhysical') value].
   action = 'perturb' ifTrue: [
     ((point x = originalX) and: [#('partial' 'physical_recovery_started') includes: (((executor at: 'status') value) at: 'state')])
       ifFalse: [component error: 'Private independent field perturbation conflict'].
     point x: originalX + 7. value := point x].
   action = 'reset' ifTrue: [
     ((point x = (originalX + 7)) and: [(((executor at: 'status') value) at: 'state') = 'recovered'])
       ifFalse: [component error: 'Private independent field reset conflict'].
     point x: originalX. value := point x].
   status := (executor at: 'status') value.
   observed := (executor at: 'captureCheckpoint') value.
   changes := (executor at: 'diffCheckpoints') value: current value: observed.
   result := Dictionary new at: 'profile' put: 'native_private_step_wire_v1';
     at: 'token' put: token; at: 'action' put: action; at: 'index' put: index;
     at: 'result' put: value; at: 'status' put: status;
     at: 'actual_changes' put: (cells value: changes);
     at: 'recovery_plan' put: (cells value: (executor at: 'actualChanges') value reverse);
     at: 'native_material_retained' put: true; at: 'native_archive_available' put: false;
     at: 'write_authorized' put: false; at: 'model_setters_called' put: 0;
     at: 'current_matches' put: (executor at: 'currentMatches') value;
     at: 'desired_checkpoint_matches' put: ((executor at: 'diffCheckpoints') value: original value: observed) isEmpty;
     at: 'independent_x' put: point x; yourself.
   physical := (executor at: 'physicalState') value.
   physical isNil ifTrue: [result at: 'physical_pending' put: nil] ifFalse: [
     physicalEntry := physical at: 'entry'.
     physicalRows := Dictionary new at: 'unit' put: (physical at: 'unit');
       at: 'target_ref' put: (ids at: (physicalEntry at: 'object'));
       at: 'kind' put: (physicalEntry at: 'kind'); at: 'index' put: (physicalEntry at: 'index' ifAbsent: [0]);
       at: 'completed' put: (physical at: 'completed'); at: 'awaiting' put: (physical at: 'awaiting');
       at: 'outcome' put: (physical at: 'outcome');
       at: 'steps' put: (primitiveRows value: (physical at: 'steps')); yourself.
     (physical at: 'outcome') ~= 'prepared' ifTrue: [
       physicalRows at: 'before' put: ((physicalEntry at: 'kind') = 'fields'
         ifTrue: [ref value: (physical at: 'before')] ifFalse: [contents value: (physical at: 'before')]);
         at: 'after' put: ((physicalEntry at: 'kind') = 'fields'
         ifTrue: [ref value: (physical at: 'after')] ifFalse: [contents value: (physical at: 'after')])].
     result at: 'physical_pending' put: physicalRows
   ].
   action = 'release' ifTrue: [result at: 'released' put: true].
   action = 'export' ifTrue: [
     result at: 'current' put: currentRows; at: 'original' put: originalRows; at: 'boundaries' put: boundaryRows;
       at: 'copied_objects' put: (clone at: 'copied_objects'); at: 'copied_fields' put: (clone at: 'verified_graph_fields');
       at: 'steps' put: stepRows; at: 'pin_key' put: (material at: 'pin_key');
       at: 'incident_edges' put: (material at: 'incident_edges');
       at: 'additional_objects' put: ((material at: 'additionalObjects') collect: [:object | ids at: object]);
       at: 'independent_ref' put: (ids at: point); at: 'independent_x_before' put: originalX;
       at: 'original_projection_json' put: (material at: 'original_projection_json')].
   emit value: result]
  ] ifFail: [:error | 'BDE_PRIVATE_WIRE_ERROR: ', error messageText]
 ]
 ] ifFail: [:error | 'BDE_PRIVATE_WIRE_BIND_ERROR: ', error messageText]
]
