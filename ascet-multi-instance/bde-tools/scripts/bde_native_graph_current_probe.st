[:reader | [:component | | stage |
 component handleExceptionsIn: [
 | map point text snapshot descriptor tokenCount imageCount checks expect actual replacement replacementToken again keyed key newKey keySnapshot set identitySet collectionSnapshot refused |
 stage := 'initial_capture'.
 checks := OrderedCollection new.
 expect := [:name :condition | condition ifFalse: [component error: ('CURRENT probe failed: ', name)].
   checks add: (Dictionary new at: 'case' put: name; at: 'passed' put: true; yourself)].
 map := IdentityDictionary new. point := 1@2. text := 'old' copy.
 map at: #point put: point; at: #text put: text.
 snapshot := reader value: component value: (Array with: map).
 (snapshot isKindOf: Dictionary) ifFalse: [component error: snapshot].
 descriptor := snapshot at: 'descriptor'. tokenCount := (snapshot at: 'tokens') size.
 imageCount := (snapshot at: 'snapshots') size.
 actual := (snapshot at: 'diff') value.
 expect value: 'unchanged' value: ((snapshot at: 'verify') value and: [
   (actual at: 'changes') isEmpty and: [(actual at: 'new_objects') isEmpty]]).
 replacement := OrderedCollection new.
 stage := 'new_collection'.
 replacement add: point; add: (3@4); add: 'new' copy; add: replacement.
 map at: #new put: replacement.
 actual := (snapshot at: 'diff') value.
 expect value: 'new_cyclic_collection_full_descriptors' value: (
   (actual at: 'changes') size = 1 and: [(actual at: 'new_objects') size = 3 and: [
     (actual at: 'new_objects') anySatisfy: [:row | (row at: 'class') = 'OrderedCollection' and: [
       (row at: 'value') size = 4 and: [((row at: 'value') last at: 'ref') = (row at: 'ref')]]]]]).
 replacementToken := ((actual at: 'new_objects') detect: [:row | (row at: 'class') = 'OrderedCollection']) at: 'ref'.
 again := (snapshot at: 'diff') value.
 expect value: 'new_reference_tokens_stable' value: (
   (((again at: 'new_objects') detect: [:row | (row at: 'class') = 'OrderedCollection']) at: 'ref') = replacementToken).
 expect value: 'immutable_current' value: ((snapshot at: 'descriptor') = descriptor and: [
   (snapshot at: 'tokens') size = tokenCount and: [(snapshot at: 'snapshots') size = imageCount]]).
 point instVarAt: 1 put: 9. text at: 1 put: $X.
 stage := 'nested_fields'.
 actual := (snapshot at: 'diff') value.
 expect value: 'existing_nested_fields_and_values' value: (
   (snapshot at: 'verify') value not and: [(actual at: 'changes') size = 3 and: [
     ((actual at: 'changes') anySatisfy: [:row | (row at: 'kind') = 'fields']) and: [
     (actual at: 'changes') anySatisfy: [:row | (row at: 'kind') = 'value']]]]).
 map at: #unsupported put: Object new.
 stage := 'unsupported_class'.
 refused := component handleExceptionsIn: [(snapshot at: 'diff') value. false]
   ifFail: [:error | error messageText includesSubstring: 'Unsupported CURRENT class'].
 expect value: 'unsupported_new_class_refused' value: refused.
 map removeKey: #unsupported; removeKey: #new.
 point instVarAt: 1 put: 1. text at: 1 put: $o.
 actual := (snapshot at: 'diff') value.
 expect value: 'private_fixture_restored' value: ((snapshot at: 'verify') value and: [
   (actual at: 'changes') isEmpty and: [(actual at: 'new_objects') isEmpty]]).
 key := 'same' copy. keyed := Dictionary new. keyed at: key put: point.
 stage := 'key_identity'.
 keySnapshot := reader value: component value: (Array with: keyed).
 newKey := key copy. keyed removeKey: key; at: newKey put: point.
 actual := (keySnapshot at: 'diff') value.
 expect value: 'equal_key_replacement_detected' value: ((keySnapshot at: 'verify') value not and: [
   (actual at: 'changes') size = 1 and: [(actual at: 'new_objects') size = 1]]).
 set := Set new. identitySet := IdentitySet new.
 stage := 'set_members'.
 collectionSnapshot := reader value: component value: (Array with: set with: identitySet).
 set add: point. identitySet add: replacement.
 actual := (collectionSnapshot at: 'diff') value.
 expect value: 'set_and_identityset_new_members' value: ((collectionSnapshot at: 'verify') value not and: [
   (actual at: 'changes') size = 2 and: [(actual at: 'new_objects') size >= 4]]).
 (snapshot at: 'encode') value: (Dictionary new at: 'scope' put: 'PRIVATE containers only';
   at: 'checks' put: checks; at: 'model_setters_called' put: 0; at: 'passed' put: true; yourself)
 ] ifFail: [:error | 'BDE_CURRENT_PROBE_ERROR: ', stage, '/', error class name asString, '/', error messageText]
]]
