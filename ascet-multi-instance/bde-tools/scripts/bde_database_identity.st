[:database :candidateToken |
 database handleExceptionsIn: [
 | access interface registry |
 access := database dbAccess. interface := database dbInterface.
 (access isNil or: [interface isNil]) ifTrue: [database error: 'Database identity unavailable'].
 registry := Smalltalk at: #DogeBDEDatabaseIdentityV1 ifAbsent: [Dictionary new].
 (((registry at: 'access' ifAbsent: [nil]) == access) and: [
   (registry at: 'interface' ifAbsent: [nil]) == interface]) ifFalse: [
   registry := Dictionary new.
   registry at: 'access' put: access; at: 'interface' put: interface; at: 'token' put: candidateToken.
   Smalltalk at: #DogeBDEDatabaseIdentityV1 put: registry
 ].
 registry at: 'token'
 ] ifFail: [:error | 'BDE_DATABASE_IDENTITY_ERROR: ', error messageText]
]
