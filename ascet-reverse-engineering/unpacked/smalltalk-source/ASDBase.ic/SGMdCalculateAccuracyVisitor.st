"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cf44; bytecode file offset 0x909ab8"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
asIleExpr: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x200528d4; bytecode file offset 0x94f200"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
createNewState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdCalculateAccuracyState.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20081738; bytecode file offset 0x97e234"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
constant: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMdCalculateAccuracyData.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createFromConstant: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aaa60; bytecode file offset 0x9a734c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
binaryLogicExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super binaryLogicExpr: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x200aaa70; bytecode file offset 0x9a734c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
binaryEqualityExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super binaryEqualityExpr: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x200aaa80; bytecode file offset 0x9a734c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
unaryLogicExpr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super unaryLogicExpr: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x200aaa90; bytecode file offset 0x9a734c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
enumValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super enumValue: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x200c97f4; bytecode file offset 0x9c612c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) state.
    recoveredValue1 := (recoveredValue0) map.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20132eb4; bytecode file offset 0xa2f778"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
literal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFromConstant: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20167240; bytecode file offset 0xa63b08"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
analyseMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    (recoveredValue0) resetIATResults.
    recoveredValue1 := (self) createNewState: (nil).
    state := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) mdlAcceptNodeVisitor: (self).
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) IATResults.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20194bf8; bytecode file offset 0xa914c4"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
identifier: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201df75c; bytecode file offset 0xadc01c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
commaExpr: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) children.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock8Value2 := recoveredBlock8Value1.
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value1
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021bd88; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
methodCall: recoveredArg1
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
            super methodCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021bdb0; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
ansiCExpr: recoveredArg1
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
            super ansiCExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021bdd8; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
fieldAccess: recoveredArg1
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
            super fieldAccess: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021be00; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
abstractMethodCall: recoveredArg1
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
            super abstractMethodCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021be28; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
specialCall: recoveredArg1
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
            super specialCall: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021be50; bytecode file offset 0xb18724"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
indexedExpr: recoveredArg1
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
            super indexedExpr: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024b354; bytecode file offset 0xb47c20"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
checkIsContType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticLiteralType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isContLiteral.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUDiscLiteral.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSDiscLiteral.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgContType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b7c54; bytecode file offset 0xbb452c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
returnStmnt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) rescale: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := caseValue.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := caseValue.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) difference.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) asFloat.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) IATCase: (recoveredStack2) result: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ef108; bytecode file offset 0xbeb9e0"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
implCast: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIsContType: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGMdCalculateAccuracyData.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) interval.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) rightChild.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInterval: (recoveredStack1) formula: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) rescale: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20413444; bytecode file offset 0xd0fd1c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
assignExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) variable.
    recoveredBlock4Value2 := (recoveredBlock4Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) doProtected: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) rightChild.
    recoveredBlock22Value2 := (recoveredBlock22Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock22Value3 := recoveredBlock22Value2.
    recoveredLocal1 := recoveredBlock22Value3.
    recoveredBlock22Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) doProtected: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeUnion: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) variable.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) formula.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) rescale: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042d804; bytecode file offset 0xd2a0d4"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
betweenAndExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) leftChild.
    recoveredBlock13Value2 := (recoveredBlock13Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal2 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) doProtected: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) rightChild.
    recoveredBlock36Value2 := (recoveredBlock36Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock36Value3 := recoveredBlock36Value2.
    recoveredLocal1 := recoveredBlock36Value3.
    recoveredBlock36Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) doProtected: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) mergeUnion: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) union: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204394f4; bytecode file offset 0xd35dcc"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
muxExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) readingFromMdlNode: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) leftChild.
    recoveredBlock15Value2 := (recoveredBlock15Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal2 := recoveredBlock15Value3.
    recoveredBlock15Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) trueDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := recoveredArg1.
    recoveredBlock43Value1 := (recoveredBlock43Value0) rightChild.
    recoveredBlock43Value2 := (recoveredBlock43Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock43Value3 := recoveredBlock43Value2.
    recoveredLocal1 := recoveredBlock43Value3.
    recoveredBlock43Value2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) falseDo: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) merge: (recoveredStack1) with: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) union: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c84f8; bytecode file offset 0xdc4de8"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
multiplexExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) switchExprChild.
    (recoveredValue1) mdlAcceptNodeVisitor: (self).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal4 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) choiceChildren.
    recoveredValue6 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal4.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack2 := self.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) switchExprChild.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Arg1.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) literal.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack5 := [
    | recoveredBlock22Block41Value0 recoveredBlock22Block41Value1 recoveredBlock22Block41Value2 |
    recoveredBlock22Block41Value0 := recoveredBlock22Arg1.
    recoveredBlock22Block41Value1 := (recoveredBlock22Block41Value0) mdlAcceptNodeVisitor: (self).
    recoveredBlock22Block41Value2 := recoveredBlock22Block41Value1.
    recoveredLocal1 := recoveredBlock22Block41Value2.
    recoveredBlock22Block41Value1
].
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) expr: (recoveredBlock22Stack3) equals: (recoveredBlock22Stack4) do: (recoveredBlock22Stack5).
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            (recoveredBlock22Stack1) add: (recoveredBlock22Stack2).
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 64.
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack2 := self.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) checkIsContType: (recoveredBlock22Stack3).
            recoveredBlock22PC := 70.
        ].
        recoveredBlock22Step = 70 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 74] ifFalse: [recoveredBlock22PC := 100].
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            (recoveredBlock22Stack1 ~~ nil) ifTrue: [recoveredBlock22PC := 88] ifFalse: [recoveredBlock22PC := 82].
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 85.
        ].
        recoveredBlock22Step = 85 ifTrue: [
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 91.
        ].
        recoveredBlock22Step = 91 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) union: (recoveredBlock22Stack2).
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 97.
        ].
        recoveredBlock22Step = 97 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack2.
            recoveredBlock22PC := 100.
        ].
        recoveredBlock22Step = 100 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) defaultCondition: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredLocal4.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := [
    | recoveredBlock118Value0 recoveredBlock118Value1 recoveredBlock118Value2 |
    recoveredBlock118Value0 := recoveredArg1.
    recoveredBlock118Value1 := (recoveredBlock118Value0) defaultExprChild.
    recoveredBlock118Value2 := (recoveredBlock118Value1) mdlAcceptNodeVisitor: (self).
    recoveredBlock118Value2
].
    recoveredValue12 := (self) expr: (recoveredValue10) do: (recoveredValue11).
    (recoveredValue9) add: (recoveredValue12).
    recoveredValue13 := recoveredLocal4.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) switchExprChild.
    recoveredValue16 := (self) merge: (recoveredValue13) condition: (recoveredValue15).
    state := recoveredValue16.
    recoveredValue17 := recoveredLocal2.
    ^recoveredValue17
! !

