"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d934; bytecode file offset 0x90a4b8"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
abstractConstant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000da54; bytecode file offset 0x90a4b8"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
serviceExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067df4; bytecode file offset 0x9646f8"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
otherNode
    | recoveredValue0 |
    recoveredValue0 := otherNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009538c; bytecode file offset 0x991c58"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
abstractIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) otherNode.
    recoveredValue2 := (self) unionGoalIntervalOf: (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fc474; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
unaryArithExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super unaryArithExpr: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc48c; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super implCastAssignExpr: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc4a4; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractDirectAccess: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc4bc; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
binaryArithExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super binaryArithExpr: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc4d4; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super abstractMethodCall: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fc4ec; bytecode file offset 0x9f8db0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
ileDereferencedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super ileDereferencedExpr: (recoveredValue0).
    recoveredValue2 := (self) otherNode.
    recoveredValue3 := (self) unionGoalIntervalOf: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fd314; bytecode file offset 0x9f9c08"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
unaryOp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) leftExpr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) createOpLeftExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200fd32c; bytecode file offset 0x9f9c08"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
phonyAssignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) expr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) createNoOpExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x200fd344; bytecode file offset 0x9f9c08"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
wrappedExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) expr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) expr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) createOpExpr: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20193fd0; bytecode file offset 0xa908b4"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) lValue.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) lValue.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) expr.
    recoveredValue8 := (self) otherNode.
    recoveredValue9 := (recoveredValue8) expr.
    recoveredValue10 := (self) visit: (recoveredValue7) withOtherNode: (recoveredValue9).
    recoveredValue11 := (recoveredValue0) createOpLValue: (recoveredValue5) expr: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20193fec; bytecode file offset 0xa908b4"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) leftExpr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) leftExpr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) rightExpr.
    recoveredValue8 := (self) otherNode.
    recoveredValue9 := (recoveredValue8) rightExpr.
    recoveredValue10 := (self) visit: (recoveredValue7) withOtherNode: (recoveredValue9).
    recoveredValue11 := (recoveredValue0) createNoOpLeftExpr: (recoveredValue5) rightExpr: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x201a4394; bytecode file offset 0xaa0c58"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
abstractExpr: recoveredArg1
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
    'SGIlRebuildWithUnionGoalIntervalTransformation does not implement this node type'
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b3b80; bytecode file offset 0xab0448"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
compoundExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) args.
    recoveredValue5 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Arg2.
    recoveredBlock10Value2 := (self) visit: (recoveredBlock10Value0) withOtherNode: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    recoveredValue6 := (recoveredValue2) with: (recoveredValue4) collect: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) createNoOpArgs: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f753c; bytecode file offset 0xaf3e00"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
unionGoalIntervalOf: recoveredArg1 with: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) goalInterval.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetGoalInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) resetGoalInterval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) goalInterval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) goalInterval.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) union: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOpGoalInterval: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20255820; bytecode file offset 0xb520f0"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) baseExpr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) baseExpr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) args.
    recoveredValue8 := (self) otherNode.
    recoveredValue9 := (recoveredValue8) args.
    recoveredValue10 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Arg2.
    recoveredBlock18Value2 := (self) visit: (recoveredBlock18Value0) withOtherNode: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    recoveredValue11 := (recoveredValue7) with: (recoveredValue9) collect: (recoveredValue10).
    recoveredValue12 := (recoveredValue0) createNoOpBaseExpr: (recoveredValue5) args: (recoveredValue11).
    recoveredValue13 := (self) otherNode.
    recoveredValue14 := (self) unionGoalIntervalOf: (recoveredValue12) with: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x2026139c; bytecode file offset 0xb5dc6c"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) condExpr.
    recoveredValue3 := (self) otherNode.
    recoveredValue4 := (recoveredValue3) condExpr.
    recoveredValue5 := (self) visit: (recoveredValue2) withOtherNode: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) leftExpr.
    recoveredValue8 := (self) otherNode.
    recoveredValue9 := (recoveredValue8) leftExpr.
    recoveredValue10 := (self) visit: (recoveredValue7) withOtherNode: (recoveredValue9).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) rightExpr.
    recoveredValue13 := (self) otherNode.
    recoveredValue14 := (recoveredValue13) rightExpr.
    recoveredValue15 := (self) visit: (recoveredValue12) withOtherNode: (recoveredValue14).
    recoveredValue16 := (recoveredValue0) createNoOpCondExpr: (recoveredValue5) leftExpr: (recoveredValue10) rightExpr: (recoveredValue15).
    recoveredValue17 := (self) otherNode.
    recoveredValue18 := (self) unionGoalIntervalOf: (recoveredValue16) with: (recoveredValue17).
    ^recoveredValue18
! !

"ASDBase.ic method 0x2027c390; bytecode file offset 0xb78c4c"
!SGIlRebuildWithUnionGoalIntervalTransformation methodsFor: 'recovered'!
visit: recoveredArg1 withOtherNode: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := otherNode.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    otherNode := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg1.
    recoveredBlock14Value1 := (self) visitNode: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
    recoveredValue3 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Value0.
    otherNode := recoveredBlock25Value1.
    recoveredBlock25Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

