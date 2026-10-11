[:component :action :token |
 component handleExceptionsIn: [
 | record model config destination raw data current old new stream |
 component getOID = '040ts00000001qg714f06gl6l0bgk' ifFalse: [component error: 'Exact isolated fixture required'].
 (#('inspect_table_setting' 'restore_table_setting') includes: action) ifFalse: [component error: 'Unknown repair action'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'state') = 'applied' and: [(record at: 'owner') == component item]) ifFalse: [component error: 'Exact applied record required'].
 ((record at: 'operation') = 'set_table_interpolation' and: [(record at: 'args') last = 'rounded']) ifFalse: [component error: 'Exact failed interpolation edit required'].
 model := record at: 'target'. model getName = 'EvalTableSettings' ifFalse: [component error: 'Exact test table required'].
 config := component getDefaultData.
 config item == (record at: 'configuration') ifFalse: [component error: 'Configuration identity changed'].
 destination := model element isUniqueDataConfigured ifTrue: [config item relatedClassConfig] ifFalse: [config item].
 destination == (record at: 'destination') ifFalse: [component error: 'Configuration owner changed'].
 raw := destination configForElement: model element.
 raw == (record at: 'tableConfig') ifFalse: [component error: 'Raw configuration identity changed'].
 old := record at: 'oldTablePart'. new := record at: 'newTablePart'. current := raw interpolation.
 data := config getEntryFor: model.
 action = 'inspect_table_setting' ifTrue: [
   stream := WriteStream on: String new.
   stream nextPutAll: '{"current":"'; nextPutAll: current getPhysValue;
     nextPutAll: '","old":"'; nextPutAll: old getPhysValue;
     nextPutAll: '","new":"'; nextPutAll: new getPhysValue;
     nextPutAll: '","current_is_old":'; nextPutAll: (current == old) printString;
     nextPutAll: ',"current_is_new":'; nextPutAll: (current == new) printString;
     nextPutAll: ',"wrapper_is_current":'; nextPutAll: (data dataElement interpolation == current) printString;
     nextPutAll: ',"wrapper_value":"'; nextPutAll: data dataElement interpolation getPhysValue;
     nextPutAll: '","before_after_equal":'; nextPutAll: ((record at: 'before') = (record at: 'after')) printString;
     nextPut: $}. stream contents
 ] ifFalse: [
   (old getPhysValue = (record at: 'oldTablePartPhysical') and: [(record at: 'newTablePartPhysical') = 'Rounded'])
     ifFalse: [component error: 'Exact retained interpolation guard required'].
   (current == new and: [current getPhysValue = 'Linear']) ifFalse: [component error: 'Inspection did not prove native normalization'].
   (record at: 'before') = (record at: 'after') ifFalse: [component error: 'Not an observed no-effect edit'].
   record at: 'newTablePartPhysical' put: 'Linear';
     at: 'research_cleanup' put: 'native normalized replacement to Linear; guard aligned to actual observed after'.
   '{"no_effect_confirmed":true,"model_setter_called":false,"guard_aligned_to_observed_after":true,"historical_failure_preserved":true}'
 ]
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
