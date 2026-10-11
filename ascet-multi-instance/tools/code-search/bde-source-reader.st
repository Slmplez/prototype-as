[ | bdeElementMetadata bdeReferencePaths bdeTemplateCreator |
    bdeTemplateCreator := (bdeLoadFactory at: 2) value: Dictionary new.
    bdeElementMetadata := IdentityDictionary new. bdeReferencePaths := IdentityDictionary new.
[:bdeDiagram :bdeComponent :bdeSpec :bdeHex :bdeEmit :bdeSelect :bdeSavedSource |
    | bdeRecord bdeWalk bdePin bdeCheckedId bdeSeen bdeCount bdeStage bdePlans bdeCopySource bdeDetachedSource bdeHierarchy bdeStarted bdeCopyMs bdeLoadMs bdeNativePins bdeMethodNames bdeLiteralRows |
    "The native storage-to-GO conversion lazily writes display defaults into its input.
    Build the API tree from an owned source copy; never load it from the saved spec.
    No StoreToCache, editor, source setter or BDE edit registry."
    bdeStarted := Time millisecondClockValue.
    "A disconnected literal-only tree needs no model/type propagation. Stage all
    records first so any unsupported shape falls back as a whole Diagram."
    bdeLiteralRows := [:lfSource :lfComponent :lfSpec :lfHex |
        | lfSupported lfRecords lfIdentifiers lfAppend |
        lfSupported := lfSource class == SGTopGraphicsBlockDB.
        lfSupported ifTrue: [lfSupported := lfSource connections isEmpty and: [lfSource others isEmpty and: [
            lfSource blocks size <= 100000 and: [(lfSource instVarNamed: 'invisibleCategoryNames') isNil and: [
            lfSource graphicBlock class == SGCodeGODB]]]]].
        lfRecords := OrderedCollection new. lfIdentifiers := Set new.
        lfAppend := [:lfTag :lfValues | | lfRecord | lfRecord := OrderedCollection new add: lfTag; addAll: lfValues; yourself.
            [lfRecord size < 8] whileTrue: [lfRecord add: '']. lfRecords add: lfRecord].
        lfSupported ifTrue: [
            lfAppend value: '#BDE_DIAGRAM' value: (Array with: lfSpec specificationName).
            lfComponent methods do: [:lfMethod | lfMethod owner == lfSpec ifTrue: [
                lfAppend value: '#BDE_MEMBER' value: (Array with: (lfHex value: lfMethod aliasName) with: lfMethod methodName with: lfMethod isProcess printString)]].
            lfAppend value: '#BDE_SCOPE' value: (Array with: 'root' with: lfSpec specificationName).
            lfSource blocks do: [:lfStored |
                lfSupported ifTrue: [
                    lfSupported := lfStored class == SGLiteralGODB.
                    lfSupported ifTrue: [lfSupported := lfStored literalString isString and: [
                        lfStored connectors class == Array and: [lfStored connectors size = 1 and: [
                        (lfStored instVarNamed: 'invisibleCategoryNames') isNil and: [(lfStored instVarNamed: 'opAliasName') isNil]]]]].
                    lfSupported ifTrue: [ | lfNodeId lfPinId |
                        lfNodeId := lfStored iD. lfPinId := lfStored connectors first.
                        lfSupported := (lfNodeId isInteger and: [lfNodeId >= 0]) and: [
                            (lfPinId isInteger and: [lfPinId >= 0]) and: [lfNodeId ~= lfPinId and: [
                            (lfIdentifiers includes: lfNodeId) not and: [(lfIdentifiers includes: lfPinId) not]]]].
                        lfSupported ifTrue: [
                            lfIdentifiers add: lfNodeId; add: lfPinId.
                            lfAppend value: '#BDE_NODE' value: (Array with: 'root' with: lfNodeId printString with: 'literal'
                                with: lfStored literalString with: '' with: '' with: '').
                            lfAppend value: '#BDE_PIN' value: (Array with: 'root' with: lfNodeId printString with: lfPinId printString
                                with: 'get/get' with: 'false' with: 'true')
                        ]
                    ]
                ]
            ]
        ].
        lfSupported ifTrue: [lfRecords] ifFalse: [nil]
    ] valueWithArguments: (Array with: bdeSavedSource with: bdeComponent with: bdeSpec with: bdeHex).
    bdeLiteralRows ifNotNil: [
        bdeLiteralRows do: [:record | bdeEmit value: record].
        Array with: 0 with: 0 with: (Time millisecondClockValue - bdeStarted)
    ] ifNil: [
    bdeCopySource := [:source |
        | memo clone visited owner |
        source isNil ifTrue: [bdeDiagram error: 'BDE_SOURCE_UNDEFINED'].
        memo := IdentityDictionary new. visited := 0. owner := source dbObject.
        clone := [:value :depth |
            | copied name |
            visited := visited + 1.
            (visited > 1000000 or: [depth > 128]) ifTrue: [bdeDiagram error: 'BDE_SOURCE_COPY_LIMIT'].
            value == owner ifTrue: [nil] ifFalse: [
            ((value isNil or: [value isNumber]) or: [(value isKindOf: Symbol) or: [value == true or: [value == false]]])
                ifTrue: [value] ifFalse: [
                memo at: value ifAbsent: [
                    name := value class name asString.
                    (((value isKindOf: String) or: [value class == DBString]) or: [value isKindOf: ByteArray]) ifTrue: [
                        copied := value copy. memo at: value put: copied
                    ] ifFalse: [(value isKindOf: Dictionary) ifTrue: [
                        copied := value class new. memo at: value put: copied.
                        value keysAndValuesDo: [:key :entry | copied at: (clone value: key value: depth + 1) put: (clone value: entry value: depth + 1)]
                    ] ifFalse: [((value isKindOf: Array) or: [value isKindOf: OrderedCollection]) ifTrue: [
                        copied := value copy. memo at: value put: copied.
                        1 to: value size do: [:index | copied at: index put: (clone value: (value at: index) value: depth + 1)]
                    ] ifFalse: [
                        ((value isKindOf: SGGraphicObjectsDB) or: [#('Point' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name])
                            ifFalse: [bdeDiagram error: 'BDE_SOURCE_COPY_UNSUPPORTED ', name].
                        copied := value class == SGDataGODB
                            ifTrue: [(bdeLoadFactory at: 1) basicNew] ifFalse: [value class == SGCodeGODB
                                ifTrue: [(bdeLoadFactory at: 3) basicNew] ifFalse: [value shallowCopy]].
                        value class == SGDataGODB ifTrue: [copied instVarAt: copied class instSize put: bdeTemplateCreator].
                        value class == SGCodeGODB ifTrue: [copied instVarAt: copied class instSize put: (bdeLoadFactory at: 4)].
                        memo at: value put: copied.
                        1 to: value class instSize do: [:index | copied instVarAt: index put: (clone value: (value instVarAt: index) value: depth + 1)]
                    ]]]. copied
                ]
            ]]
        ]. clone value: source value: 0
    ].
    bdeStarted := Time millisecondClockValue.
    bdeDetachedSource := bdeCopySource value: bdeSavedSource.
    bdeCopyMs := Time millisecondClockValue - bdeStarted. bdeStarted := Time millisecondClockValue.
    bdeHierarchy := bdeComponent loadSourceForGraphicsDB: bdeDetachedSource
        idTableBuilder: SGIdentifierTableBuilder createWithNewTable specification: bdeSpec.
    bdeHierarchy isNil ifTrue: [bdeDiagram error: 'BDE_DETACHED_TREE_UNAVAILABLE'].
    bdeHierarchy controller: bdeComponent.
    bdeDiagram topGraphicalHierarchy: bdeHierarchy.
    bdeLoadMs := Time millisecondClockValue - bdeStarted. bdeStarted := Time millisecondClockValue.
    "Read getters use the detached hierarchy; the mutation server is only needed for edits."
    bdeRecord := [:bdeTag :bdeValues |
        | bdeRow | bdeRow := OrderedCollection new add: bdeTag; yourself.
        bdeRow addAll: bdeValues.
        [bdeRow size < 8] whileTrue: [bdeRow add: ''].
        bdeEmit value: bdeRow
    ].
    bdeCheckedId := [:bdeValue |
        (bdeValue isInteger and: [bdeValue >= 0]) ifFalse: [bdeDiagram error: 'BDE_UNSTORED_ID ', bdeValue printString, ' at ', bdeStage].
        bdeValue printString
    ].
    bdeRecord value: '#BDE_DIAGRAM' value: (Array with: bdeSpec specificationName).
    bdeMethodNames := Dictionary new.
    (bdeSpec instanceMethods, bdeSpec classMethods) do: [:bdeMethod |
        bdeMethodNames at: bdeMethod aliasName ifAbsentPut: [bdeMethod getAPIHandle getName]
    ].
    bdeComponent methods do: [:bdeMethod |
        bdeMethod owner == bdeSpec ifTrue: [
            bdeRecord value: '#BDE_MEMBER' value: (Array with: (bdeHex value: bdeMethod aliasName) with: bdeMethod methodName with: bdeMethod isProcess printString)
        ]
    ].
    bdePin := [:bdeNative :bdeScope :bdeCache |
        | bdeId bdeOwner bdeCall bdeActivator bdePinName bdeManager bdeBase bdeMethodName bdeDescription |
        bdeId := bdeCheckedId value: bdeNative identifier.
        (bdeNativePins at: bdeScope) at: bdeNative put: bdeId.
        (bdeCache includes: bdeId) ifFalse: [
            bdeManager := bdeNative manager. bdeBase := bdeNative getBlock basicGraphObject.
            bdePinName := bdeBase isSGHierarchyGO ifTrue: [bdeNative connectorName] ifFalse: [
                (bdeBase opAliasName isNil and: [bdeMethodName := bdeManager methodName. bdeMethodName notNil])
                    ifTrue: [bdeMethodName, '/', bdeNative connectorName]
                    ifFalse: [(bdeNative getAPIHandleForItem: bdeDiagram) getName]].
            bdeStage := 'pin ', bdePinName. bdeCache add: bdeId.
            "Mirror getBlockDiagramElement on the already validated detached Pin."
            bdeOwner := bdeManager isSGHierarchyGO ifTrue: [bdeManager hierarchyMGO] ifFalse: [
                (bdeNative oppHierNode notNil and: [bdeNative oppHierNode manager isSGHierarchyGO])
                    ifTrue: [bdeManager] ifFalse: [bdeManager opAliasName notNil
                        ifTrue: [bdeManager] ifFalse: [bdeManager ownerGO]]].
            bdeRecord value: '#BDE_PIN' value: (Array with: bdeScope with: (bdeCheckedId value: bdeOwner identifier) with: bdeId
                with: bdePinName with: bdeNative hasArgumentPin printString with: bdeNative hasResultPin printString).
            ((bdeManager isSGHierarchyGO not and: [bdeManager opAliasName isNil]) and: [
                bdeManager isSelectorPort and: [bdeManager getSGCallGO notNil]]) ifTrue: [
                bdeCall := bdeManager getSGCallGO. bdeDescription := bdeCall description.
                "Resolve the native getter's instance/class Method order once per Diagram."
                bdeActivator := bdeMethodNames at: bdeDescription first ifAbsent: [
                    | bdeMethodAPI | bdeMethodAPI := (bdeCall getAPIHandleForItem: bdeDiagram) getSequenceActivator.
                    bdeMethodAPI isNil ifTrue: [''] ifFalse: [bdeMethodAPI getName]].
                bdeRecord value: '#BDE_SEQUENCE' value: (Array with: bdeScope with: bdeId with: (bdeDescription at: 2) printString
                    with: bdeActivator)
            ]
        ]. bdeId
    ].
    bdePlans := OrderedCollection new. bdeSeen := IdentitySet new. bdeCount := 0. bdeNativePins := Dictionary new.
    bdeWalk := [:bdeD :bdeScope :bdeDepth :bdeScopeName |
        | bdeCache bdeEdgeCount bdeNativeHierarchy |
        bdeDepth > 16 ifTrue: [bdeDiagram error: 'BDE_HIERARCHY_DEPTH_LIMIT'].
        (bdeSeen includes: bdeD) ifTrue: [bdeDiagram error: 'BDE_HIERARCHY_CYCLE'].
        bdeSeen add: bdeD.
        bdeNativeHierarchy := bdeScope = 'root' ifTrue: [bdeHierarchy] ifFalse: [bdeD diagramElement].
        bdeCache := Set new. bdeEdgeCount := 0.
        bdeNativePins at: bdeScope put: IdentityDictionary new.
        bdeRecord value: '#BDE_SCOPE' value: (Array with: bdeScope with: bdeScopeName).
        bdeD getAllDiagramElements do: [:bdeN |
            | bdeId bdeKind bdeName bdeAlias bdeModelType bdeReference bdeM bdeChild bdePins bdeElement bdeMetadata |
            bdeCount := bdeCount + 1. bdeCount > 100000 ifTrue: [bdeDiagram error: 'BDE_NODE_LIMIT'].
            bdeStage := 'node ', bdeN class name asString.
            bdeId := bdeCheckedId value: bdeN identifier.
            bdeKind := 'unknown'. bdeName := ''. bdeAlias := ''. bdeModelType := ''. bdeReference := ''.
            bdeN isBlockDiagramLiteral ifTrue: [bdeKind := 'literal'. bdeName := bdeN getLiteralText].
            bdeN isBlockDiagramComment ifTrue: [bdeKind := 'comment'. bdeName := bdeN getComment].
            bdeN isBlockDiagramOperator ifTrue: [bdeKind := 'operator'. bdeName := bdeN getType].
            bdeN isBlockDiagramControl ifTrue: [bdeKind := 'control'. bdeName := bdeN getType].
            bdeN isBlockDiagramHierarchyPin ifTrue: [bdeKind := 'hierarchy_pin'].
            bdeN isBlockDiagramHierarchy ifTrue: [bdeKind := 'hierarchy'. bdeName := bdeN getName].
            (bdeN diagramElement isKindOf: ASDConversionGO) ifTrue: [bdeKind := 'conversion'. bdeName := bdeN diagramElement conversionType asString].
            bdeN isBlockDiagramFunctionalElement ifTrue: [
                bdeKind := 'element'. bdeElement := bdeN diagramElement element.
                bdeMetadata := bdeElementMetadata at: bdeElement ifAbsentPut: [
                    | bdeElementReference | bdeM := bdeN getModelElement. bdeElementReference := ''.
                    bdeM isComplex ifTrue: [| bdeRepresented | bdeRepresented := bdeM getRepresentedClass.
                        bdeRepresented isNil ifFalse: [bdeElementReference := bdeReferencePaths at: bdeRepresented item
                            ifAbsentPut: [bdeRepresented getFolderPathName]]].
                    Array with: bdeM getName with: (bdeHex value: bdeM element aliasName)
                        with: bdeM element class name asString with: bdeElementReference
                ].
                bdeName := bdeMetadata at: 1. bdeAlias := bdeMetadata at: 2.
                bdeModelType := bdeMetadata at: 3. bdeReference := bdeMetadata at: 4
            ].
            bdeRecord value: '#BDE_NODE' value: (Array with: bdeScope with: bdeId with: bdeKind with: bdeName with: bdeAlias with: bdeModelType with: bdeReference).
            bdeKind = 'unknown' ifTrue: [bdeRecord value: '#BDE_ISSUE' value: (Array with: ('Unsupported node ', bdeN class name asString, ' at ', bdeScope, '/n', bdeId))].
            bdeN isBlockDiagramComment ifFalse: [
                bdePins := bdeN isBlockDiagramHierarchyPin ifTrue: [Array with: bdeN diagramElement basicGraphObject getConnectorGO] ifFalse: [
                    bdeKind = 'unknown' ifTrue: [bdeN getAllPins collect: [:bdeP | bdeP diagramElement]] ifFalse: [
                        bdeN diagramElement basicGraphObject interfaceElementGOs select: [:bdeP | bdeP isVisible]]].
                bdePins do: [:bdeP | bdePin value: bdeP value: bdeScope value: bdeCache]
            ].
            bdeN isBlockDiagramHierarchy ifTrue: [
                bdeChild := bdeScope, '/h', bdeId.
                bdePins do: [:bdeP |
                    | bdeExternal bdeInternal bdeConnector |
                    bdeExternal := bdeP. bdeInternal := bdeExternal getInternalConnectorGO. bdeConnector := bdeInternal getConnectorGO.
                    ((bdeExternal oppHierNode == bdeConnector and: [bdeConnector oppHierNode == bdeExternal]) and: [
                        bdeConnector manager == bdeInternal and: [bdeInternal interfaceElementGO == bdeExternal]])
                        ifFalse: [bdeDiagram error: 'BDE_HIERARCHY_BOUNDARY_MISMATCH'].
                    bdeRecord value: '#BDE_BOUNDARY' value: (Array with: bdeScope with: bdeId with: (bdeCheckedId value: bdeExternal identifier)
                        with: bdeChild with: (bdeCheckedId value: bdeInternal identifier) with: (bdeCheckedId value: bdeConnector identifier))
                ].
                bdeWalk valueWithArguments: (Array with: bdeN with: bdeChild with: bdeDepth + 1 with: bdeName)
            ]
        ].
        bdeD getAllDiagramComments do: [:bdeComment |
            bdeRecord value: '#BDE_COMMENT' value: (Array with: bdeScope with: bdeComment getComment)
        ].
        bdePlans add: (Array with: bdeD with: bdeScope with: bdeCache with: bdeNativeHierarchy)
    ].
    bdeWalk valueWithArguments: (Array with: bdeDiagram with: 'root' with: 0 with: bdeSpec specificationName).
    bdeSelect value ifTrue: [bdePlans do: [:bdePlan |
        | bdeD bdeScope bdeCache bdeEdgeCount bdePinIds bdeConnections |
        bdeD := bdePlan at: 1. bdeScope := bdePlan at: 2. bdeCache := bdePlan at: 3. bdeEdgeCount := 0.
        bdePinIds := bdeNativePins at: bdeScope.
        "Native getAllDiagramConnections wraps exactly this ordered collection."
        bdeConnections := (bdePlan at: 4) contents connectionChildren.
        bdeConnections do: [:bdeEdge |
            | bdeStart bdeEnd bdeOutput bdeInput bdeOutputId bdeInputId |
            bdeStage := 'edge'. bdeEdgeCount := bdeEdgeCount + 1.
            "Mirror the native getter's direction selection; unseen pins still use its API path."
            bdeStart := bdeEdge startConnectionPoint owner manager.
            bdeEnd := bdeEdge endConnectionPoint owner manager.
            bdeOutput := bdeStart hasResultPin ifTrue: [bdeStart] ifFalse: [bdeEnd hasResultPin ifTrue: [bdeEnd] ifFalse: [nil]].
            bdeInput := bdeEnd hasArgumentPin ifTrue: [bdeEnd] ifFalse: [bdeStart hasArgumentPin ifTrue: [bdeStart] ifFalse: [nil]].
            bdeOutputId := bdePinIds at: bdeOutput ifAbsent: [bdePin value: (bdeEdge getAPIHandleForItem: bdeDiagram) getOutputPin diagramElement value: bdeScope value: bdeCache].
            bdeInputId := bdePinIds at: bdeInput ifAbsent: [bdePin value: (bdeEdge getAPIHandleForItem: bdeDiagram) getInputPin diagramElement value: bdeScope value: bdeCache].
            bdeRecord value: '#BDE_EDGE' value: (Array with: bdeScope with: bdeEdgeCount printString
                with: bdeOutputId with: bdeInputId with: bdeStart typeID printString)
        ]
    ]].
    Array with: bdeCopyMs with: bdeLoadMs with: (Time millisecondClockValue - bdeStarted)
    ]
]
] value
