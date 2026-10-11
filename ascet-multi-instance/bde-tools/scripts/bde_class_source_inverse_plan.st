[:orderMerge :sourceDump | [:component :mode |
 component handleExceptionsIn: [
 | roots registry key current original after material sourceOwner classes seen schema walk classify count originalCopy afterCopy currentCopy same copy merged conflicts changes preserved merge memo absent result summary mergeBlocks blockOrders blockIdentifier allocator allocatorIndex allocatorValues allocatorPath | 
 (#('schema' 'plan' 'candidate_native') includes: mode) ifFalse: [component error: 'Exact source schema or inverse plan mode required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated source plan owner required'].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2 ifAbsent: [component error: 'Current source registry unavailable'].
 key := component getOID, '/Main'. registry := roots at: key.
 (registry at: 'owner') == component item ifFalse: [component error: 'Native source owner changed'].
 current := (registry at: 'diagram') specification specSourceInternalOrNil.
 same := registry at: 'sameSource'. copy := registry at: 'copySource'.
 (same value: current value: (registry at: 'checkpoint'))
   ifFalse: [component error: 'Current persisted source differs from complete registry checkpoint'].
 sourceOwner := current dbObject. classes := Dictionary new. schema := OrderedCollection new.
 seen := IdentitySet new. count := 0.
 classify := [:value |
   (value == sourceOwner or: [value isNil or: [value isNumber or: [
     (value isKindOf: Symbol) or: [value == true or: [value == false]]]]])
     ifTrue: ['boundary'] ifFalse: [
   (value isString or: [value isKindOf: ByteArray]) ifTrue: ['value'] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: ['dictionary'] ifFalse: [
   ((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: ['ordered'] ifFalse: [
   ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: value class name asString])
     ifTrue: ['fields'] ifFalse: ['unsupported']]]]]
 ].
 walk := [:value :path :depth | | kind name fields |
   depth > 128 ifTrue: [component error: 'Source schema depth bound exceeded'].
   kind := classify value: value.
   kind = 'unsupported' ifTrue: [component error: ('Unsupported source plan class ', value class name asString)].
   kind = 'boundary' ifFalse: [(seen includes: value) ifFalse: [
     seen add: value. count := count + 1. count > 100000 ifTrue: [component error: 'Source schema object bound exceeded'].
     name := value class name asString. classes at: name put: ((classes at: name ifAbsent: [0]) + 1).
     kind = 'fields' ifTrue: [
       fields := value class allInstVarNames.
       (schema anySatisfy: [:row | (row at: 'native_class') = name]) ifFalse: [
         schema add: (Dictionary new at: 'native_class' put: name; at: 'path' put: path;
           at: 'fields' put: ((1 to: value class instSize) collect: [:index |
             Array with: (fields at: index) with: (value instVarAt: index) class name asString]) asArray; yourself)].
       1 to: value class instSize do: [:index |
         walk value: (value instVarAt: index) value: (path, '/', (fields at: index) asString) value: depth + 1]
     ] ifFalse: [kind = 'dictionary' ifTrue: [
       value keysAndValuesDo: [:field :item |
         walk value: field value: (path, '/key') value: depth + 1.
         walk value: item value: (path, '/value') value: depth + 1]
     ] ifFalse: [kind = 'ordered' ifTrue: [
       value doWithIndex: [:item :index | walk value: item value: (path, '/', index printString) value: depth + 1]
     ]]]
   ]]
 ]. walk value: current value: 'root' value: 0.
 result := Dictionary new at: 'profile' put: 'class_persisted_source_inverse_plan_v1';
   at: 'mode' put: (mode = 'candidate_native' ifTrue: ['plan'] ifFalse: [mode]); at: 'component' put: component getFolderPathName; at: 'oid' put: component getOID;
   at: 'generation' put: (registry at: 'generation'); at: 'source_classes' put: classes;
   at: 'schema' put: schema asArray; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'native_merge_executor_available' put: false; yourself.
 mode = 'schema' ifTrue: [result at: 'current_source_graph' put: (sourceDump value: component value: current)].
 (#('plan' 'candidate_native') includes: mode) ifTrue: [
   material := (Smalltalk at: #DogeBDEClassMaterializeV1) at: key.
   (material at: 'state') = 'applied' ifFalse: [component error: 'Exact applied Class material required'].
   ((material at: 'originalBindings') at: 'verify') value
     ifFalse: [component error: 'Original detached native object bindings changed'].
   original := (material at: 'originalRegistry') at: 'checkpoint'. after := material at: 'afterSource'.
   originalCopy := copy value: original. afterCopy := copy value: after. currentCopy := copy value: current.
   absent := Object new. memo := IdentityDictionary new.
   conflicts := OrderedCollection new. changes := OrderedCollection new. preserved := OrderedCollection new.
   blockOrders := OrderedCollection new.
   blockIdentifier := [:member | | graphical identifier |
     graphical := member.
     (member isKindOf: SGGraphicsBlockDB) ifTrue: [
       graphical := member graphicBlock.
       (graphical isKindOf: SGHierarchyGODB) ifFalse: [component error: 'Audited hierarchy source graphical block required']
     ].
     (graphical isKindOf: SGLogicBlockDB) ifFalse: [component error: 'Audited source block class required'].
     identifier := graphical iD.
     (identifier isInteger and: [identifier >= 0 and: [identifier <= 2147483647]])
       ifFalse: [component error: 'Exact persisted source block identifier required'].
     identifier
   ].
   mergeBlocks := [:blockValues :blockPath :blockDepth | | maps orders mergedOrder mergedBlocks |
     maps := blockValues collect: [:members | | map |
       map := Dictionary new.
       members do: [:member | | identifier |
         identifier := blockIdentifier value: member.
         (map includesKey: identifier)
           ifTrue: [component error: 'Unique persisted source block identifier required'].
         (identifier isInteger and: [identifier >= 0])
           ifFalse: [component error: 'Unique persisted source block identifier required'].
         map at: identifier put: member]. map].
     orders := blockValues collect: [:members | (members collect: [:member | blockIdentifier value: member]) asArray].
     mergedOrder := orderMerge value: component value: orders.
     (mergedOrder isKindOf: Dictionary) ifFalse: [component error: mergedOrder].
     blockOrders add: (Dictionary new at: 'path' put: blockPath; at: 'compatible' put: (mergedOrder at: 'compatible');
       at: 'conflicts' put: (mergedOrder at: 'conflicts'); at: 'merged_identifiers' put: (mergedOrder at: 'merged'); yourself).
     (mergedOrder at: 'compatible') ifFalse: [
       conflicts add: (Dictionary new at: 'code' put: 'SOURCE_BLOCK_ORDER_CONFLICT'; at: 'path' put: blockPath;
         at: 'details' put: (mergedOrder at: 'conflicts'); yourself). blockValues last
     ] ifTrue: [
       mergedBlocks := (mergedOrder at: 'merged') collect: [:identifier | | selected |
         selected := maps collect: [:map | map at: identifier ifAbsent: [absent]].
         merge value: selected value: (blockPath, '/id:', identifier printString) value: blockDepth + 1].
       (mergedBlocks anySatisfy: [:member | member == absent])
         ifTrue: [component error: 'Merged source block order includes a deleted member'].
       mergedBlocks asArray
     ]
   ].
   merge := [:values :mergePath :mergeDepth | | before expected now candidate mergeKind mergeFields keys triple prior |
     mergeDepth > 128 ifTrue: [component error: 'Source merge depth bound exceeded'].
     before := values first. expected := values at: 2. now := values last.
     (same value: before value: expected) ifTrue: [
       (same value: expected value: now) ifFalse: [preserved add: mergePath]. now
     ] ifFalse: [(same value: expected value: now) ifTrue: [changes add: mergePath. before] ifFalse: [
       ((before == absent or: [expected == absent]) or: [now == absent])
         ifTrue: [conflicts add: (Dictionary new at: 'code' put: 'SOURCE_ROW_EXISTENCE_CONFLICT'; at: 'path' put: mergePath; yourself). now]
         ifFalse: [
       (before class = expected class and: [expected class = now class]) ifFalse: [
         conflicts add: (Dictionary new at: 'code' put: 'SOURCE_CLASS_CONFLICT'; at: 'path' put: mergePath; yourself). now
       ] ifTrue: [
         prior := memo at: now ifAbsent: [nil].
         prior notNil ifTrue: [
           ((prior first == before) and: [(prior at: 2) == expected])
             ifFalse: [component error: 'Ambiguous shared source lineage'].
           prior last
         ] ifFalse: [
           mergeKind := classify value: now.
           (mergeKind = 'ordered' and: [mergePath endsWith: '/blocks']) ifTrue: [
             mergeBlocks value: values value: mergePath value: mergeDepth
           ] ifFalse: [(#('fields' 'dictionary') includes: mergeKind) ifFalse: [
             conflicts add: (Dictionary new at: 'code' put: 'SOURCE_TOUCHED_VALUE_OR_ORDER_CONFLICT'; at: 'path' put: mergePath;
               at: 'native_class' put: now class name asString; yourself). now
           ] ifTrue: [
             candidate := mergeKind = 'dictionary' ifTrue: [now class new] ifFalse: [now shallowCopy].
             memo at: now put: (Array with: before with: expected with: candidate).
             mergeKind = 'dictionary' ifTrue: [
               keys := Set new. keys addAll: before keys; addAll: expected keys; addAll: now keys.
               keys do: [:field |
                 (field isString or: [field isInteger or: [field isKindOf: Symbol]])
                   ifFalse: [component error: 'Exact scalar source dictionary key required'].
                 triple := Array with: (before at: field ifAbsent: [absent]) with: (expected at: field ifAbsent: [absent])
                   with: (now at: field ifAbsent: [absent]).
                 prior := merge value: triple value: (mergePath, '/key:', field printString) value: mergeDepth + 1.
                 prior == absent ifFalse: [candidate at: field put: prior]
               ]
             ] ifFalse: [
               mergeFields := now class allInstVarNames.
               1 to: now class instSize do: [:index |
                 triple := Array with: (before instVarAt: index) with: (expected instVarAt: index) with: (now instVarAt: index).
                 candidate instVarAt: index put: (merge value: triple value: (mergePath, '/', (mergeFields at: index) asString) value: mergeDepth + 1)
               ]
             ]. candidate
           ]]
         ]
       ]]
     ]]
   ].
   merged := merge value: (Array with: originalCopy with: afterCopy with: currentCopy) value: 'root' value: 0.
   allocatorPath := 'root/highestUsedGraphicalIdentifier'.
   allocatorIndex := currentCopy class allInstVarNames indexOf: 'highestUsedGraphicalIdentifier'.
   allocatorIndex = 0 ifTrue: [component error: 'Complete native allocator high-water field required'].
   allocatorValues := (Array with: originalCopy with: afterCopy with: currentCopy)
     collect: [:source | source instVarAt: allocatorIndex].
   (allocatorValues allSatisfy: [:value | value isNil]) ifFalse: [
     ((allocatorValues allSatisfy: [:value | value isInteger and: [value >= 0 and: [value <= 2147483647]]])
       and: [allocatorValues first <= (allocatorValues at: 2) and: [(allocatorValues at: 2) <= allocatorValues last]])
         ifFalse: [component error: 'Monotonic native allocator high-water history required']
   ].
   "Local inverse preserves the allocator used by native store; strict whole-owner restoration is separate."
   merged := copy value: merged.
   merged instVarAt: allocatorIndex put: allocatorValues last.
   changes := changes reject: [:path | path = allocatorPath].
   (allocatorValues first = allocatorValues last) ifFalse: [
     (preserved includes: allocatorPath) ifFalse: [preserved add: allocatorPath]
   ].
   allocator := Dictionary new at: 'policy' put: 'preserve_current_high_water_v1'; at: 'path' put: allocatorPath;
     at: 'original' put: allocatorValues first; at: 'applied' put: (allocatorValues at: 2);
     at: 'current' put: allocatorValues last; at: 'candidate' put: allocatorValues last; yourself.
   ((same value: original value: originalCopy) and: [
     (same value: after value: afterCopy) and: [same value: current value: currentCopy]])
     ifFalse: [component error: 'Source planner mutated an input checkpoint'].
   summary := Dictionary new at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
     at: 'changed_paths' put: changes asArray; at: 'preserved_paths' put: preserved asArray;
     at: 'block_order_plans' put: blockOrders asArray;
     at: 'allocator_high_water' put: allocator;
     at: 'merged_equals_original' put: (same value: merged value: original);
     at: 'merged_equals_current' put: (same value: merged value: current);
     at: 'inputs_unchanged' put: true; yourself.
   result at: 'plan' put: summary
   ; at: 'source_graphs' put: (Dictionary new
     at: 'original' put: (sourceDump value: component value: original);
     at: 'applied' put: (sourceDump value: component value: after);
     at: 'current' put: (sourceDump value: component value: current);
     at: 'candidate' put: (sourceDump value: component value: merged); yourself).
   mode = 'candidate_native' ifTrue: [result at: 'native_candidate' put: (Dictionary new
     at: 'registry' put: registry; at: 'material' put: material;
     at: 'original' put: (copy value: originalCopy); at: 'applied' put: (copy value: afterCopy);
     at: 'current' put: (copy value: currentCopy); at: 'candidate' put: (copy value: merged); yourself)]
 ].
 (same value: current value: (registry at: 'checkpoint'))
   ifFalse: [component error: 'Current source changed during planning'].
 mode = 'candidate_native' ifTrue: [result] ifFalse: [(registry at: 'encodeObservation') value: result]
 ] ifFail: [:error | 'BDE_CLASS_SOURCE_PLAN_ERROR: ', error messageText]
]]
