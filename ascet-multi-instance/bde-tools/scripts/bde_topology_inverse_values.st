[:copier | [:component :graphs :operation |
 component handleExceptionsIn: [
 | before after current prior applied now rowsFor same absent anchors conflicts cells preserved merged touched expected copy less ordered added removed changed material dependencies originalPeer |
 copy := [:value | | cloned | cloned := copier value: component value: value.
   (cloned isString and: [cloned startsWith: 'BDE_OBSERVATION_COPY_ERROR:']) ifTrue: [component error: cloned]. cloned].
 less := [:left :right | | a b answer decided |
   a := left asCebraString. b := right asCebraString. answer := a size <= b size. decided := false.
   1 to: (a size min: b size) do: [:index | decided ifFalse: [
     (a at: index) ~= (b at: index) ifTrue: [answer := (a at: index) < (b at: index). decided := true]]]. answer].
 ordered := [:members | members asSortedCollection: less].
 (#('connect_data' 'disconnect_data' 'create_block' 'delete_node') includes: operation)
   ifFalse: [component error: 'Fixed ordinary topology operation required'].
 (graphs isArray and: [graphs size = 3]) ifFalse: [component error: 'Exact three observed graphs required'].
 before := graphs first. after := graphs at: 2. current := graphs last. absent := Object new.
 rowsFor := [:graph | | rows |
   ((graph isKindOf: Dictionary) and: [(graph at: 'entries') size <= 100000])
     ifFalse: [component error: 'Bounded typed graph required'].
   rows := Dictionary new.
   (graph at: 'entries') do: [:row | | ref |
     ref := row at: 'ref'.
     ((ref isString and: [ref notEmpty]) and: [#('node' 'pin' 'edge' 'model') includes: (row at: 'kind')])
       ifFalse: [component error: 'Exact ordinary row required'].
     (rows includesKey: ref) ifTrue: [component error: 'Duplicate typed row reference'].
     rows at: ref put: row]. rows].
 same := [:left :right |
   (left == absent or: [right == absent]) ifTrue: [left == right] ifFalse: [
   left class == right class and: [
     (left isKindOf: Dictionary) ifTrue: [left size = right size and: [
       left keys allSatisfy: [:key | (right includesKey: key) and: [same value: (left at: key) value: (right at: key)]]]]
     ifFalse: [left class == Float ifTrue: [(1 to: 8) allSatisfy: [:index | (left basicAt: index) = (right basicAt: index)]]
     ifFalse: [(left isCollection and: [left isString not]) ifTrue: [| a b |
       a := left asArray. b := right asArray.
       a size = b size and: [(1 to: a size) allSatisfy: [:index | same value: (a at: index) value: (b at: index)]]]
     ifFalse: [left = right]]]]]].
 anchors := Dictionary new
   at: 'node' put: #('ref' 'kind' 'native_class' 'pins' 'model_ref');
   at: 'pin' put: #('ref' 'kind' 'native_class' 'owner' 'input' 'output' 'type' 'model_ref');
   at: 'edge' put: #('ref' 'kind' 'native_class' 'source' 'target' 'connection_kind');
   at: 'model' put: #('ref' 'kind' 'native_class' 'oid' 'path'); yourself.
 dependencies := [:row | | result required pins |
   result := OrderedCollection new.
   required := (row at: 'kind') = 'edge' ifTrue: [#('source' 'target')]
     ifFalse: [(row at: 'kind') = 'pin' ifTrue: [#('owner')] ifFalse: [#()]].
   required do: [:field | | ref | ref := row at: field ifAbsent: [nil].
     (ref isString and: [ref notEmpty]) ifFalse: [component error: 'Exact required topology dependency references unavailable']].
   (row at: 'kind') = 'node' ifTrue: [
     pins := row at: 'pins' ifAbsent: [#()].
     (pins isArray and: [(pins allSatisfy: [:ref | ref isString and: [ref notEmpty]])
       and: [pins asSet size = pins size]])
       ifFalse: [component error: 'Exact unique occurrence pin references required'].
     pins do: [:ref | result add: (Array with: ref with: 'pin')]].
   #(('source' 'pin') ('target' 'pin') ('owner' 'node') ('model_ref' 'model')) do: [:pair | | ref |
     ref := row at: pair first ifAbsent: [nil]. ref notNil ifTrue: [
       (ref isString and: [ref notEmpty]) ifFalse: [component error: 'Exact nonempty topology dependency reference required'].
       result add: (Array with: ref with: pair last)]]. result].
 originalPeer := [:rows :ref :pair | | peer owner dependency kind |
   dependency := pair first. kind := pair last.
   peer := rows at: dependency ifAbsent: [component error: 'Original topology dependency is unresolved'].
   (peer at: 'kind') = kind ifFalse: [component error: 'Original topology dependency has wrong kind'].
   kind = 'pin' ifTrue: [
     owner := rows at: (peer at: 'owner') ifAbsent: [component error: 'Original endpoint owner unavailable'].
     ((owner at: 'kind') = 'node' and: [(owner at: 'pins') includes: dependency])
       ifFalse: [component error: 'Original topology endpoint owner/pin membership differs'].
     dependencies value: owner].
   (kind = 'node' and: [((rows at: ref) at: 'kind') = 'pin']) ifTrue: [
     ((peer at: 'pins') includes: ref) ifFalse: [component error: 'Original topology pin is not registered by its owner']]. peer].
 prior := rowsFor value: before. applied := rowsFor value: after. now := rowsFor value: current.
 added := (applied keys reject: [:ref | prior includesKey: ref]) asSet.
 removed := (prior keys reject: [:ref | applied includesKey: ref]) asSet.
 added isEmpty = removed isEmpty ifTrue: [component error: 'Exactly one topology insertion or removal direction required'].
 changed := added isEmpty ifTrue: [removed] ifFalse: [added].
 material := added isEmpty ifTrue: [prior] ifFalse: [applied].
 (#('connect_data' 'disconnect_data') includes: operation) ifTrue: [
   (changed size = 1 and: [((material at: changed asArray first) at: 'kind') = 'edge'])
     ifFalse: [component error: 'Disconnect must own exactly one existing edge']
 ] ifFalse: [| nodes node pins declared owned allowedKinds models |
   nodes := changed select: [:ref | ((material at: ref) at: 'kind') = 'node'].
   allowedKinds := operation = 'create_block' ifTrue: [#('node' 'pin' 'edge' 'model')] ifFalse: [#('node' 'pin' 'edge')].
   (nodes size = 1 and: [changed allSatisfy: [:ref | allowedKinds includes: ((material at: ref) at: 'kind')]])
     ifFalse: [component error: 'Delete must own one graphical occurrence and its pins/incident edges'].
   node := nodes asArray first.
   models := changed select: [:ref | ((material at: ref) at: 'kind') = 'model'].
   (models notEmpty and: [(models size = 1 and: [models includes: ((material at: node) at: 'model_ref' ifAbsent: [nil])]) not])
     ifTrue: [component error: 'Creation patch can own only its single bound model declaration'].
   pins := changed select: [:ref | ((material at: ref) at: 'kind') = 'pin'].
   declared := ((dependencies value: (material at: node)) select: [:pair | pair last = 'pin']) collect: [:pair | pair first].
   owned := material keys select: [:ref | ((material at: ref) at: 'kind') = 'pin'
     and: [((material at: ref) at: 'owner') = node]].
   (declared asSet = pins asSet and: [owned asSet = pins asSet])
     ifFalse: [component error: 'Deleted occurrence pin closure differs'].
   changed do: [:ref | | row | row := material at: ref. (row at: 'kind') = 'edge' ifTrue: [
     ((pins includes: (row at: 'source')) or: [pins includes: (row at: 'target')])
       ifFalse: [component error: 'Delete cannot own an unrelated edge']]].
   material keys do: [:ref | | row | row := material at: ref.
     ((row at: 'kind') = 'edge' and: [(changed includes: ref) not]) ifTrue: [
       ((pins includes: (row at: 'source')) or: [pins includes: (row at: 'target')])
         ifTrue: [component error: 'Delete must include every incident edge']]]].
 graphs do: [:graph |
   ((graph keys asSet = after keys asSet) and: [(graph at: 'diagram_kind') = 'block_diagram'
     and: [(graph includesKey: 'lookup_nodes') and: [graph includesKey: 'lookup_edges']]])
     ifFalse: [component error: 'Exact ordinary topology graph metadata required']].
 conflicts := OrderedCollection new. cells := OrderedCollection new. preserved := OrderedCollection new.
 expected := copy value: current.
 (ordered value: after keys) do: [:field | field = 'entries' ifFalse: [
   (#('lookup_nodes' 'lookup_edges') includes: field) ifTrue: [| kind delta |
     kind := field = 'lookup_nodes' ifTrue: ['node'] ifFalse: ['edge'].
     delta := (added select: [:ref | ((applied at: ref) at: 'kind') = kind]) size
       - (removed select: [:ref | ((prior at: ref) at: 'kind') = kind]) size.
     ((graphs allSatisfy: [:graph | (graph at: field) isInteger and: [(graph at: field) >= 0]])
       and: [((after at: field) - (before at: field)) = delta and: [(current at: field) - delta >= 0]])
       ifFalse: [component error: 'Complete lookup counts must explain the actual topology patch'].
     1 to: 3 do: [:index | | rows graph |
       rows := (Array with: prior with: applied with: now) at: index. graph := graphs at: index.
       (graph at: field) < (rows values select: [:row | (row at: 'kind') = kind]) size
         ifTrue: [component error: 'Lookup count underreports observed rows']].
     expected at: field put: (current at: field) - delta
   ] ifFalse: [
     (same value: (before at: field) value: (after at: field))
       ifFalse: [component error: 'Topology inverse cannot hide metadata changes'].
     (same value: (after at: field) value: (current at: field)) ifFalse: [
       conflicts add: (Dictionary new at: 'code' put: 'GRAPH_METADATA_CONFLICT'; at: 'field' put: field; yourself)]]]].
 merged := copy value: now. touched := Set new.
 (ordered value: added) do: [:ref |
   cells add: (Dictionary new at: 'ref' put: ref; at: 'field' put: nil; at: 'action' put: 'remove'; yourself).
   (same value: (now at: ref ifAbsent: [nil]) value: (applied at: ref)) ifFalse: [
     conflicts add: (Dictionary new at: 'code' put: 'ADDED_ROW_CONFLICT'; at: 'ref' put: ref; yourself)].
   merged removeKey: ref ifAbsent: []].
 (ordered value: removed) do: [:ref |
   cells add: (Dictionary new at: 'ref' put: ref; at: 'field' put: nil; at: 'action' put: 'restore'; yourself).
   (now includesKey: ref) ifTrue: [
     conflicts add: (Dictionary new at: 'code' put: 'REMOVED_ROW_REAPPEARED'; at: 'ref' put: ref; yourself)].
   merged at: ref put: (copy value: (prior at: ref))].
 (ordered value: (prior keys select: [:ref | applied includesKey: ref])) do: [:ref | | left right fields |
   left := prior at: ref. right := applied at: ref.
   ((left at: 'kind') = (right at: 'kind') and: [(anchors at: (left at: 'kind')) allSatisfy: [:field |
     same value: (left at: field ifAbsent: [absent]) value: (right at: field ifAbsent: [absent])]])
     ifFalse: [component error: 'Topology inverse cannot hide existing row identity/dependency changes'].
   fields := ordered value: (left keys asSet union: right keys asSet).
   fields size > 512 ifTrue: [component error: 'Bounded field schema required'].
   fields do: [:field | | old value |
     old := left at: field ifAbsent: [absent]. value := right at: field ifAbsent: [absent].
     (same value: old value: value) ifFalse: [
       touched add: ref. cells size >= 200000 ifTrue: [component error: 'Topology inverse cell bound exceeded'].
       cells add: (Dictionary new at: 'ref' put: ref; at: 'field' put: field; at: 'action' put: 'field'; yourself).
       ((now includesKey: ref) and: [same value: ((now at: ref) at: field ifAbsent: [absent]) value: value])
         ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'TOUCHED_FIELD_CONFLICT'; at: 'ref' put: ref; at: 'field' put: field; yourself)]
         ifTrue: [old == absent ifTrue: [(merged at: ref) removeKey: field ifAbsent: []]
           ifFalse: [(merged at: ref) at: field put: (copy value: old)]]]]].
 (ordered value: (changed union: touched)) do: [:ref | | rows row |
   rows := (changed includes: ref) ifTrue: [material] ifFalse: [applied]. row := rows at: ref.
   ((touched includes: ref) and: [now includesKey: ref]) ifTrue: [
     (anchors at: (row at: 'kind')) do: [:field |
       (same value: (row at: field ifAbsent: [absent]) value: ((now at: ref) at: field ifAbsent: [absent]))
         ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'ROW_DEPENDENCY_CONFLICT'; at: 'ref' put: ref; at: 'field' put: field; yourself)]]].
   (dependencies value: row) do: [:pair | | dependency peer currentPeer owner currentOwner ownerModelRef ownerModel currentModel |
     dependency := pair first. peer := originalPeer value: rows value: ref value: pair.
     (changed includes: dependency) ifFalse: [
       currentPeer := now at: dependency ifAbsent: [nil].
       currentPeer isNil ifTrue: [conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_MISSING'; at: 'ref' put: ref; at: 'dependency' put: dependency; yourself)]
       ifFalse: [((anchors at: (peer at: 'kind')) allSatisfy: [:field |
         same value: (peer at: field ifAbsent: [absent]) value: (currentPeer at: field ifAbsent: [absent])]) ifFalse: [
           conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_CHANGED'; at: 'ref' put: ref; at: 'dependency' put: dependency; yourself)]]].
     (peer at: 'kind') = 'pin' ifTrue: [
       owner := rows at: (peer at: 'owner'). ownerModelRef := owner at: 'model_ref' ifAbsent: [nil].
       ownerModelRef notNil ifTrue: [
         ownerModel := originalPeer value: rows value: (owner at: 'ref') value: (Array with: ownerModelRef with: 'model').
         (changed includes: ownerModelRef) ifFalse: [
           currentModel := now at: ownerModelRef ifAbsent: [nil].
           (currentModel notNil and: [(anchors at: 'model') allSatisfy: [:field |
             same value: (ownerModel at: field ifAbsent: [absent]) value: (currentModel at: field ifAbsent: [absent])]])
             ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'ENDPOINT_MODEL_CONFLICT';
               at: 'ref' put: ref; at: 'dependency' put: ownerModelRef; yourself)]]].
       (changed includes: (peer at: 'owner')) ifFalse: [
         currentOwner := now at: (peer at: 'owner') ifAbsent: [nil].
         (currentOwner notNil and: [(anchors at: 'node') allSatisfy: [:field |
           same value: (owner at: field ifAbsent: [absent]) value: (currentOwner at: field ifAbsent: [absent])]])
           ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'ENDPOINT_OWNER_CONFLICT'; at: 'ref' put: ref; at: 'dependency' put: (peer at: 'owner'); yourself)]]]].
   (row at: 'kind') = 'edge' ifTrue: [
     ((((rows at: (row at: 'source')) at: 'output') == true)
       and: [((rows at: (row at: 'target')) at: 'input') == true])
       ifFalse: [component error: 'Exact edge source/output and target/input directions required'].
     (changed includes: ref) ifTrue: [
       (rows values select: [:other | (other at: 'kind') = 'edge' and: [(other at: 'target') = (row at: 'target')]]) size = 1
         ifFalse: [component error: 'Original topology input must have exactly its retained edge']].
     ((removed includes: ref) and: [now values anySatisfy: [:other | (other at: 'kind') = 'edge'
       and: [(other at: 'target') = (row at: 'target')]]]) ifTrue: [
         conflicts add: (Dictionary new at: 'code' put: 'RESTORED_INPUT_OCCUPIED'; at: 'ref' put: ref; yourself)]]].
 (ordered value: now keys) do: [:ref | | row pins models nodes |
   row := now at: ref. pins := changed select: [:key | ((material at: key) at: 'kind') = 'pin'].
   ((row at: 'kind') = 'edge' and: [(added includes: ref) not and: [
     (pins includes: (row at: 'source')) or: [pins includes: (row at: 'target')]]]) ifTrue: [
       conflicts add: (Dictionary new at: 'code' put: 'NEW_PIN_DEPENDENCY'; at: 'ref' put: ref; yourself)].
   models := changed select: [:key | ((material at: key) at: 'kind') = 'model'].
   ((added includes: ref) not and: [models includes: (row at: 'model_ref' ifAbsent: [nil])]) ifTrue: [
     conflicts add: (Dictionary new at: 'code' put: 'NEW_MODEL_DEPENDENCY'; at: 'ref' put: ref; yourself)].
   nodes := changed select: [:key | ((material at: key) at: 'kind') = 'node'].
   ((row at: 'kind') = 'pin' and: [(added includes: ref) not and: [nodes includes: (row at: 'owner')]]) ifTrue: [
     conflicts add: (Dictionary new at: 'code' put: 'NEW_NODE_DEPENDENCY'; at: 'ref' put: ref; yourself)]].
 (ordered value: (applied keys asSet union: now keys asSet)) do: [:ref |
   (same value: (applied at: ref ifAbsent: [nil]) value: (now at: ref ifAbsent: [nil])) ifFalse: [preserved add: ref]].
 expected at: 'entries' put: ((ordered value: merged keys) collect: [:ref | merged at: ref]) asArray.
 Dictionary new at: 'profile' put: 'ordinary_topology_inverse_v1'; at: 'operation' put: operation;
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'expected' put: (conflicts isEmpty ifTrue: [expected] ifFalse: [nil]);
   at: 'cells' put: cells asArray; at: 'preserved' put: preserved asArray; yourself
 ] ifFail: [:error | 'BDE_TOPOLOGY_INVERSE_VALUES_ERROR: ', error messageText]
]]
