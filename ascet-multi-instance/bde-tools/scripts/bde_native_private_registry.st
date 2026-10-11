[:database :component :arguments |
 component handleExceptionsIn: [
 | action binding wire roots record identity access interface token reply |
 ((arguments isKindOf: Array) and: [arguments size = 3])
   ifFalse: [component error: 'Fixed private registry arguments required'].
 action := arguments first. binding := arguments at: 2. wire := arguments last.
 (#('register' 'lookup' 'release' 'size') includes: action)
   ifFalse: [component error: 'Unknown fixed private registry action'].
 ((binding isKindOf: Array) and: [binding size = 6 and: [
   binding allSatisfy: [:entry | entry isString and: [entry size > 0 and: [entry size <= 1024]]]]])
   ifFalse: [component error: 'Exact private registry binding required'].
 token := binding first.
 (token size = 32 and: [(binding last) size = 64])
   ifFalse: [component error: 'Private registry token or source fingerprint differs'].
 access := database dbAccess. interface := database dbInterface.
 identity := Smalltalk at: #DogeBDEDatabaseIdentityV1 ifAbsent: [nil].
 (identity notNil and: [(identity at: 'access') == access and: [
   (identity at: 'interface') == interface and: [(identity at: 'token') = (binding at: 3)]]])
   ifFalse: [component error: 'Private registry database session changed'].
 (component getOID = (binding at: 4) and: [component getFolderPathName = (binding at: 5)])
   ifFalse: [component error: 'Private registry owner identity changed'].
 roots := Smalltalk at: #DogeBDEPrivateSessionsV1 ifAbsentPut: [Dictionary new].
 action = 'size' ifTrue: [roots size] ifFalse: [
 action = 'register' ifTrue: [
   (roots includesKey: token) ifTrue: [component error: 'Private registry token already retained'].
   roots size >= 16 ifTrue: [component error: 'Private registry capacity reached; no eviction allowed'].
   wire class name asString = 'BlockContextTemplate'
     ifFalse: [component error: 'Exact private wire required'].
   (wire value: (Array with: token with: 'registry_owner' with: '0')) == component item
     ifFalse: [component error: 'Private registry wire belongs to another native owner'].
   reply := wire value: (Array with: token with: 'observe' with: '0').
   (reply isString and: [(reply startsWith: 'BDE_') not])
     ifFalse: [component error: 'Private wire refused registry retention'].
   record := Dictionary new at: 'binding' put: (binding collect: [:entry | entry copy]);
     at: 'access' put: access; at: 'interface' put: interface;
     at: 'owner' put: component item; at: 'wire' put: wire; yourself.
   roots at: token put: record. wire
 ] ifFalse: [
   record := roots at: token ifAbsent: [component error: 'Private registry token missing'].
   ((record at: 'binding') = binding and: [(record at: 'access') == access and: [
     (record at: 'interface') == interface and: [(record at: 'owner') == component item]]])
       ifFalse: [component error: 'Private registry exact binding changed'].
   wire isNil ifFalse: [component error: 'Private lookup cannot supply replacement material'].
   action = 'lookup' ifTrue: [record at: 'wire'] ifFalse: [
     reply := (record at: 'wire') value: (Array with: token with: 'release' with: '0').
     (reply isString and: [(reply startsWith: 'BDE_') not])
       ifFalse: [component error: 'Private registry release refused: ', reply].
     roots removeKey: token. reply
   ]
 ]]
 ] ifFail: [:error | 'BDE_PRIVATE_REGISTRY_ERROR: ', error messageText]
]
