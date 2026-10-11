[:component :action :token |
 component handleExceptionsIn: [
 | record enumeration folder values refs parent out |
 component getOID = '040ts00000001qg714f06gl6l0bgk' ifFalse: [component error: 'Exact enum pilot fixture required'].
 token = 'edit_742d574a3b3955bed9804ab6129f7031314ddbb4de62b39a3022b23ad93899e0' ifFalse: [component error: 'Exact failed enum token required'].
 (#('inspect_failed_enum' 'remove_failed_enum' 'verify_removed_enum') includes: action) ifFalse: [component error: 'Unknown enum repair'].
 record := (Smalltalk at: #DogeBDEStructureEditsV3) at: token.
 ((record at: 'state') = 'started' and: [(record at: 'owner') == component item]) ifFalse: [component error: 'Exact started enum create required'].
 (record at: 'operation') = 'create_block' ifFalse: [component error: 'Create only'].
 ((record includesKey: 'created') or: [record includesKey: 'createdModel']) ifTrue: [component error: 'Declaration or occurrence exists; separate recovery required'].
 enumeration := record at: 'createdDefinition'. folder := record at: 'enumFolder'.
 parent := record at: 'creationParent'.
 (parent children size = (record at: 'creationOrder') size and: [
   (1 to: parent children size) allSatisfy: [:i | (parent children at: i) == ((record at: 'creationOrder') at: i)]])
   ifFalse: [component error: 'Original graph changed'].
 action = 'verify_removed_enum' ifTrue: [
   (folder item childrenKeys anySatisfy: [:k | k label = (record at: 'enumName')])
     ifTrue: [component error: 'Failed enum still exists'].
   '{"failed_enum_absent":true,"original_children_identity_and_order":true,"occurrence_absent":true,"declaration_absent":true}'
 ] ifFalse: [
 enumeration isValid ifFalse: [component error: 'Recorded enum invalid'].
 (folder getItem: (record at: 'enumName')) item == enumeration item ifFalse: [component error: 'Enum owner or identity changed'].
 values := enumeration getEnumerationValues. refs := enumeration item dbObject readReferences isReferencedBys.
 values asArray = (record at: 'enumItems') asArray ifFalse: [component error: 'Unexpected enum values'].
 action = 'inspect_failed_enum' ifTrue: [
   out := WriteStream on: String new.
   out nextPutAll: '{"item_class":"'; nextPutAll: enumeration item class name asString;
     nextPutAll: '","items_class":"'; nextPutAll: values class name asString;
     nextPutAll: '","requested_class":"'; nextPutAll: (record at: 'enumItems') class name asString;
     nextPutAll: '","has_dbObject":'; nextPutAll: (enumeration item respondsTo: #dbObject) printString;
     nextPutAll: ',"has_rawGetObject":'; nextPutAll: (enumeration item respondsTo: #rawGetObject) printString;
     nextPutAll: ',"has_references":'; nextPutAll: (enumeration item respondsTo: #references) printString;
     nextPutAll: ',"items_equal_as_array":'; nextPutAll: (values asArray = (record at: 'enumItems') asArray) printString;
     nextPutAll: ',"references_count":'; nextPutAll: refs size printString;
     nextPutAll: ',"references":['.
   refs asArray doWithIndex: [:r :i | i > 1 ifTrue: [out nextPut: $,].
     out nextPutAll: '{"class":"'; nextPutAll: r class name asString;
       nextPutAll: '","is_folder_proxy":'; nextPutAll: (r = folder item dbObject) printString;
       nextPutAll: ',"is_component_proxy":'; nextPutAll: (r = component item dbObject) printString; nextPut: $}].
   out nextPutAll: '],"original_children_identity_and_order":true,"occurrence_absent":true,"declaration_absent":true';
     nextPut: $}. out contents
 ] ifFalse: [
   (refs size = 1 and: [refs includes: folder item dbObject])
     ifFalse: [component error: 'Failed enum has unexpected references; do not delete'].
   ((folder deleteSubItemObject: enumeration) isKindOf: EtasAPIError) ifTrue: [component error: 'Enum cleanup failed'].
   record at: 'research_cleanup' put: 'new enum only removed; original failure preserved'.
   '{"failed_enum_removed":true,"historical_failure_preserved":true}'
 ]
 ]
 ] ifFail: [:error | 'BDE_SOURCE_ERROR: ', error messageText]
]
