"Eval-only synthetic baseline differences; never modify live CTree control fields."
[:collector | [:component :token :database |
 component handleExceptionsIn: [
 | material control root before actual baseline leaves changed fields points answer saved |
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
 control := material at: 'controlMaterial'. root := material at: 'root'.
 (material at: 'editToken') = token ifFalse: [component error: 'Original control test token differs'].
 saved := (root at: 'encodeObservation') value: (control at: 'originalImage').
 before := collector value: component value: (Array with: control with: nil with: 'since_preparation') value: database.
 (before isKindOf: Dictionary) ifFalse: [component error: before printString].
 baseline := (before at: 'image') copy.
 leaves := (baseline at: 'leaves') copy. changed := leaves first copy. fields := (changed at: 'fields') copy.
 fields at: 'ctTransaction' put: (Dictionary new at: 'class' put: 'SmallInteger'; at: 'atom' put: '777'; yourself).
 points := (fields at: 'ctSavePoint') copy.
 points at: 'values' put: (Array
   with: (Dictionary new at: 'class' put: 'SmallInteger'; at: 'atom' put: '9'; yourself)
   with: (Dictionary new at: 'class' put: 'SmallInteger'; at: 'atom' put: '4'; yourself)).
 fields at: 'ctSavePoint' put: points. changed at: 'fields' put: fields. leaves at: 1 put: changed.
 baseline at: 'leaves' put: leaves; at: 'interfaces' put: (baseline at: 'interfaces') reverse.
 actual := collector value: component value: (Array with: control with: baseline with: 'since_preparation') value: database.
 (actual isKindOf: Dictionary) ifFalse: [component error: actual printString].
 answer := Dictionary new at: 'profile' put: 'native_ctree_control_private_diff_v1';
   at: 'baseline' put: baseline; at: 'current' put: (actual at: 'image');
   at: 'actual_changes' put: (actual at: 'actual_changes');
   at: 'synthetic_baseline' put: true; at: 'live_control_fields_mutated' put: false;
   at: 'live_control_unchanged' put: (((root at: 'encodeObservation') value: (before at: 'image')) = ((root at: 'encodeObservation') value: (actual at: 'image')));
   at: 'original_before_unchanged' put: (saved = ((root at: 'encodeObservation') value: (control at: 'originalImage')));
   at: 'transaction_methods_called' put: 0; at: 'model_setters_called' put: 0; at: 'store_called' put: false;
   at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself.
 (root at: 'encodeObservation') value: answer
 ] ifFail: [:error | 'BDE_CONTROL_PRIVATE_ERROR: ', error messageText]
]]
