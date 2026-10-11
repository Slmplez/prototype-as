[:helpers | [:component |
 component handleExceptionsIn: [
 | root baseline rows target peer edge cases add before after current rowFor result wanted planner copier copy baselineEncoded productionCopy |
 planner := helpers first. copier := helpers last.
 copy := [:value | | cloned | cloned := copier value: component value: value.
   (cloned isString and: [cloned startsWith: 'BDE_OBSERVATION_COPY_ERROR:']) ifTrue: [component error: cloned]. cloned].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Exact private field owner required'].
 baseline := root at: 'observationValues'. rows := baseline at: 'entries'.
 baselineEncoded := (root at: 'encodeObservation') value: baseline.
 target := (rows detect: [:row | (row at: 'kind') = 'node' and: [row includesKey: 'literal']]
   ifNone: [component error: 'Literal observation required']) at: 'ref'.
 peer := (rows detect: [:row | (row at: 'kind') = 'node' and: [(row at: 'ref') ~= target]]
   ifNone: [component error: 'Separate node observation required']) at: 'ref'.
 edge := (rows detect: [:row | (row at: 'kind') = 'edge']
   ifNone: [component error: 'Separate edge observation required']) at: 'ref'.
 rowFor := [:graph :ref | (graph at: 'entries') detect: [:row | (row at: 'ref') = ref]].
 (root at: 'observationCopyProfile' ifAbsent: [nil]) = 'recursive_typed_v1'
   ifFalse: [component error: 'Production typed observation copier required'].
 productionCopy := (root at: 'copyObservation') value: baseline.
 ((root at: 'encodeObservation') value: productionCopy) = baselineEncoded
   ifFalse: [component error: 'Production typed copy values differ'].
 (rowFor value: productionCopy value: target) at: 'literal' put: 'private copy mutation'.
 ((root at: 'encodeObservation') value: baseline) = baselineEncoded
   ifFalse: [component error: 'Production typed copy changed original observation'].
 cases := OrderedCollection new.
 add := [:label :operation :graphs | | left applied now |
   left := graphs first. applied := graphs at: 2. now := graphs last.
   result := planner value: component value: graphs value: operation.
   (result isKindOf: Dictionary) ifFalse: [component error: result asString].
   cases add: (Dictionary new at: 'case' put: label; at: 'operation' put: operation;
     at: 'before' put: left; at: 'after' put: applied; at: 'current' put: now;
     at: 'plan' put: result; yourself)].
 #('set_literal' 'set_comment' 'move_node' 'set_edge_route') do: [:operation | | field selectedTarget |
   before := copy value: baseline. after := copy value: before.
   selectedTarget := operation = 'set_edge_route' ifTrue: [edge] ifFalse: [target].
   operation = 'set_comment' ifTrue: [| comment |
     selectedTarget := 'n_private_comment'.
     comment := Dictionary new at: 'ref' put: selectedTarget; at: 'kind' put: 'node';
       at: 'native_class' put: 'SGCommentGO'; at: 'pins' put: #(); at: 'comment' put: 'private before'; yourself.
     before at: 'entries' put: ((before at: 'entries'), (Array with: comment));
       at: 'lookup_nodes' put: (before at: 'lookup_nodes') + 1.
     after := copy value: before].
   field := operation = 'set_literal' ifTrue: ['literal'] ifFalse: [operation = 'set_comment'
     ifTrue: ['comment'] ifFalse: [operation = 'move_node' ifTrue: ['position'] ifFalse: ['route']]].
   (rowFor value: after value: selectedTarget) at: field put: (operation = 'move_node'
     ifTrue: [#(11 22)] ifFalse: [operation = 'set_edge_route' ifTrue: [#(#(11 22) #(33 44))] ifFalse: ['271.625']]).
   current := copy value: after.
   (rowFor value: current value: selectedTarget) at: 'agent_private_note' put: 'later'.
   (rowFor value: current value: peer) at: 'position' put: #(51 52).
   add value: (operation, '/independent_same_and_other_row') value: operation value: (Array with: before with: after with: current).
   wanted := (cases last at: 'plan') at: 'expected'.
   wanted isNil ifTrue: [component error: 'Independent field value merge refused'].
   add value: (operation, '/inverse_of_inverse') value: operation value: (Array with: current with: wanted with: (copy value: wanted)).
   current := copy value: after. (rowFor value: current value: selectedTarget) at: field put: 'overlap'.
   add value: (operation, '/overlap') value: operation value: (Array with: before with: after with: current)
 ].
 before := copy value: baseline. after := copy value: before.
 (rowFor value: after value: target) at: 'literal' put: '271.625'; at: 'size' put: #(31 32).
 current := copy value: after. (rowFor value: current value: target) at: 'size' put: #(33 34).
 add value: 'literal/store_collateral_overlap' value: 'set_literal' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: target) at: 'native_class' put: 'DifferentPrivateClass'.
 add value: 'literal/identity_conflict' value: 'set_literal' value: (Array with: before with: after with: current).
 current := copy value: after. current at: 'generation' put: (current at: 'generation') + 1.
 add value: 'literal/generation_conflict' value: 'set_literal' value: (Array with: before with: after with: current).
 current := copy value: after. current at: 'entries' put: ((current at: 'entries') reject: [:row | (row at: 'ref') = target]).
 current at: 'lookup_nodes' put: (current at: 'lookup_nodes') - 1.
 add value: 'literal/touched_row_missing' value: 'set_literal' value: (Array with: before with: after with: current).
 ((root at: 'encodeObservation') value: baseline) = baselineEncoded
   ifFalse: [component error: 'Private field case changed original typed observation'].
 (root at: 'encodeObservation') value: (Dictionary new at: 'profile' put: 'private_field_inverse_values_v1';
   at: 'cases' put: cases asArray; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'production_local_inverse_enabled' put: false; at: 'comment_fixture' put: 'private_value_row_only';
   at: 'production_typed_copy_unchanged' put: true; at: 'typed_baseline_unchanged' put: true; yourself)
 ] ifFail: [:error | 'BDE_FIELD_INVERSE_PRIVATE_ERROR: ', error messageText]
]]
