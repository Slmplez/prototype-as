"Original v6 cache membership read-only preflight; no CURRENT promotion or execution."
[:planner | [:component :token |
 component handleExceptionsIn: [
 | root record material originals storage pairs old fresh patch image describe values tokens checks |
 root := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 material := record at: 'commitResourceMaterial'.
 ((record at: 'state') = 'prepared' and: [(record at: 'owner') == component item and: [(material at: 'owner') == component item and: [
   (material at: 'root') == root and: [(material at: 'generation') = (root at: 'generation') and: [
   (material at: 'editToken') = token and: [
   ((record at: 'commitResourceReceipt') at: 'profile') = 'native_commit_prepare_v6' and: [
   (material at: 'phase') = 'captured']]]]]]])
   ifFalse: [component error: 'Original v6 cache binding required'].
 storage := material at: 'storage'. originals := material at: 'originalCacheMembers'.
 values := material at: 'values'. tokens := material at: 'tokens'.
 checks := material at: 'cacheMembershipPreflights' ifAbsentPut: [OrderedCollection new].
 checks size >= 32 ifTrue: [component error: 'Cache query capacity reached; no eviction'].
 old := originals collect: [:pair | Array with: pair first with:
   (values at: pair first ifAbsent: [component error: 'Original retained key bytes unavailable; no CURRENT substitute']) with: pair last].
 fresh := (storage associations collect: [:association | Array with: association key with: association key copy with: association value]) asArray.
 patch := planner value: component value: (Array with: storage with: old with: fresh) value: 'undo'.
 (patch isKindOf: Dictionary) ifFalse: [component error: patch asString].
 checks add: (Dictionary new at: 'current' put: fresh; at: 'patch' put: patch; yourself).
 describe := [:object | Dictionary new at: 'class' put: object class name asString;
   at: 'ref' put: (tokens at: object ifAbsentPut: ['r', (tokens size + 1) printString]); yourself].
 image := [:members | ((members collect: [:pair | Dictionary new at: 'key' put: (describe value: pair first);
   at: 'key_bytes' put: pair second asArray; at: 'entry' put: (describe value: pair last); yourself])
   asSortedCollection: [:a :b | ((a at: 'key') at: 'ref') < ((b at: 'key') at: 'ref')]) asArray].
 (root at: 'encodeObservation') value: (Dictionary new at: 'profile' put: 'native_cache_membership_preflight_v1';
   at: 'native_token' put: token; at: 'component_oid' put: component getOID;
   at: 'generation' put: (root at: 'generation'); at: 'storage' put: (describe value: storage);
   at: 'original' put: (image value: old); at: 'current' put: (image value: fresh);
   at: 'cell_count' put: ((patch at: 'progress') at: 'cell_count');
   at: 'compatible' put: (patch at: 'verifyBeforeApply') value;
   at: 'current_used_as_edit_after' put: false; at: 'executed' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false;
   at: 'production_inverse_authorized' put: false; at: 'full_commit_resource_closure' put: false; yourself)
 ] ifFail: [:error | 'BDE_CACHE_MEMBERSHIP_PREFLIGHT_ERROR: ', error messageText]
]]
