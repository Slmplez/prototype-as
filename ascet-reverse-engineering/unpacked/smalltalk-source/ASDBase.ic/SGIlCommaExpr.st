"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009884; bytecode file offset 0x908be4"
!SGIlCommaExpr methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfComma.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051420; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
limitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) limitOverflow.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200516dc; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleZeroInInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleZeroInInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005190c; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleMISRAConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleMISRAConstant.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051a88; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
canLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) canLimitOverflow.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051a9c; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleFloatTypedExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleFloatTypedExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051ab0; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
ileBasicInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) ileBasicInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051b78; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleArithmeticExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleArithmeticExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051c40; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleBooleanTypedExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleBooleanTypedExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200520b4; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
interval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) interval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005276c; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleEnumExpr
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) isIleEnumExpr.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200527a8; bytecode file offset 0x94f0e0"
!SGIlCommaExpr methodsFor: 'recovered'!
goalInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := (recoveredValue1) goalInterval.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054b88; bytecode file offset 0x952a9c"
!SGIlCommaExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) commaExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200589d8; bytecode file offset 0x956284"
!SGIlCommaExpr methodsFor: 'recovered'!
createWithArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) commaExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20074e6c; bytecode file offset 0x9757c8"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleCommaExpr
    ^true
! !

"ASDBase.ic method 0x200a5b68; bytecode file offset 0x9a248c"
!SGIlCommaExpr methodsFor: 'recovered'!
asIleLimitOverflowExprGoalInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) asIleLimitOverflowExprGoalInterval: (recoveredValue2).
    recoveredValue4 := (self) createOpLastExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a5b80; bytecode file offset 0x9a248c"
!SGIlCommaExpr methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) decorateGoalInterval: (recoveredValue2).
    recoveredValue4 := (self) createOpLastExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a5b98; bytecode file offset 0x9a248c"
!SGIlCommaExpr methodsFor: 'recovered'!
createOpLimitOverflow: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createOpLimitOverflow: (recoveredValue2).
    recoveredValue4 := (self) createOpLastExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a5bb0; bytecode file offset 0x9a248c"
!SGIlCommaExpr methodsFor: 'recovered'!
changeIleType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) changeIleType: (recoveredValue2).
    recoveredValue4 := (self) createOpLastExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a5bc8; bytecode file offset 0x9a248c"
!SGIlCommaExpr methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) last.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) createOpType: (recoveredValue2).
    recoveredValue4 := (self) createOpLastExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20101d18; bytecode file offset 0x9fe5dc"
!SGIlCommaExpr methodsFor: 'recovered'!
misraCastExpressionTo: recoveredArg1 force: recoveredArg2 strategy: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) args.
    recoveredValue2 := (recoveredValue1) last.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) castExpression: (recoveredValue2) to: (recoveredValue3) force: (recoveredValue4).
    recoveredValue6 := (self) createOpLastExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20112ca0; bytecode file offset 0xa0f568"
!SGIlCommaExpr methodsFor: 'recovered'!
withoutLastArgument
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) removeLast.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) createWithArgs: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013ad60; bytecode file offset 0xa37620"
!SGIlCommaExpr methodsFor: 'recovered'!
type
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20165a4c; bytecode file offset 0xa62314"
!SGIlCommaExpr methodsFor: 'recovered'!
stripCommaExprToList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) args.
    recoveredValue2 := (self) args.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := (recoveredValue1) copyFrom: (1) to: (recoveredValue4).
    (recoveredValue0) addAll: (recoveredValue5).
    recoveredValue6 := (self) args.
    recoveredValue7 := (recoveredValue6) last.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2017cf48; bytecode file offset 0xa79818"
!SGIlCommaExpr methodsFor: 'recovered'!
ileLimitToGoalInterval: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) args.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) last.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) ileLimitToGoalInterval: (recoveredValue7).
    (recoveredValue2) at: (recoveredValue4) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) createWithArgs: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20184dac; bytecode file offset 0xa81670"
!SGIlCommaExpr methodsFor: 'recovered'!
createNoOpArgs: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) args: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6484; bytecode file offset 0xad2d4c"
!SGIlCommaExpr methodsFor: 'recovered'!
isIleRepresentable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := super isIleRepresentable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) args.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:block280d5714Arg1 | 
    | block280d5714Value0 block280d5714Value1 |
    block280d5714Value0 := block280d5714Arg1.
    block280d5714Value1 := (block280d5714Value0) isIleRepresentable.
    block280d5714Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) anySatisfy: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020717c; bytecode file offset 0xb03a4c"
!SGIlCommaExpr methodsFor: 'recovered'!
createOpLastExpr: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) args.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := args.
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
            (recoveredStack1) removeLast.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) commaExpr: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ff40; bytecode file offset 0xb1c814"
!SGIlCommaExpr methodsFor: 'recovered'!
ileRuntimeCosts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := 0.
    recoveredValue0 := (self) args.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) ileRuntimeCosts.
    recoveredBlock10Value3 := (recoveredBlock10Value0) + (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

