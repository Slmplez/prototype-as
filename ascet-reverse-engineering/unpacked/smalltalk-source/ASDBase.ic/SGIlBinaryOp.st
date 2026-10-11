"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000dd34; bytecode file offset 0x90ab8c"
!SGIlBinaryOp methodsFor: 'recovered'!
parenthesizeForReadability: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) asBracedExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027294; bytecode file offset 0x923b70"
!SGIlBinaryOp methodsFor: 'recovered'!
asIleNoExprNoOverflow
    | recoveredValue0 |
    recoveredValue0 := (self) asIleNoExprNoOverflow: (self).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200535e0; bytecode file offset 0x9505d0"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleSameOperator: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20054e28; bytecode file offset 0x952a9c"
!SGIlBinaryOp methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) binaryExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059b84; bytecode file offset 0x9566ac"
!SGIlBinaryOp methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20059dac; bytecode file offset 0x9566ac"
!SGIlBinaryOp methodsFor: 'recovered'!
createNoOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006b1a0; bytecode file offset 0x96873c"
!SGIlBinaryOp methodsFor: 'recovered'!
rightExpr
    | recoveredValue0 |
    recoveredValue0 := rightExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076b2c; bytecode file offset 0x9757c8"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleBinaryOp
    ^true
! !

"ASDBase.ic method 0x2007af5c; bytecode file offset 0x97c330"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleConstantExpr
    ^false
! !

"ASDBase.ic method 0x20093be0; bytecode file offset 0x9904ac"
!SGIlBinaryOp methodsFor: 'recovered'!
createNoOpRightExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createNoOpLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094dcc; bytecode file offset 0x991c58"
!SGIlBinaryOp methodsFor: 'recovered'!
createNoOpLeftExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := (self) createNoOpLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b2008; bytecode file offset 0x9aea94"
!SGIlBinaryOp methodsFor: 'recovered'!
secondOperand
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rl') == ('Call_67224').
    recoveredValue1 := (self) rightExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d563c; bytecode file offset 0x9d2050"
!SGIlBinaryOp methodsFor: 'recovered'!
ileWrapperHash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileWrapperHash.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := (recoveredValue1) ileWrapperHash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d586c; bytecode file offset 0x9d21a8"
!SGIlBinaryOp methodsFor: 'recovered'!
ileCalculateRuntimeCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileCalculateRuntimeCosts.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := (recoveredValue1) ileRuntimeCosts.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d58cc; bytecode file offset 0x9d21a8"
!SGIlBinaryOp methodsFor: 'recovered'!
ileCalculateGeneralCosts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super ileCalculateGeneralCosts.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := (recoveredValue1) ileCosts.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d7e84; bytecode file offset 0x9d4794"
!SGIlBinaryOp methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (self) rightExpr.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createNoOpLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1) type: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20103ed4; bytecode file offset 0xa007a0"
!SGIlBinaryOp methodsFor: 'recovered'!
createNoOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2 type: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) createNoOpLeftExpr: (recoveredValue0) rightExpr: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) type: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20111fcc; bytecode file offset 0xa0e898"
!SGIlBinaryOp methodsFor: 'recovered'!
initializeSource: recoveredArg1 type: recoveredArg2 leftExpr: recoveredArg3 rightExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg4.
    rightExpr := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    super initializeSource: (recoveredValue1) type: (recoveredValue2) leftExpr: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011ec2c; bytecode file offset 0xa1b508"
!SGIlBinaryOp methodsFor: 'recovered'!
ileConvertEnumTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileConvertEnumTo: (recoveredValue1).
    recoveredValue3 := (self) rightExpr.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) ileConvertEnumTo: (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) createNoOpLeftExpr: (recoveredValue2) rightExpr: (recoveredValue5) type: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20131238; bytecode file offset 0xa2db34"
!SGIlBinaryOp methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) ileDependsOnAccessExpr: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileDependsOnAccessExpr: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cdc8; bytecode file offset 0xa39694"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleRepresentableRecursive
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
            recoveredStack2 := super isIleRepresentableRecursive.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := rightExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursive.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cdd8; bytecode file offset 0xa39694"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleRepresentableRecursiveDoubleBitSize
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
            recoveredStack2 := super isIleRepresentableRecursiveDoubleBitSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := rightExpr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleRepresentableRecursiveDoubleBitSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ae5cc; bytecode file offset 0xaaaea8"
