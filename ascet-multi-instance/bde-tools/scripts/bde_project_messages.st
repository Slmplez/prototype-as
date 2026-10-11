[:component :diagramName :targets |
 | stage |
 stage := 'start'.
 component handleExceptionsIn: [
 | oidKey rowFor modules instances visitInstances declarations bindings exports seen out encode result target |
 modules := OrderedCollection new. declarations := OrderedCollection new.
 instances := OrderedCollection new. bindings := OrderedCollection new. seen := Set new.
 oidKey := [:oid |
   | stream digits |
   oid isString ifTrue: ['string:', oid] ifFalse: [
     (oid isKindOf: ByteArray) ifFalse: [component error: 'Unsupported message identity'].
     stream := WriteStream on: String new. digits := '0123456789abcdef'.
     oid do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', stream contents
   ]
 ].
 rowFor := [:element |
   | api owner |
   api := element getAPIHandle. owner := api getClass.
   Dictionary new at: 'owner_oid' put: owner getOID;
     at: 'owner_path' put: owner getFolderPathName;
     at: 'alias' put: (oidKey value: element xmlOID); at: 'name' put: api getName;
     at: 'global_label' put: element defaultGlobalLabel;
     at: 'scope' put: api getScope; at: 'message' put: api isMessage;
     at: 'imported' put: api isImported; at: 'exported' put: api isExported;
     at: 'send' put: api isSendMessage; at: 'receive' put: api isReceiveMessage;
     at: 'send_receive' put: api isSendReceiveMessage; yourself
 ].
 visitInstances := [:model :context :ancestors |
   | ownerOID parentChain parentNames represented alias chain names definitionOID row status children |
   ownerOID := context at: 1. parentChain := context at: 2. parentNames := context at: 3.
   instances size >= 4096 ifTrue: [component error: 'Component instance bound exceeded'].
   represented := model getRepresentedClass.
   (represented isKindOf: EtasAPIError) ifTrue: [component error: 'Instance definition unavailable'].
   alias := oidKey value: model element xmlOID.
   chain := parentChain , (Array with: alias). names := parentNames , (Array with: model getName).
   definitionOID := represented getOID.
   status := ((represented isClass or: [represented isModule]) not) ifTrue: ['leaf_definition'] ifFalse: [
     (ancestors includes: definitionOID) ifTrue: ['recursive_definition_stopped'] ifFalse: [
       chain size >= 16 ifTrue: ['depth_limit_reached'] ifFalse: ['expanded']
     ]
   ].
   row := Dictionary new at: 'owner_oid' put: ownerOID; at: 'alias' put: alias;
     at: 'name' put: model getName; at: 'chain' put: chain; at: 'name_chain' put: names;
     at: 'definition_oid' put: definitionOID; at: 'definition_path' put: represented getFolderPathName;
     at: 'instance_kind' put: (represented isModule ifTrue: ['Module'] ifFalse: [represented isClass ifTrue: ['Class'] ifFalse: ['other']]);
     at: 'expansion' put: status; yourself.
   instances add: row.
   status = 'expanded' ifTrue: [
     children := represented getAllVariables.
     children size > 4096 ifTrue: [component error: 'Instance member bound exceeded'].
     children do: [:child |
       ((child isMethodArgument or: [child isMethodReturn]) or: [child isMethodLocal]) ifFalse: [
         child isComplex ifTrue: [visitInstances value: child value: (Array with: definitionOID with: chain with: names)
           value: (ancestors , (Array with: definitionOID))]
       ]
     ]
   ]
 ].
 stage := 'target_guard'.
 target := component item specification targetTemporary.
 (target notNil and: [target isExperimentalTarget]) ifTrue: [component error: 'Experimental target export lookup is not audited read-only'].
 diagramName = 'guard' ifTrue: [
   result := Dictionary new at: 'target_guard' put: 'passed'; yourself
 ] ifFalse: [
 stage := 'modules'.
 component getAllModules do: [:instance |
   | definition oid |
   modules size >= 128 ifTrue: [component error: 'Module instance bound exceeded'].
   definition := instance getRepresentedClass. oid := definition getOID.
   modules add: (Dictionary new at: 'alias' put: (oidKey value: instance element xmlOID);
     at: 'name' put: instance getName; at: 'definition_oid' put: oid;
     at: 'definition_path' put: definition getFolderPathName; yourself).
   visitInstances value: instance value: (Array with: component getOID with: #() with: #()) value: (Array with: component getOID).
   (seen includes: oid) ifFalse: [
     seen add: oid.
     definition getAllVariables do: [:model |
       ((model isMethodArgument or: [model isMethodReturn]) or: [model isMethodLocal]) ifFalse: [
         (model isMessage and: [targets isEmpty or: [targets includes: model getName]]) ifTrue: [
           declarations size >= 4096 ifTrue: [component error: 'Declaration bound exceeded'].
           declarations add: (rowFor value: model element)
         ]
       ]
     ]
   ]
 ].
 stage := 'export_dictionary'.
 exports := component item allExportedVariablesDictionary.
 exports size > 16384 ifTrue: [component error: 'Export dictionary bound exceeded'].
 declarations do: [:declaration |
   (declaration at: 'imported') ifTrue: [
     | definition model element bucket candidates selected |
     stage := 'resolve ', (declaration at: 'name').
     definition := component getAllModules detect: [:m | m getRepresentedClass getOID = (declaration at: 'owner_oid')].
     model := definition getRepresentedClass getAllVariables detect: [:m |
       (oidKey value: m element xmlOID) = (declaration at: 'alias')].
     element := model element.
     bucket := exports at: element defaultGlobalLabel ifAbsent: [#()].
     bucket size > 128 ifTrue: [component error: 'Message candidate bound exceeded'].
     candidates := bucket select: [:candidate | candidate isSameVarAs: element].
     selected := component item mappedClassVarFor: element exportedVariables: exports.
     bindings add: (Dictionary new at: 'import' put: declaration;
       at: 'label_candidates' put: (bucket collect: [:v | rowFor value: v]);
       at: 'candidates' put: (candidates collect: [:v | rowFor value: v]);
       at: 'native_selected' put: (selected isNil ifTrue: [nil] ifFalse: [rowFor value: selected]); yourself)
   ]
 ].
 result := Dictionary new at: 'schema' put: 'bde_project_messages_research_v1';
   at: 'modules' put: modules; at: 'declarations' put: declarations; at: 'bindings' put: bindings;
   at: 'instances' put: instances; at: 'instance_depth_limit' put: 16;
   at: 'lookup' put: 'mappedClassVarFor:exportedVariables:';
   at: 'candidate_scope' put: 'definition declarations; bounded instance aliases, not runtime delivery';
   at: 'diagram' put: 'not_collected'; at: 'tasks' put: 'not_collected';
   at: 'mapping_cache' put: 'not_accessed'; at: 'target_guard' put: 'passed';
   at: 'editable_refs' put: false; yourself.
 ].
 out := WriteStream on: (String new: 4096).
 encode := [:x |
   x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
   x isString ifTrue: [out nextPutAll: '{"$s":['.
     x asCebraString doWithIndex: [:b :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: b printString]. out nextPutAll: ']}'
   ] ifFalse: [
   ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
   (x isKindOf: Dictionary) ifTrue: [| first | first := true. out nextPutAll: '{"$d":['.
     x keys asSortedCollection do: [:k | first ifFalse: [out nextPut: $,]. first := false.
       out nextPut: $[. encode value: k. out nextPut: $,. encode value: (x at: k). out nextPut: $]]. out nextPutAll: ']}'
   ] ifFalse: [x isCollection ifTrue: [| first | first := true. out nextPut: $[.
     x do: [:v | first ifFalse: [out nextPut: $,]. first := false. encode value: v]. out nextPut: $]
   ] ifFalse: [component error: 'Unsupported message transport value']]]]]
 ].
 stage := 'encode'. encode value: result. out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', stage, ' ', error messageText]
]
