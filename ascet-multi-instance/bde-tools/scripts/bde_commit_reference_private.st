"Eval-only copied raw records exercise the legacy four-byte blind spot without writing ASCET."
[:decoder | [:component :token |
 component handleExceptionsIn: [
 | material root row ownerKey originalRaw before edited changed bad tail changedRaw badRaw tailRaw
   badError tailResult encoded saved answer end |
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
 root := material at: 'root'.
 (material at: 'editToken') = token ifFalse: [component error: 'Original reference test token differs'].
 row := (material at: 'records') detect: [:entry | (entry at: 'role') = 'owner_references'].
 ownerKey := (material at: 'receipt') at: 'owner_key'.
 encoded := root at: 'encodeObservation'. saved := encoded value: row.
 originalRaw := row at: 'allocated_bytes'.
 before := decoder value: row value: ownerKey. end := before at: 'semantic_size'.
 edited := row copy. changedRaw := originalRaw copy.
 changedRaw at: end put: (((changedRaw at: end) + 1) \\ 256).
 edited removeKey: 'length_profile' ifAbsent: []; removeKey: 'declared_size' ifAbsent: [].
 edited at: 'logical_size' put: (row at: 'fixed_size') + (row at: 'blob_size'); at: 'allocated_bytes' put: changedRaw;
   at: 'bytes' put: (changedRaw copyFrom: 1 to: (row at: 'fixed_size') + (row at: 'blob_size')).
 changed := decoder value: edited value: ownerKey.
 bad := row copy. badRaw := originalRaw copy. badRaw at: 65 put: 2.
 bad at: 'allocated_bytes' put: badRaw; at: 'bytes' put: (badRaw copyFrom: 1 to: (row at: 'logical_size')).
 badError := component handleExceptionsIn: [decoder value: bad value: ownerKey. 'UNEXPECTED_ACCEPT'] ifFail: [:error | error messageText].
 end < originalRaw size ifFalse: [component error: 'Current private control requires a raw record tail'].
 tail := row copy. tailRaw := originalRaw copy. tailRaw at: end + 1 put: (((tailRaw at: end + 1) + 1) \\ 256).
 tail at: 'allocated_bytes' put: tailRaw.
 tailResult := decoder value: tail value: ownerKey.
 answer := Dictionary new at: 'profile' put: 'native_reference_decoder_private_v1'; at: 'owner_key' put: ownerKey;
   at: 'original_row' put: row; at: 'edited_row' put: edited; at: 'tail_row' put: tail;
   at: 'before' put: before; at: 'changed' put: changed; at: 'tail_result' put: tailResult;
   at: 'unknown_tag_error' put: badError; at: 'original_material_unchanged' put: (saved = (encoded value: row));
   at: 'copied_records_only' put: true; at: 'live_record_write_called' put: false;
   at: 'model_setters_called' put: 0; at: 'store_called' put: false; at: 'commit_called' put: false; yourself.
 encoded value: answer
 ] ifFail: [:error | 'BDE_REFERENCE_PRIVATE_ERROR: ', error messageText]
]]
