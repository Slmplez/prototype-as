"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cfc4; bytecode file offset 0x909ab8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnNot: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d134; bytecode file offset 0x909ab8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
booleanConstant: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000f304; bytecode file offset 0x90bc70"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnAndLeft: recoveredArg1 right: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f37c; bytecode file offset 0x90bc70"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnOrLeft: recoveredArg1 right: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x2000f494; bytecode file offset 0x90bd90"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnAssignLeft: recoveredArg1 right: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200387a8; bytecode file offset 0x935c54"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractScalarConstant: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038bc8; bytecode file offset 0x935c54"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnComma: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) last.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c0fc; bytecode file offset 0x9389cc"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnMethodCall: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) interval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056ad0; bytecode file offset 0x9536dc"
!SGIlIntervalVisitor methodsFor: 'recovered'!
implCastAssignWithSelectableTypeExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c034; bytecode file offset 0x9692b0"
!SGIlIntervalVisitor methodsFor: 'recovered'!
loopInvariantFinished
    | recoveredValue0 |
    recoveredValue0 := loopInvariantFinished.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20085858; bytecode file offset 0x982140"
!SGIlIntervalVisitor methodsFor: 'recovered'!
floatServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) getImplType.
    recoveredValue3 := (recoveredValue2) getInterval.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200859b0; bytecode file offset 0x9822d4"
!SGIlIntervalVisitor methodsFor: 'recovered'!
absExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) abs.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20085a14; bytecode file offset 0x9822d4"
!SGIlIntervalVisitor methodsFor: 'recovered'!
negExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) negated.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200941d0; bytecode file offset 0x990abc"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assertIntervals: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) initState.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) visitNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20095ec4; bytecode file offset 0x992780"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assertIntervalFailureExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2009c930; bytecode file offset 0x999628"
!SGIlIntervalVisitor methodsFor: 'recovered'!
initState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlActualIntervalState.
    recoveredValue1 := (recoveredValue0) create.
    (self) state: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aa698; bytecode file offset 0x9a6f58"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assertIntervalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expr.
    (self) visitNode: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) interval.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200adbc8; bytecode file offset 0x9aa484"
!SGIlIntervalVisitor methodsFor: 'recovered'!
merge: recoveredArg1 and: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) mergeIntersect: (recoveredValue1).
    (self) state: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae17c; bytecode file offset 0x9aaa48"
!SGIlIntervalVisitor methodsFor: 'recovered'!
interval: recoveredArg1 forNode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) set: (recoveredValue1) interval: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae288; bytecode file offset 0x9ab034"
!SGIlIntervalVisitor methodsFor: 'recovered'!
restrict: recoveredArg1 interval: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) state.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) restrict: (recoveredValue1) interval: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bbd40; bytecode file offset 0x9b8678"
!SGIlIntervalVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super ansiCExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbd68; bytecode file offset 0x9b8678"
!SGIlIntervalVisitor methodsFor: 'recovered'!
symbol: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super symbol: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbd7c; bytecode file offset 0x9b8678"
!SGIlIntervalVisitor methodsFor: 'recovered'!
idAttribute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super idAttribute: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbda4; bytecode file offset 0x9b8678"
!SGIlIntervalVisitor methodsFor: 'recovered'!
tempIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super tempIdentifier: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbdb8; bytecode file offset 0x9b8678"
!SGIlIntervalVisitor methodsFor: 'recovered'!
dummyExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super dummyExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c2a88; bytecode file offset 0x9bf474"
!SGIlIntervalVisitor methodsFor: 'recovered'!
loopInvariants: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loopInvariants := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6938; bytecode file offset 0x9d31f4"
!SGIlIntervalVisitor methodsFor: 'recovered'!
initialize
    super initialize.
    loopInvariantFinished := true.
    ^self
! !

"ASDBase.ic method 0x200d9b74; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super identifier: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9b88; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
binaryOptionalFloatServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super binaryOptionalFloatServiceExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) floatServiceExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9b9c; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
modelIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super modelIdentifier: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9bb0; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super declFieldAccess: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9bc4; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
tempAssignIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super tempAssignIdentifier: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9bd8; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super assignAtExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9bec; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super abstractDirectAccess: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9c14; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
ileDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super ileDereferencedExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9c28; bytecode file offset 0x9d64e8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
unaryOptionalFloatServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super unaryOptionalFloatServiceExpr: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) floatServiceExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20111af8; bytecode file offset 0xa0e3b4"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnMux: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) union: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20145a5c; bytecode file offset 0xa42328"
!SGIlIntervalVisitor methodsFor: 'recovered'!
complementServiceExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super complementServiceExpr: (recoveredValue0).
    (self) mergeBooleanState.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) type.
    recoveredValue3 := (recoveredValue2) getImplType.
    recoveredValue4 := (recoveredValue3) getInterval.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20145dac; bytecode file offset 0xa42688"
!SGIlIntervalVisitor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) state.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2017c5b8; bytecode file offset 0xa78e80"
!SGIlIntervalVisitor methodsFor: 'recovered'!
safeDivNumeratorExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultByZeroIsUserDefined.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueRange.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c0c4; bytecode file offset 0xa88988"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnBinaryService: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnBinary: (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLimitingArithServiceService.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersect: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6a64; bytecode file offset 0xaa333c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
arrayLengthSpecialCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super arrayLengthSpecialCall: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) intervalForNode: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) receiver.
    recoveredValue5 := (recoveredValue4) type.
    recoveredValue6 := (recoveredValue5) dimensions.
    recoveredValue7 := (recoveredValue6) first.
    recoveredValue8 := (recoveredValue7) maxSizeInterval.
    recoveredValue9 := (recoveredValue2) intersect: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x201cfacc; bytecode file offset 0xacc390"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnMultiplex: recoveredArg1 choices: recoveredArg2 default: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := [:block280d53b4Arg1 :block280d53b4Arg2 | 
    | block280d53b4Value0 block280d53b4Value1 block280d53b4Value2 |
    block280d53b4Value0 := block280d53b4Arg1.
    block280d53b4Value1 := block280d53b4Arg2.
    block280d53b4Value2 := (block280d53b4Value0) union: (block280d53b4Value1).
    block280d53b4Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f3e04; bytecode file offset 0xaf07b0"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractLimitedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'Limited expressions are not supported'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super abstractLimitedExpr: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f3ec4; bytecode file offset 0xaf07b0"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [
    'NoOverflow expressions are not supported'
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := super abstractNoOverflowExpr: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023f9e4; bytecode file offset 0xb3c2b0"
!SGIlIntervalVisitor methodsFor: 'recovered'!
forcedCastExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) limitOverflow.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) type.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) expressionContext.
    recoveredValue6 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := super forcedCastExpr: (recoveredBlock18Value0).
    recoveredBlock18Value1
].
    recoveredValue7 := (self) assignmentTo: (nil) limitAssignment: (true) limitOverflow: (recoveredValue1) type: (recoveredValue3) context: (recoveredValue5) do: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2027207c; bytecode file offset 0xb6e944"
