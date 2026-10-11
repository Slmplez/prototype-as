[:dbAPI :mode :needle |
    | stage |
    stage := 'begin'.
    dbAPI handleExceptionsIn: [
        | reader chosen fixtureMethods makeInfo makeState makeTree fixtureRoot left right transition docs counts capture expected failed emptyKey oldText changedInfo |
        reader := @@STATE_READER@@.
        chosen := ((dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search
            collect: [:key | key getObjectIfUndefined: [:unused | nil]])
            detect: [:c | c notNil and: [c isValidObject and: [c isContainer not and: [c isSmClass]]]].
        fixtureMethods := chosen methods.
        makeInfo := [:label :texts |
            | info |
            info := Array new: 8. info at: 1 put: label.
            1 to: 3 do: [:i | info at: i + 1 put: (Array with: ((texts at: i) isNil ifTrue: [nil] ifFalse: [SGSmSpecification esdlString]) with: nil with: (texts at: i))].
            info
        ].
        makeState := [:cls :id :info | | node | node := cls new initialize. node iD: id; stateInfo: info. node].
        makeTree := [:node | | tree | tree := SGGraphicsBlockDB new initialize. tree graphicBlock: node. tree].
        stage := 'fixtures'.
        fixtureRoot := makeTree value: SGCodeGODB new.
        left := makeTree value: (makeState value: SGHierarchyStateGODB value: 4 value: (makeInfo value: 'Same' value: #('' nil nil))).
        right := makeTree value: (makeState value: SGHierarchyStateGODB value: 5 value: (makeInfo value: 'Same' value: #('' nil nil))).
        (left graphicBlock stateInfo at: 3) at: 1 put: fixtureMethods first aliasName.
        (right graphicBlock stateInfo at: 3) at: 1 put: fixtureMethods first aliasName.
        left blocks: (Array with: (makeState value: SGStateGODB value: 7 value: (makeInfo value: 'Same' value: #('entryLeft' 'staticLeft' 'exitLeft')))).
        right blocks: (Array with: (makeState value: SGStateGODB value: 7 value: (makeInfo value: 'Same' value: #('entryRight' 'staticRight' 'exitRight')))).
        transition := SGBezierConnectionGODB new. transition id: 7; transitionInfo: (makeInfo value: '1' value: #('trigger' 'action' 'condition')).
        left connections: (Array with: transition). fixtureRoot blocks: (Array with: left with: right).
        docs := Dictionary new.
        capture := [:doc | | key | key := (doc at: 1), ':', (doc at: 2). (docs includesKey: key) ifTrue: [dbAPI error: 'Duplicate fixture identity']. docs at: key put: (doc at: 5)].
        stage := 'read fixtures'.
        counts := reader valueWithArguments: (Array with: fixtureRoot with: 'spec1' with: 'Main' with: fixtureMethods with: capture).
        counts = #(4 1 2 2) ifFalse: [dbAPI error: 'Fixture counts mismatch'].
        expected := Dictionary new.
        #('s4' 's5') do: [:branch |
            expected at: 'state_entry:spec1/', branch put: ''.
            expected at: 'state_static_binding:spec1/', branch put: fixtureMethods first methodName
        ].
        #('entry' 'static' 'exit') do: [:slot |
            expected at: 'state_', slot, ':spec1/s4/s7' put: slot, 'Left'.
            expected at: 'state_', slot, ':spec1/s5/s7' put: slot, 'Right'
        ].
        #('trigger' 'action' 'condition') do: [:slot | expected at: 'transition_', slot, ':spec1/s4/t7' put: slot].
        (docs size = expected size and: [(expected keys anySatisfy: [:key | (docs at: key ifAbsent: [nil]) ~= (expected at: key)]) not])
            ifFalse: [dbAPI error: 'Fixture contents mismatch'].
        stage := 'reread changed heap fixture'.
        changedInfo := left blocks first stateInfo.
        oldText := (changedInfo at: 2) at: 3.
        (changedInfo at: 2) at: 3 put: 'changed'.
        docs := Dictionary new.
        reader valueWithArguments: (Array with: fixtureRoot with: 'spec1' with: 'Main' with: fixtureMethods with: capture).
        (docs at: 'state_entry:spec1/s4/s7') = 'changed' ifFalse: [dbAPI error: 'Stale fixture source'].
        (changedInfo at: 2) at: 3 put: oldText.
        stage := 'reject invalid heap fixture'. failed := false.
        left blocks first iD: -1.
        dbAPI handleExceptionsIn: [reader valueWithArguments: (Array with: fixtureRoot with: 'spec1' with: 'Main' with: fixtureMethods with: [:doc | nil])]
            ifFail: [:error | failed := true].
        failed ifFalse: [dbAPI error: 'Missing identity accepted'].
        left blocks first iD: 7.
        failed := false. fixtureRoot blocks: (Array with: fixtureRoot).
        dbAPI handleExceptionsIn: [reader valueWithArguments: (Array with: fixtureRoot with: 'spec1' with: 'Main' with: fixtureMethods with: [:doc | nil])]
            ifFail: [:error | failed := true].
        failed ifFalse: [dbAPI error: 'Cycle accepted'].
        'PASS: nested duplicate names and local IDs; six source slots; empty and nil slots; method bindings; request reread; missing identity; cycle. All fixtures are detached heap objects.'
    ] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]
]
