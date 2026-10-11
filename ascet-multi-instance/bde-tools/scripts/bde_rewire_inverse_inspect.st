"Fixed readonly inspection of retained actual rewire values and a fresh typed planner."
[:planner | [:component :token |
 component handleExceptionsIn: [
 | record root native source currentNative currentSource encoded graphs planned out |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated exact retained rewire inspection required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'diagramName') = 'Main' and: [(record at: 'operation') = 'rewire_data' and: [
   (record at: 'state') = 'applied' and: [(record at: 'fieldLocalHeadId') = token]]]]])
   ifFalse: [component error: 'Exact retained applied original rewire required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 ((root at: 'owner') == component item and: [(root at: 'diagram') == (record at: 'diagram')])
   ifFalse: [component error: 'Original rewire root identity expired'].
 native := record at: 'fieldNativeBefore'. source := record at: 'fieldSourceMaterialAfter'.
 currentNative := (native at: 'captureImages') value: ((native at: 'snapshots') keys,
   (record at: 'fieldOriginalAfterImages') keys).
 currentSource := (source at: 'captureImages') value: (source at: 'snapshots') keys.
 encoded := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
 (encoded startsWith: 'BDE_STRUCTURE_ERROR:') ifTrue: [component error: encoded].
 graphs := Array with: (record at: 'fieldLocalHeadBeforeValues')
   with: (record at: 'fieldLocalHeadAfterValues') with: (root at: 'observationValues').
 planned := planner value: component value: graphs value: 'rewire_data'.
 out := Dictionary new at: 'profile' put: 'retained_rewire_inverse_inspect_v1';
   at: 'native_token' put: token; at: 'before' put: graphs first; at: 'after' put: (graphs at: 2);
   at: 'current' put: graphs last; at: 'plan' put: planned;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'native_unchanged' put: ((native at: 'verifyImages') value: currentNative);
   at: 'source_unchanged' put: ((source at: 'verifyImages') value: currentSource); yourself.
 (root at: 'encodeObservation') value: out
 ] ifFail: [:error | 'BDE_REWIRE_INVERSE_INSPECT_ERROR: ', error messageText]
]]