!SGIlIntervalVisitor methodsFor: 'recovered'!
adaptInterval: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticLiteralType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgLimitedIntegerType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplInterval.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20284384; bytecode file offset 0xb80c5c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAbsServiceExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) absExpr: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNegServiceExpr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) negExpr: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplInterval.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := super unaryServiceExpr: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202854bc; bytecode file offset 0xb81d90"
!SGIlIntervalVisitor methodsFor: 'recovered'!
parmAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) parmAttributes.
    recoveredValue2 := (recoveredValue1) isCgAttrLimitAssignment.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) parmAttributes.
    recoveredValue5 := (recoveredValue4) isCgAttrLimitOverflow.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) type.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) expressionContext.
    recoveredValue10 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) expr.
    recoveredBlock24Value2 := (self) visitNode: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
    recoveredValue11 := (self) assignmentTo: (nil) limitAssignment: (recoveredValue2) limitOverflow: (recoveredValue5) type: (recoveredValue7) context: (recoveredValue9) do: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x202a5220; bytecode file offset 0xba1b04"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractTernaryOptionalServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitServiceExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOperand.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := RBInterval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) secondOperand.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) visitNode: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := (recoveredStack5) thirdOperand.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) visitNode: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) left: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := super abstractTernaryOptionalServiceExpr: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b7d60; bytecode file offset 0xbb4664"
!SGIlIntervalVisitor methodsFor: 'recovered'!
divShiftServiceExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerDiv: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLimitingArithServiceService.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) alternativeExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b7d8c; bytecode file offset 0xbb4664"
!SGIlIntervalVisitor methodsFor: 'recovered'!
mulDivServiceExpr: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) secondOperand.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) thirdOperand.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerDiv: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLimitingArithServiceService.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeExpr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) alternativeExpr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d376c; bytecode file offset 0xbd0038"
!SGIlIntervalVisitor methodsFor: 'recovered'!
postDec: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftExpr.
    recoveredValue4 := (recoveredValue3) limitOverflow.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) leftExpr.
    recoveredValue7 := (recoveredValue6) type.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) expressionContext.
    recoveredValue10 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) leftExpr.
    recoveredBlock23Value2 := (self) visitNode: (recoveredBlock23Value1).
    recoveredBlock23Value3 := recoveredBlock23Value2.
    recoveredLocal1 := recoveredBlock23Value3.
    recoveredBlock23Value4 := (recoveredBlock23Value2) + (-1).
    recoveredBlock23Value4
].
    (self) assignmentTo: (recoveredValue1) limitAssignment: (true) limitOverflow: (recoveredValue4) type: (recoveredValue7) context: (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202d37c0; bytecode file offset 0xbd008c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
postInc: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) leftExpr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) leftExpr.
    recoveredValue4 := (recoveredValue3) limitOverflow.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) leftExpr.
    recoveredValue7 := (recoveredValue6) type.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) expressionContext.
    recoveredValue10 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) leftExpr.
    recoveredBlock23Value2 := (self) visitNode: (recoveredBlock23Value1).
    recoveredBlock23Value3 := recoveredBlock23Value2.
    recoveredLocal1 := recoveredBlock23Value3.
    recoveredBlock23Value4 := (recoveredBlock23Value2) + (1).
    recoveredBlock23Value4
].
    (self) assignmentTo: (recoveredValue1) limitAssignment: (true) limitOverflow: (recoveredValue4) type: (recoveredValue7) context: (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x202df920; bytecode file offset 0xbdc1f8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super binaryExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgWrapAroundIntegerype.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterval.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) state.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) improveIntervalOf: (recoveredStack1) interval: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f886c; bytecode file offset 0xbf5140"
!SGIlIntervalVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super visitNode: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := true.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isIleArithmeticExpr.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 38].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack2 := RBInterval.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isKindOf: (recoveredBlock15Stack2).
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [
    'Interval expected'
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20317c74; bytecode file offset 0xc1454c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
intervalForNode: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIleArithmeticExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEnumExpr.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInterval: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloatContext.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFloat.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035faf8; bytecode file offset 0xc5c3cc"
!SGIlIntervalVisitor methodsFor: 'recovered'!
restrict: recoveredArg1 removeSingleton: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSingleton.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) intervalForNode: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
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
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203607d4; bytecode file offset 0xc5d0f0"
!SGIlIntervalVisitor methodsFor: 'recovered'!
shiftRightExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBInterval.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) intDivTruncated: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) left.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) intDivTruncated: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) left: (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) contains: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInterval.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039f710; bytecode file offset 0xc9bfe8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
preDec: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) limitOverflow.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) expressionContext.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) leftExpr.
    recoveredBlock23Value2 := (self) visitNode: (recoveredBlock23Value1).
    recoveredBlock23Value3 := (recoveredBlock23Value2) + (-1).
    recoveredBlock23Value4 := recoveredBlock23Value3.
    recoveredLocal2 := recoveredBlock23Value4.
    recoveredBlock23Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) assignmentTo: (recoveredStack1) limitAssignment: (recoveredStack2) limitOverflow: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039f788; bytecode file offset 0xc9c060"
!SGIlIntervalVisitor methodsFor: 'recovered'!
preInc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) limitOverflow.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) expressionContext.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) leftExpr.
    recoveredBlock23Value2 := (self) visitNode: (recoveredBlock23Value1).
    recoveredBlock23Value3 := (recoveredBlock23Value2) + (1).
    recoveredBlock23Value4 := recoveredBlock23Value3.
    recoveredLocal2 := recoveredBlock23Value4.
    recoveredBlock23Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) assignmentTo: (recoveredStack1) limitAssignment: (recoveredStack2) limitOverflow: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplInterval.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c4038; bytecode file offset 0xcc0918"
