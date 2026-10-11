[:component :token :reader |
 component handleExceptionsIn: [
 | record current |
 component getOID = '040ts00000001qg7180gki3t9j306' ifFalse: [component error: 'Exact isolated hierarchy fixture required'].
 token = 'edit_ba0196f76ae321eba2fe5b5660311a377088501230a4b1233bdaa6c761c8c27a'
   ifFalse: [component error: 'Exact failed inverse token required'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'owner') == component item and: [(record at: 'state') = 'restore_mismatch'])
   ifFalse: [component error: 'Failed inverse owner or state changed'].
 current := reader value: component value: (record at: 'diagramName') value: (record at: 'targets').
 current = (record at: 'before') ifFalse: [component error: 'Restored observation differs from original before'].
 record at: 'lastObserved' put: current; at: 'state' put: 'reverted'.
 'recovery_record_verified'
 ] ifFail: [:error | 'BDE_HIERARCHY_RECOVERY_ERROR: ', error messageText]
]
