[:root :sourceId :diagramName :visit |
    | walk seen topologyCount |
    "Read saved identifiers and connector ownership; never create an editor graph."
    seen := IdentitySet new. topologyCount := 0.
    walk := [:tree :idPath :namePath :depth |
        | node id identity label kind flags dynamic info |
        depth > 128 ifTrue: [self error: 'State topology depth exceeded'].
        (seen includes: tree) ifTrue: [self error: 'Repeated state topology object'].
        seen add: tree.
        node := tree isHierarchyDB ifTrue: [tree graphicBlock] ifFalse: [tree].
        identity := idPath. label := namePath.
        (node isStateBlockDB or: [tree isHierarchyDB not and: [(node isKindOf: SGBezierConnectionGODB) not]]) ifTrue: [
            id := node iD.
            (id isInteger and: [id >= 0]) ifFalse: [self error: 'Missing state topology identity'].
            identity := idPath, '/s', id printString.
            flags := ''. kind := 'connector'.
            node isStateBlockDB ifTrue: [
                info := node stateInfo. info isNil ifTrue: [self error: 'Missing state topology information'].
                label := namePath, '/', (info at: 1).
                kind := tree isHierarchyDB ifTrue: ['hierarchy'] ifFalse: ['state'].
                node startState = true ifTrue: [flags := flags, 'initial '].
                node history = true ifTrue: [flags := flags, 'history ']
            ] ifFalse: [
                (node isKindOf: SGStateJunctionGODB) ifTrue: [kind := 'junction'].
                label := namePath, '/', kind, ' #', id printString
            ].
            visit value: (OrderedCollection new add: '#SM_OBJECT'; add: identity; add: label; add: kind; add: node class name asString; add: flags; add: ''; add: ''; yourself).
            topologyCount := topologyCount + 1.
            dynamic := (node respondsTo: #dynamicConnectors) ifTrue: [node dynamicConnectors] ifFalse: [nil].
            dynamic ifNotNil: [dynamic keys do: [:pin |
                visit value: (OrderedCollection new add: '#SM_PIN'; add: identity; add: pin printString; add: ''; add: ''; add: ''; add: ''; add: ''; yourself)
            ]].
        ].
        (node isKindOf: SGBezierConnectionGODB) ifTrue: [
            id := node id. info := node transitionInfo.
            (id isInteger and: [id >= 0]) ifFalse: [self error: 'Missing transition topology identity'].
            identity := idPath, '/t', id printString.
            visit value: (OrderedCollection new add: '#SM_OBJECT'; add: identity; add: namePath, '/Transition #', id printString;
                add: 'transition'; add: node class name asString; add: ''; add: ''; add: ''; yourself).
            visit value: (OrderedCollection new add: '#SM_TRANSITION'; add: identity;
                add: (node startBlock ifNil: [''] ifNotNil: [:v | v printString]);
                add: (node endBlock ifNil: [''] ifNotNil: [:v | v printString]);
                add: (node startConnector ifNil: [''] ifNotNil: [:v | v printString]);
                add: (node endConnector ifNil: [''] ifNotNil: [:v | v printString]);
                add: (info ifNil: [''] ifNotNil: [(info at: 1) ifNil: ['']]); add: ''; yourself).
            topologyCount := topologyCount + 1
        ].
        tree isHierarchyDB ifTrue: [
            tree blocks do: [:child | walk valueWithArguments: (Array with: child with: identity with: label with: depth + 1)].
            tree connections do: [:child | walk valueWithArguments: (Array with: child with: identity with: label with: depth + 1)]
        ]
    ].
    root isNil ifTrue: [self error: 'State topology source unavailable'].
    walk valueWithArguments: (Array with: root with: sourceId with: diagramName with: 0).
    visit value: (OrderedCollection new add: '#SM_END'; add: topologyCount printString; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; yourself)
]
