"One precise coordinate edit on an already decoded PRIVATE source, dump/load
 the actual changed data, then restore the private coordinate. No live setter
 or database writer is called. This is not a production move/inverse adapter."
[:collector | [:component :index | component handleExceptionsIn: [
 | registry material source privateSource mapping graph dumper slot instTable before
   same freeze verifyOriginalGraph verifyProjection privateImages verifyPrivate
   target point xIndex oldX oldY newX used check prepared execute |
 registry := Smalltalk at: #DogeBDEFreshSerializerWorkbenchesV1.
 (index isInteger and: [index >= 1 and: [index <= registry size]])
   ifFalse: [component error: 'Exact private layout workbench required'].
 material := registry at: index.
 ((material at: 'phase') = 'extracted' and: [(material at: 'loadCalls') = 1])
   ifFalse: [component error: 'Confirmed once-loaded extracted workbench required'].
 source := material at: 'source'. privateSource := material at: 'loadedSource'.
 mapping := material at: 'loadedProjectionMapping'. graph := material at: 'graphSnapshots'.
 dumper := material at: 'dumper'.
 slot := [:object :name | | i |
   i := (object class allInstVarNames collect: [:n | n asString]) asArray indexOf: name.
   i > 0 ifFalse: [component error: 'Audited private layout field missing: ', name]. object instVarAt: i].
 instTable := slot value: (slot value: dumper value: 'instVarReplacer') value: 'classesWithInstVarsToReplace'.
 same := [:a :b | (a isKindOf: Dictionary) ifTrue: [
   (b isKindOf: Dictionary) and: [a size = b size and: [a keys allSatisfy: [:k |
     (b includesKey: k) and: [same value: (a at: k) value: (b at: k)]]]]]
   ifFalse: [a isArray ifTrue: [b isArray and: [a size = b size and: [
     (1 to: a size) allSatisfy: [:i | same value: (a at: i) value: (b at: i)]]]] ifFalse: [a = b]]].
 freeze := [:x | (x isKindOf: Dictionary) ifTrue: [| d | d := Dictionary new.
   x keysAndValuesDo: [:k :v | d at: k put: (freeze value: v)]. d]
   ifFalse: [x isArray ifTrue: [(x collect: [:v | freeze value: v]) asArray]
     ifFalse: [x isString ifTrue: [x copy] ifFalse: [x]]]].
 verifyOriginalGraph := [graph keys allSatisfy: [:o | | image fields indexed |
   image := graph at: o. fields := image at: 2. indexed := image at: 3.
   ((1 to: fields size) allSatisfy: [:i | (o instVarAt: i) == (fields at: i)]) and: [
     o basicSize = indexed size and: [image first = 'bytes' ifTrue: [o = indexed]
       ifFalse: [(1 to: indexed size) allSatisfy: [:i | (o basicAt: i) == (indexed at: i)]]]]]].
 verifyProjection := [mapping size = graph size and: [mapping keys allSatisfy: [:a | | b omitted match |
   b := mapping at: a. omitted := instTable at: a class ifAbsent: [LookupTable new].
   match := [:v :w | (mapping includesKey: v) ifTrue: [(mapping at: v) == w] ifFalse: [v = w]].
   ((graph includesKey: b) not and: [a class == b class and: [
     ((1 to: a class instSize) allSatisfy: [:i | (omitted includesKey: i)
       ifTrue: [(b instVarAt: i) isNil]
       ifFalse: [match value: (a instVarAt: i) value: (b instVarAt: i)]]) and: [
       a basicSize = b basicSize and: [(a isString or: [a isKindOf: ByteArray])
         ifTrue: [a = b] ifFalse: [(1 to: a basicSize) allSatisfy: [:i | match value: (a basicAt: i) value: (b basicAt: i)]]]]]])]]].
 "The isolated fixture must contain exactly one operator. This fixed research
  selection is explicit and does not claim general agent target selection."
 target := graph keys select: [:o | o class == SGOperatorGODB].
 target size = 1 ifFalse: [component error: 'Exactly one isolated operator required'].
 target := mapping at: target first.
 #(#position #iD) do: [:s | (target class whichClassIncludesSelector: s) == SGLogicBlockDB
   ifFalse: [component error: 'Unaudited private layout accessor']].
 point := target position.
 ((point class == Point and: [mapping values anySatisfy: [:o | o == point]]) and: [
   (graph includesKey: point) not]) ifFalse: [component error: 'Private projected Point required'].
 (mapping values select: [:o | (o isKindOf: SGLogicBlockDB) and: [o position == point]]) size = 1
   ifFalse: [component error: 'Shared multi-block coordinate must use an explicit alias plan'].
 xIndex := (point class allInstVarNames collect: [:n | n asString]) asArray indexOf: 'x'.
 xIndex > 0 ifFalse: [component error: 'Audited Point.x slot required'].
 oldX := point x. oldY := point y.
 (oldX isInteger and: [oldY isInteger and: [oldX abs <= 1000000 and: [oldY abs <= 1000000]]])
   ifFalse: [component error: 'Bounded integer coordinate required'].
 newX := oldX + 11. privateImages := IdentityDictionary new.
 mapping values do: [:o |
   (o class whichClassIncludesSelector: #loadingReplacementForReplacer:) == Object
     ifFalse: [component error: 'Unaudited private candidate loading callback'].
   #(#dumpingReplacementForReplacer: #dumpingReplacementForInstVar:forReplacer: #dumpingReplacementForClassField)
     do: [:s | (o class whichClassIncludesSelector: s) == Object
       ifFalse: [component error: 'Unaudited actual private dump callback']].
   privateImages at: o put: (Array with: (((1 to: o class instSize) collect: [:i | o instVarAt: i]) asArray)
     with: ((o isString or: [o isKindOf: ByteArray]) ifTrue: [o copy]
       ifFalse: [((1 to: o basicSize) collect: [:i | o basicAt: i]) asArray]))].
 verifyPrivate := [:changed | privateImages keys allSatisfy: [:o | | image fields indexed |
   image := privateImages at: o. fields := image first. indexed := image last.
   ((1 to: fields size) allSatisfy: [:i | (o == point and: [i = xIndex])
     ifTrue: [(o instVarAt: i) = (changed ifTrue: [newX] ifFalse: [oldX])]
     ifFalse: [(o instVarAt: i) == (fields at: i)]]) and: [o basicSize = indexed size and: [
       (o isString or: [o isKindOf: ByteArray]) ifTrue: [o = indexed]
         ifFalse: [(1 to: indexed size) allSatisfy: [:i | (o basicAt: i) == (indexed at: i)]]]]]].
 before := collector value: component.
 check := [
   ((material at: 'phase') = 'extracted' and: [(material at: 'owner') == component item and: [
     (component getDiagram: 'Main') specification specSourceInternalOrNil == source and: [
     (material at: 'loadedSource') == privateSource and: [(mapping at: source) == privateSource]]]])
       ifFalse: [component error: 'Private layout source identity expired'].
   ((material at: 'verifyOriginals') value and: [verifyOriginalGraph value and: [verifyProjection value and: [verifyPrivate value: false]]])
       ifFalse: [component error: 'Original or decoded private layout changed before preparation'].
   ((same value: before value: (material at: 'extractAfter')) and: [same value: before value: (collector value: component)])
       ifFalse: [component error: 'Exact original persistent records changed before private layout edit']
 ].
 check value. used := false.
 prepared := Dictionary new at: 'profile' put: 'isolated_private_layout_after_prepared_v1';
   at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
   at: 'before' put: (freeze value: before); at: 'graph_objects' put: graph size;
   at: 'target_logic_id' put: target iD; at: 'target_class' put: target class name asString;
   at: 'before_position' put: (Array with: oldX with: oldY); at: 'after_position' put: (Array with: newX with: oldY);
   at: 'private_field_writes' put: 0; at: 'persistent_write_calls' put: 0; at: 'full_delivery' put: false; yourself.
 execute := [:ignored | component handleExceptionsIn: [
   | stream ok payload candidateLoader loaded pairs reverse compare equivalent after graphOK configOK restored |
   used ifTrue: [component error: 'Private layout one-shot consumed; no replay'].
   used := true. check value. material at: 'phase' put: 'layout_serializing'.
   point instVarAt: xIndex put: newX. material at: 'layoutPrivateFieldWrites' put: 1.
   (verifyPrivate value: true) ifFalse: [component error: 'Coordinate edit changed another private field'].
   stream := WriteStream on: (ByteArray new: 4096).
   ok := dumper unload: privateSource intoStream: stream. payload := stream contents.
   material at: 'layoutAfterPayload' put: payload.
   (ok == true and: [dumper currentError = 0 and: [payload class == ByteArray and: [payload size > 0 and: [payload size <= 4194304]]]])
     ifFalse: [component error: 'Changed private layout dump failed'].
   candidateLoader := RBObjectLoader new. material at: 'layoutCandidateLoader' put: candidateLoader.
   candidateLoader dbInterface isNil ifFalse: [component error: 'Candidate loader must have no backend'].
   loaded := candidateLoader loadFromStream: (ReadStream on: payload). material at: 'layoutCandidateSource' put: loaded.
   (candidateLoader currentError = 0 and: [loaded class == privateSource class])
     ifFalse: [component error: 'Actual changed layout bytes failed native decode'].
   pairs := IdentityDictionary new. reverse := IdentityDictionary new.
   compare := [:a :b :depth | | omitted |
     depth > 128 ifTrue: [component error: 'Changed layout graph depth bound exceeded'].
     (a isNil or: [a isNumber or: [(a isKindOf: Symbol) or: [a == true or: [a == false]]]])
       ifTrue: [a = b] ifFalse: [
       (privateImages includesKey: a) ifFalse: [component error: 'Changed projection leaves complete private graph'].
       ((privateImages includesKey: b) or: [graph includesKey: b]) ifTrue: [component error: 'Changed payload decode aliases an existing object'].
       (pairs includesKey: a) ifTrue: [(pairs at: a) == b] ifFalse: [
         (reverse includesKey: b) ifTrue: [component error: 'Changed payload merged distinct objects'].
         a class == b class ifFalse: [component error: 'Changed payload object class differs'].
         (a class whichClassIncludesSelector: #loadingReplacementForReplacer:) == Object
           ifFalse: [component error: 'Unaudited changed payload loading callback'].
         pairs at: a put: b. reverse at: b put: a.
         omitted := instTable at: a class ifAbsent: [LookupTable new].
         ((1 to: a class instSize) allSatisfy: [:i | (omitted includesKey: i) ifTrue: [(b instVarAt: i) isNil]
           ifFalse: [compare value: (a instVarAt: i) value: (b instVarAt: i) value: depth + 1]]) and: [
           a basicSize = b basicSize and: [(a isString or: [a isKindOf: ByteArray])
             ifTrue: [a = b] ifFalse: [(1 to: a basicSize) allSatisfy: [:i |
               compare value: (a basicAt: i) value: (b basicAt: i) value: depth + 1]]]]
       ]]
   ].
   equivalent := compare value: privateSource value: loaded value: 0.
   (equivalent and: [pairs size = graph size and: [verifyPrivate value: true]])
     ifFalse: [component error: 'Actual changed layout projection differs'].
   point instVarAt: xIndex put: oldX. material at: 'layoutPrivateFieldWrites' put: 2.
   restored := (verifyPrivate value: false) and: [verifyProjection value].
   after := collector value: component. graphOK := verifyOriginalGraph value. configOK := (material at: 'verifyOriginals') value.
   material at: 'layoutAfter' put: after; at: 'layoutCandidateMapping' put: pairs; at: 'phase' put: 'layout_serialized'.
   Dictionary new at: 'profile' put: 'isolated_private_layout_after_result_v1';
     at: 'component_oid' put: component getOID; at: 'workbench_index' put: index;
     at: 'before' put: (freeze value: before); at: 'after' put: after;
     at: 'target_logic_id' put: target iD; at: 'target_class' put: target class name asString;
     at: 'before_position' put: (Array with: oldX with: oldY); at: 'after_position' put: (Array with: newX with: oldY);
     at: 'actual_diff' put: (Array with: (Dictionary new at: 'kind' put: 'private_source_coordinate';
       at: 'target_logic_id' put: target iD; at: 'field' put: 'position.x'; at: 'before' put: oldX; at: 'after' put: newX; yourself));
     at: 'payload_bytes' put: payload asArray; at: 'dump_calls' put: 1; at: 'load_calls' put: 1;
     at: 'dumper_error' put: dumper currentError; at: 'loader_error' put: candidateLoader currentError;
     at: 'decoded_objects' put: pairs size; at: 'changed_projection_equivalent' put: equivalent;
     at: 'private_source_restored' put: restored; at: 'original_graph_preserved' put: graphOK;
     at: 'original_config_preserved' put: configOK; at: 'owner_records_preserved' put: (same value: before value: after);
     at: 'private_field_writes' put: 2; at: 'model_setters_called' put: 0; at: 'persistent_write_calls' put: 0;
     at: 'store_called' put: false; at: 'commit_called' put: false; at: 'production_inverse_authorized' put: false;
     at: 'full_delivery' put: false; yourself
 ] ifFail: [:error | material at: 'phase' put: 'layout_failed'. 'BDE_PRIVATE_LAYOUT_EXECUTION_ERROR: ', error messageText]].
 Dictionary new at: 'prepared' put: prepared; at: 'execute' put: execute; yourself
] ifFail: [:error | 'BDE_PRIVATE_LAYOUT_PREPARATION_ERROR: ', error messageText]]]
