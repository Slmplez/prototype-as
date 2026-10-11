[:component |
    | stage |
    stage := 'begin'.
    component handleExceptionsIn: [
    | kinds graph pin encode out result model modelKinds primitiveKinds modelCache definitions definitionOrder values nativeClasses scope hex bindings configInfo methods processes pages rootModels dependencies |
    kinds := Dictionary new.
    kinds at: 'EtasAPIBlockDiagramFunctionalElement' put: 'BlockDiagramFunctionalElement';
        at: 'EtasAPIBlockDiagramHierarchy' put: 'BlockDiagramHierarchy';
        at: 'EtasAPIBlockDiagramHierarchyPin' put: 'BlockDiagramHierarchyPin';
        at: 'EtasAPIBlockDiagramOperator' put: 'BlockDiagramOperator';
        at: 'EtasAPIBlockDiagramControl' put: 'BlockDiagramControlElement';
        at: 'EtasAPIBlockDiagramLiteral' put: 'BlockDiagramLiteral'.

    modelKinds := Dictionary new.
    modelKinds at: 'EtasAPIModelScalar' put: 'ScalarElement';
        at: 'EtasAPIConstant' put: 'ConstantElement';
        at: 'EtasAPIModelArray' put: 'ArrayElement';
        at: 'EtasAPIModelMatrix' put: 'MatrixElement';
        at: 'EtasAPIModelDistribution' put: 'DistributionElement';
        at: 'EtasAPIModelEnumeration' put: 'EnumerationModelElement';
        at: 'EtasAPIModelReceiveMessage' put: 'ReceiveMessageElement';
        at: 'EtasAPIModelSendMessage' put: 'SendMessageElement';
        at: 'EtasAPIModelSendReceiveMessage' put: 'SendReceiveMessageElement';
        at: 'EtasAPIModelRessource' put: 'ResourceModelElement';
        at: 'EtasAPIModelOneDTable' put: 'OneDTableElement';
        at: 'EtasAPIModelTwoDTable' put: 'TwoDTableElement';
        at: 'EtasAPIModelClass' put: 'ComplexModelElement';
        at: 'EtasAPIModelCTBlock' put: 'ComplexModelElement';
        at: 'EtasAPIModelModule' put: 'ComplexModelElement';
        at: 'EtasAPIComplexModelElement' put: 'ComplexModelElement'.
    primitiveKinds := #('ScalarElement' 'ConstantElement' 'ArrayElement' 'MatrixElement' 'DistributionElement' 'EnumerationModelElement' 'ReceiveMessageElement' 'SendMessageElement' 'SendReceiveMessageElement' 'ResourceModelElement' 'OneDTableElement' 'TwoDTableElement').
    modelCache := Dictionary new. definitions := Dictionary new. definitionOrder := OrderedCollection new.
    values := Dictionary new. nativeClasses := Dictionary new. scope := component getOID.
    hex := [:bytes |
        | stream digits |
        stream := WriteStream on: (String new: bytes size * 2). digits := '0123456789abcdef'.
        bytes do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. stream contents
    ].
    configInfo := [:config | config isNil ifTrue: [nil] ifFalse: [Dictionary new at: 'name' put: config getLabel; at: 'oid' put: config getOID; yourself]].
    bindings := [:config |
        | source boundResult |
        boundResult := Dictionary new.
        source := config item instVarNamed: 'dependentParameters'.
        source isNil ifFalse: [source associations do: [:pair |
            | entries |
            entries := Dictionary new.
            pair value associations do: [:entry | entries at: (hex value: entry key) put: (hex value: entry value)].
            boundResult at: (hex value: pair key) put: entries
        ]]. boundResult
    ].
    model := [:m :ownerComponent |
        m isNil ifTrue: [nil] ifFalse: [
        | row native oid oidHex cacheKey wrapper scopeValue nativeRow formula represented defaultValue data dataClass valueKey owner name enumKey enumValues |
        native := m element. oid := native xmlOID. oidHex := hex value: oid.
        wrapper := modelKinds at: m class name asString.
        cacheKey := scope, '/', oidHex, '/', wrapper.
        modelCache at: cacheKey ifAbsent: [
            name := m getName. stage := 'model ', name. scopeValue := m getScope.
            (scopeValue isKindOf: EtasAPIError) ifTrue: [scopeValue := nil].
            row := Dictionary new at: 'name' put: name; at: 'comment' put: m getComment;
                at: 'is_argument' put: m isMethodArgument; at: 'is_return' put: m isMethodReturn;
                at: 'wrapper_type' put: wrapper; at: 'scope' put: scopeValue;
                at: 'is_parameter' put: m isParameter; at: 'api_is_dependent_parameter_class' put: m isDependentParameter; yourself.
            nativeRow := Dictionary new at: 'class_name' put: native class name asString;
                at: 'oid_value_type' put: 'System.Byte[]'; at: 'oid' put: oid asArray;
                at: 'oid_hex' put: oidHex; at: 'is_dependent' put: native isDependent; yourself.
            native isDependent ifTrue: [
                formula := native instVarNamed: 'formula'.
                formula isNil ifTrue: [nativeRow at: 'formula_status' put: 'missing'] ifFalse: [
                    nativeRow at: 'formula' put: formula formula;
                        at: 'formal_names' put: formula getIdentifierNamens;
                        at: 'formals' put: (formula identifiers collect: [:identifier |
                            Dictionary new at: 'name' put: identifier identifier;
                                at: 'oid_hex' put: (hex value: identifier aliasName); yourself])
                ]
            ].
            row at: 'native_model' put: nativeRow.
            (primitiveKinds includes: wrapper) ifTrue: [
                row at: 'model_type' put: m getModelType; at: 'unit' put: m getUnit.
                m getModelType = 'enum' ifTrue: [
                    enumKey := native sgClassKey.
                    (enumKey isRBDBObject not and: [enumKey class name asString = 'SGEnumeration']) ifTrue: [
                        enumValues := enumKey values.
                        row at: 'definition' put: nil; at: 'definition_status' put: 'not_applicable_inline';
                            at: 'enum_source' put: 'inline_type'
                    ] ifFalse: [
                        represented := m getRepresentedClass.
                        (represented isKindOf: EtasAPIEnumeration) ifFalse: [component error: 'Enumeration library definition missing'].
                        enumValues := represented getEnumerationValues.
                        row at: 'definition' put: (Dictionary new at: 'path' put: represented getFolderPathName; at: 'oid' put: represented getOID; yourself);
                            at: 'definition_status' put: 'resolved'; at: 'enum_source' put: 'library_definition'
                    ].
                    (enumValues isCollection and: [enumValues size <= 4096]) ifFalse: [component error: 'Invalid enumeration values'].
                    enumValues do: [:enumValue | (enumValue isKindOf: String) ifFalse: [component error: 'Invalid enumeration item']].
                    row at: 'enum_values' put: enumValues
                ].
                ((scopeValue = 'local' and: [(row at: 'is_argument') not]) and: [(row at: 'is_return') not]) ifTrue: [
                    owner := m getClass. valueKey := owner getOID, '/', name.
                    defaultValue := values at: valueKey ifAbsent: [
                        | v config |
                        stage := 'default data ', name.
                        config := ownerComponent getDefaultData.
                        data := config isNil ifTrue: [nil] ifFalse: [config getEntryFor: m].
                        v := Dictionary new at: 'source' put: 'component_default_configuration'; yourself.
                        (data isNil or: [data isKindOf: EtasAPIError]) ifTrue: [v at: 'status' put: 'unavailable'] ifFalse: [
                            nativeClasses at: valueKey put: data dataElement class name asString.
                            dataClass := data class name asString.
                            v at: 'status' put: 'read'.
                            dataClass = 'EtasAPIScalarDataElement' ifTrue: [v at: 'value' put: data getPhysValue] ifFalse: [
                            (#('EtasAPIArrayDataElement' 'EtasAPIDistributionDataElement') includes: dataClass) ifTrue: [
                                v at: 'values' put: data getPhysValue; at: 'size' put: data getSize; at: 'max_size' put: data getMaxSize; at: 'declared_max_size' put: m getMaxSize
                            ] ifFalse: [
                            dataClass = 'EtasAPIMatrixDataElement' ifTrue: [
                                v at: 'values' put: data getPhysValue; at: 'size' put: (Array with: data getXSize with: data getYSize);
                                    at: 'max_size' put: (Array with: data getMaxXSize with: data getMaxYSize);
                                    at: 'declared_max_size' put: (Array with: m getMaxXSize with: m getMaxYSize)
                            ] ifFalse: [
                            dataClass = 'EtasAPIOneDTableDataElement' ifTrue: [
                                v at: 'x' put: data getXDistribution getPhysValue; at: 'y' put: data getValue getPhysValue;
                                    at: 'size' put: data getXSize; at: 'declared_max_size' put: m getMaxXSize;
                                    at: 'interpolation_linear' put: data isInterpolationLinear; at: 'interpolation_rounded' put: data isInterpolationRounded;
                                    at: 'extrapolation_constant' put: data isExtrapolationConstant
                            ] ifFalse: [
                            dataClass = 'EtasAPITwoDTableDataElement' ifTrue: [
                                v at: 'x' put: data getXDistribution getPhysValue; at: 'y' put: data getYDistribution getPhysValue;
                                    at: 'z' put: data getValue getPhysValue;
                                    at: 'size' put: (Array with: data getXSize with: data getYSize);
                                    at: 'declared_max_size' put: (Array with: m getMaxXSize with: m getMaxYSize);
                                    at: 'interpolation_linear' put: data isInterpolationLinear; at: 'interpolation_rounded' put: data isInterpolationRounded;
                                    at: 'extrapolation_constant' put: data isExtrapolationConstant
                            ] ifFalse: [component error: 'Unsupported bulk default data class']]]]]
                        ].
                        values at: valueKey put: v. v
                    ]. row at: 'default_value' put: defaultValue
                ]
            ].
            m isComplex ifTrue: [
                represented := m getRepresentedClass.
                represented isNil ifFalse: [
                    row at: 'definition' put: (Dictionary new at: 'path' put: represented getFolderPathName; at: 'oid' put: represented getOID; yourself).
                    (definitions includesKey: represented getOID) ifFalse: [definitions at: represented getOID put: represented. definitionOrder add: represented getOID]
                ]
            ].
            modelCache at: cacheKey put: row. row
        ]]
    ].
    methods := [:d :ownerComponent :withCode |
        d getAllMethods collect: [:method |
            | row |
            row := Dictionary new at: 'name' put: method getName;
                at: 'arguments' put: (method getAllArgumentElements collect: [:arg | model value: arg value: ownerComponent]);
                at: 'return_element' put: (model value: method getReturnElement value: ownerComponent); yourself.
            withCode ifTrue: [row at: 'code' put: method getCode]. row
        ]
    ].
    processes := [:d |
        (d isKindOf: EtasAPIProcessDiagram) ifTrue: [
            d getAllProcesses collect: [:process |
                Dictionary new at: 'name' put: process getName; at: 'alias_name' put: process aliasName;
                    at: 'code' put: process getCode; yourself
            ]
        ] ifFalse: [#()]
    ].
    pin := [:p :cache |
        | id row owner sequence activator |
        id := p diagramElement identifier.
        cache at: id ifAbsent: [
            row := Dictionary new.
            owner := p getBlockDiagramElement.
            row at: 'native_id' put: id; at: 'name' put: p getName;
                at: 'input' put: p isInputPin; at: 'output' put: p isOutputPin;
                at: 'node_id' put: (owner isNil ifTrue: [nil] ifFalse: [owner identifier]).
            p hasSequenceCall ifTrue: [
                sequence := p getSequenceCall.
                sequence isNil ifFalse: [
                    activator := sequence getSequenceActivator.
                    row at: 'sequence' put: (Dictionary new
                        at: 'number' put: sequence getSequenceNumber;
                        at: 'activator' put: (activator isNil ifTrue: [nil] ifFalse: [activator getName]); yourself)
                ]
            ].
            (id isInteger and: [id >= 0]) ifTrue: [cache at: id put: row].
            row
        ]
    ].
    graph := [:d :ownerComponent |
        | nodes edges cache |
        nodes := OrderedCollection new. edges := OrderedCollection new. cache := Dictionary new.
        d getAllDiagramElements do: [:n |
            | row kind |
            kind := kinds at: n class name asString.
            row := Dictionary new.
            row at: 'id' put: n identifier; at: 'kind' put: kind;
                at: 'pins' put: (n getAllPins collect: [:p | pin value: p value: cache]).
            kind = 'BlockDiagramFunctionalElement' ifTrue: [row at: 'model' put: (model value: n getModelElement value: ownerComponent)].
            kind = 'BlockDiagramOperator' ifTrue: [row at: 'operator' put: n getType].
            kind = 'BlockDiagramControlElement' ifTrue: [row at: 'control' put: n getType].
            kind = 'BlockDiagramLiteral' ifTrue: [row at: 'literal' put: n getLiteralText].
            kind = 'BlockDiagramHierarchy' ifTrue: [row at: 'name' put: n getName; at: 'contents' put: (graph value: n value: ownerComponent)].
            nodes add: row
        ].
        d getAllDiagramConnections do: [:edge |
            edges add: (Dictionary new at: 'index' put: edges size;
                at: 'type' put: edge getConnectionType;
                at: 'output' put: (pin value: edge getOutputPin value: cache);
                at: 'input' put: (pin value: edge getInputPin value: cache); yourself)
        ].
        Dictionary new at: 'nodes' put: nodes; at: 'edges' put: edges; yourself
    ].

    pages := OrderedCollection new.
    component getAllDiagrams do: [:d |
        | page diagramGraph counts pagination nodes start last |
        ((d isKindOf: EtasAPIDiscreteMethodDiagram) or: [d isKindOf: EtasAPIProcessDiagram]) ifFalse: [component error: 'Unsupported bulk root diagram'].
        diagramGraph := graph value: d value: component.
        nodes := d getAllDiagramElements. counts := Dictionary new. pagination := OrderedCollection new.
        (diagramGraph at: 'nodes') do: [:row | counts at: (row at: 'kind') put: ((counts at: (row at: 'kind') ifAbsent: [0]) + 1)].
        start := 1.
        [start <= nodes size] whileTrue: [
            last := (start + 9) min: nodes size.
            pagination add: (Dictionary new at: 'start' put: start; at: 'end' put: last;
                at: 'ids' put: ((nodes copyFrom: start to: last) collect: [:n | n identifier]); yourself).
            start := last + 1
        ].
        page := Dictionary new at: 'name' put: d getName; at: 'oid' put: d getOID;
            at: 'wrapper_type' put: ((d isKindOf: EtasAPIProcessDiagram) ifTrue: ['de.etas.cebra.toolAPI.Ascet.ProcessDiagram'] ifFalse: ['de.etas.cebra.toolAPI.Ascet.DiscreteMethodDiagram']); at: 'diagram_kind' put: 'block_diagram';
            at: 'node_count' put: (diagramGraph at: 'nodes') size; at: 'edge_count' put: (diagramGraph at: 'edges') size;
            at: 'node_types' put: counts; at: 'graph' put: diagramGraph;
            at: 'remote_pagination' put: (Dictionary new at: 'total' put: nodes size; at: 'page_size' put: 10; at: 'pages' put: pagination; yourself);
            at: 'methods' put: (methods value: d value: component value: false);
            at: 'processes' put: (processes value: d); yourself.
        pages add: page
    ].
    rootModels := component getAllVariables collect: [:m | model value: m value: component].
    dependencies := OrderedCollection new.
    [dependencies size < definitionOrder size] whileTrue: [
        | key c models methodRows processRows config |
        key := definitionOrder at: dependencies size + 1. c := definitions at: key. scope := key.
        models := c getAllVariables collect: [:m | model value: m value: c].
        methodRows := OrderedCollection new.
        processRows := OrderedCollection new.
        c getAllDiagrams do: [:d |
            ((d isKindOf: EtasAPIDiscreteMethodDiagram) or: [d isKindOf: EtasAPIProcessDiagram]) ifFalse: [component error: 'Unsupported bulk definition diagram'].
            methodRows addAll: (methods value: d value: c value: true).
            processRows addAll: (processes value: d)
        ].
        config := c getDefaultData.
        dependencies add: (Dictionary new at: 'oid' put: key; at: 'path' put: c getFolderPathName;
            at: 'model_elements' put: models; at: 'methods' put: methodRows; at: 'processes' put: processRows;
            at: 'default_data_configuration' put: (configInfo value: config);
            at: 'default_formula_bindings' put: (config isNil ifTrue: [nil] ifFalse: [bindings value: config]); yourself)
    ].
    result := Dictionary new at: 'diagrams' put: pages; at: 'model_elements' put: rootModels;
        at: 'definitions' put: dependencies; at: 'native_data_classes' put: nativeClasses; yourself.

    out := WriteStream on: (String new: 16384).
    encode := [:x |
        x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
        x isString ifTrue: [
            out nextPutAll: '{"$s":['.
            x asCebraString doWithIndex: [:byte :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString].
            out nextPutAll: ']}'
        ] ifFalse: [
        ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
        (x isKindOf: Dictionary) ifTrue: [
            | first |
            first := true. out nextPutAll: '{"$d":['.
            x keysAndValuesDo: [:key :value |
                first ifFalse: [out nextPut: $,]. first := false.
                out nextPut: $[. encode value: key. out nextPut: $,. encode value: value. out nextPut: $]
            ]. out nextPutAll: ']}'
        ] ifFalse: [
        (x isKindOf: Float) ifTrue: [
            | bytes |
            bytes := x asCebraString.
            out nextPutAll: '{"$f":['.
            1 to: bytes size do: [:i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: (bytes at: i) printString].
            out nextPutAll: ']}'
        ] ifFalse: [
        x isCollection ifTrue: [
            | first |
            first := true. out nextPut: $[.
            x do: [:value | first ifFalse: [out nextPut: $,]. first := false. encode value: value]. out nextPut: $]
        ] ifFalse: [out nextPutAll: 'INVALID_VALUE']]]]]]
    ].
    encode value: result.
    out contents
    ] ifFail: [:error | 'BDE_BULK_ERROR: ', stage, ': ', error printString]
]
