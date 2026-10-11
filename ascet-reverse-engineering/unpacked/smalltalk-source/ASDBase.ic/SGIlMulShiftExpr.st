"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d300; bytecode file offset 0x92209c"
!SGIlMulShiftExpr methodsFor: 'recovered'!
serviceLabel
    ^'*>'
! !

"ASDBase.ic method 0x20055164; bytecode file offset 0x952a9c"
!SGIlMulShiftExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mulShiftServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077414; bytecode file offset 0x9757c8"
!SGIlMulShiftExpr methodsFor: 'recovered'!
isIleMulShiftServiceExpr
    ^true
! !

"ASDBase.ic method 0x20148e14; bytecode file offset 0xa45714"
!SGIlMulShiftExpr methodsFor: 'recovered'!
createFirstOperand: recoveredArg1 secondOperand: recoveredArg2 thirdOperand: recoveredArg3 alternativeExpr: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) goalInterval.
    recoveredValue5 := (self) limitOverflow.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (self) source.
    recoveredValue8 := (recoveredValue0) createMulShiftExpr: (recoveredValue1) secondOperand: (recoveredValue2) thirdOperand: (recoveredValue3) goalInterval: (recoveredValue4) limit: (recoveredValue5) alternative: (recoveredValue6) source: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201a691c; bytecode file offset 0xaa31ec"
!SGIlMulShiftExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addServiceArgs: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) shortCType.
    (recoveredValue2) at: ('tr') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) longCType.
    (recoveredValue4) at: ('ftr') put: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20282b28; bytecode file offset 0xb7f40c"
!SGIlMulShiftExpr methodsFor: 'recovered'!
ileLimitOverflow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitOverflow.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeOrNil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) firstOperand.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) ileBasicIntervalOrNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack5 := (recoveredStack5) goalInterval.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := (recoveredStack6) alternativeExpr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := (recoveredStack7) serviceLabel.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := (recoveredStack9) secondOperand.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack10 := (recoveredStack10) thirdOperand.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2) leftExpr: (recoveredStack3) interval: (recoveredStack4) goalInterval: (recoveredStack5) alternativeExpr: (recoveredStack6) serviceLabel: (recoveredStack7) limit: (recoveredStack8) rightExpr: (recoveredStack9) thirdOperand: (recoveredStack10).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

