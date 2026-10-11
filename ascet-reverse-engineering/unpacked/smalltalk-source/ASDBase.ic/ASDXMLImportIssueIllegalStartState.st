"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006cf88; bytecode file offset 0x969c04"
!ASDXMLImportIssueIllegalStartState methodsFor: 'recovered'!
isSelectable
    | recoveredValue0 |
    recoveredValue0 := selectable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d3dd4; bytecode file offset 0x9d0690"
!ASDXMLImportIssueIllegalStartState methodsFor: 'recovered'!
autofixText
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Rebuild State Machine'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166fec; bytecode file offset 0xa638b4"
!ASDXMLImportIssueIllegalStartState methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'recreateGraphicSpecificationSM'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) protoItem.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) thing.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addPostImportFix: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            done := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20235e54; bytecode file offset 0xb32728"
!ASDXMLImportIssueIllegalStartState methodsFor: 'recovered'!
initOn: recoveredArg1 start: recoveredArg2 zero: recoveredArg3 fix: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) stateInfo.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredValue3 := ('Start state "') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('" requires graphic ID to be 0').
    recoveredValue5 := recoveredArg1.
    super initOn: (recoveredValue4) item: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    start := recoveredValue6.
    recoveredValue7 := recoveredArg3.
    zero := recoveredValue7.
    recoveredValue8 := recoveredArg4.
    selectable := recoveredValue8.
    issueType := 'information'.
    ^self
! !

