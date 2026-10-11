[:dispatcher :reader | [:component :token | | stage |
 stage := 'baseline'.
 component handleExceptionsIn: [
 | record guard selected applied cases expect verify commands runCase root fieldIndex point text collection fieldObject fieldSlot fieldValue externalPoint result encoded |
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'state') = 'applied'])
   ifFalse: [component error: 'Exact applied isolated record required'].
 (#('delete_node' 'disconnect_data') includes: (record at: 'operation'))
   ifFalse: [component error: 'Ordinary deletion required'].
 guard := record at: 'detachedGraphicalGuard'. selected := guard at: 'snapshots'.
 applied := record at: 'graphicalAppliedCurrent'. cases := OrderedCollection new.
 expect := [:condition :message | condition ifFalse: [component error: message]].
 verify := [(guard at: 'verify') value and: [(applied at: 'verifyAfter') value]].
 expect value: verify value value: 'Detached baseline differs before probe'.
 encoded := dispatcher value: component
   value: (Array with: (record at: 'diagramName') with: 'validate_revert' with: '' with: token with: '0')
   value: reader.
 expect value: (encoded startsWith: '{') value: ('Untampered production inverse preview failed: ', encoded).
 commands := Array
   with: (Array with: (record at: 'diagramName') with: 'validate_revert' with: '' with: token with: '0')
   with: ((Array with: (record at: 'diagramName') with: 'revert' with: '' with: token with: '0')
     copyWith: (((record at: 'orderEvidenceReader') value: record value: (record at: 'orderParent') children) at: 'signature')).
 commands at: 2 put: ((commands at: 2) copyWith: ((record at: 'graphicalPreflight') at: 'signature')).
 runCase := [:name :tamper :restore | | preview refused baseline |
   expect value: verify value value: ('Baseline drift before ', name).
   baseline := reader value: component value: (record at: 'diagramName') value: (record at: 'targets').
   [tamper value.
     expect value: (guard at: 'verify') value not value: ('Local guard missed ', name).
     preview := dispatcher value: component value: commands first value: reader.
     expect value: ((preview startsWith: 'BDE_STRUCTURE_CONFLICT:') and: [
       preview includesSubstring: 'Detached graphical material changed'])
       value: ('Production preview did not refuse material tamper: ', preview).
     refused := dispatcher value: component value: commands last value: reader.
     expect value: ((refused startsWith: 'BDE_STRUCTURE_CONFLICT:') and: [
       refused includesSubstring: 'Detached graphical material changed'])
       value: ('Production inverse did not refuse material tamper: ', refused).
     expect value: ((record at: 'state') = 'applied') value: 'Refusal changed native mutation state'.
     cases add: (Dictionary new at: 'case' put: name; at: 'preview_refusal' put: preview;
       at: 'inverse_refusal' put: refused; at: 'mutation_started' put: false; at: 'passed' put: true; yourself)
   ] ensure: [restore value].
   expect value: verify value value: ('Probe-only tamper restoration failed: ', name).
   expect value: ((reader value: component value: (record at: 'diagramName') value: (record at: 'targets')) = baseline)
     value: ('Refusal changed attached observation: ', name)
 ].
 root := (record at: 'operation') = 'disconnect_data'
   ifTrue: [(record at: 'retained') first] ifFalse: [(record at: 'target') diagramElement].
 stage := 'root_field'. fieldIndex := 1.
 expect value: (root class instSize > 0) value: 'Root graphical fields unavailable'.
 fieldValue := root instVarAt: fieldIndex.
 runCase value: 'detached_root_field' value: [root instVarAt: fieldIndex put: (fieldValue isNil ifTrue: [17] ifFalse: [nil])]
   value: [root instVarAt: fieldIndex put: fieldValue].
 stage := 'nested_point'.
 point := selected keys detect: [:object | object class = Point and: [
   component handleExceptionsIn: [object instVarAt: 1 put: (object instVarAt: 1). true] ifFail: [:error | false]]].
 fieldValue := point instVarAt: 1.
 runCase value: 'nested_point_field' value: [point instVarAt: 1 put: fieldValue + 17]
   value: [point instVarAt: 1 put: fieldValue].
 stage := 'text'.
 text := selected keys detect: [:object | object isString and: [object notEmpty and: [
   component handleExceptionsIn: [object at: 1 put: object first. true] ifFail: [:error | false]]]] ifNone: [nil].
 text isNil ifTrue: [cases add: (Dictionary new at: 'case' put: 'in_place_text';
   at: 'status' put: 'not_applicable'; at: 'reason' put: 'No writable text in the retained native subset'; yourself)]
 ifFalse: [fieldValue := text first.
   runCase value: 'in_place_text' value: [text at: 1 put: (fieldValue = $A ifTrue: [$B] ifFalse: [$A])]
     value: [text at: 1 put: fieldValue]].
 stage := 'collection'. collection := selected keys detect: [:object | object class = OrderedCollection and: [object notEmpty]].
 fieldValue := collection first.
 runCase value: 'retained_collection_member' value: [collection at: 1 put: nil]
   value: [collection at: 1 put: fieldValue].
 stage := 'reference'. fieldObject := selected keys detect: [:object | | entry |
   entry := selected at: object. entry first = 'fields' and: [entry last anySatisfy: [:member |
     member isString and: [member notEmpty and: [member copy ~~ member]]]]] ifNone: [nil].
 fieldObject isNil ifTrue: [cases add: (Dictionary new at: 'case' put: 'equal_text_reference_replacement';
   at: 'status' put: 'not_applicable'; at: 'reason' put: 'No replaceable text field in the retained native subset'; yourself)]
 ifFalse: [fieldSlot := (1 to: fieldObject class instSize) detect: [:i | | member |
     member := fieldObject instVarAt: i. member isString and: [member notEmpty and: [member copy ~~ member]]].
   fieldValue := fieldObject instVarAt: fieldSlot.
   runCase value: 'equal_text_reference_replacement' value: [fieldObject instVarAt: fieldSlot put: fieldValue copy]
     value: [fieldObject instVarAt: fieldSlot put: fieldValue]].
 stage := 'external_control'. externalPoint := (applied at: 'snapshots') keys detect: [:object |
   object class = Point and: [(selected includesKey: object) not and: [
     component handleExceptionsIn: [object instVarAt: 1 put: (object instVarAt: 1). true] ifFail: [:error | false]]]].
 fieldValue := externalPoint instVarAt: 1.
 [externalPoint instVarAt: 1 put: fieldValue + 17.
   expect value: (guard at: 'verify') value value: 'Local guard expanded into unrelated graphical objects'.
   expect value: (applied at: 'verifyAfter') value not value: 'External control did not change full native graph'.
   cases add: (Dictionary new at: 'case' put: 'external_point_not_in_local_guard'; at: 'passed' put: true;
     at: 'independent_inverse_acceptance' put: false; yourself)
 ] ensure: [externalPoint instVarAt: 1 put: fieldValue].
 expect value: verify value value: 'Final native graph differs after probe-only restoration'.
 result := Dictionary new at: 'passed' put: true; at: 'scope' put: 'real detached material tamper and production native refusal only';
   at: 'cases' put: cases; at: 'selected_object_count' put: selected size;
   at: 'model_inverse_setters_called' put: 0; at: 'store_called' put: false;
   at: 'tamper_fields_restored' put: true; at: 'independent_edit_preservation_verified' put: false; yourself.
 (applied at: 'encode') value: result
 ] ifFail: [:error | 'BDE_DETACHED_MATERIAL_PROBE_ERROR: ', stage, '/', error messageText]
]]
