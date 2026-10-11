[:component :diagramName :targets |
 | stage |
 stage := 'start'.
 component handleExceptionsIn: [
 | result models formals definitions nodes pins edges boundaries issues oidKey modelRow formalRows fieldRows pinRow boundaryRows visit definitionFor encode out totalNodes totalPins seenDefinitions |
 models := OrderedCollection new. formals := OrderedCollection new. definitions := OrderedCollection new.
 nodes := OrderedCollection new. pins := OrderedCollection new. edges := OrderedCollection new.
 boundaries := OrderedCollection new. issues := OrderedCollection new. seenDefinitions := Set new.
 totalNodes := 0. totalPins := 0.
 oidKey := [:oid |
   | s digits |
   oid isString ifTrue: ['string:', oid] ifFalse: [
     (oid isKindOf: ByteArray) ifFalse: [component error: 'Unsupported signal identity representation'].
     s := WriteStream on: String new. digits := '0123456789abcdef'.
     oid do: [:b | s nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)].
     'bytes:', s contents
   ]
 ].
 modelRow := [:m |
   | row |
   row := Dictionary new at: 'alias' put: (oidKey value: m element xmlOID);
     at: 'name' put: m getName; at: 'native_class' put: m class name asString;
     at: 'scope' put: m getScope; at: 'imported' put: m isImported; at: 'exported' put: m isExported;
     at: 'message' put: m isMessage; at: 'send' put: m isSendMessage;
     at: 'receive' put: m isReceiveMessage; at: 'send_receive' put: m isSendReceiveMessage;
     at: 'complex' put: m isComplex; yourself.
   (m element respondsTo: #defaultGlobalLabel) ifTrue: [row at: 'global_label' put: m element defaultGlobalLabel].
   (m respondsTo: #getModelType) ifTrue: [
     | type | type := m getModelType.
     (type isKindOf: EtasAPIError) ifFalse: [row at: 'model_type' put: type]
   ]. row
 ].
 formalRows := [:owner |
   | rows members |
   rows := OrderedCollection new.
   members := (owner isClass or: [owner isModule]) ifTrue: [owner getAllMethodElements] ifFalse: [#()].
   members size > 4096 ifTrue: [component error: 'Formal interface bound exceeded'].
   members do: [:m |
     | row method |
     stage := 'formal ', owner getFolderPathName, ' ', m getName.
     method := m element owner.
     row := Dictionary new at: 'alias' put: (oidKey value: m element xmlOID);
       at: 'name' put: m getName; at: 'argument' put: m isMethodArgument;
       at: 'return' put: m isMethodReturn; at: 'local' put: m isMethodLocal;
       at: 'method_name' put: method methodName;
       at: 'method_alias' put: (oidKey value: method aliasName); yourself.
     m isMethodArgument ifTrue: [
       row at: 'in' put: m element isIn; at: 'out' put: m element isOut; at: 'in_out' put: m element isInOut
     ].
     rows add: row
   ]. rows
 ].
 fieldRows := [:owner |
   | rows | rows := OrderedCollection new.
   owner getAllVariables do: [:m |
     rows size >= 4096 ifTrue: [component error: 'Definition field bound exceeded'].
     ((m isMethodArgument or: [m isMethodReturn]) or: [m isMethodLocal]) ifFalse: [
       rows add: (Dictionary new at: 'alias' put: (oidKey value: m element xmlOID); at: 'name' put: m getName; yourself)
     ]
   ]. rows
 ].
 definitionFor := [:m |
   | represented key |
   represented := m getRepresentedClass.
   (represented isKindOf: EtasAPIError) ifTrue: [component error: 'Complex definition unavailable'].
   key := represented getOID.
   (seenDefinitions includes: key) ifFalse: [
     seenDefinitions size >= 64 ifTrue: [component error: 'Definition interface bound exceeded'].
     seenDefinitions add: key.
     definitions add: (Dictionary new at: 'oid' put: key; at: 'path' put: represented getFolderPathName;
       at: 'native_class' put: represented class name asString;
       at: 'fields' put: (fieldRows value: represented);
       at: 'formals' put: (formalRows value: represented); yourself)
   ]. key
 ].
 pinRow := [:p :scope :owner |
   | row native manager basic interface |
   totalPins := totalPins + 1. totalPins > 16384 ifTrue: [component error: 'Signal pin bound exceeded'].
   native := p diagramElement. manager := native manager. basic := native basicGraphObject.
   row := Dictionary new at: 'scope' put: scope; at: 'owner' put: owner;
     at: 'id' put: native identifier; at: 'name' put: p getName;
     at: 'input' put: p isInputPin; at: 'output' put: p isOutputPin;
     at: 'native_class' put: native class name asString;
     at: 'manager_class' put: manager class name asString; yourself.
   (native respondsTo: #connectorAliasName) ifTrue: [
     row at: 'formal_alias' put: (native connectorAliasName isNil ifTrue: [nil] ifFalse: [oidKey value: native connectorAliasName])
   ].
   (manager respondsTo: #methodAliasName) ifTrue: [
     row at: 'method_name' put: manager methodName;
       at: 'method_alias' put: (manager methodAliasName isNil ifTrue: [nil] ifFalse: [oidKey value: manager methodAliasName])
   ].
   (manager respondsTo: #isGetMethod) ifTrue: [row at: 'get_access' put: manager isGetMethod].
   (manager respondsTo: #isSetMethod) ifTrue: [row at: 'set_access' put: manager isSetMethod].
   (basic respondsTo: #interfaceElementGO) ifTrue: [
     interface := basic interfaceElementGO.
     ((row includesKey: 'formal_alias') not and: [interface notNil and: [interface respondsTo: #connectorAliasName]]) ifTrue: [
       row at: 'formal_alias' put: (interface connectorAliasName isNil ifTrue: [nil] ifFalse: [oidKey value: interface connectorAliasName])
     ]
   ].
   p hasSequenceCall ifTrue: [
     | call activator | call := p getSequenceCall. activator := call getSequenceActivator.
     row at: 'sequence' put: (Dictionary new at: 'id' put: call diagramElement identifier;
       at: 'number' put: call getSequenceNumber;
       at: 'activator' put: (activator isNil ifTrue: [nil] ifFalse: [activator getName]); yourself)
   ]. pins add: row
 ].
 boundaryRows := [:hierarchy :scope :childScope |
   | internalNodes id |
   id := hierarchy diagramElement identifier.
   internalNodes := hierarchy getAllInternalPins.
   hierarchy getAllPins do: [:p |
     | external internal connector row |
     external := p diagramElement.
     row := Dictionary new at: 'kind' put: 'hierarchy_boundary';
       at: 'parent_scope' put: scope; at: 'node_id' put: id;
       at: 'child_scope' put: childScope; at: 'external_pin_id' put: external identifier;
       at: 'status' put: 'not_resolved'; yourself.
     ((external respondsTo: #getInternalConnectorGO) and: [external respondsTo: #oppHierNode]) ifTrue: [
       internal := external getInternalConnectorGO.
       (internal notNil and: [internal respondsTo: #getConnectorGO]) ifTrue: [
         connector := internal getConnectorGO.
         (connector notNil and: [connector respondsTo: #oppHierNode]) ifTrue: [
           row at: 'internal_node_id' put: internal identifier;
             at: 'internal_pin_id' put: connector identifier;
             at: 'forward_identity' put: (external oppHierNode == connector);
             at: 'reverse_identity' put: (connector oppHierNode == external);
             at: 'manager_identity' put: (connector manager == internal);
             at: 'interface_identity' put: (internal interfaceElementGO == external);
             at: 'child_membership_identity' put: (internalNodes anySatisfy: [:n |
               n diagramElement == internal and: [n getAllPins anySatisfy: [:ip | ip diagramElement == connector]]]);
             at: 'status' put: 'native_pairing_collected'
         ]
       ]
     ].
     boundaries add: row
   ]
 ].
 visit := [:graph :scope :depth |
   | children connections |
   depth > 8 ifTrue: [component error: 'Hierarchy depth bound exceeded'].
   children := graph getAllDiagramElements. connections := graph getAllDiagramConnections.
   children do: [:n |
     | row native id childScope |
     stage := 'node ', scope, ' ', n class name asString.
     totalNodes := totalNodes + 1. totalNodes > 4096 ifTrue: [component error: 'Signal node bound exceeded'].
     native := n diagramElement. id := native identifier.
     row := Dictionary new at: 'scope' put: scope; at: 'id' put: id;
       at: 'native_class' put: native class name asString;
       at: 'hierarchy' put: n isBlockDiagramHierarchy;
       at: 'hierarchy_pin' put: n isBlockDiagramHierarchyPin; yourself.
     n isBlockDiagramFunctionalElement ifTrue: [
       | m | m := n getModelElement.
       row at: 'model_alias' put: (oidKey value: m element xmlOID); at: 'model_name' put: m getName.
       m isComplex ifTrue: [row at: 'definition_oid' put: (definitionFor value: m)]
     ].
     (n isBlockDiagramHierarchy or: [n isBlockDiagramHierarchyPin]) ifTrue: [row at: 'name' put: n getName].
     nodes add: row.
     n getAllPins do: [:p | pinRow value: p value: scope value: id].
     n isBlockDiagramHierarchy ifTrue: [
       childScope := scope, '/h', id printString.
       boundaries add: (Dictionary new at: 'kind' put: 'hierarchy'; at: 'parent_scope' put: scope;
         at: 'node_id' put: id; at: 'child_scope' put: childScope;
         at: 'mapping' put: 'native_pairing_collected'; yourself).
       boundaryRows value: n value: scope value: childScope.
       visit value: n value: childScope value: depth + 1
     ]
   ].
   connections do: [:e |
     edges size >= 16384 ifTrue: [component error: 'Signal edge bound exceeded'].
     edges add: (Dictionary new at: 'scope' put: scope; at: 'id' put: e diagramElement identifier;
       at: 'source' put: e getOutputPin diagramElement identifier;
       at: 'target' put: e getInputPin diagramElement identifier; at: 'type' put: e getConnectionType; yourself)
   ]
 ].
 stage := 'models'.
 component getAllVariables do: [:m |
   models size >= 4096 ifTrue: [component error: 'Component model bound exceeded'].
   ((m isMethodArgument or: [m isMethodReturn]) or: [m isMethodLocal]) ifFalse: [
     | row | stage := 'model ', m getName. row := modelRow value: m.
     m isComplex ifTrue: [row at: 'definition_oid' put: (definitionFor value: m)]. models add: row
   ]
 ].
 stage := 'formals'. formals := formalRows value: component.
 stage := 'diagram'.
 diagramName = '-' ifFalse: [visit value: (component getDiagram: diagramName) value: diagramName value: 0].
 result := Dictionary new at: 'schema' put: 'bde_signal_interfaces_research_v1';
   at: 'diagram_collected' put: (diagramName ~= '-');
   at: 'models' put: models; at: 'formals' put: formals; at: 'definitions' put: definitions;
   at: 'nodes' put: nodes; at: 'pins' put: pins; at: 'edges' put: edges; at: 'boundaries' put: boundaries;
   at: 'issues' put: issues; at: 'project_binding' put: 'not_collected';
   at: 'method_bodies' put: 'not_collected'; at: 'editable_refs' put: false; yourself.
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
   ] ifFalse: [component error: 'Unsupported signal interface value']]]]]
 ].
 stage := 'encode'. encode value: result. out contents
 ] ifFail: [:error | 'BDE_STRUCTURE_ERROR: ', stage, ' ', error messageText]
]
