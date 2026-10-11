"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e16bc; bytecode file offset 0x9ddf80"
!ASDXMLImportIssueMissingConfig methodsFor: 'recovered'!
autofixText
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := config.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := ('Create default ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' for this element').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201d8934; bytecode file offset 0xad51f8"
!ASDXMLImportIssueMissingConfig methodsFor: 'recovered'!
repair: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := config.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGValueConfiguration.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := protoEl.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := config.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addDefaultData: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021e2c4; bytecode file offset 0xb1ab98"
!ASDXMLImportIssueMissingConfig methodsFor: 'recovered'!
initOn: recoveredArg1 element: recoveredArg2 config: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := ('Missing ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' for element ').
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) xmlName.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := recoveredArg1.
    super initOn: (recoveredValue6) item: (recoveredValue7).
    recoveredValue8 := recoveredArg3.
    config := recoveredValue8.
    recoveredValue9 := recoveredArg2.
    protoEl := recoveredValue9.
    issueType := 'warning'.
    ^self
! !

