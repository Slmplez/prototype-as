[:root :sourceId :diagramName :methods :visit |
    | walk readSlots seen readStateCount readTransitionCount readBindingCount readMaxDepth |
    "Only reads storage objects. Never loads a diagram, initializes aliases or creates Undo."
    seen := IdentitySet new.
    readStateCount := 0. readTransitionCount := 0. readBindingCount := 0. readMaxDepth := 0.
    readSlots := [:info :kinds :identity :label |
        info ifNotNil: [
            1 to: 3 do: [:index |
                | slot alias source kind target |
                slot := info at: index + 1.
                slot ifNotNil: [
                    alias := slot at: 1. source := slot at: 3. kind := kinds at: index.
                    source ifNotNil: [
                        source isString ifFalse: [self error: 'State machine source is not text'].
                        ((alias isNil) or: [alias = SGSmSpecification esdlString])
                            ifFalse: [self error: 'Ambiguous state machine source and method binding'].
                        visit value: (Array with: kind with: identity with: label with: 'esdl' with: source with: nil)
                    ] ifNil: [
                        alias ifNotNil: [
                            alias = SGSmSpecification esdlString ifTrue: [self error: 'Missing ESDL source'].
                            target := methods detect: [:method | method aliasName = alias] ifNone: [nil].
                            target isNil ifTrue: [self error: 'Unresolved state machine method binding'].
                            readBindingCount := readBindingCount + 1.
                            visit value: (Array with: kind, '_binding' with: identity with: label with: 'method_reference' with: target methodName with: alias)
                        ]
                    ]
                ]
            ]
        ]
    ].
    walk := [:tree :idPath :namePath :depth |
        | node childIdPath childNamePath info id |
        depth > 128 ifTrue: [self error: 'State hierarchy depth exceeded'].
        (seen includes: tree) ifTrue: [self error: 'Repeated state hierarchy object'].
        seen add: tree. readMaxDepth := readMaxDepth max: depth.
        node := tree isHierarchyDB ifTrue: [tree graphicBlock] ifFalse: [tree].
        childIdPath := idPath. childNamePath := namePath.
        node isStateBlockDB ifTrue: [
            readStateCount := readStateCount + 1.
            id := node iD.
            (id isInteger and: [id >= 0]) ifFalse: [self error: 'Missing state graphical identity'].
            info := node stateInfo.
            info isNil ifTrue: [self error: 'Missing state information'].
            childIdPath := idPath, '/s', id printString.
            childNamePath := namePath, '/', (info at: 1).
            readSlots valueWithArguments: (Array with: info with: #('state_entry' 'state_static' 'state_exit') with: childIdPath with: childNamePath)
        ].
        (node isKindOf: SGBezierConnectionGODB) ifTrue: [
            readTransitionCount := readTransitionCount + 1.
            id := node id.
            (id isInteger and: [id >= 0]) ifFalse: [self error: 'Missing transition graphical identity'].
            readSlots valueWithArguments: (Array with: node transitionInfo with: #('transition_trigger' 'transition_action' 'transition_condition')
                with: idPath, '/t', id printString with: namePath, '/Transition #', id printString)
        ].
        tree isHierarchyDB ifTrue: [
            tree blocks do: [:child | walk valueWithArguments: (Array with: child with: childIdPath with: childNamePath with: depth + 1)].
            tree connections do: [:child | walk valueWithArguments: (Array with: child with: childIdPath with: childNamePath with: depth + 1)]
        ]
    ].
    root isNil ifTrue: [self error: 'State machine source unavailable'].
    walk valueWithArguments: (Array with: root with: sourceId with: diagramName with: 0).
    Array with: readStateCount with: readTransitionCount with: readBindingCount with: readMaxDepth
]
