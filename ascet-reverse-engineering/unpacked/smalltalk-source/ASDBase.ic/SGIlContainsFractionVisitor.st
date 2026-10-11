"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c9ac; bytecode file offset 0x909658"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000ca1c; bytecode file offset 0x909658"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cb74; bytecode file offset 0x909658"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd5c; bytecode file offset 0x909658"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000d9b4; bytecode file offset 0x90a4b8"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003b3d8; bytecode file offset 0x938608"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
abstractSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractMethodCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082c2c; bytecode file offset 0x97f4e0"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
representableFractionConst: recoveredArg1
    | recoveredValue0 |
    containsFraction := true.
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20096160; bytecode file offset 0x992bec"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) limitOverflowExpr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fe220; bytecode file offset 0x9faae0"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) rightExpr.
    (self) visitNode: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010d378; bytecode file offset 0xa09c54"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
containsFraction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    containsFraction := false.
    enabled := true.
    recoveredValue0 := recoveredArg1.
    (self) anyExpr: (recoveredValue0).
    recoveredValue1 := containsFraction.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201308c0; bytecode file offset 0xa2d18c"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := containsFraction.
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

"ASDBase.ic method 0x20185780; bytecode file offset 0xa82044"
!SGIlContainsFractionVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) choices.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (self) visitNode: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) defaultExpr.
    (self) visitNode: (recoveredValue4).
    ^self
! !

