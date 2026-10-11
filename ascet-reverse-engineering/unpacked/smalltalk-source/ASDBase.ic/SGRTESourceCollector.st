"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069aa8; bytecode file offset 0x966bdc"
!SGRTESourceCollector methodsFor: 'recovered'!
toBeProcessedSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeProcessedSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083428; bytecode file offset 0x97fe64"
!SGRTESourceCollector methodsFor: 'recovered'!
ascetTypesIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('ASCET_TYPES').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200fa03c; bytecode file offset 0x9f6a08"
!SGRTESourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeProcessedSOsTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x201e4978; bytecode file offset 0xae1274"
!SGRTESourceCollector methodsFor: 'recovered'!
getAllRequiresSources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) toBeProcessedSOsTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280d6d04Arg1 :block280d6d04Arg2 | 
    | block280d6d04Value0 block280d6d04Value1 block280d6d04Value2 block280d6d04Value3 block280d6d04Value4 block280d6d04Value5 block280d6d04Value6 |
    block280d6d04Value0 := block280d6d04Arg1.
    block280d6d04Value1 := (block280d6d04Value0) makeNode.
    block280d6d04Value2 := (block280d6d04Value1) label.
    block280d6d04Value3 := block280d6d04Arg2.
    block280d6d04Value4 := (block280d6d04Value3) makeNode.
    block280d6d04Value5 := (block280d6d04Value4) label.
    block280d6d04Value6 := (block280d6d04Value2) > (block280d6d04Value5).
    block280d6d04Value6
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