!SGIlIntervalVisitor methodsFor: 'recovered'!
mulShiftServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOperand.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondOperand.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) thirdOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOperand.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) secondOperand.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleIdentical: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerDiv: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) integerDiv: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleLimitingArithServiceService.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) alternativeExpr.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2047c038; bytecode file offset 0xd7892c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrLimitAssignment.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrLimitOverflow.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) expressionContext.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 |
    recoveredBlock24Value0 := recoveredArg1.
    recoveredBlock24Value1 := (recoveredBlock24Value0) expr.
    recoveredBlock24Value2 := (self) visitNode: (recoveredBlock24Value1).
    recoveredBlock24Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignmentTo: (recoveredStack1) limitAssignment: (recoveredStack2) limitOverflow: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) expr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleConstant.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFloatContext.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) type.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) getImplType.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBFloat.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20488f48; bytecode file offset 0xd8582c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assignmentTo: recoveredArg1 limitAssignment: recoveredArg2 limitOverflow: recoveredArg3 type: recoveredArg4 context: recoveredArg5 do: recoveredArg6
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg6.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) value.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isCgReferenceType.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 82] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg4.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isIleArithmeticType.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 82].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg3.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 42] ifFalse: [recoveredBlock7PC := 48].
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 48].
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg4.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) adaptInterval: (recoveredBlock7Stack2) to: (recoveredBlock7Stack3).
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 78] ifFalse: [recoveredBlock7PC := 68].
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal1.
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) interval: (recoveredBlock7Stack2) forNode: (recoveredBlock7Stack3).
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 86.
        ].
        recoveredBlock7Step = 86 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 99] ifFalse: [recoveredBlock7PC := 90].
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 92.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) state.
            recoveredBlock7PC := 94.
        ].
        recoveredBlock7Step = 94 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 97.
        ].
        recoveredBlock7Step = 97 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) set: (recoveredBlock7Stack2).
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) execute: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloatContext.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBFloat.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204ccc6c; bytecode file offset 0xdc956c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) lValue.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgWrapAroundIntegerType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributes.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrLimitAssignment.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) attributes.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack4 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrLimitOverflow.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) type.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) expressionContext.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 |
    recoveredBlock56Value0 := recoveredArg1.
    recoveredBlock56Value1 := super assignExpr: (recoveredBlock56Value0).
    recoveredBlock56Value1
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignmentTo: (recoveredStack1) limitAssignment: (recoveredStack2) limitOverflow: (recoveredStack3) type: (recoveredStack4) context: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleArithmeticExpr.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) expressionContext.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 recoveredBlock89Value5 |
    recoveredBlock89Value0 := (self) state.
    recoveredBlock89Value1 := recoveredArg1.
    recoveredBlock89Value2 := (recoveredBlock89Value1) lValue.
    recoveredBlock89Value3 := recoveredArg1.
    recoveredBlock89Value4 := (recoveredBlock89Value3) expr.
    recoveredBlock89Value5 := (recoveredBlock89Value0) addOperatorLeft: (recoveredBlock89Value2) operator: ('=') right: (recoveredBlock89Value4).
    recoveredBlock89Value5
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) executeInContext: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) generator.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) usesArithOpServices.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrLimitAssignment.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d6194; bytecode file offset 0xdd2a9c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := super abstractMethodCall: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    recoveredValue1 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (recoveredBlock18Value0) args.
    recoveredBlock18Value2 := [:recoveredBlock18Block28Arg1 | 
    | recoveredBlock18Block28Stack0 recoveredBlock18Block28Stack1 recoveredBlock18Block28Stack2 recoveredBlock18Block28Stack3 recoveredBlock18Block28PC recoveredBlock18Block28Step recoveredBlock18Block28Done recoveredBlock18Block28Result |
    recoveredBlock18Block28Stack0 := self.
    recoveredBlock18Block28PC := 34.
    recoveredBlock18Block28Done := false.
    [recoveredBlock18Block28Done not] whileTrue: [
        recoveredBlock18Block28Step := recoveredBlock18Block28PC.
        recoveredBlock18Block28Step = 34 ifTrue: [
            recoveredBlock18Block28Stack1 := nil.
            recoveredBlock18Block28PC := 35.
        ].
        recoveredBlock18Block28Step = 35 ifTrue: [
            recoveredBlock18Block28Stack2 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28PC := 38.
        ].
        recoveredBlock18Block28Step = 38 ifTrue: [
            recoveredBlock18Block28Stack2 := (recoveredBlock18Block28Stack2) type.
            recoveredBlock18Block28PC := 39.
        ].
        recoveredBlock18Block28Step = 39 ifTrue: [
            recoveredBlock18Block28Stack2 := (recoveredBlock18Block28Stack2) asCgDereferencedType.
            recoveredBlock18Block28PC := 41.
        ].
        recoveredBlock18Block28Step = 41 ifTrue: [
            recoveredBlock18Block28Stack2 := (recoveredBlock18Block28Stack2) isCgArithmeticType.
            recoveredBlock18Block28PC := 43.
        ].
        recoveredBlock18Block28Step = 43 ifTrue: [
            (recoveredBlock18Block28Stack2) ifTrue: [recoveredBlock18Block28PC := 46] ifFalse: [recoveredBlock18Block28PC := 151].
        ].
        recoveredBlock18Block28Step = 46 ifTrue: [
            recoveredBlock18Block28PC := 47.
        ].
        recoveredBlock18Block28Step = 47 ifTrue: [
            recoveredBlock18Block28Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28PC := 50.
        ].
        recoveredBlock18Block28Step = 50 ifTrue: [
            recoveredBlock18Block28Stack1 := (recoveredBlock18Block28Stack1) expressionContext.
            recoveredBlock18Block28PC := 52.
        ].
        recoveredBlock18Block28Step = 52 ifTrue: [
            recoveredBlock18Block28Stack2 := [
    | recoveredBlock18Block28Block52Local1 recoveredBlock18Block28Block52Local2 recoveredBlock18Block28Block52Stack0 recoveredBlock18Block28Block52Stack1 recoveredBlock18Block28Block52Stack2 recoveredBlock18Block28Block52Stack3 recoveredBlock18Block28Block52Stack4 recoveredBlock18Block28Block52PC recoveredBlock18Block28Block52Step recoveredBlock18Block28Block52Done recoveredBlock18Block28Block52Result |
    recoveredBlock18Block28Block52Stack0 := self.
    recoveredBlock18Block28Block52PC := 58.
    recoveredBlock18Block28Block52Done := false.
    [recoveredBlock18Block28Block52Done not] whileTrue: [
        recoveredBlock18Block28Block52Step := recoveredBlock18Block28Block52PC.
        recoveredBlock18Block28Block52Step = 58 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 61.
        ].
        recoveredBlock18Block28Block52Step = 61 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) isIleArgumentInOut.
            recoveredBlock18Block28Block52PC := 63.
        ].
        recoveredBlock18Block28Block52Step = 63 ifTrue: [
            (recoveredBlock18Block28Block52Stack1) ifTrue: [recoveredBlock18Block28Block52PC := 66] ifFalse: [recoveredBlock18Block28Block52PC := 100].
        ].
        recoveredBlock18Block28Block52Step = 66 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 69.
        ].
        recoveredBlock18Block28Block52Step = 69 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) expr.
            recoveredBlock18Block28Block52PC := 71.
        ].
        recoveredBlock18Block28Block52Step = 71 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) asIleDereferencedExpr.
            recoveredBlock18Block28Block52PC := 73.
        ].
        recoveredBlock18Block28Block52Step = 73 ifTrue: [
            recoveredBlock18Block28Block52Local2 := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52PC := 74.
        ].
        recoveredBlock18Block28Block52Step = 74 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := self.
            recoveredBlock18Block28Block52PC := 75.
        ].
        recoveredBlock18Block28Block52Step = 75 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := self.
            recoveredBlock18Block28Block52PC := 76.
        ].
        recoveredBlock18Block28Block52Step = 76 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Block52Local2.
            recoveredBlock18Block28Block52PC := 77.
        ].
        recoveredBlock18Block28Block52Step = 77 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := (recoveredBlock18Block28Block52Stack2) intervalForNode: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 79.
        ].
        recoveredBlock18Block28Block52Step = 79 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 82.
        ].
        recoveredBlock18Block28Block52Step = 82 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := (recoveredBlock18Block28Block52Stack3) interval.
            recoveredBlock18Block28Block52PC := 84.
        ].
        recoveredBlock18Block28Block52Step = 84 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := (recoveredBlock18Block28Block52Stack2) union: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 86.
        ].
        recoveredBlock18Block28Block52Step = 86 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Block52Local2.
            recoveredBlock18Block28Block52PC := 87.
        ].
        recoveredBlock18Block28Block52Step = 87 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := (recoveredBlock18Block28Block52Stack3) type.
            recoveredBlock18Block28Block52PC := 88.
        ].
        recoveredBlock18Block28Block52Step = 88 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) adaptInterval: (recoveredBlock18Block28Block52Stack2) to: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 90.
        ].
        recoveredBlock18Block28Block52Step = 90 ifTrue: [
            recoveredBlock18Block28Block52Local1 := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52PC := 91.
        ].
        recoveredBlock18Block28Block52Step = 91 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := self.
            recoveredBlock18Block28Block52PC := 92.
        ].
        recoveredBlock18Block28Block52Step = 92 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := recoveredBlock18Block28Block52Local1.
            recoveredBlock18Block28Block52PC := 93.
        ].
        recoveredBlock18Block28Block52Step = 93 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Block52Local2.
            recoveredBlock18Block28Block52PC := 94.
        ].
        recoveredBlock18Block28Block52Step = 94 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) interval: (recoveredBlock18Block28Block52Stack2) forNode: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 96.
        ].
        recoveredBlock18Block28Block52Step = 96 ifTrue: [
            recoveredBlock18Block28Block52PC := 148.
        ].
        recoveredBlock18Block28Block52Step = 100 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := nil.
            recoveredBlock18Block28Block52PC := 101.
        ].
        recoveredBlock18Block28Block52Step = 101 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 104.
        ].
        recoveredBlock18Block28Block52Step = 104 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := (recoveredBlock18Block28Block52Stack2) isIleArgumentOut.
            recoveredBlock18Block28Block52PC := 106.
        ].
        recoveredBlock18Block28Block52Step = 106 ifTrue: [
            (recoveredBlock18Block28Block52Stack2) ifTrue: [recoveredBlock18Block28Block52PC := 110] ifFalse: [recoveredBlock18Block28Block52PC := 148].
        ].
        recoveredBlock18Block28Block52Step = 110 ifTrue: [
            recoveredBlock18Block28Block52PC := 111.
        ].
        recoveredBlock18Block28Block52Step = 111 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 114.
        ].
        recoveredBlock18Block28Block52Step = 114 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) expr.
            recoveredBlock18Block28Block52PC := 116.
        ].
        recoveredBlock18Block28Block52Step = 116 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) asIleDereferencedExpr.
            recoveredBlock18Block28Block52PC := 118.
        ].
        recoveredBlock18Block28Block52Step = 118 ifTrue: [
            recoveredBlock18Block28Block52Local2 := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52PC := 119.
        ].
        recoveredBlock18Block28Block52Step = 119 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 122.
        ].
        recoveredBlock18Block28Block52Step = 122 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) interval.
            recoveredBlock18Block28Block52PC := 124.
        ].
        recoveredBlock18Block28Block52Step = 124 ifTrue: [
            recoveredBlock18Block28Block52Local1 := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52PC := 125.
        ].
        recoveredBlock18Block28Block52Step = 125 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := recoveredBlock18Block28Arg1.
            recoveredBlock18Block28Block52PC := 128.
        ].
        recoveredBlock18Block28Block52Step = 128 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) parmAttributes.
            recoveredBlock18Block28Block52PC := 130.
        ].
        recoveredBlock18Block28Block52Step = 130 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) isCgAttrLimitAssignment.
            recoveredBlock18Block28Block52PC := 132.
        ].
        recoveredBlock18Block28Block52Step = 132 ifTrue: [
            (recoveredBlock18Block28Block52Stack1) ifTrue: [recoveredBlock18Block28Block52PC := 143] ifFalse: [recoveredBlock18Block28Block52PC := 136].
        ].
        recoveredBlock18Block28Block52Step = 136 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := self.
            recoveredBlock18Block28Block52PC := 137.
        ].
        recoveredBlock18Block28Block52Step = 137 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := recoveredBlock18Block28Block52Local1.
            recoveredBlock18Block28Block52PC := 138.
        ].
        recoveredBlock18Block28Block52Step = 138 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Block52Local2.
            recoveredBlock18Block28Block52PC := 139.
        ].
        recoveredBlock18Block28Block52Step = 139 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := (recoveredBlock18Block28Block52Stack3) type.
            recoveredBlock18Block28Block52PC := 140.
        ].
        recoveredBlock18Block28Block52Step = 140 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) adaptInterval: (recoveredBlock18Block28Block52Stack2) to: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 142.
        ].
        recoveredBlock18Block28Block52Step = 142 ifTrue: [
            recoveredBlock18Block28Block52Local1 := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52PC := 143.
        ].
        recoveredBlock18Block28Block52Step = 143 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := self.
            recoveredBlock18Block28Block52PC := 144.
        ].
        recoveredBlock18Block28Block52Step = 144 ifTrue: [
            recoveredBlock18Block28Block52Stack2 := recoveredBlock18Block28Block52Local1.
            recoveredBlock18Block28Block52PC := 145.
        ].
        recoveredBlock18Block28Block52Step = 145 ifTrue: [
            recoveredBlock18Block28Block52Stack3 := recoveredBlock18Block28Block52Local2.
            recoveredBlock18Block28Block52PC := 146.
        ].
        recoveredBlock18Block28Block52Step = 146 ifTrue: [
            recoveredBlock18Block28Block52Stack1 := (recoveredBlock18Block28Block52Stack1) interval: (recoveredBlock18Block28Block52Stack2) forNode: (recoveredBlock18Block28Block52Stack3).
            recoveredBlock18Block28Block52PC := 148.
        ].
        recoveredBlock18Block28Block52Step = 148 ifTrue: [
            recoveredBlock18Block28Block52Result := recoveredBlock18Block28Block52Stack1.
            recoveredBlock18Block28Block52Done := true.
        ].
    ].
    recoveredBlock18Block28Block52Result
].
            recoveredBlock18Block28PC := 149.
        ].
        recoveredBlock18Block28Step = 149 ifTrue: [
            recoveredBlock18Block28Stack1 := (recoveredBlock18Block28Stack1) executeInContext: (recoveredBlock18Block28Stack2).
            recoveredBlock18Block28PC := 151.
        ].
        recoveredBlock18Block28Step = 151 ifTrue: [
            recoveredBlock18Block28Result := recoveredBlock18Block28Stack1.
            recoveredBlock18Block28Done := true.
        ].
    ].
    recoveredBlock18Block28Result
].
    recoveredBlock18Value3 := (recoveredBlock18Value1) do: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    recoveredValue2 := (recoveredValue0) ensure: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x204e9a88; bytecode file offset 0xde6384"
