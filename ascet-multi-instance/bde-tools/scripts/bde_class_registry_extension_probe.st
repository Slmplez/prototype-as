[:bindings :guard | [:component :action |
 component handleExceptionsIn: [
 | checkpoint original current negativeCount refuse wrong saved key result |
 action = 'audit' ifFalse: [component error: 'Exact registry extension audit action required'].
 checkpoint := bindings value: component value: 'capture'.
 (checkpoint isKindOf: Dictionary) ifFalse: [component error: checkpoint].
 original := guard value: component value: checkpoint.
 (original at: 'compatible') ifFalse: [component error: 'Current native registry guard refused'].
 negativeCount := 0.
 refuse := [:candidate | | verdict |
   verdict := guard value: component value: candidate.
   (verdict at: 'compatible') ifTrue: [component error: 'Changed private registry witness accepted'].
   negativeCount := negativeCount + 1].
 #('owner' 'diagram' 'specification' 'registry' 'scopeEpoch') do: [:field |
   wrong := checkpoint copy. wrong at: field put: nil. refuse value: wrong].
 #('generation' 'issuedGeneration' 'counter') do: [:field |
   wrong := checkpoint copy. wrong at: field put: (checkpoint at: field) + 1. refuse value: wrong].
 wrong := checkpoint copy. wrong at: 'ids' put: IdentityDictionary new. refuse value: wrong.
 saved := (checkpoint at: 'ids') copy. saved isEmpty ifTrue: [component error: 'Actual registered edges required'].
 key := saved keys asArray first. saved at: key put: 'e0'.
 wrong := checkpoint copy. wrong at: 'ids' put: saved. refuse value: wrong.
 current := guard value: component value: checkpoint.
 (current at: 'compatible') ifFalse: [component error: 'Private negatives changed current registry'].
 '{"profile":"class_registry_extension_negatives_v1","negative_count":', negativeCount printString,
   ',"current_guard_matches":true,"model_setters_called":0,"registry_modified":false}'
 ] ifFail: [:error | 'BDE_CLASS_REGISTRY_NEGATIVES_ERROR: ', error messageText]
]]
