[:copier | [:component :graphs :operation |
 component handleExceptionsIn: [
 | before after current prior applied now rowsFor same absent anchors conflicts cells preserved merged touched expected copy less ordered rewireRef rewirePeers |
 copy := [:value | | cloned | cloned := copier value: component value: value.
   (cloned isString and: [cloned startsWith: 'BDE_OBSERVATION_COPY_ERROR:']) ifTrue: [component error: cloned]. cloned].
 less := [:left :right | | a b answer decided |
   a := left asCebraString. b := right asCebraString. answer := a size <= b size. decided := false.
   1 to: (a size min: b size) do: [:index | decided ifFalse: [
     (a at: index) ~= (b at: index) ifTrue: [answer := (a at: index) < (b at: index). decided := true]]]. answer].
 ordered := [:members | members asSortedCollection: less].
 (#('set_literal' 'set_comment' 'move_node' 'set_edge_route' 'rewire_data') includes: operation)
   ifFalse: [component error: 'Audited ordinary field/layout operation required'].
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
 prior := rowsFor value: before. applied := rowsFor value: after. now := rowsFor value: current.
 prior keys asSet = applied keys asSet
   ifFalse: [component error: 'Field inverse cannot hide observed row creation/deletion'].
 rewirePeers := Set new.
 operation = 'rewire_data' ifTrue: [| changed pinRefs |
   changed := prior keys select: [:ref | ((prior at: ref) at: 'kind') = 'edge' and: [
     (same value: ((prior at: ref) at: 'source' ifAbsent: [absent])
       value: ((applied at: ref) at: 'source' ifAbsent: [absent])) not]].
   changed size = 1 ifFalse: [component error: 'Rewire requires exactly one observed edge source change'].
   rewireRef := changed asArray first.
   pinRefs := Set new add: ((prior at: rewireRef) at: 'source');
     add: ((applied at: rewireRef) at: 'source'); add: ((applied at: rewireRef) at: 'target'); yourself.
   rewirePeers addAll: pinRefs.
   (Array with: prior with: applied) do: [:graph |
     pinRefs do: [:pin | | row owner isInput |
       row := graph at: pin ifAbsent: [component error: 'Rewire endpoint pin is unresolved'].
       isInput := pin = ((applied at: rewireRef) at: 'target').
       (((row at: 'kind') = 'pin' and: [(row at: 'input') == isInput])
         and: [(row at: 'output') == isInput not])
         ifFalse: [component error: 'Rewire requires exact original and replacement pin directions'].
       owner := graph at: (row at: 'owner') ifAbsent: [component error: 'Rewire endpoint owner is unresolved'].
       ((owner at: 'kind') = 'node' and: [(owner at: 'pins') includes: pin])
         ifFalse: [component error: 'Rewire endpoint owner/pin registration is unresolved'].
       rewirePeers add: (owner at: 'ref')].
     ((graph values select: [:row | (row at: 'kind') = 'edge' and: [
       (row at: 'target') = ((applied at: rewireRef) at: 'target')]]) collect: [:row | row at: 'ref']) asArray
       = (Array with: rewireRef)
       ifFalse: [component error: 'Rewire original input must have exactly its retained edge']]].
 graphs do: [:graph |
   ((graph keys asSet = after keys asSet) and: [(graph at: 'diagram_kind') = 'block_diagram'])
     ifFalse: [component error: 'Exact ordinary field graph metadata shape required']].
 conflicts := OrderedCollection new. cells := OrderedCollection new. preserved := OrderedCollection new.
 (ordered value: after keys) do: [:field | field = 'entries' ifFalse: [
   (same value: (before at: field) value: (after at: field))
     ifFalse: [component error: 'Field inverse cannot hide observed metadata mutation'].
   (#('lookup_nodes' 'lookup_edges') includes: field) ifTrue: [
     (graphs allSatisfy: [:graph | (graph at: field) isInteger and: [(graph at: field) >= 0]])
       ifFalse: [component error: 'Nonnegative complete lookup counts required']
   ] ifFalse: [(same value: (after at: field) value: (current at: field)) ifFalse: [
     conflicts add: (Dictionary new at: 'code' put: 'GRAPH_METADATA_CONFLICT'; at: 'field' put: field; yourself)]]]].
 merged := copy value: now. touched := Set new.
 (ordered value: prior keys) do: [:ref | | old row fields |
   old := prior at: ref. row := applied at: ref.
   (old at: 'kind') = (row at: 'kind') ifFalse: [component error: 'Field inverse cannot change row kind'].
   (anchors at: (old at: 'kind')) do: [:field |
     (ref = rewireRef and: [field = 'source']) ifFalse: [
       (same value: (old at: field ifAbsent: [absent]) value: (row at: field ifAbsent: [absent]))
         ifFalse: [component error: 'Field inverse cannot hide observed identity/dependency mutation']]].
   fields := ordered value: (old keys asSet union: row keys asSet).
   fields size > 512 ifTrue: [component error: 'Bounded field schema required'].
   fields do: [:field | | left right |
     left := old at: field ifAbsent: [absent]. right := row at: field ifAbsent: [absent].
     (same value: left value: right) ifFalse: [
       touched add: ref. cells size >= 200000 ifTrue: [component error: 'Field inverse cell bound exceeded'].
       cells add: (Dictionary new at: 'ref' put: ref; at: 'field' put: field; yourself).
       (now includesKey: ref) ifFalse: [
         conflicts add: (Dictionary new at: 'code' put: 'TOUCHED_ROW_MISSING'; at: 'ref' put: ref; at: 'field' put: field; yourself)
       ] ifTrue: [(same value: ((now at: ref) at: field ifAbsent: [absent]) value: right) ifFalse: [
         conflicts add: (Dictionary new at: 'code' put: 'TOUCHED_FIELD_CONFLICT'; at: 'ref' put: ref; at: 'field' put: field; yourself)
       ] ifTrue: [left == absent ifTrue: [(merged at: ref) removeKey: field ifAbsent: []]
         ifFalse: [(merged at: ref) at: field put: (copy value: left)]]]
     ]]].
 (ordered value: touched) do: [:ref | (now includesKey: ref) ifTrue: [| row dependencies |
   row := applied at: ref.
   (anchors at: (row at: 'kind')) do: [:field |
     (same value: (row at: field ifAbsent: [absent]) value: ((now at: ref) at: field ifAbsent: [absent]))
       ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'ROW_DEPENDENCY_CONFLICT'; at: 'ref' put: ref; at: 'field' put: field; yourself)]].
   dependencies := OrderedCollection new.
   (row at: 'kind') = 'node' ifTrue: [dependencies addAll: (row at: 'pins' ifAbsent: [#()])].
   #('owner' 'source' 'target' 'model_ref') do: [:field | | dependency |
     dependency := row at: field ifAbsent: [nil].
     (dependency notNil and: [dependency notEmpty]) ifTrue: [dependencies add: dependency]].
   dependencies do: [:dependency |
     (applied includesKey: dependency) ifFalse: [component error: 'Original touched row has an unresolved dependency'].
     (now includesKey: dependency) ifFalse: [
       conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_MISSING'; at: 'ref' put: ref; at: 'dependency' put: dependency; yourself)
     ] ifTrue: [(anchors at: ((applied at: dependency) at: 'kind')) do: [:field |
       (same value: ((applied at: dependency) at: field ifAbsent: [absent]) value: ((now at: dependency) at: field ifAbsent: [absent]))
         ifFalse: [conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_CHANGED'; at: 'ref' put: ref;
           at: 'dependency' put: dependency; at: 'field' put: field; yourself)]]]
   ]]].
 (ordered value: rewirePeers) do: [:dependency |
   (now includesKey: dependency) ifFalse: [
     conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_MISSING'; at: 'ref' put: rewireRef;
       at: 'dependency' put: dependency; yourself)
   ] ifTrue: [(anchors at: ((applied at: dependency) at: 'kind')) do: [:field |
     (same value: ((applied at: dependency) at: field ifAbsent: [absent])
       value: ((now at: dependency) at: field ifAbsent: [absent])) ifFalse: [
       conflicts add: (Dictionary new at: 'code' put: 'DEPENDENCY_CHANGED'; at: 'ref' put: rewireRef;
         at: 'dependency' put: dependency; at: 'field' put: field; yourself)]]]].
 rewireRef notNil ifTrue: [
   (now values anySatisfy: [:row | (row at: 'kind') = 'edge' and: [
     (row at: 'ref') ~= rewireRef and: [(row at: 'target') = ((applied at: rewireRef) at: 'target')]]]) ifTrue: [
     conflicts add: (Dictionary new at: 'code' put: 'REWIRE_INPUT_OCCUPIED'; at: 'ref' put: rewireRef;
       at: 'target' put: ((applied at: rewireRef) at: 'target'); yourself)]].
 (ordered value: (applied keys asSet union: now keys asSet)) do: [:ref |
   ((applied includesKey: ref) and: [now includesKey: ref]) ifFalse: [
     preserved add: (Dictionary new at: 'ref' put: ref; at: 'field' put: nil; yourself)
   ] ifTrue: [(ordered value: ((applied at: ref) keys asSet union: (now at: ref) keys asSet)) do: [:field |
     (same value: ((applied at: ref) at: field ifAbsent: [absent]) value: ((now at: ref) at: field ifAbsent: [absent]))
       ifFalse: [preserved add: (Dictionary new at: 'ref' put: ref; at: 'field' put: field; yourself)]]]].
 expected := copy value: current.
 expected at: 'entries' put: ((current at: 'entries') collect: [:row | merged at: (row at: 'ref')]).
 Dictionary new at: 'profile' put: 'ordinary_field_inverse_v1'; at: 'operation' put: operation;
   at: 'compatible' put: conflicts isEmpty; at: 'conflicts' put: conflicts asArray;
   at: 'expected' put: (conflicts isEmpty ifTrue: [expected] ifFalse: [nil]);
   at: 'cells' put: cells asArray; at: 'preserved' put: preserved asArray; yourself
 ] ifFail: [:error | 'BDE_FIELD_INVERSE_VALUES_ERROR: ', error messageText]
]]
