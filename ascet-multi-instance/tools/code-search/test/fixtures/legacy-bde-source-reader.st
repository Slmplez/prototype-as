[:bdeDiagram :bdeComponent :bdeSpec :bdeHex :bdeEmit :bdeSelect |
    | bdeRecord bdeWalk bdePin bdeCheckedId bdeSeen bdeCount bdeStage bdePlans |
    "Read fresh API wrappers only. No StoreToCache, editor or BDE edit registry."
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
    bdeComponent methods do: [:bdeMethod |
        bdeMethod owner == bdeSpec ifTrue: [
            bdeRecord value: '#BDE_MEMBER' value: (Array with: (bdeHex value: bdeMethod aliasName) with: bdeMethod methodName with: bdeMethod isProcess printString)
        ]
    ].
    bdePin := [:bdeP :bdeScope :bdeCache |
        | bdeId bdeOwner bdeCall bdeActivator |
        bdeStage := 'pin ', bdeP getName.
        bdeId := bdeCheckedId value: bdeP diagramElement identifier.
        (bdeCache includes: bdeId) ifFalse: [
            bdeCache add: bdeId. bdeOwner := bdeP getBlockDiagramElement.
            bdeRecord value: '#BDE_PIN' value: (Array with: bdeScope with: (bdeCheckedId value: bdeOwner identifier) with: bdeId
                with: bdeP getName with: bdeP isInputPin printString with: bdeP isOutputPin printString).
            bdeP hasSequenceCall ifTrue: [
                bdeCall := bdeP getSequenceCall. bdeActivator := bdeCall getSequenceActivator.
                bdeRecord value: '#BDE_SEQUENCE' value: (Array with: bdeScope with: bdeId with: bdeCall getSequenceNumber printString
                    with: (bdeActivator isNil ifTrue: [''] ifFalse: [bdeActivator getName]))
            ]
        ]. bdeId
    ].
    bdePlans := OrderedCollection new. bdeSeen := IdentitySet new. bdeCount := 0.
    bdeWalk := [:bdeD :bdeScope :bdeDepth :bdeScopeName |
        | bdeCache bdeEdgeCount |
        bdeDepth > 16 ifTrue: [bdeDiagram error: 'BDE_HIERARCHY_DEPTH_LIMIT'].
        (bdeSeen includes: bdeD) ifTrue: [bdeDiagram error: 'BDE_HIERARCHY_CYCLE'].
        bdeSeen add: bdeD.
        bdeCache := Set new. bdeEdgeCount := 0.
        bdeRecord value: '#BDE_SCOPE' value: (Array with: bdeScope with: bdeScopeName).
        bdeD getAllDiagramElements do: [:bdeN |
            | bdeId bdeKind bdeName bdeAlias bdeModelType bdeReference bdeM bdeChild |
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
                bdeKind := 'element'. bdeM := bdeN getModelElement. bdeName := bdeM getName.
                bdeAlias := bdeHex value: bdeM element aliasName. bdeModelType := bdeM element class name asString.
                bdeM isComplex ifTrue: [| bdeRepresented | bdeRepresented := bdeM getRepresentedClass.
                    bdeRepresented isNil ifFalse: [bdeReference := bdeRepresented getFolderPathName]]
            ].
            bdeRecord value: '#BDE_NODE' value: (Array with: bdeScope with: bdeId with: bdeKind with: bdeName with: bdeAlias with: bdeModelType with: bdeReference).
            bdeKind = 'unknown' ifTrue: [bdeRecord value: '#BDE_ISSUE' value: (Array with: ('Unsupported node ', bdeN class name asString, ' at ', bdeScope, '/n', bdeId))].
            bdeN isBlockDiagramComment ifFalse: [bdeN getAllPins do: [:bdeP | bdePin value: bdeP value: bdeScope value: bdeCache]].
            bdeN isBlockDiagramHierarchy ifTrue: [
                bdeChild := bdeScope, '/h', bdeId.
                bdeN getAllPins do: [:bdeP |
                    | bdeExternal bdeInternal bdeConnector |
                    bdeExternal := bdeP diagramElement. bdeInternal := bdeExternal getInternalConnectorGO. bdeConnector := bdeInternal getConnectorGO.
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
        bdePlans add: (Array with: bdeD with: bdeScope with: bdeCache)
    ].
    bdeWalk valueWithArguments: (Array with: bdeDiagram with: 'root' with: 0 with: bdeSpec specificationName).
    bdeSelect value ifTrue: [bdePlans do: [:bdePlan |
        | bdeD bdeScope bdeCache bdeEdgeCount |
        bdeD := bdePlan at: 1. bdeScope := bdePlan at: 2. bdeCache := bdePlan at: 3. bdeEdgeCount := 0.
        bdeD getAllDiagramConnections do: [:bdeEdge |
            bdeStage := 'edge'. bdeEdgeCount := bdeEdgeCount + 1.
            bdeRecord value: '#BDE_EDGE' value: (Array with: bdeScope with: bdeEdgeCount printString
                with: (bdePin value: bdeEdge getOutputPin value: bdeScope value: bdeCache)
                with: (bdePin value: bdeEdge getInputPin value: bdeScope value: bdeCache) with: bdeEdge getConnectionType printString)
        ]
    ]]
]
