"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003a664; bytecode file offset 0x938608"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
equalExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) equaliltyExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003aaa8; bytecode file offset 0x938608"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
notEqualExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) equaliltyExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b378; bytecode file offset 0x938608"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
abstractIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) asBracedExpr: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20068aa4; bytecode file offset 0x965b90"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
forceParenthesisLogicalBinOp
    | recoveredValue0 |
    recoveredValue0 := forceParenthesisLogicalBinOp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d08; bytecode file offset 0x966bdc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
parenthesizeForReadability
    | recoveredValue0 |
    recoveredValue0 := parenthesizeForReadability.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa8c; bytecode file offset 0x967a18"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
parentExpr
    | recoveredValue0 |
    recoveredValue0 := parentExpr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bbf0; bytecode file offset 0x96873c"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
isRightChildOfParent
    | recoveredValue0 |
    recoveredValue0 := isRightChildOfParent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200790d0; bytecode file offset 0x975984"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
precedenceLevelOfNoBrace
    ^10000
! !

"ASDBase.ic method 0x200ad308; bytecode file offset 0x9a9bf0"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
parent: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) parent: (recoveredValue0) rightChild: (nil) do: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c17dc; bytecode file offset 0x9beac8"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
parentExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parentExpr := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2b50; bytecode file offset 0x9bf474"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
isRightChildOfParent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isRightChildOfParent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eeec8; bytecode file offset 0x9eb79c"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
implCastAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super implCastAssignExpr: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) asBracedExpr: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f944c; bytecode file offset 0x9f5d0c"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
currentPrecedenceLevel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) precedenceLevelOfNoBrace.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) precedenceLevel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20122284; bytecode file offset 0xa1eb40"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
asPrecedenceBracedExpr: recoveredArg1 level: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) precedenceLevel.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asBracedExpr.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20162a34; bytecode file offset 0xa5f2fc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := (self) generator.
    recoveredValue1 := (recoveredValue0) forceParenthesisLogicalBinOp.
    forceParenthesisLogicalBinOp := recoveredValue1.
    recoveredValue2 := (self) generator.
    recoveredValue3 := (recoveredValue2) parenthesizeForReadability.
    parenthesizeForReadability := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20207bf8; bytecode file offset 0xb044b8"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
tempAssignExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super tempAssignExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202213e8; bytecode file offset 0xb1dcdc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super assignExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20221400; bytecode file offset 0xb1dcdc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
castExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super castExpr: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20221418; bytecode file offset 0xb1dcdc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
unaryOp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := super unaryOp: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2022d2c4; bytecode file offset 0xb29bc4"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) secondOperand.
    recoveredBlock9Value2 := (self) visitNode: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue2 := (self) parent: (nil) do: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) createNoOpSecondOperand: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) unaryServiceExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022d2e0; bytecode file offset 0xb29bc4"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) thirdOperand.
    recoveredBlock9Value2 := (self) visitNode: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue2 := (self) parent: (nil) do: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) createNoOpThirdOperand: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) binaryServiceExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022d2fc; bytecode file offset 0xb29bc4"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) firstOperand.
    recoveredBlock9Value2 := (self) visitNode: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
    recoveredValue2 := (self) parent: (nil) do: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) createNoOpFirstOperand: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) asBracedExpr: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202502c8; bytecode file offset 0xb4cbac"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
declFieldAccess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) receiver.
    recoveredBlock7Value3 := (self) visitNode: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value0) createOpReceiver: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202502e4; bytecode file offset 0xb4cbac"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
abstractDirectAccess: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) receiver.
    recoveredBlock7Value3 := (self) visitNode: (recoveredBlock7Value2).
    recoveredBlock7Value4 := (recoveredBlock7Value0) createOpReceiver: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2026d948; bytecode file offset 0xb6a214"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := [
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 |
    recoveredBlock11Block19Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block19Value1 := (self) visitNode: (recoveredBlock11Block19Value0).
    recoveredBlock11Block19Value1
].
    recoveredBlock11Value1 := (self) parent: (nil) do: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createWithArgs: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asBracedExpr.
    ^recoveredValue6
! !

"ASDBase.ic method 0x202ae538; bytecode file offset 0xbaae04"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) args.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := [
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 |
    recoveredBlock11Block19Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block19Value1 := (self) visitNode: (recoveredBlock11Block19Value0).
    recoveredBlock11Block19Value1
].
    recoveredBlock11Value1 := (self) parent: (nil) do: (recoveredBlock11Value0).
    recoveredBlock11Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createNoOpArgs: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) asBracedExpr: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202cd1e4; bytecode file offset 0xbc9aac"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
parent: recoveredArg1 rightChild: recoveredArg2 do: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) parentExpr.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) isRightChildOfParent.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    (self) isRightChildOfParent: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parentExpr: (recoveredValue3).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredLocal3.
    (self) parentExpr: (recoveredBlock28Value0).
    recoveredBlock28Value1 := recoveredLocal2.
    recoveredBlock28Value2 := (self) isRightChildOfParent: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
    recoveredValue6 := (recoveredValue4) ensure: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202e6b40; bytecode file offset 0xbe340c"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
absExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := super unaryOp: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) noServiceExpr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) noServiceExpr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) visitNode: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOpNoServiceExpr: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fd23c; bytecode file offset 0xbf9b10"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
asBracedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) forceParenthesisLogicalBinOp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBinaryLogicOp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) braceForceParenthesisLogicOp: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) parenthesizeForReadability.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBinaryOp.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) parenthesizeForReadability: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPrecedenceBracedExpr: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032c360; bytecode file offset 0xc28c34"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
asPrecedenceBracedExpr: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleBinaryArithOp.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRightChildOfParent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) parentExpr.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) precedenceLevel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPrecedenceBracedExpr: (recoveredStack1) level: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNegExpr.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBracedExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentPrecedenceLevel.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPrecedenceBracedExpr: (recoveredStack1) level: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20357408; bytecode file offset 0xc53cd4"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
binaryExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) leftExpr.
    recoveredBlock8Value2 := (self) visitNode: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue2 := (self) parent: (recoveredValue0) rightChild: (false) do: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredArg1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) rightExpr.
    recoveredBlock31Value2 := (self) visitNode: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
    recoveredValue5 := (self) parent: (recoveredValue3) rightChild: (true) do: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue6) createNoOpLeftExpr: (recoveredValue7) rightExpr: (recoveredValue8).
    recoveredValue10 := (self) asBracedExpr: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x20372afc; bytecode file offset 0xc6f3cc"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
assignAtExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) args.
    recoveredBlock7Value2 := [:recoveredBlock7Block18Arg1 | 
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 |
    recoveredBlock7Block18Value0 := [
    | recoveredBlock7Block18Block25Value0 recoveredBlock7Block18Block25Value1 |
    recoveredBlock7Block18Block25Value0 := recoveredBlock7Block18Arg1.
    recoveredBlock7Block18Block25Value1 := (self) visitNode: (recoveredBlock7Block18Block25Value0).
    recoveredBlock7Block18Block25Value1
].
    recoveredBlock7Block18Value1 := (self) parent: (nil) do: (recoveredBlock7Block18Value0).
    recoveredBlock7Block18Value1
].
    recoveredBlock7Value3 := (recoveredBlock7Value1) collect: (recoveredBlock7Value2).
    recoveredBlock7Local2 := recoveredBlock7Value3.
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) baseExpr.
    recoveredBlock7Value6 := (self) visitNode: (recoveredBlock7Value5).
    recoveredBlock7Local1 := recoveredBlock7Value6.
    recoveredBlock7Value7 := recoveredArg1.
    recoveredBlock7Value8 := recoveredBlock7Local1.
    recoveredBlock7Value9 := recoveredBlock7Local2.
    recoveredBlock7Value10 := (recoveredBlock7Value7) createNoOpBaseExpr: (recoveredBlock7Value8) args: (recoveredBlock7Value9).
    recoveredBlock7Value10
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20378f1c; bytecode file offset 0xc757f0"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 |
    recoveredBlock7Value0 := [
    | recoveredBlock7Block15Value0 recoveredBlock7Block15Value1 recoveredBlock7Block15Value2 |
    recoveredBlock7Block15Value0 := recoveredArg1.
    recoveredBlock7Block15Value1 := (recoveredBlock7Block15Value0) condExpr.
    recoveredBlock7Block15Value2 := (self) visitNode: (recoveredBlock7Block15Value1).
    recoveredBlock7Block15Value2
].
    recoveredBlock7Value1 := (self) parent: (nil) do: (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) asBracedExpr.
    recoveredBlock7Local3 := recoveredBlock7Value2.
    recoveredBlock7Value3 := recoveredArg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) leftExpr.
    recoveredBlock7Value5 := (self) visitNode: (recoveredBlock7Value4).
    recoveredBlock7Local2 := recoveredBlock7Value5.
    recoveredBlock7Value6 := recoveredArg1.
    recoveredBlock7Value7 := (recoveredBlock7Value6) rightExpr.
    recoveredBlock7Value8 := (self) visitNode: (recoveredBlock7Value7).
    recoveredBlock7Local1 := recoveredBlock7Value8.
    recoveredBlock7Value9 := recoveredArg1.
    recoveredBlock7Value10 := recoveredBlock7Local3.
    recoveredBlock7Value11 := recoveredBlock7Local2.
    recoveredBlock7Value12 := recoveredBlock7Local1.
    recoveredBlock7Value13 := (recoveredBlock7Value9) createNoOpCondExpr: (recoveredBlock7Value10) leftExpr: (recoveredBlock7Value11) rightExpr: (recoveredBlock7Value12).
    recoveredBlock7Value13
].
    recoveredValue2 := (self) parent: (recoveredValue0) do: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) asBracedExpr: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x203a3cd8; bytecode file offset 0xca05b4"
!SGIlBraceStmntTransformation methodsFor: 'recovered'!
equaliltyExpr: recoveredArg1
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
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) expressionContext.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 |
    recoveredBlock7Block18Value0 := recoveredArg1.
    recoveredBlock7Block18Value1 := super binaryExpr: (recoveredBlock7Block18Value0).
    recoveredBlock7Block18Value1
].
    recoveredBlock7Value3 := (recoveredBlock7Value1) executeInContext: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleEqualExpr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentExpr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleNotEqualExpr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBracedExpr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) asBracedExpr: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

