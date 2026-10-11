"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c964; bytecode file offset 0x909658"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cb24; bytecode file offset 0x909658"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cbb4; bytecode file offset 0x909658"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cc44; bytecode file offset 0x909658"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cc8c; bytecode file offset 0x909658"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2003aa78; bytecode file offset 0x938608"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
abstractSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) abstractMethodCall: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20082c40; bytecode file offset 0x97f4f4"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 |
    containsNoOverflow := true.
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fe1a8; bytecode file offset 0x9faae0"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010d3b8; bytecode file offset 0xa09c70"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
containsNoOverflow: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    containsNoOverflow := false.
    enabled := true.
    recoveredValue0 := recoveredArg1.
    (self) anyExpr: (recoveredValue0).
    recoveredValue1 := containsNoOverflow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20130994; bytecode file offset 0xa2d250"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := containsNoOverflow.
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

"ASDBase.ic method 0x20185738; bytecode file offset 0xa82044"
!SGIlContainsNoOverflowVisitor methodsFor: 'recovered'!
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

