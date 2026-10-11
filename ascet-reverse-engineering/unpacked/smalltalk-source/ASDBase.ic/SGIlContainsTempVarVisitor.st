"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20082c04; bytecode file offset 0x97f4e0"
!SGIlContainsTempVarVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 |
    containsTempVar := true.
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082c14; bytecode file offset 0x97f4e0"
!SGIlContainsTempVarVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredValue0 |
    containsTempVar := true.
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082c24; bytecode file offset 0x97f4e0"
!SGIlContainsTempVarVisitor methodsFor: 'recovered'!
tempIdentifier: recoveredArg1
    | recoveredValue0 |
    containsTempVar := true.
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010d39c; bytecode file offset 0xa09c54"
!SGIlContainsTempVarVisitor methodsFor: 'recovered'!
containsTempVar: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    containsTempVar := false.
    enabled := true.
    recoveredValue0 := recoveredArg1.
    (self) anyExpr: (recoveredValue0).
    recoveredValue1 := containsTempVar.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20130890; bytecode file offset 0xa2d18c"
!SGIlContainsTempVarVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := containsTempVar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := super visitNode: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

