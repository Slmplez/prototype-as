[:dbAPI :mode :searchInput |
    | stage |
    stage := 'begin'.
    dbAPI handleExceptionsIn: [
        | out field row keys count codeCount scanArchive oid path implementation variant member memberName language emit component documents characters hex containers manager recordReference encodedFields matchCache started directoryMs scanStarted sourceIds needles stateReader smCount diagramCount stateCount transitionCount bindingCount maxDepth bindingAlias graphReader filters accepts acceptsSource targetOids needle bdeReader includeDiagrams bdeMatches bdeAudit acceptsDiagram specVisibility publicSpecs privateSpecs loadedDiagrams specifications bdeReadMs totalBdeCopyMs totalBdeLoadMs totalBdeWalkMs containerReader topologyReader includeTopology |
        out := WriteStream on: (String new: 65536).
        encodedFields := Dictionary new. matchCache := Dictionary new. sourceIds := Dictionary new.
        stateReader := @@STATE_READER@@.
        topologyReader := @@STATE_TOPOLOGY_READER@@.
        graphReader := @@GRAPH_READER@@.
        bdeReader := @@BDE_READER@@.
        bdeAudit := @@BDE_AUDIT@@.
        containerReader := @@CONTAINER_SOURCE_READER@@.
        smCount := 0. diagramCount := 0. stateCount := 0. transitionCount := 0. bindingCount := 0. maxDepth := 0.
        bindingAlias := nil.
        filters := Dictionary new.
        [ | stream line | stream := ReadStream on: searchInput.
          [line := stream upTo: (Character value: 10). line isEmpty not] whileTrue: [ | values |
                  values := filters at: line first ifAbsentPut: [Set new].
                  values add: (line copyFrom: 2 to: line size)
          ].
          needle := stream upToEnd
        ] value.
        includeDiagrams := filters includesKey: $G. loadedDiagrams := 0. bdeReadMs := 0.
        includeTopology := filters includesKey: $T.
        totalBdeCopyMs := 0. totalBdeLoadMs := 0. totalBdeWalkMs := 0.
        acceptsDiagram := [:spec |
            | pair inPublic inPrivate valid nameOK predicate candidate query |
            pair := oid, '/', spec sourceKey globalIdString.
            inPublic := publicSpecs includes: spec. inPrivate := privateSpecs includes: spec.
            specVisibility := inPublic = inPrivate ifTrue: ['unknown'] ifFalse: [inPublic ifTrue: ['public'] ifFalse: ['private']].
            valid := (accepts value: $D value: pair) and: [accepts value: $R value: pair].
            valid ifTrue: [
                specVisibility = 'unknown' ifTrue: [
                    row value: (OrderedCollection new add: '#ERROR'; add: oid; add: path; add: spec sourceKey globalIdString; add: ''; add: ''; add: ''; add: ''; add: 'Diagram visibility'; add: 'DIAGRAM_VISIBILITY_UNKNOWN: ambiguous Specification membership'; yourself)
                ].
                valid := accepts value: $U value: specVisibility
            ].
            nameOK := true.
            (filters at: $Q ifAbsent: [nil]) ifNotNil: [:predicates |
                predicates do: [:p | predicate := p]. candidate := spec specificationName. query := predicate copyFrom: 3 to: predicate size.
                "Only fold ASCII natively; TS applies authoritative Unicode name matching."
                ((predicate at: 2) = $s or: [((candidate, query) anySatisfy: [:ch | ch asInteger >= 128]) not]) ifTrue: [
                    (predicate at: 2) = $i ifTrue: [candidate := candidate asLowercase. query := query asLowercase].
                    nameOK := predicate first = $e ifTrue: [candidate = query] ifFalse: [candidate includesSubstring: query]
                ]
            ].
            valid and: [nameOK]
        ].
        accepts := [:tag :value | (filters at: tag ifAbsent: [nil])
            ifNil: [true] ifNotNil: [:values | values includes: value]].
        acceptsSource := [:kind |
            ((accepts value: $K value: kind) or: [includeTopology and: [(kind includesSubstring: 'state_') or: [kind includesSubstring: 'transition_']]]) and: [
            (accepts value: $I value: implementation) and: [
            (accepts value: $V value: variant) and: [
            (accepts value: $M value: member) and: [accepts value: $N value: memberName]]]]
        ].
        needles := OrderedCollection new.
        mode = 'search_many' ifTrue: [
            | stream |
            stream := ReadStream on: needle.
            [stream atEnd] whileFalse: [needles add: (stream upTo: (Character value: 10))]
        ].
        bdeMatches := [:value |
            matchCache at: value ifAbsentPut: [
                mode = 'search_many' ifTrue: [
                    | lower | lower := value asLowercase.
                    needles anySatisfy: [:query | lower includesSubstring: query]]
                    ifFalse: [(mode = 'search_sensitive' ifTrue: [value] ifFalse: [value asLowercase]) includesSubstring: needle]
            ]
        ].
        field := [:value |
            | text encoded |
            text := value ifNil: [''].
            encoded := encodedFields at: text ifAbsent: [
                | stream result |
                (text anySatisfy: [:ch | ch asInteger > 126]) ifTrue: [
                stream := WriteStream on: (String new: text size).
                text do: [:ch |
                | n |
                n := ch asInteger.
                ((n > 126) or: [(n = 37) or: [n = 124]])
                    ifTrue: [stream nextPut: $%; nextPutAll: n printString; nextPut: $;]
                    ifFalse: [stream nextPut: ch]
                ]. result := stream contents
                ] ifFalse: [
                    "VM substring replacement avoids per-character stream writes for ASCII code."
                    result := (text copyReplaceAll: '%' with: '%37;') copyReplaceAll: '|' with: '%124;'
                ]. encodedFields at: text put: result. result
            ]. out nextPutAll: encoded; nextPut: $|
        ].
        row := [:values | values do: [:value | field value: value]].
        includeDiagrams ifTrue: [row value: #('#BDE_ENABLED' '1' '' '' '' '' '' '' '' '')].
        row value: #('#DIAGRAM_SCOPE' '1' '' '' '' '' '' '' '' '').
        includeTopology ifTrue: [row value: #('#STATE_TOPOLOGY' '1' '' '' '' '' '' '' '' '')].
        hex := [:bytes |
            | stream digits |
            stream := WriteStream on: (String new: bytes size * 2). digits := '0123456789abcdef'.
            bytes do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. stream contents
        ].
        manager := SGBrowseManager new initialize.
        recordReference := [:results :kind |
            results do: [:result |
                implementation := result implementation isNil ifTrue: [''] ifFalse: [result implementation dbObject globalIdString].
                variant := result codeContainer variantKey printString.
                language := variant = 'ASDL' ifTrue: ['esdl'] ifFalse: ['c'].
                member := ''. memberName := ''.
                kind = 'method' ifTrue: [member := hex value: result method aliasName. memberName := result method methodName].
                row value: (OrderedCollection new add: '#REF_', kind; add: oid; add: path; add: implementation; add: variant; add: member; add: memberName; add: language; add: result codeLine; add: result selectionBegin printString; yourself)
            ]
        ].
        documents := 0. characters := 0. containers := 0.
        oid := ''. path := ''. implementation := ''. variant := ''. member := ''. memberName := ''. language := ''.
        emit := [:kind :source |
            ((acceptsSource value: kind) and: [source notNil]) ifTrue: [
                source isString ifFalse: [dbAPI error: 'Source is not text'].
                documents := documents + 1. characters := characters + source size.
                ((needle isEmpty or: [mode = 'read_component' or: [mode = 'read_state_machine']]) or: [matchCache at: source ifAbsent: [
                    | found |
                    found := mode = 'search_many' ifTrue: [
                        | lower |
                        lower := source asLowercase.
                        needles anySatisfy: [:query | lower includesSubstring: query]
                    ] ifFalse: [
                        (mode = 'search_sensitive' ifTrue: [source] ifFalse: [source asLowercase]) includesSubstring: needle
                    ].
                    matchCache at: source put: found. found
                ]]) ifTrue: [
                    | sourceId |
                    sourceId := sourceIds at: source ifAbsent: [
                        | newId |
                        newId := (sourceIds size + 1) printString.
                        sourceIds at: source put: newId.
                        row value: (OrderedCollection new add: '#SOURCE'; add: newId; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; add: source; add: ''; yourself).
                        newId
                    ].
                    row value: (OrderedCollection new add: kind; add: oid; add: path; add: implementation; add: variant; add: member; add: memberName; add: language; add: sourceId; add: '#SOURCE_REF'; yourself)
                    . bindingAlias ifNotNil: [
                        row value: (OrderedCollection new add: '#BINDING_', kind; add: oid; add: path; add: implementation; add: variant; add: member; add: memberName; add: language; add: (hex value: bindingAlias); add: ''; yourself)
                    ]
                ]
            ]
        ].
        scanArchive := [:archive |
            ((filters includesKey: $D) not and: [(filters includesKey: $U) not and: [#('method' 'process' 'header' 'external_c' 'external_h') anySatisfy: [:kind | accepts value: $K value: kind]]]) ifTrue: [
            archive external do: [:entry |
                | cc |
                variant := entry key printString.
                ((accepts value: $V value: variant) and: [accepts value: $I value: implementation]) ifTrue: [
                stage := 'container ', path, ' ', variant.
                cc := nil.
                containerReader ifNotNil: [cc := containerReader value: dbAPI value: entry value value: component methods].
                cc ifNil: [cc := entry value getObjectOrUndefined].
                cc isRBDBUndefinedObject ifTrue: [dbAPI error: 'Undefined code container'].
                containers := containers + 1.
                language := variant = 'ASDL' ifTrue: ['esdl'] ifFalse: ['c'].
                component methods do: [:method |
                    member := hex value: method aliasName.
                    memberName := method methodName.
                    stage := 'method ', path, '/', memberName.
                    "procSourceAt: returns an empty string even for an absent key. A state-machine
                    bundle must not mistake this placeholder for a stored graphical/trigger body."
                    ((acceptsSource value: (method isProcess ifTrue: ['process'] ifFalse: ['method'])) and: [component isSmClass not or: [(cc cProcedureSources at: method aliasName ifAbsent: [nil]) notNil]]) ifTrue: [
                        emit value: (method isProcess ifTrue: ['process'] ifFalse: ['method']) value: (cc procSourceAt: method aliasName)
                    ]
                ].
                component isCClass ifTrue: [
                    member := ''. memberName := ''.
                    stage := 'header ', path.
                    (acceptsSource value: 'header') ifTrue: [(cc instVarNamed: 'localHSource') ifNotNil: [emit value: 'header' value: cc localHSource]].
                    stage := 'external_c ', path.
                    (acceptsSource value: 'external_c') ifTrue: [emit value: 'external_c' value: cc cSource value].
                    stage := 'external_h ', path.
                    (acceptsSource value: 'external_h') ifTrue: [emit value: 'external_h' value: cc hSource value]
                ]
                ]
            ]
            ]
        ].
        stage := 'directory'.
        started := Time millisecondClockValue.
        targetOids := filters at: $C ifAbsent: [nil].
        (filters at: $D ifAbsent: [nil]) ifNotNil: [:pairs |
            | owners | owners := (pairs collect: [:pair | pair copyFrom: 1 to: 29]) asSet.
            targetOids := targetOids isNil ifTrue: [owners] ifFalse: [targetOids select: [:target | owners includes: target]]
        ].
        (mode = 'read_component' or: [mode = 'read_state_machine']) ifTrue: [targetOids := Array with: needle].
        keys := targetOids isNil
            ifTrue: [
                | directoryQuery queries modifiedByInterface result |
                directoryQuery := dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames.
                (directoryQuery class == DBQueries and: [
                    queries := directoryQuery instVarNamed: 'oredQueries'.
                    queries allSatisfy: [:query | query class == DBSetExactQuery]
                ]) ifTrue: [
                    "The original queries each rescan the same modified-object table.
                    Share only this request's input, using a copy for destructive filters."
                    modifiedByInterface := IdentityDictionary new. result := Set new.
                    queries do: [:query |
                        | values modified |
                        values := query searchDatabase.
                        modified := modifiedByInterface at: query dbInterface ifAbsentPut: [query dbInterface getModifiedObjects].
                        values addAll: ((query searchIn: modified copy) select: [:object | object class == DBObject]).
                        values := query dropMarkAsDeleted: values.
                        result addAll: (query dropNotMatchingFrom: values)
                    ]. result
                ] ifFalse: [directoryQuery search]
            ]
            ifFalse: [targetOids collect: [:targetOid | dbAPI dbInterface getNewDBProxyFromAlphaNumString: targetOid]].
        directoryMs := Time millisecondClockValue - started.
        scanStarted := Time millisecondClockValue.
        count := 0. codeCount := 0.
        keys do: [:key |
            dbAPI handleExceptionsIn: [
                | api |
                stage := 'load'. oid := key printString. path := ''.
                component := key getObjectIfUndefined: [:unused | nil].
                (component isNil and: [targetOids isNil]) ifTrue: [dbAPI error: 'Component unavailable'].
                (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
                    count := count + 1.
                    api := component getAPIHandle.
                    oid := api getOID. path := api getFolderPathName.
                    publicSpecs := IdentitySet new. publicSpecs addAll: component publicSpecifications.
                    privateSpecs := IdentitySet new. privateSpecs addAll: component privateSpecifications.
                    specifications := OrderedCollection new. specifications addAll: publicSpecs.
                    privateSpecs do: [:spec | (publicSpecs includes: spec) ifFalse: [specifications add: spec]].
                    implementation := ''. variant := ''. member := ''. memberName := ''.
                    language := component class name asString.
                    row value: (OrderedCollection new add: '#COMPONENT'; add: oid; add: path; add: ''; add: ''; add: ''; add: ''; add: language; add: ''; add: ''; yourself).
                    (component isCClass or: [component isASDLClass]) ifTrue: [
                        codeCount := codeCount + 1.
                        language := component isCClass ifTrue: ['c'] ifFalse: ['esdl'].
                        (mode = 'catalog' or: [mode = 'read_state_machine']) ifFalse: [
                            mode = 'reference' ifTrue: [
                                recordReference value: (manager findNextInMethodsOf: component string: needle) value: 'method'.
                                component isCClass ifTrue: [
                                    recordReference value: (manager findNextInHeaderOf: component string: needle) value: 'header'.
                                    recordReference value: (manager findNextInExternalSourceOf: component string: needle hCode: false) value: 'external_c'.
                                    recordReference value: (manager findNextInExternalSourceOf: component string: needle hCode: true) value: 'external_h'
                                ]
                            ] ifFalse: [
                            scanArchive value: component code.
                            component handwrittenImplCode associationsDo: [:impl |
                                implementation := impl key globalIdString.
                                scanArchive value: impl value
                            ]
                            ]
                        ]
                    ].
                    (includeDiagrams and: [(mode = 'catalog' or: [mode = 'reference']) not and: [
                        (accepts value: $K value: 'diagram') and: [(accepts value: $I value: '') and: [accepts value: $V value: 'BD']]]]) ifTrue: [
                        specifications do: [:spec |
                            (spec isBdSpecification and: [(acceptsDiagram value: spec) and: [
                                ((accepts value: $M value: spec sourceKey globalIdString) or: [component methods anySatisfy: [:method | method owner == spec and: [accepts value: $M value: (hex value: method aliasName)]]]) and: [
                                (accepts value: $N value: spec specificationName) or: [component methods anySatisfy: [:method | method owner == spec and: [accepts value: $N value: method methodName]]]]]]) ifTrue: [
                                | graphRecords sourceId diagramAPI graphMatches readDiagram selectDiagram diagramStarted diagramPhases |
                                stage := 'BDE diagram ', path, '/', spec specificationName.
                                sourceId := spec sourceKey globalIdString. graphRecords := OrderedCollection new.
                                dbAPI handleExceptionsIn: [
                                    "A missing saved source must not be initialized by a graphical getter."
                                    spec specSourceInternalOrNil isNil ifTrue: [dbAPI error: 'BDE_SOURCE_UNDEFINED: no saved Diagram source'].
                                    selectDiagram := [((needle isEmpty or: [mode = 'read_component' or: [mode = 'read_state_machine']]) or: [
                                        graphRecords anySatisfy: [:record |
                                            | tag | tag := record first.
                                            (tag = '#BDE_NODE' and: [(bdeMatches value: (record at: 5)) or: [bdeMatches value: (record at: 8)]]) or: [
                                            (tag = '#BDE_PIN' and: [bdeMatches value: (record at: 5)]) or: [
                                            (tag = '#BDE_SEQUENCE' and: [bdeMatches value: (record at: 5)]) or: [
                                            ((tag = '#BDE_SCOPE' or: [tag = '#BDE_COMMENT']) and: [bdeMatches value: (record at: 3)])]]]
                                        ]
                                    ]) or: [graphRecords anySatisfy: [:record | record first = '#BDE_ISSUE']]].
                                    readDiagram := [diagramStarted := Time millisecondClockValue. diagramAPI := spec getAPIHandle.
                                    diagramAPI specification == spec ifFalse: [dbAPI error: 'BDE_SPECIFICATION_MISMATCH'].
                                    loadedDiagrams := loadedDiagrams + 1.
                                    diagramPhases := bdeReader valueWithArguments: (Array with: diagramAPI with: component with: spec with: hex with: [:record | record first = '#BDE_DIAGRAM' ifTrue: [record at: 3 put: specVisibility]. graphRecords add: record] with: selectDiagram with: spec specSourceInternalOrNil).
                                    totalBdeCopyMs := totalBdeCopyMs + (diagramPhases at: 1). totalBdeLoadMs := totalBdeLoadMs + (diagramPhases at: 2). totalBdeWalkMs := totalBdeWalkMs + (diagramPhases at: 3).
                                    bdeReadMs := bdeReadMs + (Time millisecondClockValue - diagramStarted)].
                                    ((needle isEmpty or: [(#('search_many' 'search_sensitive' 'search_insensitive') includes: mode) not]) or: [
                                        (filters includesKey: $P) or: [
                                        ((needle includes: $/) or: [bdeMatches value: spec specificationName]) or: [
                                        dbAPI handleExceptionsIn: [@@BDE_PREFILTER@@ value: spec specSourceInternalOrNil value: component value: bdeMatches]
                                            ifFail: [:prefilterError | (filters includesKey: $A) ifTrue: [dbAPI error: 'PREFILTER_AUDIT_FAILED ', prefilterError printString, ' ', prefilterError arguments printString]. true]]]]) ifTrue: [
                                        (filters includesKey: $A) ifTrue: [bdeAudit value: spec value: readDiagram value: dbAPI] ifFalse: [readDiagram value]
                                    ].
                                    graphMatches := selectDiagram value.
                                    graphMatches ifTrue: [
                                        graphRecords add: (Array with: '#BDE_END' with: graphRecords size printString with: '' with: '' with: '' with: '' with: '' with: '').
                                        row value: (OrderedCollection new add: '#BDE_CONTEXT'; add: oid; add: sourceId; add: '1'; add: ''; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
                                        graphRecords do: [:record |
                                        | values | values := OrderedCollection new add: record first; add: ''; add: ''; yourself.
                                        2 to: record size do: [:index | values add: (record at: index)]. row value: values
                                    ]]
                                ] ifFail: [:graphError |
                                    row value: (OrderedCollection new add: '#ERROR'; add: oid; add: path; add: sourceId; add: ''; add: ''; add: ''; add: ''; add: stage; add: (graphError printString, ' ', graphError arguments printString); yourself)
                                ]
                            ]
                        ]
                    ].
                    component isSmClass ifTrue: [
                        smCount := smCount + 1.
                        mode = 'read_state_machine' ifTrue: [
                            row value: (OrderedCollection new add: '#STATE_COMPONENT'; add: oid; add: path; add: ''; add: ''; add: ''; add: ''; add: ''; add: component methods size printString; add: '1'; yourself).
                            component methods do: [:method |
                                | owner category ownerSource |
                                stage := 'state method inventory ', method methodName.
                                owner := method owner. ownerSource := ''.
                                category := method apiClass = EtasAPITrigger ifTrue: ['trigger'] ifFalse: [
                                    owner isBdSpecification ifTrue: ['graphical'] ifFalse: [
                                        (owner isASDLSpecification or: [owner isCCodeSpecification]) ifTrue: ['text'] ifFalse: ['unknown']
                                    ]
                                ].
                                (owner respondsTo: #sourceKey) ifTrue: [ownerSource := owner sourceKey globalIdString].
                                row value: (OrderedCollection new add: '#STATE_METHOD'; add: oid; add: owner specificationName;
                                    add: owner class name asString; add: ownerSource; add: (hex value: method aliasName);
                                    add: method methodName; add: method apiClass name asString; add: category; add: method isProcess printString; yourself)
                            ].
                        ].
                        ((mode = 'catalog' or: [mode = 'reference']) not and: [
                            mode = 'read_state_machine' or: [(component isCClass or: [component isASDLClass]) not]]) ifTrue: [
                            stage := 'state text archives ', path.
                            scanArchive value: component code.
                            component handwrittenImplCode associationsDo: [:impl |
                                implementation := impl key globalIdString.
                                scanArchive value: impl value
                            ]
                        ].
                        (mode = 'catalog' or: [mode = 'reference']) ifFalse: [
                            specifications do: [:spec |
                                (includeDiagrams not and: [spec isBdSpecification and: [acceptsDiagram value: spec]]) ifTrue: [
                                (spec isBdSpecification and: [(accepts value: $K value: 'graphical_method') and: [(accepts value: $I value: '') and: [accepts value: $V value: 'BD']]]) ifTrue: [
                                    | sourceId graphRecords |
                                    stage := 'graphical source ', path, '/', spec specificationName.
                                    sourceId := spec sourceKey globalIdString.
                                    "Publish each graph atomically. A failed graph must not corrupt other sources."
                                    graphRecords := OrderedCollection new.
                                    dbAPI handleExceptionsIn: [
                                        graphReader valueWithArguments: (Array with: spec specSourceInternalOrNil with: component with: spec with: hex with: [:record | graphRecords add: record]).
                                        graphRecords do: [:record |
                                            | values | values := OrderedCollection new add: record first; add: oid; add: sourceId; yourself.
                                            2 to: record size do: [:index | values add: (record at: index)].
                                            row value: values
                                        ]
                                    ] ifFail: [:graphError |
                                        row value: (OrderedCollection new add: '#ERROR'; add: oid; add: path; add: sourceId; add: ''; add: ''; add: ''; add: ''; add: stage; add: (graphError printString, ' ', graphError arguments printString); yourself)
                                    ]
                                ].
                                ].
                                (spec isSmSpecification and: [(acceptsDiagram value: spec) and: [(accepts value: $I value: '') and: [(accepts value: $V value: 'ASDL') and: [
                                    includeTopology or: [(filters at: $K ifAbsent: [nil]) ifNil: [true] ifNotNil: [:kinds | kinds anySatisfy: [:kind | (kind includesSubstring: 'state_') or: [kind includesSubstring: 'transition_']]]]
                                ]]]]) ifTrue: [
                                    | sourceId counts |
                                    stage := 'state machine ', path, '/', spec specificationName.
                                    sourceId := spec sourceKey globalIdString.
                                    dbAPI handleExceptionsIn: [
                                    diagramCount := diagramCount + 1.
                                    implementation := ''. variant := 'ASDL'.
                                    row value: (OrderedCollection new add: '#STATE_DIAGRAM'; add: oid; add: sourceId; add: spec specificationName; add: specVisibility; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
                                    counts := stateReader valueWithArguments: (Array with: spec specSourceInternalOrNil with: sourceId with: spec specificationName with: component methods with: [:doc |
                                        member := doc at: 2. memberName := doc at: 3. language := doc at: 4. bindingAlias := doc at: 6.
                                        stage := 'state source ', path, '/', memberName, '/', (doc at: 1).
                                        emit value: (doc at: 1) value: (doc at: 5).
                                        bindingAlias := nil
                                    ]).
                                    includeTopology ifTrue: [
                                        | topologyRecords |
                                        topologyRecords := OrderedCollection new.
                                        topologyReader valueWithArguments: (Array with: spec specSourceInternalOrNil with: sourceId with: spec specificationName with: [:record | topologyRecords add: record]).
                                        topologyRecords do: [:record |
                                            | values | values := OrderedCollection new add: record first; add: oid; add: sourceId; yourself.
                                            2 to: record size do: [:index | values add: (record at: index)]. row value: values
                                        ]
                                    ].
                                    stateCount := stateCount + (counts at: 1). transitionCount := transitionCount + (counts at: 2).
                                    bindingCount := bindingCount + (counts at: 3). maxDepth := maxDepth max: (counts at: 4)
                                    ] ifFail: [:stateError |
                                        bindingAlias := nil.
                                        row value: (OrderedCollection new add: '#ERROR'; add: oid; add: path; add: sourceId; add: ''; add: ''; add: ''; add: ''; add: stage; add: (stateError printString, ' ', stateError arguments printString); yourself)
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ] ifFail: [:error |
                bindingAlias := nil.
                row value: (OrderedCollection new add: '#ERROR'; add: oid; add: path; add: ''; add: ''; add: ''; add: ''; add: ''; add: stage; add: (error printString, ' ', error arguments printString); yourself)
            ]
        ].
        row value: (OrderedCollection new add: '#DIAGRAM_READ_STATS'; add: loadedDiagrams printString; add: bdeReadMs printString; add: totalBdeCopyMs printString; add: totalBdeLoadMs printString; add: totalBdeWalkMs printString; add: ''; add: ''; add: ''; add: ''; yourself).
        row value: (OrderedCollection new add: '#STATE_STATS'; add: smCount printString; add: diagramCount printString; add: stateCount printString; add: transitionCount printString; add: bindingCount printString; add: maxDepth printString; add: ''; add: ''; add: ''; yourself).
        row value: (OrderedCollection new add: '#STATS'; add: keys size printString; add: count printString; add: codeCount printString; add: documents printString; add: characters printString; add: containers printString; add: directoryMs printString; add: (Time millisecondClockValue - scanStarted) printString; add: out position printString; yourself).
        out contents
    ] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]
]
