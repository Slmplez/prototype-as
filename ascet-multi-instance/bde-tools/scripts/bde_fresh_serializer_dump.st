"One-shot isolated source dump with retained original/config/graph witnesses.
 No loader, model setter, store, commit or persistent record writer is called."
[:collector | [:component :index | component handleExceptionsIn: [
 | registry material source dumper slot same graph verifyGraph originalVerify before
   callbacks privateSnapshots capture verifyPrivate privateRoles classTable instTable
   identityTable dispatches freeze check used prepared execute export |
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1.
 (index isInteger and: [index >= 1 and: [index <= registry size]])
   ifFalse: [component error: 'Exact retained dump workbench required'].
 material := registry at: index. source := material at: 'source'. dumper := material at: 'dumper'.
 ((material at: 'phase') = 'inventoried' and: [(material at: 'owner') == component item and: [
   (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
   (material at: 'checks') values allSatisfy: [:v | v == true]]]])
   ifFalse: [component error: 'Equivalent inventoried workbench required; no replay'].
 (material at: 'graphBlockers') isEmpty ifFalse: [component error: 'Unaudited source callback refused'].
 slot := [:object :name | | i |
   i := (object class allInstVarNames collect: [:f | f asString]) asArray indexOf: name.
   i > 0 ifFalse: [component error: 'Audited dump field missing']. object instVarAt: i].
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]
   ] ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 freeze := [:x | (x isKindOf: Dictionary) ifTrue: [| out | out := Dictionary new.
   x keysAndValuesDo: [:k :v | out at: k put: (freeze value: v)]. out]
   ifFalse: [x isArray ifTrue: [(x collect: [:v | freeze value: v]) asArray]
     ifFalse: [x isString ifTrue: [x copy] ifFalse: [x]]]].
 graph := material at: 'graphSnapshots'. originalVerify := material at: 'verifyOriginals'.
 dispatches := Dictionary new.
 graph keys do: [:object | | class kind omitted |
   class := object class. kind := (graph at: object) first.
   (#('fields' 'bytes') includes: kind) ifFalse: [component error: 'Initial dump only supports a graph without replacement boundaries or class constants'].
   #(#dumpingReplacementForReplacer: #dumpingReplacementForInstVar:forReplacer:
     #dumpingReplacementForClassField) do: [:selector | | defining |
     defining := class whichClassIncludesSelector: selector.
     defining == Object ifFalse: [component error: 'Unaudited actual graph dump dispatch: ', class name asString, '/', selector asString].
     dispatches at: (class name asString, '/', selector asString) put: (Array with: class with: selector with: defining)
   ]].
 (source class whichClassIncludesSelector: #isSpecialRootForDumpingFor:) == Object
   ifFalse: [component error: 'Unaudited special source root dump route'].
 dispatches at: 'source/specialRoot' put: (Array with: source class with: #isSpecialRootForDumpingFor: with: Object).
 verifyGraph := [graph keys allSatisfy: [:object | | image fields indexed |
   image := graph at: object. fields := image at: 2. indexed := image at: 3.
   object class instSize = fields size and: [
     ((1 to: fields size) allSatisfy: [:i | (object instVarAt: i) == (fields at: i)]) and: [
     object basicSize = indexed size and: [image first = 'bytes'
       ifTrue: [object = indexed]
       ifFalse: [(1 to: indexed size) allSatisfy: [:i | (object basicAt: i) == (indexed at: i)]]]]]]].
 classTable := slot value: (slot value: dumper value: 'classBasedReplacer') value: 'classBasedReplacementTable'.
 instTable := slot value: (slot value: dumper value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 identityTable := slot value: (slot value: dumper value: 'identityReplacer') value: 'identityReplacementTable'.
 (identityTable isNil or: [identityTable isEmpty]) ifFalse: [component error: 'Nonempty identity replacement refused'].
 "Exact keys match the audited replacer implementation's eswBasicClass lookup."
 graph keys do: [:object | | kind omitted |
   object == source ifFalse: [(classTable includesKey: object class)
     ifTrue: [component error: 'Inventoried graph acquired a class replacement']].
   omitted := instTable at: object class ifAbsent: [LookupTable new].
   omitted keys do: [:i | (i isInteger and: [i >= 1 and: [i <= object class instSize and: [(omitted at: i) isNil]]])
     ifFalse: [component error: 'Actual graph omission out of bounds or custom callback']]
 ].
 privateSnapshots := IdentityDictionary new.
 capture := [:object | | kind saved |
   (object isNil or: [object isNumber or: [(object isKindOf: Symbol) or: [object == true or: [object == false]]]]) ifFalse: [
     (privateSnapshots includesKey: object) ifFalse: [
       privateSnapshots size >= 16384 ifTrue: [component error: 'Private dump config bound exceeded'].
       kind := 'boundary'. saved := #().
       (object class == Array or: [object class == OrderedCollection]) ifTrue: [kind := 'sequence'. saved := object copy].
       (object class == Dictionary or: [object class == IdentityDictionary or: [object class == LookupTable]])
         ifTrue: [kind := 'map'. saved := object copy].
       (object isString or: [object isKindOf: ByteArray]) ifTrue: [kind := 'value'. saved := object copy].
       privateSnapshots at: object put: (Array with: kind with: saved).
       kind = 'sequence' ifTrue: [saved do: [:v | capture value: v]].
       kind = 'map' ifTrue: [saved keysAndValuesDo: [:k :v | capture value: v]]
     ]]].
 privateRoles := Array with: dumper with: (material at: 'loader') with: (material at: 'swapper') with: (material at: 'linearizer').
 privateRoles := privateRoles, (#('swappingStrategy' 'classBasedReplacer' 'instVarReplacer' 'identityReplacer')
   collect: [:name | slot value: dumper value: name]) asArray.
 privateRoles do: [:object | | fields |
   fields := ((1 to: object class instSize) collect: [:i | object instVarAt: i]) asArray.
   privateSnapshots at: object put: (Array with: 'fields' with: fields). fields do: [:v | capture value: v]].
 verifyPrivate := [privateSnapshots keys allSatisfy: [:object | | image kind saved |
   image := privateSnapshots at: object. kind := image first. saved := image last.
   kind = 'boundary' ifTrue: [true] ifFalse: [kind = 'fields' ifTrue: [
     (1 to: saved size) allSatisfy: [:i | (object instVarAt: i) == (saved at: i)]] ifFalse: [
     kind = 'map' ifTrue: [object size = saved size and: [saved keys allSatisfy: [:k |
       (object includesKey: k) and: [(object at: k) == (saved at: k)]]]] ifFalse: [
     kind = 'sequence' ifTrue: [object size = saved size and: [(1 to: saved size) allSatisfy: [:i | (object at: i) == (saved at: i)]]]
       ifFalse: [object = saved]]]]]].
 before := collector value: component.
 check := [
   ((material at: 'owner') == component item and: [
     (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
     (slot value: component item dbObject value: 'interface') == (material at: 'backend')]])
       ifFalse: [component error: 'Original dump identity expired'].
   (originalVerify value and: [verifyGraph value and: [verifyPrivate value]])
     ifFalse: [component error: 'Original graph or private config changed before dump'].
   (same value: (material at: 'graphBeforeRecords') value: before)
     ifFalse: [component error: 'Inventory owner records changed before dump'].
   (same value: before value: (collector value: component))
     ifFalse: [component error: 'CURRENT differs from exact prepared dump before'].
   dispatches values do: [:row | ((row first) whichClassIncludesSelector: (row at: 2)) == row last
     ifFalse: [component error: 'Dump callback dispatch expired']]
 ].
 check value. used := false.
 prepared := Dictionary new at: 'profile' put: 'isolated_fresh_source_dump_prepared_v1';
   at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
   at: 'before' put: (freeze value: before); at: 'graph_objects' put: graph size;
   at: 'dump_calls' put: 0; at: 'load_calls' put: 0; at: 'persistent_write_calls' put: 0;
   at: 'store_called' put: false; at: 'commit_called' put: false; at: 'full_delivery' put: false; yourself.
 execute := [:ignored | | stream ok payload after graphOK originalsOK out |
   (used or: [(material at: 'phase') ~= 'inventoried']) ifTrue: [component error: 'One-shot dump consumed; never replay'].
   used := true. check value.
   material at: 'phase' put: 'dumping'; at: 'dumpBefore' put: before; at: 'dumpCalls' put: 1.
   "Expand the canonical successful dump branch; check its Bool and error."
   dumper removeReplacementForInstancesOf: source class.
   stream := WriteStream on: (ByteArray new: 4096).
   ok := dumper unload: source intoStream: stream.
   payload := stream contents. material at: 'dumpPayload' put: payload; at: 'dumpOK' put: ok.
   (ok == true and: [dumper currentError = 0 and: [payload class == ByteArray and: [payload size > 0 and: [payload size <= 4194304]]]])
     ifFalse: [material at: 'phase' put: 'dump_failed'. component error: 'Native source dump failed; retained, no retry'].
   after := collector value: component. graphOK := verifyGraph value. originalsOK := originalVerify value.
   material at: 'dumpAfter' put: after; at: 'phase' put: 'dumped'.
   out := Dictionary new at: 'profile' put: 'isolated_fresh_source_dump_result_v1';
     at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
     at: 'before' put: (freeze value: before); at: 'after' put: after;
     at: 'payload_bytes' put: payload asArray; at: 'payload_size' put: payload size;
     at: 'dump_calls' put: 1; at: 'load_calls' put: 0; at: 'persistent_write_calls' put: 0;
     at: 'dumper_error' put: dumper currentError; at: 'dump_returned_true' put: (ok == true);
     at: 'original_graph_preserved' put: graphOK; at: 'original_config_preserved' put: originalsOK;
     at: 'owner_records_preserved' put: (same value: before value: after);
     at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
     at: 'automatic_retry' put: false; at: 'production_inverse_authorized' put: false; at: 'full_delivery' put: false; yourself.
   out
 ].
 Dictionary new at: 'prepared' put: prepared; at: 'execute' put: execute; yourself
] ifFail: [:error | 'BDE_FRESH_DUMP_PREPARATION_ERROR: ', error messageText]]]
