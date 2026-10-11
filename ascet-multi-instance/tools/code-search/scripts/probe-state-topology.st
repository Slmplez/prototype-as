[:dbAPI :mode :input |
    | out field row preview walk count stage |
    out := WriteStream on: String new. count := 0. stage := 'start'.
    field := [:text | text do: [:ch | | n | n := ch asInteger.
        (n > 126 or: [n = 37 or: [n = 124]]) ifTrue: [out nextPut: $%; nextPutAll: n printString; nextPut: $;]
            ifFalse: [out nextPut: ch]]. out nextPut: $|].
    row := [:values | values do: [:v | field value: v]].
    preview := [:v | v printString].
    walk := [:tree :path :depth |
        | node |
        depth > 128 ifTrue: [dbAPI error: 'Hierarchy depth exceeded'].
        node := tree isHierarchyDB ifTrue: [tree graphicBlock] ifFalse: [tree].
        stage := path, ' ', node class name asString.
        (node isStateBlockDB or: [node isKindOf: SGBezierConnectionGODB]) ifTrue: [
            node class allInstVarNames doWithIndex: [:name :i |
                row value: (Array with: path with: node class name asString with: name asString
                    with: (preview value: (node instVarAt: i)) with: '' with: '')
            ].
            (node isKindOf: SGBezierConnectionGODB) ifTrue: [
                row value: (Array with: path with: node class name asString with: 'endpoints'
                    with: node startBlock printString with: node endBlock printString with: node transitionInfo printString)
            ]
        ].
        tree isHierarchyDB ifTrue: [
            tree blocks doWithIndex: [:child :i | walk value: child value: path, '/b', i printString value: depth + 1].
            tree connections doWithIndex: [:child :i | walk value: child value: path, '/c', i printString value: depth + 1].
            tree others doWithIndex: [:child :i | row value: (Array with: path, '/o', i printString with: child class name asString with: 'object' with: child printString with: '' with: '')]
        ]
    ].
    dbAPI handleExceptionsIn: [
        ((dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search) do: [:key |
            | c | c := key getObjectIfUndefined: [:unused | nil].
            (c notNil and: [c isSmClass]) ifTrue: [
                count := count + 1.
                c specifications do: [:spec | spec isSmSpecification ifTrue: [
                    walk value: spec specSourceInternalOrNil value: key globalIdString, '/', spec specificationName value: 0
                ]]
            ]
        ]. out contents
    ] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]
]
