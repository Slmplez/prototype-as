[:component :action :token |
 component handleExceptionsIn: [
 | record diagram nodes model node result cache |
 (#('040ts00000001qg714f0bbebu1n00' '040ts00000001qg714f0bmbqlmjg2') includes: component getOID) ifFalse: [component error: 'Exact isolated fixture required'].
 (#('remove_failed_initial_variable' 'remove_failed_initial_message') includes: action) ifFalse: [component error: 'Unknown repair'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'state') = 'started' and: [(record at: 'owner') == component item]) ifFalse: [component error: 'Exact failed create required'].
 (record at: 'operation') = 'create_block' ifFalse: [component error: 'Create only'].
 model := record at: 'createdModel'.
 model getName = (action = 'remove_failed_initial_variable' ifTrue: ['EvalCatalog_variable'] ifFalse: ['EvalCatalog_receive_message']) ifFalse: [component error: 'Exact created declaration required'].
 diagram := component getDiagram: 'Main'.
 (record includesKey: 'created') ifTrue: [
 nodes := diagram getAllDiagramElements select: [:n | n diagramElement identifier = (record at: 'created') diagramElement identifier].
 nodes size = 1 ifFalse: [component error: 'Unique failed occurrence required']. node := nodes first.
 node getModelElement element == model element ifFalse: [component error: 'Created model identity mismatch'].
 (node getAllPins anySatisfy: [:p | p getAllBlockDiagramConnections notEmpty]) ifTrue: [component error: 'New dependent connection blocks cleanup'].
 result := diagram removeDiagramObject: node. (result isKindOf: EtasAPIError) ifTrue: [component error: 'Occurrence cleanup failed'].
 ] ifFalse: [
   (diagram getAllDiagramElements anySatisfy: [:n | n isBlockDiagramFunctionalElement and: [n getModelElement element == model element]])
     ifTrue: [component error: 'Unexpected occurrence blocks declaration-only repair']
 ].
 result := component deleteModelElement: model. (result isKindOf: EtasAPIError) ifTrue: [component error: 'Declaration cleanup failed'].
 result := diagram storeToCache. (result isKindOf: EtasAPIError) ifTrue: [component error: 'Store cleanup failed'].
 cache := (Smalltalk at: #DogeBDEStructureIdentityV2) at: (component getOID, '/Main').
 cache removeKey: 'checkpoint' ifAbsent: [].
 record at: 'research_cleanup' put: 'failed created variable removed'.
 '{"created_occurrence_and_declaration_removed":true,"historical_failure_preserved":true}'
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
