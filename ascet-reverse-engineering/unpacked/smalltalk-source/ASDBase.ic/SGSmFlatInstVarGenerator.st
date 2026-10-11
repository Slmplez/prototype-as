"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004298; bytecode file offset 0x90206c"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
acceptBdlTransition: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004e80; bytecode file offset 0x90206c"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
acceptTopHierarchyState: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004fb0; bytecode file offset 0x90206c"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
acceptBdlJunction: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200848a0; bytecode file offset 0x981ca4"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
acceptBdlState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addInstVar: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20166584; bytecode file offset 0xa62e48"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
addInstVarsOfSM: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := (recoveredValue1) statesOnly.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) acceptBdlVisitor: (self).
    recoveredBlock7Value1
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202eb444; bytecode file offset 0xbe7d28"
!SGSmFlatInstVarGenerator methodsFor: 'recovered'!
acceptBdlHierarchyState: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHistory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarsOfClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := SGLmGeneratedData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForSmHistory: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isHistory.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addInstVar: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) statesOnly.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) acceptBdlVisitor: (self).
    recoveredBlock37Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