!SGIlIntervalVisitor methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) expressionContext.
    recoveredValue2 := [
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) leftExpr.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) visitNode: (recoveredBlock8Stack1).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            recoveredLocal5 := recoveredBlock8Stack0.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            (recoveredBlock8Stack0) mergeBooleanState.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) rightExpr.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) visitNode: (recoveredBlock8Stack1).
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredLocal4 := recoveredBlock8Stack0.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            (recoveredBlock8Stack0) mergeBooleanState.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal5.
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal4.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) returnBinary: (recoveredBlock8Stack1) left: (recoveredBlock8Stack2) right: (recoveredBlock8Stack3).
            recoveredBlock8PC := 51.
        ].
        recoveredBlock8Step = 51 ifTrue: [
            recoveredLocal6 := recoveredBlock8Stack0.
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Stack0 := recoveredArg1.
            recoveredBlock8PC := 57.
        ].
        recoveredBlock8Step = 57 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) leftExpr.
            recoveredBlock8PC := 58.
        ].
        recoveredBlock8Step = 58 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) isIleArithmeticExpr.
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            (recoveredBlock8Stack0) ifTrue: [recoveredBlock8PC := 68] ifFalse: [recoveredBlock8PC := 64].
        ].
        recoveredBlock8Step = 64 ifTrue: [
            recoveredBlock8Stack0 := recoveredLocal6.
            recoveredBlock8PC := 67.
        ].
        recoveredBlock8Step = 67 ifTrue: [
            ^recoveredBlock8Stack0
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 69.
        ].
        recoveredBlock8Step = 69 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 72.
        ].
        recoveredBlock8Step = 72 ifTrue: [
            (recoveredBlock8Stack0) makeBooleanState: (recoveredBlock8Stack1).
            recoveredBlock8PC := 74.
        ].
        recoveredBlock8Step = 74 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 75.
        ].
        recoveredBlock8Step = 75 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) state.
            recoveredBlock8PC := 77.
        ].
        recoveredBlock8Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock8Stack0.
            recoveredBlock8PC := 80.
        ].
        recoveredBlock8Step = 80 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 81.
        ].
        recoveredBlock8Step = 81 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 84.
        ].
        recoveredBlock8Step = 84 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) first.
            recoveredBlock8PC := 86.
        ].
        recoveredBlock8Step = 86 ifTrue: [
            (recoveredBlock8Stack0) state: (recoveredBlock8Stack1).
            recoveredBlock8PC := 88.
        ].
        recoveredBlock8Step = 88 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 89.
        ].
        recoveredBlock8Step = 89 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 92.
        ].
        recoveredBlock8Step = 92 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal5.
            recoveredBlock8PC := 95.
        ].
        recoveredBlock8Step = 95 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal4.
            recoveredBlock8PC := 98.
        ].
        recoveredBlock8Step = 98 ifTrue: [
            recoveredBlock8Stack4 := self.
            recoveredBlock8PC := 99.
        ].
        recoveredBlock8Step = 99 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) ileBuilder.
            recoveredBlock8PC := 101.
        ].
        recoveredBlock8Step = 101 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) literalTrue.
            recoveredBlock8PC := 103.
        ].
        recoveredBlock8Step = 103 ifTrue: [
            (recoveredBlock8Stack0) binaryRelExpr: (recoveredBlock8Stack1) leftInterval: (recoveredBlock8Stack2) rightInterval: (recoveredBlock8Stack3) value: (recoveredBlock8Stack4).
            recoveredBlock8PC := 106.
        ].
        recoveredBlock8Step = 106 ifTrue: [
            recoveredBlock8Stack0 := recoveredLocal1.
            recoveredBlock8PC := 109.
        ].
        recoveredBlock8Step = 109 ifTrue: [
            recoveredBlock8Stack1 := 1.
            recoveredBlock8PC := 111.
        ].
        recoveredBlock8Step = 111 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 112.
        ].
        recoveredBlock8Step = 112 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) state.
            recoveredBlock8PC := 114.
        ].
        recoveredBlock8Step = 114 ifTrue: [
            (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) put: (recoveredBlock8Stack2).
            recoveredBlock8PC := 116.
        ].
        recoveredBlock8Step = 116 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 117.
        ].
        recoveredBlock8Step = 117 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 120.
        ].
        recoveredBlock8Step = 120 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) last.
            recoveredBlock8PC := 122.
        ].
        recoveredBlock8Step = 122 ifTrue: [
            (recoveredBlock8Stack0) state: (recoveredBlock8Stack1).
            recoveredBlock8PC := 124.
        ].
        recoveredBlock8Step = 124 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 125.
        ].
        recoveredBlock8Step = 125 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 128.
        ].
        recoveredBlock8Step = 128 ifTrue: [
            recoveredBlock8Stack2 := recoveredLocal5.
            recoveredBlock8PC := 131.
        ].
        recoveredBlock8Step = 131 ifTrue: [
            recoveredBlock8Stack3 := recoveredLocal4.
            recoveredBlock8PC := 134.
        ].
        recoveredBlock8Step = 134 ifTrue: [
            recoveredBlock8Stack4 := self.
            recoveredBlock8PC := 135.
        ].
        recoveredBlock8Step = 135 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) ileBuilder.
            recoveredBlock8PC := 137.
        ].
        recoveredBlock8Step = 137 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) literalFalse.
            recoveredBlock8PC := 139.
        ].
        recoveredBlock8Step = 139 ifTrue: [
            (recoveredBlock8Stack0) binaryRelExpr: (recoveredBlock8Stack1) leftInterval: (recoveredBlock8Stack2) rightInterval: (recoveredBlock8Stack3) value: (recoveredBlock8Stack4).
            recoveredBlock8PC := 142.
        ].
        recoveredBlock8Step = 142 ifTrue: [
            recoveredBlock8Stack0 := recoveredLocal1.
            recoveredBlock8PC := 145.
        ].
        recoveredBlock8Step = 145 ifTrue: [
            recoveredBlock8Stack1 := 2.
            recoveredBlock8PC := 147.
        ].
        recoveredBlock8Step = 147 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 148.
        ].
        recoveredBlock8Step = 148 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) state.
            recoveredBlock8PC := 150.
        ].
        recoveredBlock8Step = 150 ifTrue: [
            (recoveredBlock8Stack0) at: (recoveredBlock8Stack1) put: (recoveredBlock8Stack2).
            recoveredBlock8PC := 152.
        ].
        recoveredBlock8Step = 152 ifTrue: [
            recoveredBlock8Stack0 := self.
            recoveredBlock8PC := 153.
        ].
        recoveredBlock8Step = 153 ifTrue: [
            recoveredBlock8Stack1 := recoveredLocal1.
            recoveredBlock8PC := 156.
        ].
        recoveredBlock8Step = 156 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) state: (recoveredBlock8Stack1).
            recoveredBlock8PC := 158.
        ].
        recoveredBlock8Step = 158 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack0.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) executeInContext: (recoveredValue2).
    recoveredValue3 := recoveredLocal6.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2054a058; bytecode file offset 0xe4695c"
