[:root :graphComponent :spec :encodeAlias :visit |
    "Read storage only: never instantiate an editor, generate code or initialize ports."
    | nodes ports sequences edges methods seen elements aliasText issue node walk readPorts |
    root isNil ifTrue: [self error: 'Graphical source unavailable'].
    nodes := 0. ports := 0. sequences := 0. edges := 0. methods := 0.
    seen := IdentitySet new. elements := Dictionary new.
    graphComponent getAllElementsWithoutImpactToDatamodel do: [:el | elements at: el aliasName put: el].
    aliasText := [:alias | alias isNil ifTrue: [''] ifFalse: [alias isString ifTrue: [alias] ifFalse: [encodeAlias value: alias]]].
    issue := [:scope :id :message | visit value: (OrderedCollection new add: '#GRAPH_ISSUE'; add: scope; add: id; add: message; add: ''; add: ''; add: ''; add: ''; yourself)].
    readPorts := [:object :scope :id :selector :direction |
        | table | table := object perform: selector.
        table ifNotNil: [table keysAndValuesDo: [:operation :entries |
            entries keysAndValuesDo: [:name :info |
                info size = 6 ifFalse: [self error: 'Unexpected graphical port storage layout'].
                ports := ports + 1.
                visit value: (OrderedCollection new add: '#GRAPH_PORT'; add: scope; add: id; add: info first printString;
                    add: direction; add: (aliasText value: operation); add: name asString;
                    add: ((info at: 4) printString, '/', (info at: 5) printString, '/', (info at: 6) printString); yourself)
            ]
        ]]
    ].
    node := [:object :scope :isRoot |
        | id kind alias element name literal type |
        id := object iD printString. kind := object class name asString.
        alias := nil. element := nil. name := ''. literal := ''. type := ''.
        (object respondsTo: #aliasName) ifTrue: [alias := object aliasName].
        alias ifNotNil: [element := elements at: alias ifAbsent: [nil]].
        element ifNotNil: [name := element label. type := element class name asString].
        kind = 'SGLiteralGODB' ifTrue: [literal := object literalString].
        nodes := nodes + 1.
        visit value: (OrderedCollection new add: '#GRAPH_NODE'; add: scope; add: id; add: kind; add: (aliasText value: alias); add: name; add: literal; add: type; yourself).
        ((kind = 'SGLiteralGODB') or: [(kind = 'SGDataGODB') or: [isRoot and: [kind = 'SGCodeGODB' and: [alias isNil]]]])
            ifFalse: [issue value: scope value: id value: 'Unsupported graphical node class or call: ', kind].
        (kind = 'SGDataGODB' and: [element isNil]) ifTrue: [issue value: scope value: id value: 'Unresolved data element alias'].
        kind = 'SGLiteralGODB' ifTrue: [
            | connectors | connectors := object instVarNamed: 'connectors'.
            connectors size = 1 ifFalse: [issue value: scope value: id value: 'Unexpected literal port layout'].
            connectors do: [:port | ports := ports + 1.
                visit value: (OrderedCollection new add: '#GRAPH_PORT'; add: scope; add: id; add: port printString; add: 'return'; add: 'literal'; add: 'return'; add: ''; yourself)]
        ].
        (object respondsTo: #returnPorts) ifTrue: [readPorts valueWithArguments: (Array with: object with: scope with: id with: #returnPorts with: 'return')].
        (object respondsTo: #selectorPorts) ifTrue: [readPorts valueWithArguments: (Array with: object with: scope with: id with: #selectorPorts with: 'selector')].
        (object respondsTo: #sequenceDescription) ifTrue: [
            object sequenceDescription ifNotNil: [:description |
                description size = 1 ifFalse: [issue value: scope value: id value: 'Unexpected sequence description layout'].
                description first keysAndValuesDo: [:operation :info | | binding |
                    info size = 6 ifFalse: [self error: 'Unexpected graphical sequence storage layout'].
                    binding := info at: 5.
                    (binding isNil or: [binding size ~= 3]) ifTrue: [issue value: scope value: id value: 'Unresolved sequence method'] ifFalse: [
                        sequences := sequences + 1.
                        visit value: (OrderedCollection new add: '#GRAPH_SEQUENCE'; add: scope; add: id; add: info first printString;
                            add: (aliasText value: binding first); add: (binding at: 2) printString;
                            add: (aliasText value: operation); add: ((binding at: 3) printString, '/', (info at: 6) printString); yourself)
                    ]
                ]
            ]
        ]
    ].
    walk := [:tree :scope :depth |
        depth > 128 ifTrue: [self error: 'Graph hierarchy depth exceeded'].
        (seen includes: tree) ifTrue: [self error: 'Repeated graphical storage object'].
        seen add: tree.
        tree isHierarchyDB ifFalse: [self error: 'Graph root is not a storage hierarchy'].
        node value: tree graphicBlock value: scope value: true.
        tree blocks do: [:child |
            child isHierarchyDB ifTrue: [
                issue value: scope value: child graphicBlock iD printString value: 'Nested graphical hierarchy semantics are not yet supported'.
                walk value: child value: scope, '/h', child graphicBlock iD printString value: depth + 1
            ] ifFalse: [node value: child value: scope value: false]
        ].
        tree connections doWithIndex: [:connection :index |
            edges := edges + 1.
            visit value: (OrderedCollection new add: '#GRAPH_EDGE'; add: scope; add: index printString;
                add: connection startConnector printString; add: connection endConnector printString;
                add: connection startBlock printString; add: connection endBlock printString; add: connection class name asString; yourself)
        ].
        tree others do: [:other | issue value: scope value: '' value: 'Additional graphical object not decoded: ', other class name asString]
    ].
    walk value: root value: 'root' value: 0.
    graphComponent methods do: [:method | method owner == spec ifTrue: [
        methods := methods + 1.
        visit value: (OrderedCollection new add: '#GRAPH_METHOD'; add: (encodeAlias value: method aliasName); add: method methodName; add: method isProcess printString; add: ''; add: ''; add: ''; add: ''; yourself)
    ]].
    visit value: (OrderedCollection new add: '#GRAPH_SPEC'; add: spec specificationName; add: nodes printString; add: ports printString;
        add: sequences printString; add: edges printString; add: methods printString; add: '1'; yourself)
]
