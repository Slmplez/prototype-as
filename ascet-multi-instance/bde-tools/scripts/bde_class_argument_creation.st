[:selector :resolve | [:component :action |
 component handleExceptionsIn: [
 | studies key record found api method before same check name modelType created |
 component isClass ifFalse: [component error: 'Class required'].
 ((component getFolderPathName startsWith: 'BDE_Tool_Experiments\Trial_') or: [
   component getFolderPathName startsWith: '\BDE_Tool_Experiments\Trial_'])
   ifFalse: [component error: 'Isolated interface Class required'].
 (selector size = 4 and: [#('cont' 'sdisc' 'udisc' 'log') includes: selector last])
   ifFalse: [component error: 'Typed primitive argument creation required'].
 name := selector at: 3. modelType := selector last.
 (name size between: 1 and: 64) ifFalse: [component error: 'Bounded argument name required'].
 ((name first isLetter or: [name first = $_]) and: [name allSatisfy: [:char |
   char isLetter or: [char isDigit or: [char = $_]]]])
   ifFalse: [component error: 'Argument identifier required'].
 same := [:a :b | a size = b size and: [((1 to: a size) anySatisfy: [:i | (a at: i) ~~ (b at: i)]) not]].
 check := [:value | (value isKindOf: EtasAPIError) ifTrue: [component error: value errorMessage]. value].
 (#('validate' 'prepare') includes: action) ifTrue: [
   found := resolve value: component value: selector. api := found first. method := found last.
   method arguments size >= 256 ifTrue: [component error: 'Argument capacity exceeded'].
   (method argumentNames includes: name) ifTrue: [component error: 'Argument name already exists']
 ].
 action = 'validate' ifTrue: ['validated'] ifFalse: [
 studies := Smalltalk at: #DogeBDEClassStudyV1 ifAbsentPut: [Dictionary new]. key := component getOID.
 action = 'prepare' ifTrue: [
   (studies includesKey: key) ifTrue: [component error: 'Study record already retained'].
   studies size >= 8 ifTrue: [component error: 'Study capacity reached'].
   record := Dictionary new at: 'api' put: api; at: 'method' put: method;
     at: 'arguments' put: method arguments copy; at: 'return' put: method returnValue;
     at: 'selector' put: selector copy; at: 'state' put: 'prepared'; at: 'kind' put: 'create_argument'; yourself.
   studies at: key put: record
 ].
 record := studies at: key ifAbsent: [component error: 'Study record absent'].
 ((record at: 'selector') = selector and: [(record at: 'kind' ifAbsent: ['']) = 'create_argument'])
   ifFalse: [component error: 'Retained creation selector mismatch'].
 api := record at: 'api'. method := record at: 'method'. before := record at: 'arguments'.
 action = 'create_argument' ifTrue: [
   (record at: 'state') = 'prepared' ifFalse: [component error: 'Unknown or completed creation cannot replay'].
   found := resolve value: component value: selector.
   ((found last == method and: [same value: method arguments value: before]) and: [
     method returnValue == (record at: 'return') and: [(method argumentNames includes: name) not]])
     ifFalse: [component error: 'Creation signature conflict'].
   record at: 'state' put: 'mutation_started'.
   created := check value: (api addArgumentElement: name modelType: modelType).
   created := created element. record at: 'created' put: created.
   (created owner == method and: [method arguments size = (before size + 1) and: [
     method arguments last == created and: [same value: (method arguments copyFrom: 1 to: before size) value: before]]])
     ifFalse: [component error: 'Created argument identity or order differs'].
   ((created getAPIHandle getModelType = modelType and: [created isIn]) and: [created isOut not and: [created isInOut not]])
     ifFalse: [component error: 'Created argument type or direction differs'].
   record at: 'afterArguments' put: method arguments copy; at: 'afterReturn' put: method returnValue;
     at: 'state' put: 'added'
 ].
 action = 'restore' ifTrue: [
   (record at: 'state') = 'added' ifFalse: [component error: 'Creation inverse state unavailable'].
   ((same value: method arguments value: (record at: 'afterArguments')) and: [
     method returnValue == (record at: 'afterReturn') and: [(record at: 'created') owner == method]])
     ifFalse: [component error: 'Creation inverse signature conflict'].
   record at: 'state' put: 'restore_started'.
   method arguments: before copy. method returnValue: (record at: 'return').
   method modified. api autoCommitDatabase.
   ((same value: method arguments value: before) and: [method returnValue == (record at: 'return')])
     ifFalse: [component error: 'Original method signature identities not restored'].
   record at: 'state' put: 'restored'
 ].
 action = 'release' ifTrue: [
   (#('prepared' 'restored') includes: (record at: 'state')) ifFalse: [component error: 'Cannot release active creation'].
   studies removeKey: key
 ].
 (#('prepare' 'create_argument' 'restore' 'release' 'status') includes: action)
   ifFalse: [component error: 'Unknown creation action'].
 record at: 'state'
 ]
 ] ifFail: [:error | 'BDE_CLASS_CREATION_ERROR: ', error messageText]
]]