!SGIlBinaryOp methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) hash.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201af420; bytecode file offset 0xaabce8"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleCompileTimeConstantExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63804'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := super isIleCompileTimeConstantExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleCompileTimeConstantExpr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201af458; bytecode file offset 0xaabd20"
!SGIlBinaryOp methodsFor: 'recovered'!
hasIleFloatConstant
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63804'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := super hasIleFloatConstant.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIleFloatConstant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20222e00; bytecode file offset 0xb1f6c8"
!SGIlBinaryOp methodsFor: 'recovered'!
tempAssignInBothBranches
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) leftExpr.
    recoveredValue1 := (recoveredValue0) tempAssignExpressionsNoConditional.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := (recoveredValue2) tempAssignExpressionsNoConditional.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) includes: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    recoveredValue6 := (recoveredValue4) select: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2025326c; bytecode file offset 0xb4fb38"
!SGIlBinaryOp methodsFor: 'recovered'!
isIleMixedSignedBinaryOp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) leftExpr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) needsUnsigned.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) rightExpr.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) interval.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) needsUnsigned.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) xor: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) interval.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) xor: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a1220; bytecode file offset 0xb9dae4"
!SGIlBinaryOp methodsFor: 'recovered'!
withChildNodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) leftExpr.
    recoveredValue2 := (self) rightExpr.
    recoveredValue3 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Arg2.
    recoveredBlock9Value2 := (self) createOpLeftExpr: (recoveredBlock9Value0) rightExpr: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    (recoveredValue0) value: (recoveredValue1) value: (recoveredValue2) value: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) rightExpr.
    recoveredValue6 := (self) leftExpr.
    recoveredValue7 := [:recoveredBlock29Arg1 :recoveredBlock29Arg2 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg2.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (self) createOpLeftExpr: (recoveredBlock29Value0) rightExpr: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    (recoveredValue4) value: (recoveredValue5) value: (recoveredValue6) value: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x203cb060; bytecode file offset 0xcc7944"
!SGIlBinaryOp methodsFor: 'recovered'!
asIleNoExprNoOverflow: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleSameOperationalLevel: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := leftExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asIleNoExprNoOverflow: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := rightExpr.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIleNoExprNoOverflow: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpLeftExpr: (recoveredStack1) rightExpr: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleShiftLeftExpr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleAddSubExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) ileBuilder.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock58Local1 recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 |
    recoveredBlock58Value0 := leftExpr.
    recoveredBlock58Value1 := recoveredArg1.
    recoveredBlock58Value2 := (recoveredBlock58Value0) asIleNoExprNoOverflow: (recoveredBlock58Value1).
    recoveredBlock58Local1 := recoveredBlock58Value2.
    recoveredBlock58Value3 := recoveredBlock58Local1.
    recoveredBlock58Value4 := recoveredBlock58Local1.
    recoveredBlock58Value5 := (self) ileBasicType.
    recoveredBlock58Value6 := (recoveredBlock58Value3) add: (recoveredBlock58Value4) type: (recoveredBlock58Value5).
    recoveredBlock58Value6
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) useSource: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20557670; bytecode file offset 0xe53f54"
!SGIlBinaryOp methodsFor: 'recovered'!
minMaxMuxConstantFoldingAddOpRightConstant: recoveredArg1 type: recoveredArg2 onSuccess: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) leftExpr.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredArg1.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack4 := self.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) ileBasicType.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) add: (recoveredBlock11Stack3) type: (recoveredBlock11Stack4).
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isIleRepresentable.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 58] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isIleRepresentableFraction.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 42] ifFalse: [recoveredBlock11PC := 109].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) leftExpr.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isIleRepresentableFraction.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 58] ifFalse: [recoveredBlock11PC := 50].
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isIleRepresentableFraction.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 58] ifFalse: [recoveredBlock11PC := 109].
        ].
        recoveredBlock11Step = 58 ifTrue: [
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 60.
        ].
        recoveredBlock11Step = 60 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) ileRuntimeCosts.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 64.
        ].
        recoveredBlock11Step = 64 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) ileRuntimeCosts.
            recoveredBlock11PC := 66.
        ].
        recoveredBlock11Step = 66 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) + (recoveredBlock11Stack3).
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) leftExpr.
            recoveredBlock11PC := 69.
        ].
        recoveredBlock11Step = 69 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) ileRuntimeCosts.
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            recoveredBlock11Stack4 := self.
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) rightExpr.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) ileRuntimeCosts.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) + (recoveredBlock11Stack4).
            recoveredBlock11PC := 76.
        ].
        recoveredBlock11Step = 76 ifTrue: [
            recoveredBlock11Stack4 := self.
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) ileRuntimeCostsOfConstant.
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) + (recoveredBlock11Stack4).
            recoveredBlock11PC := 80.
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11Stack4 := self.
            recoveredBlock11PC := 81.
        ].
        recoveredBlock11Step = 81 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) ileRuntimeCostsOfExpr.
            recoveredBlock11PC := 83.
        ].
        recoveredBlock11Step = 83 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) + (recoveredBlock11Stack4).
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) < (recoveredBlock11Stack3).
            recoveredBlock11PC := 85.
        ].
        recoveredBlock11Step = 85 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 88] ifFalse: [recoveredBlock11PC := 109].
        ].
        recoveredBlock11Step = 88 ifTrue: [
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 90.
        ].
        recoveredBlock11Step = 90 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) createOpLeftExpr: (recoveredBlock11Stack2) rightExpr: (recoveredBlock11Stack3).
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredLocal2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 97.
        ].
        recoveredBlock11Step = 97 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg3.
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal2.
            recoveredBlock11PC := 103.
        ].
        recoveredBlock11Step = 103 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) value: (recoveredBlock11Stack2).
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 106.
        ].
        recoveredBlock11Step = 106 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 109.
        ].
        recoveredBlock11Step = 109 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ileOptConstantFoldingAddOpRightConstant: (recoveredStack1) type: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftExpr.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Local1 recoveredBlock132Stack0 recoveredBlock132Stack1 recoveredBlock132Stack2 recoveredBlock132Stack3 recoveredBlock132Stack4 recoveredBlock132Stack5 recoveredBlock132PC recoveredBlock132Step recoveredBlock132Done recoveredBlock132Result |
    recoveredBlock132Stack0 := self.
    recoveredBlock132PC := 138.
    recoveredBlock132Done := false.
    [recoveredBlock132Done not] whileTrue: [
        recoveredBlock132Step := recoveredBlock132PC.
        recoveredBlock132Step = 138 ifTrue: [
            recoveredBlock132Stack1 := nil.
            recoveredBlock132PC := 139.
        ].
        recoveredBlock132Step = 139 ifTrue: [
            recoveredBlock132Stack2 := self.
            recoveredBlock132PC := 140.
        ].
        recoveredBlock132Step = 140 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) rightExpr.
            recoveredBlock132PC := 141.
        ].
        recoveredBlock132Step = 141 ifTrue: [
            recoveredBlock132Stack3 := recoveredArg1.
            recoveredBlock132PC := 144.
        ].
        recoveredBlock132Step = 144 ifTrue: [
            recoveredBlock132Stack4 := self.
            recoveredBlock132PC := 145.
        ].
        recoveredBlock132Step = 145 ifTrue: [
            recoveredBlock132Stack4 := (recoveredBlock132Stack4) ileBasicType.
            recoveredBlock132PC := 146.
        ].
        recoveredBlock132Step = 146 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) add: (recoveredBlock132Stack3) type: (recoveredBlock132Stack4).
            recoveredBlock132PC := 148.
        ].
        recoveredBlock132Step = 148 ifTrue: [
            recoveredBlock132Stack3 := recoveredBlock132Stack2.
            recoveredBlock132PC := 149.
        ].
        recoveredBlock132Step = 149 ifTrue: [
            recoveredBlock132Local1 := recoveredBlock132Stack3.
            recoveredBlock132PC := 150.
        ].
        recoveredBlock132Step = 150 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) isIleRepresentable.
            recoveredBlock132PC := 152.
        ].
        recoveredBlock132Step = 152 ifTrue: [
            (recoveredBlock132Stack2) ifTrue: [recoveredBlock132PC := 178] ifFalse: [recoveredBlock132PC := 156].
        ].
        recoveredBlock132Step = 156 ifTrue: [
            recoveredBlock132Stack2 := recoveredBlock132Local1.
            recoveredBlock132PC := 157.
        ].
        recoveredBlock132Step = 157 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) isIleRepresentableFraction.
            recoveredBlock132PC := 159.
        ].
        recoveredBlock132Step = 159 ifTrue: [
            (recoveredBlock132Stack2) ifTrue: [recoveredBlock132PC := 162] ifFalse: [recoveredBlock132PC := 211].
        ].
        recoveredBlock132Step = 162 ifTrue: [
            recoveredBlock132Stack2 := self.
            recoveredBlock132PC := 163.
        ].
        recoveredBlock132Step = 163 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) rightExpr.
            recoveredBlock132PC := 164.
        ].
        recoveredBlock132Step = 164 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) isIleRepresentableFraction.
            recoveredBlock132PC := 166.
        ].
        recoveredBlock132Step = 166 ifTrue: [
            (recoveredBlock132Stack2) ifTrue: [recoveredBlock132PC := 178] ifFalse: [recoveredBlock132PC := 170].
        ].
        recoveredBlock132Step = 170 ifTrue: [
            recoveredBlock132Stack2 := recoveredArg1.
            recoveredBlock132PC := 173.
        ].
        recoveredBlock132Step = 173 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) isIleRepresentableFraction.
            recoveredBlock132PC := 175.
        ].
        recoveredBlock132Step = 175 ifTrue: [
            (recoveredBlock132Stack2) ifTrue: [recoveredBlock132PC := 178] ifFalse: [recoveredBlock132PC := 211].
        ].
        recoveredBlock132Step = 178 ifTrue: [
            recoveredBlock132Stack2 := recoveredBlock132Arg1.
            recoveredBlock132PC := 179.
        ].
        recoveredBlock132Step = 179 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) ileRuntimeCosts.
            recoveredBlock132PC := 181.
        ].
        recoveredBlock132Step = 181 ifTrue: [
            recoveredBlock132Stack3 := self.
            recoveredBlock132PC := 182.
        ].
        recoveredBlock132Step = 182 ifTrue: [
            recoveredBlock132Stack3 := (recoveredBlock132Stack3) leftExpr.
            recoveredBlock132PC := 183.
        ].
        recoveredBlock132Step = 183 ifTrue: [
            recoveredBlock132Stack3 := (recoveredBlock132Stack3) ileRuntimeCosts.
            recoveredBlock132PC := 185.
        ].
        recoveredBlock132Step = 185 ifTrue: [
            recoveredBlock132Stack2 := (recoveredBlock132Stack2) < (recoveredBlock132Stack3).
            recoveredBlock132PC := 186.
        ].
        recoveredBlock132Step = 186 ifTrue: [
            (recoveredBlock132Stack2) ifTrue: [recoveredBlock132PC := 190] ifFalse: [recoveredBlock132PC := 211].
        ].
        recoveredBlock132Step = 190 ifTrue: [
            recoveredBlock132PC := 191.
        ].
        recoveredBlock132Step = 191 ifTrue: [
            recoveredBlock132Stack1 := self.
            recoveredBlock132PC := 192.
        ].
        recoveredBlock132Step = 192 ifTrue: [
            recoveredBlock132Stack2 := recoveredBlock132Arg1.
            recoveredBlock132PC := 193.
        ].
        recoveredBlock132Step = 193 ifTrue: [
            recoveredBlock132Stack3 := recoveredBlock132Local1.
            recoveredBlock132PC := 194.
        ].
        recoveredBlock132Step = 194 ifTrue: [
            recoveredBlock132Stack1 := (recoveredBlock132Stack1) createOpLeftExpr: (recoveredBlock132Stack2) rightExpr: (recoveredBlock132Stack3).
            recoveredBlock132PC := 196.
        ].
        recoveredBlock132Step = 196 ifTrue: [
            recoveredLocal2 := recoveredBlock132Stack1.
            recoveredBlock132PC := 199.
        ].
        recoveredBlock132Step = 199 ifTrue: [
            recoveredBlock132Stack1 := recoveredArg3.
            recoveredBlock132PC := 202.
        ].
        recoveredBlock132Step = 202 ifTrue: [
            recoveredBlock132Stack2 := recoveredLocal2.
            recoveredBlock132PC := 205.
        ].
        recoveredBlock132Step = 205 ifTrue: [
            recoveredBlock132Stack1 := (recoveredBlock132Stack1) value: (recoveredBlock132Stack2).
            recoveredBlock132PC := 207.
        ].
        recoveredBlock132Step = 207 ifTrue: [
            recoveredBlock132Stack2 := recoveredBlock132Stack1.
            recoveredBlock132PC := 208.
        ].
        recoveredBlock132Step = 208 ifTrue: [
            recoveredLocal1 := recoveredBlock132Stack2.
            recoveredBlock132PC := 211.
        ].
        recoveredBlock132Step = 211 ifTrue: [
            recoveredBlock132Result := recoveredBlock132Stack1.
            recoveredBlock132Done := true.
        ].
    ].
    recoveredBlock132Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) ileOptConstantFoldingAddOpRightConstant: (recoveredStack1) type: (recoveredStack2) onSuccess: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

