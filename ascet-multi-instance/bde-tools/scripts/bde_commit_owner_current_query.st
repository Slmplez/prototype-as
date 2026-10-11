"Fixed CURRENT query bound to the immutable original v6 owner material."
[:reader | [:component :token :database | component handleExceptionsIn: [
 | material original queries proof report root |
 material := (Smalltalk at: #DogeBDECommitResourceWitnessesV1)
   at: ('commit_', (token copyFrom: 6 to: token size)).
 root := material at: 'root'.
 ((material at: 'editToken') = token and: [(root at: 'owner') == component item])
   ifFalse: [component error: 'Original CURRENT query token/owner differs'].
 original := material at: 'persistentOwnerMaterial'.
 queries := original at: 'currentQueries' ifAbsentPut: [OrderedCollection new].
 proof := reader value: component value: material value: database.
 (proof isKindOf: Dictionary) ifFalse: [component error: proof asString].
 report := queries last at: 'report'.
 (report at: 'summary') == proof ifFalse: [component error: 'Actual CURRENT proof and retained report differ'].
 (root at: 'encodeObservation') value: report
 ] ifFail: [:error | 'BDE_COMMIT_OWNER_CURRENT_ERROR: ', error messageText]]]
