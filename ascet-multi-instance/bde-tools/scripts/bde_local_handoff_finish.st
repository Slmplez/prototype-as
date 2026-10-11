"Finish an observed partial metadata handoff. Never invoke retain, edit,
 inverse, setter, store or any patch execute block."
[:component :token :inverseId |
 component handleExceptionsIn: [
 | record completed proof root actual |
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated local metadata completion required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'component') = component getOID and: [
   (record at: 'state') = 'reverted' and: [(record at: 'operation') = 'set_literal' and: [
   (record at: 'fieldLocalProfile') = 'native_source_local_inverse_v1' and: [
   (record at: 'fieldLocalHeadId') = inverseId and: [(record includesKey: 'managedInverseId') not]]]]]])
   ifFalse: [component error: 'Exact observed partial initial local handoff required'].
 completed := record at: 'fieldLocalExecutedHead'.
 ((completed at: 'previousHead') = token and: [(completed at: 'result') isNil and: [
   #('Native' 'Source' 'Values') allSatisfy: [:kind |
     (record at: ('fieldLocalHeadBefore', kind)) == (completed at: ('before', kind)) and: [
     (record at: ('fieldLocalHeadAfter', kind)) == (completed at: ('after', kind))]]]])
   ifFalse: [component error: 'Partial local pairs differ; do not replace or replay material'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'diagram') == (record at: 'diagram') ifFalse: [component error: 'Partial handoff scope expired'].
 actual := (record at: 'materialObservationReader') value: component value: 'Main' value: (record at: 'targets').
 actual = (record at: 'lastObserved') ifFalse: [component error: 'Actual local terminal changed before metadata completion'].
 proof := (record at: 'fieldStatusReader') value: component value: record value: token.
 (#('terminal_verified' 'serialized_source_verified' 'actual_material_retained' 'native_matches_terminal'
   'source_matches_terminal' 'source_root_preserved') allSatisfy: [:key | (proof at: key) == true])
   ifFalse: [component error: 'Complete actual native/source terminal proof required'].
 record at: 'fieldLocalPreflight' put: Dictionary new;
   at: 'managedInverseId' put: inverseId; at: 'materialProtocol' put: 'retained_inverse_v1'.
 record removeKey: 'fieldLocalExecutedHead'.
 ((record at: 'fieldNativeBefore') at: 'encode') value: (Dictionary new
   at: 'profile' put: 'local_partial_handoff_finish_v1'; at: 'native_token' put: token;
   at: 'owner_change_id' put: inverseId; at: 'model_setters_called' put: 0;
   at: 'store_called' put: false; at: 'patch_execute_called' put: false; yourself)
 ] ifFail: [:error | 'BDE_LOCAL_HANDOFF_FINISH_ERROR: ', error messageText]
]