!SGIlIntervalVisitor methodsFor: 'recovered'!
loopStmnt: recoveredArg1 checkBeforeLoop: recoveredArg2 atEndOfLoopDo: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := loopInvariants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := loopInvariants.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 |
    recoveredBlock15Value0 := (self) state.
    recoveredBlock15Value1 := (recoveredBlock15Value0) copy.
    recoveredBlock15Value1
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 33.
        ].
        recoveredBlock25Step = 33 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) state.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) removeNonLoopInvariantInformations: (recoveredBlock25Stack2).
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 40] ifFalse: [recoveredBlock25PC := 43].
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack1 := false.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            loopInvariantFinished := recoveredBlock25Stack1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg1.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) copy.
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            (recoveredBlock25Stack0) state: (recoveredBlock25Stack1).
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            recoveredBlock25Stack0 := recoveredBlock25Arg1.
            recoveredBlock25PC := 48.
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg3.
            recoveredBlock62PC := 71.
        ].
        recoveredBlock62Step = 71 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            (recoveredBlock62Stack1) value: (recoveredBlock62Stack2).
            recoveredBlock62PC := 74.
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack1 := nil.
            recoveredBlock62PC := 75.
        ].
        recoveredBlock62Step = 75 ifTrue: [
            recoveredBlock62Stack2 := recoveredLocal1.
            recoveredBlock62PC := 78.
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack3 := (recoveredBlock62Stack3) state.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) removeNonLoopInvariantInformations: (recoveredBlock62Stack3).
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            (recoveredBlock62Stack2) ifTrue: [recoveredBlock62PC := 84] ifFalse: [recoveredBlock62PC := 89].
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack1 := false.
            recoveredBlock62PC := 86.
        ].
        recoveredBlock62Step = 86 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Stack1.
            recoveredBlock62PC := 87.
        ].
        recoveredBlock62Step = 87 ifTrue: [
            loopInvariantFinished := recoveredBlock62Stack2.
            recoveredBlock62PC := 89.
        ].
        recoveredBlock62Step = 89 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) internalLoopStmnt: (recoveredStack2) checkBeforeLoop: (recoveredStack3) atEndOfLoopDo: (recoveredStack4) returnBreakStates: (recoveredStack5).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock96Stack0 recoveredBlock96Stack1 recoveredBlock96Stack2 recoveredBlock96Stack3 recoveredBlock96Stack4 recoveredBlock96Stack5 recoveredBlock96PC recoveredBlock96Step recoveredBlock96Done recoveredBlock96Result |
    recoveredBlock96Stack0 := self.
    recoveredBlock96PC := 102.
    recoveredBlock96Done := false.
    [recoveredBlock96Done not] whileTrue: [
        recoveredBlock96Step := recoveredBlock96PC.
        recoveredBlock96Step = 102 ifTrue: [
            recoveredBlock96Stack1 := LookupTable.
            recoveredBlock96PC := 104.
        ].
        recoveredBlock96Step = 104 ifTrue: [
            recoveredBlock96Stack1 := (recoveredBlock96Stack1) new.
            recoveredBlock96PC := 106.
        ].
        recoveredBlock96Step = 106 ifTrue: [
            loopInvariants := recoveredBlock96Stack1.
            recoveredBlock96PC := 108.
        ].
        recoveredBlock96Step = 108 ifTrue: [
            recoveredBlock96Stack1 := [
    | recoveredBlock96Block108Local1 recoveredBlock96Block108Stack0 recoveredBlock96Block108Stack1 recoveredBlock96Block108Stack2 recoveredBlock96Block108Stack3 recoveredBlock96Block108Stack4 recoveredBlock96Block108Stack5 recoveredBlock96Block108Stack6 recoveredBlock96Block108PC recoveredBlock96Block108Step recoveredBlock96Block108Done recoveredBlock96Block108Result |
    recoveredBlock96Block108Stack0 := self.
    recoveredBlock96Block108PC := 114.
    recoveredBlock96Block108Done := false.
    [recoveredBlock96Block108Done not] whileTrue: [
        recoveredBlock96Block108Step := recoveredBlock96Block108PC.
        recoveredBlock96Block108Step = 114 ifTrue: [
            recoveredBlock96Block108Stack1 := SGIlIntervalVisitor.
            recoveredBlock96Block108PC := 116.
        ].
        recoveredBlock96Block108Step = 116 ifTrue: [
            recoveredBlock96Block108Stack1 := (recoveredBlock96Block108Stack1) create.
            recoveredBlock96Block108PC := 118.
        ].
        recoveredBlock96Block108Step = 118 ifTrue: [
            recoveredBlock96Block108Local1 := recoveredBlock96Block108Stack1.
            recoveredBlock96Block108PC := 119.
        ].
        recoveredBlock96Block108Step = 119 ifTrue: [
            recoveredBlock96Block108Stack1 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 120.
        ].
        recoveredBlock96Block108Step = 120 ifTrue: [
            recoveredBlock96Block108Stack2 := self.
            recoveredBlock96Block108PC := 121.
        ].
        recoveredBlock96Block108Step = 121 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) state.
            recoveredBlock96Block108PC := 122.
        ].
        recoveredBlock96Block108Step = 122 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) copy.
            recoveredBlock96Block108PC := 123.
        ].
        recoveredBlock96Block108Step = 123 ifTrue: [
            (recoveredBlock96Block108Stack1) state: (recoveredBlock96Block108Stack2).
            recoveredBlock96Block108PC := 125.
        ].
        recoveredBlock96Block108Step = 125 ifTrue: [
            recoveredBlock96Block108Stack1 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 126.
        ].
        recoveredBlock96Block108Step = 126 ifTrue: [
            recoveredBlock96Block108Stack2 := loopInvariants.
            recoveredBlock96Block108PC := 128.
        ].
        recoveredBlock96Block108Step = 128 ifTrue: [
            (recoveredBlock96Block108Stack1) loopInvariants: (recoveredBlock96Block108Stack2).
            recoveredBlock96Block108PC := 130.
        ].
        recoveredBlock96Block108Step = 130 ifTrue: [
            recoveredBlock96Block108Stack1 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 131.
        ].
        recoveredBlock96Block108Step = 131 ifTrue: [
            recoveredBlock96Block108Stack2 := self.
            recoveredBlock96Block108PC := 132.
        ].
        recoveredBlock96Block108Step = 132 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) visitedTempAssignExprs.
            recoveredBlock96Block108PC := 134.
        ].
        recoveredBlock96Block108Step = 134 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) copy.
            recoveredBlock96Block108PC := 135.
        ].
        recoveredBlock96Block108Step = 135 ifTrue: [
            (recoveredBlock96Block108Stack1) visitedTempAssignExprs: (recoveredBlock96Block108Stack2).
            recoveredBlock96Block108PC := 137.
        ].
        recoveredBlock96Block108Step = 137 ifTrue: [
            recoveredBlock96Block108Stack1 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 138.
        ].
        recoveredBlock96Block108Step = 138 ifTrue: [
            recoveredBlock96Block108Stack2 := recoveredArg1.
            recoveredBlock96Block108PC := 141.
        ].
        recoveredBlock96Block108Step = 141 ifTrue: [
            recoveredBlock96Block108Stack3 := recoveredArg2.
            recoveredBlock96Block108PC := 144.
        ].
        recoveredBlock96Block108Step = 144 ifTrue: [
            recoveredBlock96Block108Stack4 := recoveredArg3.
            recoveredBlock96Block108PC := 147.
        ].
        recoveredBlock96Block108Step = 147 ifTrue: [
            recoveredBlock96Block108Stack5 := false.
            recoveredBlock96Block108PC := 148.
        ].
        recoveredBlock96Block108Step = 148 ifTrue: [
            (recoveredBlock96Block108Stack1) internalLoopStmnt: (recoveredBlock96Block108Stack2) checkBeforeLoop: (recoveredBlock96Block108Stack3) atEndOfLoopDo: (recoveredBlock96Block108Stack4) returnBreakStates: (recoveredBlock96Block108Stack5).
            recoveredBlock96Block108PC := 151.
        ].
        recoveredBlock96Block108Step = 151 ifTrue: [
            recoveredBlock96Block108Stack1 := true.
            recoveredBlock96Block108PC := 152.
        ].
        recoveredBlock96Block108Step = 152 ifTrue: [
            recoveredBlock96Block108Stack2 := self.
            recoveredBlock96Block108PC := 153.
        ].
        recoveredBlock96Block108Step = 153 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) state.
            recoveredBlock96Block108PC := 154.
        ].
        recoveredBlock96Block108Step = 154 ifTrue: [
            recoveredBlock96Block108Stack3 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 155.
        ].
        recoveredBlock96Block108Step = 155 ifTrue: [
            recoveredBlock96Block108Stack3 := (recoveredBlock96Block108Stack3) state.
            recoveredBlock96Block108PC := 156.
        ].
        recoveredBlock96Block108Step = 156 ifTrue: [
            recoveredBlock96Block108Stack2 := (recoveredBlock96Block108Stack2) removeNonLoopInvariantInformations: (recoveredBlock96Block108Stack3).
            recoveredBlock96Block108PC := 157.
        ].
        recoveredBlock96Block108Step = 157 ifTrue: [
            (recoveredBlock96Block108Stack2) ifTrue: [recoveredBlock96Block108PC := 165] ifFalse: [recoveredBlock96Block108PC := 160].
        ].
        recoveredBlock96Block108Step = 160 ifTrue: [
            recoveredBlock96Block108PC := 161.
        ].
        recoveredBlock96Block108Step = 161 ifTrue: [
            recoveredBlock96Block108Stack1 := recoveredBlock96Block108Local1.
            recoveredBlock96Block108PC := 162.
        ].
        recoveredBlock96Block108Step = 162 ifTrue: [
            recoveredBlock96Block108Stack1 := (recoveredBlock96Block108Stack1) loopInvariantFinished.
            recoveredBlock96Block108PC := 164.
        ].
        recoveredBlock96Block108Step = 164 ifTrue: [
            recoveredBlock96Block108Stack1 := (recoveredBlock96Block108Stack1) not.
            recoveredBlock96Block108PC := 165.
        ].
        recoveredBlock96Block108Step = 165 ifTrue: [
            recoveredBlock96Block108Result := recoveredBlock96Block108Stack1.
            recoveredBlock96Block108Done := true.
        ].
    ].
    recoveredBlock96Block108Result
].
            recoveredBlock96PC := 166.
        ].
        recoveredBlock96Step = 166 ifTrue: [
            (recoveredBlock96Stack1) whileTrue.
            recoveredBlock96PC := 168.
        ].
        recoveredBlock96Step = 168 ifTrue: [
            recoveredBlock96Stack1 := recoveredArg1.
            recoveredBlock96PC := 171.
        ].
        recoveredBlock96Step = 171 ifTrue: [
            recoveredBlock96Stack2 := recoveredArg2.
            recoveredBlock96PC := 174.
        ].
        recoveredBlock96Step = 174 ifTrue: [
            recoveredBlock96Stack3 := recoveredArg3.
            recoveredBlock96PC := 177.
        ].
        recoveredBlock96Step = 177 ifTrue: [
            recoveredBlock96Stack4 := true.
            recoveredBlock96PC := 178.
        ].
        recoveredBlock96Step = 178 ifTrue: [
            (recoveredBlock96Stack0) internalLoopStmnt: (recoveredBlock96Stack1) checkBeforeLoop: (recoveredBlock96Stack2) atEndOfLoopDo: (recoveredBlock96Stack3) returnBreakStates: (recoveredBlock96Stack4).
            recoveredBlock96PC := 181.
        ].
        recoveredBlock96Step = 181 ifTrue: [
            recoveredBlock96Stack0 := self.
            recoveredBlock96PC := 182.
        ].
        recoveredBlock96Step = 182 ifTrue: [
            recoveredBlock96Stack1 := [
    | recoveredBlock96Block182Value0 |
    recoveredBlock96Block182Value0 := (self) loopInvariantFinished.
    recoveredBlock96Block182Value0
].
            recoveredBlock96PC := 191.
        ].
        recoveredBlock96Step = 191 ifTrue: [
            recoveredBlock96Stack2 := [
    'Loop invariant is different for subclass of interval visitor.'
].
            recoveredBlock96PC := 193.
        ].
        recoveredBlock96Step = 193 ifTrue: [
            recoveredBlock96PC := 199.
        ].
        recoveredBlock96Step = 199 ifTrue: [
            recoveredBlock96Stack0 := (recoveredBlock96Stack0) ileAssert: (recoveredBlock96Stack1) message: (recoveredBlock96Stack2).
            recoveredBlock96PC := 201.
        ].
        recoveredBlock96Step = 201 ifTrue: [
            recoveredBlock96Result := recoveredBlock96Stack0.
            recoveredBlock96Done := true.
        ].
    ].
    recoveredBlock96Result
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := [
    loopInvariants := nil.
    loopInvariantFinished := true.
    true
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) ensure: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054e564; bytecode file offset 0xe4ae84"
!SGIlIntervalVisitor methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) expr.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDummyExpr.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitedTempAssignExprs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloatContext.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) expressionContext.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) contextType.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createContRealImpl: (recoveredStack2) physicalUnit: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAbstractType.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticLiteralType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) getImplType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := (recoveredStack3) type.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) getImplType.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) getInterval.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithImplType: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := (recoveredStack4) limitOverflow.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack6 := (recoveredStack6) expressionContext.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock138Local1 recoveredBlock138Value0 recoveredBlock138Value1 recoveredBlock138Value2 recoveredBlock138Value3 |
    recoveredBlock138Value0 := recoveredArg1.
    recoveredBlock138Value1 := (recoveredBlock138Value0) expr.
    recoveredBlock138Value2 := (self) visitNode: (recoveredBlock138Value1).
    recoveredBlock138Local1 := recoveredBlock138Value2.
    (self) mergeBooleanState.
    recoveredBlock138Value3 := recoveredBlock138Local1.
    recoveredBlock138Value3
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) assignmentTo: (recoveredStack2) limitAssignment: (recoveredStack3) limitOverflow: (recoveredStack4) type: (recoveredStack5) context: (recoveredStack6) do: (recoveredStack7).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) expressionContext.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock167Value0 recoveredBlock167Value1 recoveredBlock167Value2 recoveredBlock167Value3 recoveredBlock167Value4 |
    recoveredBlock167Value0 := (self) state.
    recoveredBlock167Value1 := recoveredArg1.
    recoveredBlock167Value2 := recoveredArg1.
    recoveredBlock167Value3 := (recoveredBlock167Value2) expr.
    recoveredBlock167Value4 := (recoveredBlock167Value0) addOperatorLeft: (recoveredBlock167Value1) operator: ('=') right: (recoveredBlock167Value3).
    recoveredBlock167Value4
].
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) executeInContext: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInterval: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitedTempAssignExprs.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) intervalForNode: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059a2a8; bytecode file offset 0xe96bf8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
returnBinary: recoveredArg1 left: recoveredArg2 right: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleFloatTypedExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleServiceExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleAddServiceExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSubServiceExpr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) leftExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) check: (recoveredStack2) isLessOrEqualThan: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMulServiceExpr.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleSquare.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivExpr.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleDivServiceExpr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileConstFactor.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) denominator.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) numerator.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInterval.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) surroundingInteger.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) denominator.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) numerator.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) asInterval.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) integerDiv: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) surroundingInteger.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerDiv: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemExpr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRemServiceExpr.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) integerRem: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMaxServiceExpr.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitLowerServiceExpr.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleMinServiceExpr.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLimitUpperServiceExpr.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 254].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleBinaryRelOp.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 265].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := [
    'Unknown kind of binary expression'
].
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f84c4; bytecode file offset 0xef4dd8"
!SGIlIntervalVisitor methodsFor: 'recovered'!
binaryRelExpr: recoveredArg1 leftInterval: recoveredArg2 rightInterval: recoveredArg3 value: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEqualExpr.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNotEqualExpr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setImpossible.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) intersect: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) intersect: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := '='.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) addOperatorLeft: (recoveredStack2) operator: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleNotEqualExpr.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleEqualExpr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) removeSingleton: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) removeSingleton: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) setImpossible.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyLeft: (recoveredStack4).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyRight: (recoveredStack4).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := '<'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) addOperatorLeft: (recoveredStack2) operator: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 269].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 269].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) setImpossible.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyLeft: (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyRight: (recoveredStack4).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := '<='.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack4 := (recoveredStack4) leftExpr.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) addOperatorLeft: (recoveredStack2) operator: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessExpr.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterEqualExpr.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) setImpossible.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyRight: (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyLeft: (recoveredStack4).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := '<'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack1) addOperatorLeft: (recoveredStack2) operator: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleLessEqualExpr.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueTrue.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleGreaterExpr.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 366] ifFalse: [recoveredPC := 423].
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleConstantValueFalse.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 372] ifFalse: [recoveredPC := 423].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 383].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1) setImpossible.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack4 := (recoveredStack4) right.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyRight: (recoveredStack4).
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := RBInterval.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack4 := (recoveredStack4) left.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := (recoveredStack3) inftyLeft: (recoveredStack4).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) restrict: (recoveredStack2) interval: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := '<='.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := (recoveredStack4) rightExpr.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack1) addOperatorLeft: (recoveredStack2) operator: (recoveredStack3) right: (recoveredStack4).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

