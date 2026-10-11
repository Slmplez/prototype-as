[:selector :resolve | [:component :action |
 component handleExceptionsIn: [
 | studies key record method api found formal check same before created |
 component isClass ifFalse: [component error: 'Class required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated interface Class required'].
 studies := Smalltalk at: #DogeBDEClassStudyV1 ifAbsentPut: [Dictionary new]. key := component getOID.
 same := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 check := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage]. value].
 action = 'prepare' ifTrue: [
   (studies includesKey: key) ifTrue: [component error: 'Study record already retained'].
   studies size >= 8 ifTrue: [component error: 'Study capacity reached'].
   found := resolve value: component value: selector.
   api := found first. method := found at: 2. formal := found last.
   record := Dictionary new at: 'api' put: api; at: 'method' put: method;
     at: 'arguments' put: method arguments copy; at: 'return' put: method returnValue;
     at: 'selector' put: selector copy; at: 'formal' put: formal;
     at: 'state' put: 'prepared'; yourself.
   studies at: key put: record
 ].
 record := studies at: key ifAbsent: [component error: 'Study record absent'].
 (record at: 'selector') = selector ifFalse: [component error: 'Retained selector mismatch'].
 api := record at: 'api'. method := record at: 'method'. before := record at: 'arguments'.
 (#('add' 'delete_argument' 'delete_return') includes: action) ifTrue: [
   (record at: 'state') = 'prepared' ifFalse: [component error: 'Unknown or completed study cannot replay'].
   ((same value: method arguments value: before) and: [method returnValue == (record at: 'return')])
     ifFalse: [component error: 'Study signature conflict'].
   found := resolve value: component value: selector.
   ((found at: 2) == method and: [found last == (record at: 'formal')])
     ifFalse: [component error: 'Selected formal identity changed'].
   action = 'delete_argument' ifTrue: [selector last = 'argument' ifFalse: [component error: 'Argument slot required']].
   action = 'delete_return' ifTrue: [selector last = 'return' ifFalse: [component error: 'Return slot required']].
   record at: 'state' put: 'mutation_started'.
   action = 'add' ifTrue: [
     created := check value: (api addArgumentElement: 'Extra' modelType: 'cont').
     record at: 'created' put: created element
   ].
   action = 'delete_argument' ifTrue: [method removeElement: (record at: 'formal'). method modified. api autoCommitDatabase].
   action = 'delete_return' ifTrue: [method removeElement: (record at: 'formal'). method modified. api autoCommitDatabase].
   record at: 'afterReturn' put: method returnValue; at: 'afterArguments' put: method arguments copy;
     at: 'state' put: 'added'
 ].
 action = 'restore' ifTrue: [
   (record at: 'state') = 'added' ifFalse: [component error: 'Study restore state unavailable'].
   ((same value: method arguments value: (record at: 'afterArguments')) and: [method returnValue == (record at: 'afterReturn')])
     ifFalse: [component error: 'Study inverse signature conflict'].
   record at: 'state' put: 'restore_started'.
   method arguments: before copy. method returnValue: (record at: 'return').
   method modified. api autoCommitDatabase.
   ((same value: method arguments value: before) and: [method returnValue == (record at: 'return')])
     ifFalse: [component error: 'Original formal identities not restored'].
   record at: 'state' put: 'restored'
 ].
 action = 'release' ifTrue: [
   (#('prepared' 'restored') includes: (record at: 'state')) ifFalse: [component error: 'Cannot release active study'].
   studies removeKey: key
 ].
 (#('prepare' 'add' 'delete_argument' 'delete_return' 'restore' 'release' 'status') includes: action)
   ifFalse: [component error: 'Unknown study action'].
 record at: 'state'
 ] ifFail: [:error | 'BDE_CLASS_STUDY_ERROR: ', error messageText]
]]
