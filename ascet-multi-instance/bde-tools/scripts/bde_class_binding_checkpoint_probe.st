[:bindingReader | [:component :action :checkpoint |
 component handleExceptionsIn: [
 | current collections wrongOrder wrongLinks missing entry order swap target originalMatches currentMatches orderRefused linksRefused missingRefused scoped scopeRefused scopeName scopeKeys keyedChecks checkKeyed candidate table names |
 (#('capture' 'audit') includes: action) ifFalse: [component error: 'Unknown native checkpoint probe action'].
 action = 'capture' ifTrue: [
   checkpoint isNil ifFalse: [component error: 'Capture does not accept a replacement checkpoint'].
   current := bindingReader value: component value: 'capture'.
   (current isKindOf: Dictionary) ifFalse: [component error: current]. current
 ] ifFalse: [
   ((checkpoint isKindOf: Dictionary) and: [(checkpoint at: 'profile' ifAbsent: ['']) = 'native_collections_v1'])
     ifFalse: [component error: 'Exact native collection checkpoint required'].
   (checkpoint at: 'owner') == component item ifFalse: [component error: 'Native checkpoint owner changed'].
   collections := checkpoint at: 'collections'.
   originalMatches := (checkpoint at: 'verify') value.
   currentMatches := (checkpoint at: 'verifyCurrent') value.
   target := 0. 1 to: collections size do: [:i | ((collections at: i) at: 'order') size > 1 ifTrue: [target := i]].
   target = 0 ifTrue: [component error: 'No multi-member native collection for order negative'].
   wrongOrder := collections copy. entry := (collections at: target) copy.
   order := (entry at: 'order') copy. swap := order first.
   order at: 1 put: order last; at: order size put: swap.
   entry at: 'order' put: order. wrongOrder at: target put: entry.
   orderRefused := ((checkpoint at: 'verifyCollections') value: wrongOrder) not.
   wrongLinks := collections copy. entry := (collections first) copy.
   order := (entry at: 'links') copy. order at: 1 put: (Array with: order first first with: nil).
   entry at: 'links' put: order. wrongLinks at: 1 put: entry.
   linksRefused := ((checkpoint at: 'verifyCollections') value: wrongLinks) not.
   missing := collections asOrderedCollection. missing removeLast.
   missingRefused := ((checkpoint at: 'verifyCollections') value: missing) not.
   scoped := (checkpoint at: 'objectsByScope') copy. scopeName := nil.
   scoped keys do: [:name | (scoped at: name) size > 1 ifTrue: [scopeName := name]].
   scopeName isNil ifTrue: [component error: 'No multi-object scope for binding negative'].
   entry := (scoped at: scopeName) copy. scopeKeys := entry keys asArray.
   scopeKeys size > 1 ifFalse: [component error: 'No multi-object scope for binding negative'].
   entry at: scopeKeys first put: (entry at: scopeKeys last). scoped at: scopeName put: entry.
   scopeRefused := ((checkpoint at: 'verifyScopes') value: scoped) not.
   keyedChecks := 0.
   checkKeyed := [:value |
     ((checkpoint at: 'verifyKeyed') value: value) ifTrue: [component error: 'Incorrect native keyed checkpoint was accepted'].
     keyedChecks := keyedChecks + 1].
   candidate := checkpoint copy. candidate removeKey: 'keyedProfile'. checkKeyed value: candidate.
   candidate := checkpoint copy. candidate at: 'owner' put: nil. checkKeyed value: candidate.
   candidate := checkpoint copy. candidate at: 'specification' put: nil. checkKeyed value: candidate.
   candidate := checkpoint copy. candidate at: 'diagram' put: nil. checkKeyed value: candidate.
   candidate := checkpoint copy. candidate at: 'registry' put: Dictionary new. checkKeyed value: candidate.
   candidate := checkpoint copy. candidate at: 'generation' put: ((checkpoint at: 'generation') + 1). checkKeyed value: candidate.
   table := (checkpoint at: 'collectionBindings') copy. names := table keys asArray.
   table removeKey: names first. candidate := checkpoint copy.
   candidate at: 'collectionBindings' put: table. checkKeyed value: candidate.
   table := (checkpoint at: 'collectionBindings') copy.
   names size > 1 ifFalse: [component error: 'Multiple keyed native parents required for negative'].
   table at: names first put: (table at: names last). candidate := checkpoint copy.
   candidate at: 'collectionBindings' put: table. checkKeyed value: candidate.
   table := (checkpoint at: 'nativeByKey') copy. names := table keys asArray.
   table removeKey: names first. candidate := checkpoint copy.
   candidate at: 'nativeByKey' put: table. checkKeyed value: candidate.
   table := (checkpoint at: 'nativeByKey') copy.
   table at: names first put: Object new. candidate := checkpoint copy.
   candidate at: 'nativeByKey' put: table. checkKeyed value: candidate.
   table := (checkpoint at: 'memberKeys') copy.
   table at: table keys asArray first put: 'wrong native key'. candidate := checkpoint copy.
   candidate at: 'memberKeys' put: table. checkKeyed value: candidate.
   originalMatches := originalMatches and: [(checkpoint at: 'verify') value].
   currentMatches := currentMatches and: [(checkpoint at: 'verifyCurrent') value].
   '{"profile":"native_collections_v1","scope_count":', (checkpoint at: 'scopes') size printString,
     ',"object_count":', (checkpoint at: 'objects') size printString,
     ',"manager_count":', (checkpoint at: 'managers') size printString,
     ',"collection_count":', (checkpoint at: 'collectionCount') printString,
     ',"member_count":', (checkpoint at: 'memberCount') printString,
     ',"keyed_profile":"native_keyed_collections_v1","keyed_checkpoint_matches":', ((checkpoint at: 'verifyKeyed') value: checkpoint) printString,
     ',"keyed_collection_count":', (checkpoint at: 'collectionBindings') size printString,
     ',"keyed_member_count":', (checkpoint at: 'nativeByKey') size printString,
     ',"keyed_port_count":', (checkpoint at: 'nodePorts') size printString,
     ',"keyed_hidden_pin_count":', ((checkpoint at: 'nativeByKey') size - (checkpoint at: 'objects') size - (checkpoint at: 'nodePorts') size) printString,
     ',"keyed_negative_count":', keyedChecks printString,
     ',"original_membership_matches":', originalMatches printString,
     ',"current_registry_matches":', currentMatches printString,
     ',"wrong_order_refused":', orderRefused printString,
     ',"wrong_manager_link_refused":', linksRefused printString,
     ',"missing_collection_refused":', missingRefused printString,
     ',"wrong_scoped_object_refused":', scopeRefused printString,
     ',"model_setters_called":0,"write_authorized":false,"native_merge_executor_available":false}'
 ]
 ] ifFail: [:error | 'BDE_CLASS_CHECKPOINT_ERROR: ', error messageText]
]]