"ASDBase.ic method 0x2053c26c; bytecode file offset 0xe38b7c"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
binaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredStack17 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) leftChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) rightChild.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 |
    recoveredBlock36Value0 := recoveredArg1.
    recoveredBlock36Value1 := (recoveredBlock36Value0) operator.
    recoveredBlock36Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'add'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := recoveredLocal2.
    recoveredBlock49Value1 := recoveredLocal1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) add: (recoveredBlock49Value1).
    ^recoveredBlock49Value2
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := 'sub'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredLocal2.
    recoveredBlock67Value1 := recoveredLocal1.
    recoveredBlock67Value2 := (recoveredBlock67Value0) sub: (recoveredBlock67Value1).
    ^recoveredBlock67Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack6 := 'mul'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 |
    recoveredBlock85Value0 := recoveredLocal2.
    recoveredBlock85Value1 := recoveredLocal1.
    recoveredBlock85Value2 := (recoveredBlock85Value0) mul: (recoveredBlock85Value1).
    ^recoveredBlock85Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack8 := 'div'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack9 := [
    | recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 |
    recoveredBlock103Value0 := recoveredLocal2.
    recoveredBlock103Value1 := recoveredLocal1.
    recoveredBlock103Value2 := (recoveredBlock103Value0) div: (recoveredBlock103Value1).
    ^recoveredBlock103Value2
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack10 := 'rem'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack11 := [
    | recoveredBlock121Value0 recoveredBlock121Value1 recoveredBlock121Value2 |
    recoveredBlock121Value0 := recoveredLocal2.
    recoveredBlock121Value1 := recoveredLocal1.
    recoveredBlock121Value2 := (recoveredBlock121Value0) rem: (recoveredBlock121Value1).
    ^recoveredBlock121Value2
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack12 := 'min'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack13 := [
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 |
    recoveredBlock139Value0 := recoveredLocal2.
    recoveredBlock139Value1 := recoveredLocal1.
    recoveredBlock139Value2 := (recoveredBlock139Value0) min: (recoveredBlock139Value1).
    ^recoveredBlock139Value2
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack14 := 'max'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack15 := [
    | recoveredBlock157Value0 recoveredBlock157Value1 recoveredBlock157Value2 |
    recoveredBlock157Value0 := recoveredLocal2.
    recoveredBlock157Value1 := recoveredLocal1.
    recoveredBlock157Value2 := (recoveredBlock157Value0) max: (recoveredBlock157Value1).
    ^recoveredBlock157Value2
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack16 := [
    | recoveredBlock173Stack0 recoveredBlock173Stack1 recoveredBlock173Stack2 recoveredBlock173Stack3 recoveredBlock173PC recoveredBlock173Step recoveredBlock173Done recoveredBlock173Result |
    recoveredBlock173Stack0 := self.
    recoveredBlock173PC := 180.
    recoveredBlock173Done := false.
    [recoveredBlock173Done not] whileTrue: [
        recoveredBlock173Step := recoveredBlock173PC.
        recoveredBlock173Step = 180 ifTrue: [
            recoveredBlock173Stack1 := [
    false
].
            recoveredBlock173PC := 182.
        ].
        recoveredBlock173Step = 182 ifTrue: [
            recoveredBlock173PC := 188.
        ].
        recoveredBlock173Step = 188 ifTrue: [
            recoveredBlock173Stack2 := [
    | recoveredBlock173Block188Value0 recoveredBlock173Block188Value1 recoveredBlock173Block188Value2 |
    recoveredBlock173Block188Value0 := recoveredArg1.
    recoveredBlock173Block188Value1 := (recoveredBlock173Block188Value0) operator.
    recoveredBlock173Block188Value2 := ('Unknown operation ') , (recoveredBlock173Block188Value1).
    recoveredBlock173Block188Value2
].
            recoveredBlock173PC := 203.
        ].
        recoveredBlock173Step = 203 ifTrue: [
            recoveredBlock173Stack0 := (recoveredBlock173Stack0) ileAssert: (recoveredBlock173Stack1) message: (recoveredBlock173Stack2).
            recoveredBlock173PC := 205.
        ].
        recoveredBlock173Step = 205 ifTrue: [
            recoveredBlock173Result := recoveredBlock173Stack0.
            recoveredBlock173Done := true.
        ].
    ].
    recoveredBlock173Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) case: (recoveredStack14) do: (recoveredStack15) others: (recoveredStack16).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054e42c; bytecode file offset 0xe4ad30"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
unaryArithmeticExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) child.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) operator.
    recoveredBlock22Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'neg'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := recoveredLocal1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) neg.
    ^recoveredBlock35Value1
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 'abs'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := (recoveredBlock50Value0) abs.
    ^recoveredBlock50Value1
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack6 := 'preInc'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := [
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 recoveredBlock64Value5 recoveredBlock64Value6 |
    recoveredBlock64Value0 := recoveredLocal1.
    recoveredBlock64Value1 := (self) constant: (1).
    recoveredBlock64Value2 := (recoveredBlock64Value0) add: (recoveredBlock64Value1).
    recoveredLocal1 := recoveredBlock64Value2.
    recoveredBlock64Value3 := recoveredArg1.
    recoveredBlock64Value4 := (recoveredBlock64Value3) child.
    recoveredBlock64Value5 := recoveredLocal1.
    (self) at: (recoveredBlock64Value4) put: (recoveredBlock64Value5).
    recoveredBlock64Value6 := recoveredLocal1.
    ^recoveredBlock64Value6
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack8 := 'preDec'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack9 := [
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 recoveredBlock98Value3 recoveredBlock98Value4 recoveredBlock98Value5 recoveredBlock98Value6 |
    recoveredBlock98Value0 := recoveredLocal1.
    recoveredBlock98Value1 := (self) constant: (1).
    recoveredBlock98Value2 := (recoveredBlock98Value0) sub: (recoveredBlock98Value1).
    recoveredLocal1 := recoveredBlock98Value2.
    recoveredBlock98Value3 := recoveredArg1.
    recoveredBlock98Value4 := (recoveredBlock98Value3) child.
    recoveredBlock98Value5 := recoveredLocal1.
    (self) at: (recoveredBlock98Value4) put: (recoveredBlock98Value5).
    recoveredBlock98Value6 := recoveredLocal1.
    ^recoveredBlock98Value6
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack10 := 'postInc'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack11 := [
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 recoveredBlock132Value4 recoveredBlock132Value5 |
    recoveredBlock132Value0 := recoveredArg1.
    recoveredBlock132Value1 := (recoveredBlock132Value0) child.
    recoveredBlock132Value2 := recoveredLocal1.
    recoveredBlock132Value3 := (self) constant: (1).
    recoveredBlock132Value4 := (recoveredBlock132Value2) add: (recoveredBlock132Value3).
    (self) at: (recoveredBlock132Value1) put: (recoveredBlock132Value4).
    recoveredBlock132Value5 := recoveredLocal1.
    ^recoveredBlock132Value5
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack12 := 'postDec'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack13 := [
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 recoveredBlock160Value3 recoveredBlock160Value4 recoveredBlock160Value5 |
    recoveredBlock160Value0 := recoveredArg1.
    recoveredBlock160Value1 := (recoveredBlock160Value0) child.
    recoveredBlock160Value2 := recoveredLocal1.
    recoveredBlock160Value3 := (self) constant: (1).
    recoveredBlock160Value4 := (recoveredBlock160Value2) sub: (recoveredBlock160Value3).
    (self) at: (recoveredBlock160Value1) put: (recoveredBlock160Value4).
    recoveredBlock160Value5 := recoveredLocal1.
    ^recoveredBlock160Value5
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack14 := [
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := [
    false
].
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186PC := 200.
        ].
        recoveredBlock186Step = 200 ifTrue: [
            recoveredBlock186Stack2 := [
    | recoveredBlock186Block200Value0 recoveredBlock186Block200Value1 recoveredBlock186Block200Value2 |
    recoveredBlock186Block200Value0 := recoveredArg1.
    recoveredBlock186Block200Value1 := (recoveredBlock186Block200Value0) operator.
    recoveredBlock186Block200Value2 := ('Unknown unary operator ') , (recoveredBlock186Block200Value1).
    recoveredBlock186Block200Value2
].
            recoveredBlock186PC := 215.
        ].
        recoveredBlock186Step = 215 ifTrue: [
            recoveredBlock186Stack0 := (recoveredBlock186Stack0) ileAssert: (recoveredBlock186Stack1) message: (recoveredBlock186Stack2).
            recoveredBlock186PC := 217.
        ].
        recoveredBlock186Step = 217 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack0.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) case: (recoveredStack8) do: (recoveredStack9) case: (recoveredStack10) do: (recoveredStack11) case: (recoveredStack12) do: (recoveredStack13) others: (recoveredStack14).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d293c; bytecode file offset 0xecf270"
!SGMdCalculateAccuracyVisitor methodsFor: 'recovered'!
switchStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exprChild.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) mdlAcceptNodeVisitor: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) stmntChild.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBlockStmnt.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 353].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:block281196e0Arg1 | 
    | block281196e0Value0 block281196e0Value1 |
    block281196e0Value0 := block281196e0Arg1.
    block281196e0Value1 := (block281196e0Value0) isMdlLabelStmnt.
    block281196e0Value1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 353].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock69Local1 recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 |
    recoveredBlock69Value0 := recoveredLocal3.
    recoveredBlock69Local1 := recoveredBlock69Value0.
    recoveredBlock69Value1 := [
    | recoveredBlock69Block82Local1 recoveredBlock69Block82Stack0 recoveredBlock69Block82Stack1 recoveredBlock69Block82Stack2 recoveredBlock69Block82Stack3 recoveredBlock69Block82Stack4 recoveredBlock69Block82PC recoveredBlock69Block82Step recoveredBlock69Block82Done recoveredBlock69Block82Result |
    recoveredBlock69Block82Stack0 := self.
    recoveredBlock69Block82PC := 88.
    recoveredBlock69Block82Done := false.
    [recoveredBlock69Block82Done not] whileTrue: [
        recoveredBlock69Block82Step := recoveredBlock69Block82PC.
        recoveredBlock69Block82Step = 88 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredLocal4.
            recoveredBlock69Block82PC := 91.
        ].
        recoveredBlock69Block82Step = 91 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) children.
            recoveredBlock69Block82PC := 93.
        ].
        recoveredBlock69Block82Step = 93 ifTrue: [
            recoveredBlock69Block82Stack2 := recoveredBlock69Local1.
            recoveredBlock69Block82PC := 96.
        ].
        recoveredBlock69Block82Step = 96 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) at: (recoveredBlock69Block82Stack2).
            recoveredBlock69Block82PC := 98.
        ].
        recoveredBlock69Block82Step = 98 ifTrue: [
            recoveredBlock69Block82Local1 := recoveredBlock69Block82Stack1.
            recoveredBlock69Block82PC := 99.
        ].
        recoveredBlock69Block82Step = 99 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredBlock69Block82Local1.
            recoveredBlock69Block82PC := 100.
        ].
        recoveredBlock69Block82Step = 100 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) isMdlDefaultStmnt.
            recoveredBlock69Block82PC := 102.
        ].
        recoveredBlock69Block82Step = 102 ifTrue: [
            (recoveredBlock69Block82Stack1) ifTrue: [recoveredBlock69Block82PC := 113] ifFalse: [recoveredBlock69Block82PC := 106].
        ].
        recoveredBlock69Block82Step = 106 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredBlock69Block82Local1.
            recoveredBlock69Block82PC := 107.
        ].
        recoveredBlock69Block82Step = 107 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) literal.
            recoveredBlock69Block82PC := 109.
        ].
        recoveredBlock69Block82Step = 109 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) value.
            recoveredBlock69Block82PC := 111.
        ].
        recoveredBlock69Block82Step = 111 ifTrue: [
            caseValue := recoveredBlock69Block82Stack1.
            recoveredBlock69Block82PC := 113.
        ].
        recoveredBlock69Block82Step = 113 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredBlock69Block82Local1.
            recoveredBlock69Block82PC := 114.
        ].
        recoveredBlock69Block82Step = 114 ifTrue: [
            recoveredBlock69Block82Stack2 := self.
            recoveredBlock69Block82PC := 115.
        ].
        recoveredBlock69Block82Step = 115 ifTrue: [
            (recoveredBlock69Block82Stack1) mdlAcceptNodeVisitor: (recoveredBlock69Block82Stack2).
            recoveredBlock69Block82PC := 117.
        ].
        recoveredBlock69Block82Step = 117 ifTrue: [
            recoveredBlock69Block82Stack1 := nil.
            recoveredBlock69Block82PC := 118.
        ].
        recoveredBlock69Block82Step = 118 ifTrue: [
            caseValue := recoveredBlock69Block82Stack1.
            recoveredBlock69Block82PC := 120.
        ].
        recoveredBlock69Block82Step = 120 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredBlock69Local1.
            recoveredBlock69Block82PC := 123.
        ].
        recoveredBlock69Block82Step = 123 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) + (1).
            recoveredBlock69Block82PC := 124.
        ].
        recoveredBlock69Block82Step = 124 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Block82Stack1.
            recoveredBlock69Block82PC := 127.
        ].
        recoveredBlock69Block82Step = 127 ifTrue: [
            recoveredBlock69Block82Stack1 := false.
            recoveredBlock69Block82PC := 128.
        ].
        recoveredBlock69Block82Step = 128 ifTrue: [
            recoveredBlock69Block82Stack2 := recoveredBlock69Local1.
            recoveredBlock69Block82PC := 131.
        ].
        recoveredBlock69Block82Step = 131 ifTrue: [
            recoveredBlock69Block82Stack3 := recoveredLocal4.
            recoveredBlock69Block82PC := 134.
        ].
        recoveredBlock69Block82Step = 134 ifTrue: [
            recoveredBlock69Block82Stack3 := (recoveredBlock69Block82Stack3) children.
            recoveredBlock69Block82PC := 136.
        ].
        recoveredBlock69Block82Step = 136 ifTrue: [
            recoveredBlock69Block82Stack3 := (recoveredBlock69Block82Stack3) size.
            recoveredBlock69Block82PC := 138.
        ].
        recoveredBlock69Block82Step = 138 ifTrue: [
            recoveredBlock69Block82Stack2 := (recoveredBlock69Block82Stack2) < (recoveredBlock69Block82Stack3).
            recoveredBlock69Block82PC := 139.
        ].
        recoveredBlock69Block82Step = 139 ifTrue: [
            (recoveredBlock69Block82Stack2) ifTrue: [recoveredBlock69Block82PC := 142] ifFalse: [recoveredBlock69Block82PC := 147].
        ].
        recoveredBlock69Block82Step = 142 ifTrue: [
            recoveredBlock69Block82PC := 143.
        ].
        recoveredBlock69Block82Step = 143 ifTrue: [
            recoveredBlock69Block82Stack1 := recoveredBlock69Block82Local1.
            recoveredBlock69Block82PC := 144.
        ].
        recoveredBlock69Block82Step = 144 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) hasEndCaseStmnt.
            recoveredBlock69Block82PC := 146.
        ].
        recoveredBlock69Block82Step = 146 ifTrue: [
            recoveredBlock69Block82Stack1 := (recoveredBlock69Block82Stack1) not.
            recoveredBlock69Block82PC := 147.
        ].
        recoveredBlock69Block82Step = 147 ifTrue: [
            recoveredBlock69Block82Result := recoveredBlock69Block82Stack1.
            recoveredBlock69Block82Done := true.
        ].
    ].
    recoveredBlock69Block82Result
].
    recoveredBlock69Value2 := (recoveredBlock69Value1) whileTrue.
    recoveredBlock69Value2
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) children.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlDefaultStmnt.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := (recoveredStack3) generator.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := (recoveredStack4) exprChild.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock177Stack0 recoveredBlock177Stack1 recoveredBlock177Stack2 recoveredBlock177Stack3 recoveredBlock177Stack4 recoveredBlock177PC recoveredBlock177Step recoveredBlock177Done recoveredBlock177Result |
    recoveredBlock177Stack0 := self.
    recoveredBlock177PC := 184.
    recoveredBlock177Done := false.
    [recoveredBlock177Done not] whileTrue: [
        recoveredBlock177Step := recoveredBlock177PC.
        recoveredBlock177Step = 184 ifTrue: [
            recoveredBlock177Stack1 := nil.
            recoveredBlock177PC := 185.
        ].
        recoveredBlock177Step = 185 ifTrue: [
            recoveredBlock177Stack2 := self.
            recoveredBlock177PC := 186.
        ].
        recoveredBlock177Step = 186 ifTrue: [
            recoveredBlock177Stack3 := recoveredArg1.
            recoveredBlock177PC := 189.
        ].
        recoveredBlock177Step = 189 ifTrue: [
            recoveredBlock177Stack3 := (recoveredBlock177Stack3) exprChild.
            recoveredBlock177PC := 190.
        ].
        recoveredBlock177Step = 190 ifTrue: [
            recoveredBlock177Stack2 := (recoveredBlock177Stack2) asIleExpr: (recoveredBlock177Stack3).
            recoveredBlock177PC := 192.
        ].
        recoveredBlock177Step = 192 ifTrue: [
            recoveredBlock177Stack3 := recoveredBlock177Stack2.
            recoveredBlock177PC := 193.
        ].
        recoveredBlock177Step = 193 ifTrue: [
            recoveredLocal1 := recoveredBlock177Stack3.
            recoveredBlock177PC := 196.
        ].
        recoveredBlock177Step = 196 ifTrue: [
            (recoveredBlock177Stack2 == nil) ifTrue: [recoveredBlock177PC := 252] ifFalse: [recoveredBlock177PC := 200].
        ].
        recoveredBlock177Step = 200 ifTrue: [
            recoveredBlock177PC := 201.
        ].
        recoveredBlock177Step = 201 ifTrue: [
            recoveredBlock177Stack1 := recoveredLocal4.
            recoveredBlock177PC := 204.
        ].
        recoveredBlock177Step = 204 ifTrue: [
            recoveredBlock177Stack1 := (recoveredBlock177Stack1) children.
            recoveredBlock177PC := 206.
        ].
        recoveredBlock177Step = 206 ifTrue: [
            recoveredBlock177Stack2 := [:block28119704Arg1 | 
    | block28119704Value0 block28119704Value1 |
    block28119704Value0 := block28119704Arg1.
    block28119704Value1 := (block28119704Value0) isMdlCaseStmnt.
    block28119704Value1
].
            recoveredBlock177PC := 208.
        ].
        recoveredBlock177Step = 208 ifTrue: [
            recoveredBlock177PC := 216.
        ].
        recoveredBlock177Step = 216 ifTrue: [
            recoveredBlock177Stack1 := (recoveredBlock177Stack1) select: (recoveredBlock177Stack2).
            recoveredBlock177PC := 218.
        ].
        recoveredBlock177Step = 218 ifTrue: [
            recoveredBlock177Stack2 := self.
            recoveredBlock177PC := 219.
        ].
        recoveredBlock177Step = 219 ifTrue: [
            recoveredBlock177Stack2 := (recoveredBlock177Stack2) literalTrue.
            recoveredBlock177PC := 221.
        ].
        recoveredBlock177Step = 221 ifTrue: [
            recoveredBlock177Stack3 := [:recoveredBlock177Block221Arg1 :recoveredBlock177Block221Arg2 | 
    | recoveredBlock177Block221Value0 recoveredBlock177Block221Value1 recoveredBlock177Block221Value2 recoveredBlock177Block221Value3 recoveredBlock177Block221Value4 recoveredBlock177Block221Value5 recoveredBlock177Block221Value6 recoveredBlock177Block221Value7 recoveredBlock177Block221Value8 |
    recoveredBlock177Block221Value0 := recoveredBlock177Block221Arg1.
    recoveredBlock177Block221Value1 := recoveredLocal1.
    recoveredBlock177Block221Value2 := (recoveredBlock177Block221Value1) asIleCopy.
    recoveredBlock177Block221Value3 := recoveredBlock177Block221Arg2.
    recoveredBlock177Block221Value4 := (recoveredBlock177Block221Value3) literal.
    recoveredBlock177Block221Value5 := (self) asIleExpr: (recoveredBlock177Block221Value4).
    recoveredBlock177Block221Value6 := (recoveredBlock177Block221Value2) equal: (recoveredBlock177Block221Value5).
    recoveredBlock177Block221Value7 := (recoveredBlock177Block221Value6) not.
    recoveredBlock177Block221Value8 := (recoveredBlock177Block221Value0) andExpr: (recoveredBlock177Block221Value7).
    recoveredBlock177Block221Value8
].
            recoveredBlock177PC := 246.
        ].
        recoveredBlock177Step = 246 ifTrue: [
            recoveredBlock177Stack1 := (recoveredBlock177Stack1) inject: (recoveredBlock177Stack2) into: (recoveredBlock177Stack3).
            recoveredBlock177PC := 248.
        ].
        recoveredBlock177Step = 248 ifTrue: [
            recoveredBlock177Stack2 := recoveredBlock177Stack1.
            recoveredBlock177PC := 249.
        ].
        recoveredBlock177Step = 249 ifTrue: [
            recoveredLocal1 := recoveredBlock177Stack2.
            recoveredBlock177PC := 252.
        ].
        recoveredBlock177Step = 252 ifTrue: [
            recoveredBlock177Result := recoveredBlock177Stack1.
            recoveredBlock177Done := true.
        ].
    ].
    recoveredBlock177Result
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack3) withExpressionContextFrom: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr: (recoveredStack5) do: (recoveredStack6).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 304.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := (recoveredStack5) exprChild.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack6 := (recoveredStack6) children.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack6 := (recoveredStack6) literal.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack4 := (recoveredStack4) expr: (recoveredStack5) equals: (recoveredStack6) do: (recoveredStack7).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 66] ifFalse: [recoveredPC := 340]] ifFalse: [recoveredPC := 313].
        ].
        recoveredStep = 313 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := (recoveredStack3) exprChild.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) merge: (recoveredStack2) condition: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

