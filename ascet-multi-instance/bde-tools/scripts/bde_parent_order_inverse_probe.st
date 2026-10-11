[:bindingReader :cloneReader :planner | [:component |
 component handleExceptionsIn: [
 | checkpoint cases sameOrder methods out encode |
 checkpoint := bindingReader value: component value: 'capture'.
 (checkpoint isKindOf: Dictionary) ifFalse: [component error: checkpoint].
 sameOrder := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 methods := #('exact' 'independent_addition' 'independent_deletion' 'ambiguous_gap' 'reordered'
   'attached_original' 'changed_parent_member' 'changed_collection_binding' 'stale_order' 'stale_positions').
 cases := OrderedCollection new.
 methods do: [:mode | | clone entries entry memo parent collection original primary peer saved record plan extra current compatible guarded primaryPosition matches savedPosition tokens keysFor caseData |
   clone := cloneReader value: component value: checkpoint value: 'clone'.
   (clone isKindOf: Dictionary) ifFalse: [component error: clone].
   memo := clone at: 'memo'.
   entries := (checkpoint at: 'collectionBindings') values select: [:binding |
     ((binding at: 'slot') at: 'role') = 'scope_children' and: [
       ((binding at: 'order') select: [:object | (object isKindOf: RBConnectionWrapperGO) not]) size >= 3]].
   entries isEmpty ifTrue: [component error: 'Three real native children required for parent order probe'].
   entry := entries first. parent := memo at: (entry at: 'manager'). collection := parent children.
   original := collection asArray copy.
   primary := (original select: [:object | (object isKindOf: RBConnectionWrapperGO) not]) at: 2.
   peer := (original select: [:object | object ~~ primary and: [(object isKindOf: RBConnectionWrapperGO) not]]) last.
   primaryPosition := collection indexOf: primary.
   saved := Array with: primary with: parent with: primaryPosition with: #().
   record := Dictionary new at: 'operation' put: 'delete_node'; at: 'orderParent' put: parent;
     at: 'orderCollection' put: collection; at: 'beforeOrder' put: original;
     at: 'afterOrder' put: (original reject: [:object | object == primary]);
     at: 'retainedSet' put: (Array with: saved); yourself.
   collection remove: primary.
   extra := nil. compatible := true.
   mode = 'independent_addition' ifTrue: [
     extra := SGCommentGO new. extra manager: parent.
     primaryPosition = 1 ifTrue: [collection add: extra] ifFalse: [collection add: extra beforeIndex: 1]].
   mode = 'independent_deletion' ifTrue: [collection remove: peer. peer manager: nil].
   mode = 'ambiguous_gap' ifTrue: [
     extra := SGCommentGO new. extra manager: parent. collection add: extra beforeIndex: primaryPosition.
     compatible := false].
   mode = 'reordered' ifTrue: [
     current := collection asArray reverse. collection removeAll: collection asArray; addAll: current.
     compatible := false].
   mode = 'attached_original' ifTrue: [collection add: primary. compatible := false].
   mode = 'changed_parent_member' ifTrue: [peer manager: nil. compatible := false].
   mode = 'changed_collection_binding' ifTrue: [record at: 'orderCollection' put: OrderedCollection new. compatible := false].
   current := collection asArray copy.
   tokens := IdentityDictionary new. original doWithIndex: [:object :i | tokens at: object put: i].
   extra notNil ifTrue: [tokens at: extra put: original size + 1].
   keysFor := [:order | order collect: [:object | tokens at: object]].
   plan := planner value: component value: record value: parent.
   matches := compatible ifTrue: [(plan isKindOf: Dictionary) and: [plan at: 'compatible']]
     ifFalse: [(plan isKindOf: Dictionary) ifTrue: [(plan at: 'compatible') not] ifFalse: [plan startsWith: 'BDE_PARENT_ORDER_ERROR:']].
   matches ifFalse: [component error: 'Parent order probe verdict differs: ', mode].
   guarded := false.
   compatible ifTrue: [
     (plan at: 'verifyBeforeApply') value ifFalse: [component error: 'Fresh parent order plan is not verified'].
     mode = 'stale_order' ifTrue: [
       collection remove: peer. peer manager: nil. guarded := (plan at: 'verifyBeforeApply') value not.
       peer manager: parent. collection removeAll: collection asArray; addAll: current].
     mode = 'stale_positions' ifTrue: [
       savedPosition := (plan at: 'positions') at: primary.
       (plan at: 'positions') at: primary put: savedPosition + 1.
       guarded := (plan at: 'verifyBeforeApply') value not.
       (plan at: 'positions') at: primary put: savedPosition].
     (#('stale_order' 'stale_positions') includes: mode) ifTrue: [guarded ifFalse: [component error: 'Stale parent plan accepted']].
     "Exercise only memo-owned children and links. This does not call addGO/store or the model dispatcher."
     (plan at: 'restores') do: [:item |
       collection add: item first beforeIndex: ((plan at: 'positions') at: item first).
       item first manager: parent].
     (sameOrder value: collection value: (plan at: 'merged')) ifFalse: [component error: 'Private parent splice differs from merged plan'].
     mode = 'independent_addition' ifTrue: [(collection includes: extra) ifFalse: [component error: 'Independent addition lost']].
     mode = 'independent_deletion' ifTrue: [(collection includes: peer) ifTrue: [component error: 'Independent deletion overwritten']]].
   extra notNil ifTrue: [extra manager: nil].
   collection removeAll: collection asArray; addAll: original. original do: [:object | object manager: parent].
   ((clone at: 'verifyInitialGraph') value) ifFalse: [component error: 'Private parent probe initial graph not restored'].
   ((checkpoint at: 'verifyCurrent') value) ifFalse: [component error: 'Public native graph changed during parent probe'].
   caseData := Dictionary new at: 'scenario' put: mode; at: 'compatible' put: compatible;
     at: 'stale_refused' put: guarded; at: 'private_reset' put: true;
     at: 'before' put: (keysFor value: original); at: 'after' put: (keysFor value: (record at: 'afterOrder'));
     at: 'current' put: (keysFor value: current); at: 'merged' put: nil; at: 'positions' put: #(); yourself.
   compatible ifTrue: [caseData at: 'merged' put: (keysFor value: (plan at: 'merged'));
     at: 'positions' put: ((plan at: 'restores') collect: [:item |
       Array with: (tokens at: item first) with: ((plan at: 'positions') at: item first)])].
   cases add: caseData].
 out := WriteStream on: String new. out nextPutAll: '{"profile":"native_parent_order_probe_v1","cases":['.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPut: $"; nextPutAll: value; nextPut: $"] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [out nextPut: ${.
     value keys asSortedCollection doWithIndex: [:key :i | i > 1 ifTrue: [out nextPut: $,].
       encode value: key. out nextPut: $:. encode value: (value at: key)]. out nextPut: $}]
     ifFalse: [out nextPut: $[. value doWithIndex: [:item :i | i > 1 ifTrue: [out nextPut: $,]. encode value: item]. out nextPut: $]]]]]].
 cases doWithIndex: [:row :i | i > 1 ifTrue: [out nextPut: $,]. encode value: row].
 out nextPutAll: '],"model_setters_called":0,"production_dispatch":false,"complete_acceptance":false}'. out contents
 ] ifFail: [:error | 'BDE_PARENT_ORDER_PROBE_ERROR: ', error messageText]
]]
