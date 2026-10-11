[:component :action :token |
 component handleExceptionsIn: [
 | record diagram model result variables parent |
 component getOID = '040ts00000001qg714f06gl6l0bgk' ifFalse: [component error: 'Exact isolated fixture required'].
 (#('inspect_failed_log_table' 'remove_failed_log_table') includes: action) ifFalse: [component error: 'Unknown repair'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'state') = 'started' and: [(record at: 'owner') == component item]) ifFalse: [component error: 'Exact failed create required'].
 (record at: 'operation') = 'create_block' ifFalse: [component error: 'Create only'].
 (record at: 'args') asArray = #('oned_table' 'EvalTableValues' '2200' '1800' 'log')
   ifFalse: [component error: 'Exact failed logical table arguments required'].
 (record includesKey: 'created') ifTrue: [component error: 'Unexpected occurrence; requires separate recovery analysis'].
 model := record at: 'createdModel'. model getName = 'EvalTableValues' ifFalse: [component error: 'Exact declaration required'].
 model getModelType = 'log' ifFalse: [component error: 'Exact logical type required'].
 diagram := component getDiagram: 'Main'.
 (diagram getAllDiagramElements anySatisfy: [:n | n isBlockDiagramFunctionalElement and: [n getModelElement element == model element]])
   ifTrue: [component error: 'Unexpected occurrence blocks declaration-only cleanup'].
 variables := component getAllVariables.
 (variables size = 1 and: [variables first element == model element]) ifFalse: [component error: 'Unexpected existing declarations'].
 parent := record at: 'creationParent'.
 (parent children size = (record at: 'creationOrder') size and: [
   (1 to: parent children size) allSatisfy: [:i | (parent children at: i) == ((record at: 'creationOrder') at: i)]])
   ifFalse: [component error: 'Original graph order changed'].
 action = 'inspect_failed_log_table' ifTrue: ['{"single_failed_declaration":true,"occurrence_absent":true,"original_graph_order_unchanged":true}'] ifFalse: [
   result := component deleteModelElement: model. (result isKindOf: EtasAPIError) ifTrue: [component error: 'Declaration cleanup failed'].
   result := diagram storeToCache. (result isKindOf: EtasAPIError) ifTrue: [component error: 'Store cleanup failed'].
   record at: 'research_cleanup' put: 'failed logical table declaration removed'.
   '{"failed_declaration_removed":true,"historical_failure_preserved":true}'
 ]
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
