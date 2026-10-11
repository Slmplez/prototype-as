"Select only requested records from a retained v5 baseline; never read the file."
[:component :command :database |
 component handleExceptionsIn: [
  | token material root baseline context report proof encode requests keys matched rows byteCount |
  (command isArray and: [command size >= 22 and: [command size <= 337 and: [(command size - 1) \\ 21 = 0]]])
    ifFalse: [component error: 'One to sixteen fixed reference lookup requests required'].
  token := command first.
  material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
  root := material at: 'root'. encode := root at: 'encodeObservation'.
  ((material at: 'editToken') = token and: [(material at: 'owner') == component item and: [
    (root at: 'owner') == component item and: [(material at: 'access') == database dbAccess and: [
    (material at: 'controller') == database dbInterface and: [(material at: 'generation') = (root at: 'generation')]]]]])
      ifFalse: [component error: 'Original reference lookup binding changed'].
  baseline := material at: 'referenceFileBaseline'. context := baseline at: 'context'.
  report := baseline at: 'report'. proof := baseline at: 'proof'.
  ((baseline at: 'phase') = 'captured' and: [(baseline at: 'resourceMaterial') == material and: [
    (baseline at: 'preparedEdit') == (material at: 'editRecord') and: [(baseline at: 'root') == root and: [
    (baseline at: 'token') = token and: [(context at: 'material') == material and: [
    (context at: 'root') == root and: [(context at: 'token') = token and: [
    ((context at: 'capture') at: 'report') == report and: [
    (((material at: 'editRecord') at: 'commitResourceReceipt') at: 'reference_file_baseline') == proof and: [
    (report at: 'phase') = 'observational_census_match' and: [(report at: 'census_matches') == true]]]]]]]]]]])
      ifFalse: [component error: 'Original same-preparation captured baseline required'].
  requests := OrderedCollection new. keys := OrderedCollection new. matched := Dictionary new.
  2 to: command size by: 21 do: [:start | | attribute global key |
    attribute := command at: start.
    (#('DBReferenceList' 'DBReferencedByList') includes: attribute)
      ifFalse: [component error: 'Only fixed reference list attributes are selectable'].
    global := Array new: 20.
    1 to: 20 do: [:i | | part | part := (command at: start + i) asInteger.
      (part >= 0 and: [part <= 255]) ifFalse: [component error: 'Exact global ID octets required'].
      global at: i put: part].
    key := (encode value: global), '/', attribute.
    (keys includes: key) ifTrue: [component error: 'Duplicate reference lookup request'].
    keys add: key. requests add: (Dictionary new at: 'global_id' put: global; at: 'attribute' put: attribute; yourself)].
  byteCount := 0.
  (report at: 'records') do: [:row | | key |
    key := (encode value: (row at: 'global_id')), '/', (row at: 'attribute').
    (keys includes: key) ifTrue: [
      (matched includesKey: key) ifTrue: [component error: 'Duplicate retained semantic key'].
      (row at: 'state') = 'record_captured' ifFalse: [component error: 'Incomplete retained record cannot become original before'].
      byteCount := byteCount + (row at: 'raw_bytes') size.
      byteCount > 1048576 ifTrue: [component error: 'Finite reference lookup exceeds complete response bound; select fewer targets'].
      matched at: key put: row]].
  rows := OrderedCollection new.
  requests doWithIndex: [:request :index | | row |
    row := matched at: (keys at: index) ifAbsent: [nil].
    rows add: (Dictionary new at: 'global_id' put: (request at: 'global_id'); at: 'attribute' put: (request at: 'attribute');
      at: 'status' put: (row isNil ifTrue: ['not_observed'] ifFalse: ['observed_record']); at: 'record' put: row; yourself)].
  encode value: (Dictionary new at: 'profile' put: 'native_reference_baseline_lookup_v1';
    at: 'native_token' put: token; at: 'component_oid' put: component getOID; at: 'generation' put: (material at: 'generation');
    at: 'profile_index' put: (baseline at: 'profileIndex'); at: 'reference_file_baseline' put: proof;
    at: 'requests' put: requests asArray; at: 'rows' put: rows asArray;
    at: 'source' put: 'retained_same_preparation_observation'; at: 'new_scan_performed' put: false;
    at: 'current_read_performed' put: false; at: 'absence_proven' put: false;
    at: 'write_authorized' put: false; at: 'inverse_authorized' put: false; yourself)
 ] ifFail: [:error | 'BDE_REFERENCE_BASELINE_LOOKUP_ERROR: ', error messageText]
]
