"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20084330; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
abstractSpecialCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008445c; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200848e8; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084af8; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084e10; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085044; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085338; bytecode file offset 0x981ca4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
abstractIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) checkType: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20096140; bytecode file offset 0x992bec"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) limitOverflowExpr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fe1e4; bytecode file offset 0x9faae0"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2010d390; bytecode file offset 0xa09c54"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
containsWrapAroundWithNonTypeInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    containsWrapAroundWithNonTypeInterval := false.
    enabled := true.
    recoveredValue0 := recoveredArg1.
    (self) anyExpr: (recoveredValue0).
    recoveredValue1 := containsWrapAroundWithNonTypeInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201308a0; bytecode file offset 0xa2d18c"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := containsWrapAroundWithNonTypeInterval.
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

"ASDBase.ic method 0x20185750; bytecode file offset 0xa82044"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2030010c; bytecode file offset 0xbfc9e4"
!SGIlContainsWrapAroundWithNonTypeIntervalVisitor methodsFor: 'recovered'!
checkType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgWrapAroundIntegerType.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgDiscreteType.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) extraImplInfo.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) limiterUsed.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) getInterval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            containsWrapAroundWithNonTypeInterval := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

