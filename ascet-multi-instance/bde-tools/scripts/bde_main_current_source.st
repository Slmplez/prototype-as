[:helpers | [:component |
 component handleExceptionsIn: [
 | root diagram source native out |
 (helpers isArray and: [helpers size = 2]) ifFalse: [component error: 'Fixed source observation helpers required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated Main source observation required'].
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (root at: 'owner') == component item ifFalse: [component error: 'Current source owner differs'].
 diagram := root at: 'diagram'. source := diagram specification specSourceInternalOrNil.
 native := helpers first value: component value: (Array with: diagram topGraphicalHierarchy).
 (native isKindOf: Dictionary) ifFalse: [component error: native asString].
 out := Dictionary new at: 'profile' put: 'main_current_source_v1';
   at: 'component_oid' put: component getOID;
   at: 'source' put: (helpers last value: component value: source);
   at: 'source_root_preserved' put: (source == diagram specification specSourceInternalOrNil);
   at: 'native_unchanged' put: ((native at: 'verify') value);
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; yourself.
 (native at: 'encode') value: out
 ] ifFail: [:error | 'BDE_CURRENT_SOURCE_ERROR: ', error messageText]
]]
