[:component :action :token |
 component handleExceptionsIn: [
 | record target label diagram cache |
 component getOID = '040ts00000001qg714f0bbebu1n00' ifFalse: [component error: 'Exact isolated AEB copy required'].
 action = 'restore_label' ifFalse: [component error: 'Only label restoration permitted'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'state') = 'restore_mismatch' and: [(record at: 'owner') == component item]) ifFalse: [component error: 'Exact failed inverse required'].
 target := record at: 'target'. label := target diagramElement instVarNamed: 'labelGO'.
 (target diagramElement identifier = 369 and: [target getSequenceNumber = 155 and: [target getSequenceActivator getName = 'calc' and: [#('155/' '155/calc') includes: label text]]])
   ifFalse: [component error: 'Label repair precondition differs'].
 diagram := record at: 'diagram'.
 cache := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 (cache at: 'diagram') == diagram ifFalse: [component error: 'Repair diagram identity changed'].
 label text: '155/calc'.
 (diagram storeToCache isKindOf: EtasAPIError) ifTrue: [component error: 'Repair store failed'].
 cache at: 'checkpoint' put: ((cache at: 'copySource') value: diagram specification specSourceInternalOrNil).
 '{"label_restored":true,"historical_failure_preserved":true}'
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
