"Fixed retained reference scan/summary/pages. No arbitrary code or selector input."
[:collector |
 [:component :command :database |
  component handleExceptionsIn: [
   | action token profileIndex section offset limit material root contexts context capture report output lists counts rows page stop |
   command size = 6 ifFalse: [component error: 'Fixed six-field reference query required'].
   action := command first. token := command at: 2. profileIndex := (command at: 3) asInteger.
   section := command at: 4. offset := (command at: 5) asInteger. limit := (command at: 6) asInteger.
   (#('scan' 'inspect' 'page' 'profile') includes: action) ifFalse: [component error: 'Fixed reference query action required'].
   (profileIndex >= 1 and: [profileIndex <= 16 and: [offset >= 0 and: [limit >= 1 and: [limit <= 64]]]])
     ifFalse: [component error: 'Bounded original reference query required'].
   material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1) at: ('commit_', (token copyFrom: 6 to: token size)).
   root := material at: 'root'.
   ((material at: 'editToken') = token and: [(material at: 'owner') == component item and: [
     (root at: 'owner') == component item and: [(material at: 'access') == database dbAccess and: [
     (material at: 'controller') == database dbInterface and: [
     (material at: 'generation') = (root at: 'generation')]]]]])
       ifFalse: [component error: 'Original reference query owner/database/generation changed'].
   contexts := material at: 'referenceFileProfiles'.
   profileIndex <= contexts size ifFalse: [component error: 'Original retained reference profile unavailable'].
   context := contexts at: profileIndex.
   ((context at: 'material') == material and: [(context at: 'root') == root and: [(context at: 'token') = token]])
     ifFalse: [component error: 'Original reference query profile changed'].
   action = 'profile' ifTrue: [
     (root at: 'encodeObservation') value: (context at: 'report')
   ] ifFalse: [
   action = 'scan' ifTrue: [
     (context includesKey: 'capture') ifTrue: [component error: 'Reference capture already attempted; inspect only'].
     report := collector value: component value: context value: database.
     report class == Dictionary ifFalse: [component error: report asString]].
   capture := context at: 'capture' ifAbsent: [component error: 'Reference capture has not been attempted'].
   report := capture at: 'report'. lists := #('events' 'records' 'keys_first' 'keys_second' 'failures').
   (report at: 'profile') = 'native_reference_file_observation_v3' ifTrue: [lists := lists, #('gv_images')].
   action = 'page' ifTrue: [
     (lists includes: section) ifFalse: [component error: 'Fixed reference report section required'].
     rows := report at: section. offset <= rows size ifFalse: [component error: 'Reference page offset out of range'].
     stop := (offset + limit) min: rows size.
     page := offset = stop ifTrue: [#()] ifFalse: [rows copyFrom: offset + 1 to: stop].
     output := Dictionary new at: 'profile' put: 'native_reference_file_page_v1'; at: 'native_token' put: token;
       at: 'profile_index' put: profileIndex; at: 'section' put: section; at: 'offset' put: offset;
       at: 'next_offset' put: stop; at: 'total' put: rows size; at: 'rows' put: page; yourself
   ] ifFalse: [
     output := report copy. counts := Dictionary new.
     lists do: [:name | counts at: name put: (report at: name) size. output removeKey: name].
     output at: 'profile_index' put: profileIndex; at: 'list_counts' put: counts].
   (root at: 'encodeObservation') value: output]
  ] ifFail: [:error | 'BDE_REFERENCE_FILE_QUERY_ERROR: ', error messageText]
 ]
]
