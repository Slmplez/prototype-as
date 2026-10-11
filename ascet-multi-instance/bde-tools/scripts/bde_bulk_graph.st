[:diagram |
    diagram handleExceptionsIn: [
    | kinds graph pin encode out result |
    kinds := Dictionary new.
    kinds at: 'EtasAPIBlockDiagramFunctionalElement' put: 'BlockDiagramFunctionalElement';
        at: 'EtasAPIBlockDiagramHierarchy' put: 'BlockDiagramHierarchy';
        at: 'EtasAPIBlockDiagramHierarchyPin' put: 'BlockDiagramHierarchyPin';
        at: 'EtasAPIBlockDiagramOperator' put: 'BlockDiagramOperator';
        at: 'EtasAPIBlockDiagramControl' put: 'BlockDiagramControlElement';
        at: 'EtasAPIBlockDiagramLiteral' put: 'BlockDiagramLiteral'.
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
    graph := [:d |
        | nodes edges cache |
        nodes := OrderedCollection new. edges := OrderedCollection new. cache := Dictionary new.
        d getAllDiagramElements do: [:n |
            | row kind |
            kind := kinds at: n class name asString.
            row := Dictionary new.
            row at: 'id' put: n identifier; at: 'kind' put: kind;
                at: 'pins' put: (n getAllPins collect: [:p | pin value: p value: cache]).
            kind = 'BlockDiagramOperator' ifTrue: [row at: 'operator' put: n getType].
            kind = 'BlockDiagramControlElement' ifTrue: [row at: 'control' put: n getType].
            kind = 'BlockDiagramLiteral' ifTrue: [row at: 'literal' put: n getLiteralText].
            kind = 'BlockDiagramHierarchy' ifTrue: [row at: 'name' put: n getName; at: 'contents' put: (graph value: n)].
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
    result := graph value: diagram.
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
            first := true. out nextPut: ${.
            x keysAndValuesDo: [:key :value |
                first ifFalse: [out nextPut: $,]. first := false.
                out nextPut: $"; nextPutAll: key; nextPutAll: '":'. encode value: value
            ]. out nextPut: $}
        ] ifFalse: [
        x isCollection ifTrue: [
            | first |
            first := true. out nextPut: $[.
            x do: [:value | first ifFalse: [out nextPut: $,]. first := false. encode value: value]. out nextPut: $]
        ] ifFalse: [out nextPutAll: 'INVALID_VALUE']]]]]
    ].
    encode value: result.
    out contents
    ] ifFail: [:error | 'BDE_BULK_ERROR: ', error printString]
]
