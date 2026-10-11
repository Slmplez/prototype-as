[:signatureReader :selector :witnesses | [:component :action :expectedSignature |
 component handleExceptionsIn: [
 | records record method before created same roots retained rows key generation entry material found current signature aliasFor describe result out encode restored createdType |
 (#('inspect' 'restore' 'release') includes: action) ifFalse: [component error: 'Fixed partial creation action required'].
 (component isClass and: [selector size = 4 and: [witnesses size > 0 and: [witnesses size even]]])
   ifFalse: [component error: 'Exact Class creation and owner witnesses required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated Class creation recovery required'].
 records := Smalltalk at: #DogeBDEClassStudyV1.
 record := records at: component getOID.
 ((record at: 'kind') = 'create_argument' and: [(record at: 'selector') = selector])
   ifFalse: [component error: 'Original retained creation binding differs'].
 method := record at: 'method'. before := record at: 'arguments'.
 created := record at: 'created'. current := method arguments.
 same := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 aliasFor := [:value | | stream digits |
   (value isKindOf: ByteArray) ifFalse: [component error: 'Exact byte alias required'].
   stream := WriteStream on: String new. digits := '0123456789abcdef'.
   value do: [:byte | stream nextPut: (digits at: (byte // 16) + 1); nextPut: (digits at: (byte \\ 16) + 1)].
   'bytes:', stream contents
 ].
 ((record at: 'api') method == method and: [method ownerSGClass == component item and: [
   (aliasFor value: method aliasName) = (selector at: 2) and: [method returnValue == (record at: 'return')]]])
   ifFalse: [component error: 'Original method or return binding changed'].
 (before allSatisfy: [:formal | formal owner == method]) ifFalse: [component error: 'Original argument owners changed'].
 restored := same value: current value: before.
 created owner == method ifFalse: [component error: 'Retained created argument owner changed'].
 created elementName = (selector at: 3)
   ifFalse: [component error: ('Retained created argument raw name changed: ', created elementName)].
 restored ifFalse: [created getAPIHandle getName = ((record at: 'api') getName, '/', (selector at: 3))
   ifFalse: [component error: ('Retained created argument name changed: ', created getAPIHandle getName)]].
 createdType := created sgClass.
 createdType hasBasicType ifTrue: [createdType := createdType basicType].
 (createdType isSGEnumeration not and: [createdType label = selector last and: [
   created isIn and: [created isOut not and: [created isInOut not]]]])
   ifFalse: [component error: 'Retained created argument type or direction changed'].
 restored ifFalse: [created getAPIHandle getModelType = selector last
   ifFalse: [component error: 'Retained created argument API type changed']].
 restored ifFalse: [
   (current size = (before size + 1) and: [current last == created and: [
     same value: (current copyFrom: 1 to: before size) value: before]])
     ifFalse: [component error: 'Actual creation is not one exact appended original object']
 ].
 roots := Smalltalk at: #DogeBDEStructureIdentityV2.
 retained := Smalltalk at: #DogeBDEClassMaterializeV1 ifAbsent: [Dictionary new]. rows := OrderedCollection new.
 1 to: witnesses size by: 2 do: [:index |
   key := witnesses at: index. generation := (witnesses at: index + 1) asNumber.
   entry := roots at: key.
   ((entry at: 'generation') = generation and: [
     (entry at: 'diagram') specification == (entry at: 'specification') and: [
       ((entry at: 'sameSource') value: (entry at: 'diagram') specification specSourceInternalOrNil
         value: (entry at: 'checkpoint'))]])
     ifFalse: [component error: 'Original owner generation or stored graphics source changed'].
   material := retained at: key ifAbsent: [nil].
   material notNil ifTrue: [
     ((material at: 'state') = 'prepared' and: [(material at: 'selector') = selector and: [
       (material at: 'original') == (entry at: 'diagram')]])
       ifFalse: [component error: 'Caller materialization was started; signature-only recovery refused']
   ].
   rows add: (Dictionary new at: 'scope' put: key; at: 'generation' put: generation;
     at: 'material_state' put: (material isNil ifTrue: ['absent'] ifFalse: [material at: 'state']); yourself)
 ].
 signature := signatureReader value: component.
 (signature startsWith: 'BDE_') ifTrue: [component error: signature].
 action ~= 'inspect' ifTrue: [signature = expectedSignature
   ifFalse: [component error: 'Frozen complete signature changed before recovery']].
 action = 'restore' ifTrue: [
   (restored not and: [(record at: 'state') = 'mutation_started'])
     ifFalse: [component error: 'Unknown or completed creation restoration cannot replay'].
   record at: 'partialRestoreWitnesses' put: witnesses copy; at: 'partialRestoreSignature' put: signature;
     at: 'state' put: 'restore_started'.
   method arguments: before copy. method returnValue: (record at: 'return').
   method modified. (record at: 'api') autoCommitDatabase.
   (same value: method arguments value: before) ifFalse: [component error: 'Original arguments not restored'].
   record at: 'state' put: 'restored'. restored := true.
   signature := signatureReader value: component.
   (signature startsWith: 'BDE_') ifTrue: [component error: signature]
 ].
 action = 'release' ifTrue: [
   (restored and: [(record at: 'state') = 'restored']) ifFalse: [component error: 'Only independently verified restoration may release'].
   1 to: witnesses size by: 2 do: [:index | key := witnesses at: index.
     (retained includesKey: key) ifTrue: [retained removeKey: key]
   ]. records removeKey: component getOID
 ].
 result := Dictionary new at: 'profile' put: 'signature_only_partial_creation_recovery_v1';
   at: 'action' put: action; at: 'state' put: (record at: 'state');
   at: 'created_alias' put: (aliasFor value: created xmlOID);
   at: 'created_raw_name' put: created elementName; at: 'created_raw_type' put: createdType label;
   at: 'original_arguments' put: (before collect: [:formal | aliasFor value: formal xmlOID]) asArray;
   at: 'current_arguments' put: (method arguments collect: [:formal | aliasFor value: formal xmlOID]) asArray;
   at: 'original_signature_restored' put: restored; at: 'owner_witnesses' put: rows asArray;
   at: 'signature_text' put: signature; at: 'model_setters_called' put: (action = 'restore' ifTrue: [1] ifFalse: [0]); yourself.
 out := WriteStream on: String new.
 encode := [:value |
   value isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   value isString ifTrue: [out nextPutAll: '{"$s":['.
     value asCebraString doWithIndex: [:byte :index | index > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString].
     out nextPutAll: ']}'] ifFalse: [
   ((value == true or: [value == false]) or: [value isInteger]) ifTrue: [out nextPutAll: value printString] ifFalse: [
   (value isKindOf: Dictionary) ifTrue: [ | first | first := true. out nextPutAll: '{"$d":['.
     value keys asSortedCollection do: [:name | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: name. out nextPut: $,. encode value: (value at: name). out nextPut: $]].
     out nextPutAll: ']}'] ifFalse: [
   value isCollection ifTrue: [ | first | first := true. out nextPut: $[.
     value do: [:item | first ifFalse: [out nextPut: $,]. first := false. encode value: item]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported creation recovery evidence value']]]]]
 ]. encode value: result. out contents
 ] ifFail: [:error | 'BDE_PARTIAL_CREATION_ERROR: ', error messageText]
]]
