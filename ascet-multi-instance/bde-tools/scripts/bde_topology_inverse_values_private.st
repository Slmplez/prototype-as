[:helpers | [:component |
 component handleExceptionsIn: [
 | root baseline baselineEncoded planner copier copy rowFor edge source target peer sourcePins closure cases add before after current wanted removeRows sortRows |
 planner := helpers first. copier := helpers last.
 copy := [:value | | cloned | cloned := copier value: component value: value.
   (cloned isString and: [cloned startsWith: 'BDE_OBSERVATION_COPY_ERROR:']) ifTrue: [component error: cloned]. cloned].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Exact private topology owner required'].
 baseline := copy value: (root at: 'observationValues').
 baselineEncoded := (root at: 'encodeObservation') value: (root at: 'observationValues').
 rowFor := [:graph :ref | (graph at: 'entries') detect: [:row | (row at: 'ref') = ref]].
 edge := ((baseline at: 'entries') detect: [:row | (row at: 'kind') = 'edge']) at: 'ref'.
 source := (rowFor value: baseline value: ((rowFor value: baseline value: edge) at: 'source')) at: 'owner'.
 target := (rowFor value: baseline value: edge) at: 'target'.
 peer := ((baseline at: 'entries') detect: [:row | (row at: 'kind') = 'node'
   and: [(row at: 'ref') ~= source]]) at: 'ref'.
 sourcePins := (rowFor value: baseline value: source) at: 'pins'.
 closure := Set new add: source; addAll: sourcePins; yourself.
 (baseline at: 'entries') do: [:row | (row at: 'kind') = 'edge' ifTrue: [
   ((sourcePins includes: (row at: 'source')) or: [sourcePins includes: (row at: 'target')])
     ifTrue: [closure add: (row at: 'ref')]]].
 removeRows := [:graph :refs | | removed |
   removed := (graph at: 'entries') select: [:row | refs includes: (row at: 'ref')].
   graph at: 'entries' put: ((graph at: 'entries') reject: [:row | refs includes: (row at: 'ref')]);
     at: 'lookup_nodes' put: (graph at: 'lookup_nodes') - (removed select: [:row | (row at: 'kind') = 'node']) size;
     at: 'lookup_edges' put: (graph at: 'lookup_edges') - (removed select: [:row | (row at: 'kind') = 'edge']) size].
 sortRows := [:graph | graph at: 'entries' put: ((graph at: 'entries') asSortedCollection: [:left :right |
   (left at: 'ref') <= (right at: 'ref')]) asArray].
 cases := OrderedCollection new.
 add := [:label :operation :graphs | | encoded result |
   encoded := (root at: 'encodeObservation') value: graphs.
   result := planner value: component value: graphs value: operation.
   (result isKindOf: Dictionary) ifFalse: [component error: result asString].
   ((root at: 'encodeObservation') value: graphs) = encoded
     ifFalse: [component error: 'Private topology planner mutated its input observations'].
   cases add: (Dictionary new at: 'case' put: label; at: 'operation' put: operation;
     at: 'before' put: graphs first; at: 'after' put: (graphs at: 2); at: 'current' put: graphs last;
     at: 'plan' put: result; yourself)].
 before := copy value: baseline. after := copy value: before.
 removeRows value: after value: (Array with: edge). current := copy value: after.
 (rowFor value: current value: source) at: 'agent_private_note' put: 'independent endpoint owner edit'.
 (rowFor value: current value: peer) at: 'position' put: #(71 82).
 add value: 'disconnect/independent_other_row' value: 'disconnect_data' value: (Array with: before with: after with: current).
 wanted := (cases last at: 'plan') at: 'expected'.
 wanted isNil ifTrue: [component error: 'Independent disconnect inverse refused'].
 add value: 'disconnect/inverse_of_inverse' value: 'disconnect_data' value: (Array with: current with: wanted with: (copy value: wanted)).
 current := copy value: after.
 current at: 'entries' put: ((current at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'edge'; at: 'ref' put: 'e_private_occupied';
   at: 'native_class' put: ((rowFor value: baseline value: edge) at: 'native_class');
   at: 'source' put: ((rowFor value: baseline value: edge) at: 'source'); at: 'target' put: target; yourself)));
   at: 'lookup_edges' put: (current at: 'lookup_edges') + 1.
 sortRows value: current.
 add value: 'disconnect/occupied_input' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. removeRows value: current value: (Array with: target).
 add value: 'disconnect/endpoint_missing' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: source) at: 'pins' put: #().
 add value: 'disconnect/owner_conflict' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. current at: 'generation' put: (current at: 'generation') + 1.
 add value: 'disconnect/metadata_conflict' value: 'disconnect_data' value: (Array with: before with: after with: current).
 add value: 'disconnect/reappeared_conflict' value: 'disconnect_data' value: (Array with: before with: after with: (copy value: before)).
 after := copy value: after. (rowFor value: after value: peer) at: 'agent_private_collateral' put: 'actual after'.
 current := copy value: after. (rowFor value: current value: peer) at: 'agent_private_note' put: 'later'.
 add value: 'disconnect/collateral_independent' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: peer) at: 'agent_private_collateral' put: 'later overlap'.
 add value: 'disconnect/collateral_overlap' value: 'disconnect_data' value: (Array with: before with: after with: current).
 before := copy value: baseline. after := copy value: before.
 removeRows value: after value: closure. current := copy value: after.
 (rowFor value: current value: peer) at: 'agent_private_note' put: 'independent survivor edit'.
 add value: 'delete/independent_other_row' value: 'delete_node' value: (Array with: before with: after with: current).
 wanted := (cases last at: 'plan') at: 'expected'.
 wanted isNil ifTrue: [component error: 'Independent delete inverse refused'].
 add value: 'delete/inverse_of_inverse' value: 'delete_node' value: (Array with: current with: wanted with: (copy value: wanted)).
 current := copy value: before. (rowFor value: current value: source) at: 'agent_private_note' put: 'later restored row edit'.
 add value: 'delete/restored_row_overlap' value: 'delete_node' value: (Array with: after with: before with: current).
 current := copy value: after.
 current at: 'entries' put: ((current at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'edge'; at: 'ref' put: 'e_private_dependency';
   at: 'native_class' put: ((rowFor value: baseline value: edge) at: 'native_class');
   at: 'source' put: sourcePins first; at: 'target' put: target; yourself)));
   at: 'lookup_edges' put: (current at: 'lookup_edges') + 1.
 sortRows value: current.
 add value: 'delete/new_pin_dependency_conflict' value: 'delete_node' value: (Array with: before with: after with: current).
 current := copy value: before.
 current at: 'entries' put: ((current at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'edge'; at: 'ref' put: 'e_private_dependency';
   at: 'native_class' put: ((rowFor value: baseline value: edge) at: 'native_class');
   at: 'source' put: sourcePins first; at: 'target' put: target; yourself)));
   at: 'lookup_edges' put: (current at: 'lookup_edges') + 1.
 sortRows value: current.
 add value: 'delete/redo_new_pin_dependency_conflict' value: 'delete_node' value: (Array with: after with: before with: current).
 after := copy value: after. (rowFor value: after value: peer) at: 'agent_private_collateral' put: 'actual after'.
 current := copy value: after. (rowFor value: current value: peer) at: 'agent_private_note' put: 'later'.
 add value: 'delete/collateral_independent' value: 'delete_node' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: peer) at: 'agent_private_collateral' put: 'overlap'.
 add value: 'delete/collateral_overlap' value: 'delete_node' value: (Array with: before with: after with: current).
 before := copy value: baseline. removeRows value: before value: (Array with: edge).
 after := copy value: baseline. current := copy value: after.
 (rowFor value: current value: source) at: 'agent_private_note' put: 'independent owner edit'.
 add value: 'connect/independent_other_row' value: 'connect_data' value: (Array with: before with: after with: current).
 wanted := (cases last at: 'plan') at: 'expected'.
 wanted isNil ifTrue: [component error: 'Independent connect inverse refused'].
 add value: 'connect/inverse_of_inverse' value: 'connect_data' value: (Array with: current with: wanted with: (copy value: wanted)).
 current := copy value: after. (rowFor value: current value: edge) at: 'route' put: #(#(101 102) #(201 202)).
 add value: 'connect/route_overlap' value: 'connect_data' value: (Array with: before with: after with: current).
 before := copy value: baseline. removeRows value: before value: closure.
 after := copy value: baseline. current := copy value: after.
 (rowFor value: current value: peer) at: 'agent_private_note' put: 'independent survivor edit'.
 add value: 'create/independent_other_row' value: 'create_block' value: (Array with: before with: after with: current).
 wanted := (cases last at: 'plan') at: 'expected'.
 wanted isNil ifTrue: [component error: 'Independent creation inverse refused'].
 add value: 'create/inverse_of_inverse' value: 'create_block' value: (Array with: current with: wanted with: (copy value: wanted)).
 current := copy value: after. (rowFor value: current value: source) at: 'agent_private_note' put: 'later own occurrence edit'.
 add value: 'create/occurrence_overlap' value: 'create_block' value: (Array with: before with: after with: current).
 after := copy value: baseline.
 after at: 'entries' put: ((after at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'model'; at: 'ref' put: 'm_private_decl'; at: 'native_class' put: 'PrivateDeclarationFixture';
   at: 'oid' put: 'private'; at: 'path' put: 'private'; yourself))).
 (rowFor value: after value: source) at: 'model_ref' put: 'm_private_decl'. sortRows value: after.
 before := copy value: after. removeRows value: before value: (closure copy add: 'm_private_decl'; yourself).
 current := copy value: after.
 add value: 'create/declaration_independent' value: 'create_block' value: (Array with: before with: after with: current).
 wanted := (cases last at: 'plan') at: 'expected'.
 wanted isNil ifTrue: [component error: 'Private declaration inverse refused'].
 add value: 'create/declaration_inverse_of_inverse' value: 'create_block' value: (Array with: current with: wanted with: (copy value: wanted)).
 current := copy value: after.
 current at: 'entries' put: ((current at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'node'; at: 'ref' put: 'n_private_shared'; at: 'native_class' put: 'PrivateOccurrenceFixture';
   at: 'pins' put: #(); at: 'model_ref' put: 'm_private_decl'; yourself)));
   at: 'lookup_nodes' put: (current at: 'lookup_nodes') + 1. sortRows value: current.
 add value: 'create/shared_declaration_conflict' value: 'create_block' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: 'm_private_decl') at: 'parameter' put: true.
 add value: 'create/declaration_overlap' value: 'create_block' value: (Array with: before with: after with: current).
 before := copy value: after. after := copy value: before. removeRows value: after value: (Array with: edge).
 current := copy value: after. (rowFor value: current value: 'm_private_decl') at: 'initial' put: 'independent'.
 add value: 'disconnect/endpoint_model_independent' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. (rowFor value: current value: 'm_private_decl') at: 'oid' put: 'different'.
 add value: 'disconnect/endpoint_model_conflict' value: 'disconnect_data' value: (Array with: before with: after with: current).
 current := copy value: after. removeRows value: current value: (Array with: 'm_private_decl').
 add value: 'disconnect/endpoint_model_missing' value: 'disconnect_data' value: (Array with: before with: after with: current).
 before := copy value: baseline. after := copy value: before. removeRows value: after value: closure.
 current := copy value: after.
 current at: 'entries' put: ((current at: 'entries'), (Array with: (Dictionary new
   at: 'kind' put: 'pin'; at: 'ref' put: 'p_private_owner'; at: 'owner' put: source;
   at: 'input' put: false; at: 'output' put: true; yourself))). sortRows value: current.
 add value: 'delete/new_node_dependency_conflict' value: 'delete_node' value: (Array with: before with: after with: current).
 ((root at: 'encodeObservation') value: (root at: 'observationValues')) = baselineEncoded
   ifFalse: [component error: 'Private topology cases changed live typed observation'].
 (root at: 'encodeObservation') value: (Dictionary new at: 'profile' put: 'private_topology_inverse_values_v1';
   at: 'cases' put: cases asArray; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'production_local_inverse_enabled' put: false; at: 'input_observations_unchanged' put: true;
   at: 'typed_baseline_unchanged' put: true;
   at: 'synthetic_rows' put: 'Private current-edge conflicts and one private declaration/shared occurrence; no native factory/type verification'; yourself)
 ] ifFail: [:error | 'BDE_TOPOLOGY_INVERSE_PRIVATE_ERROR: ', error messageText]
]]
