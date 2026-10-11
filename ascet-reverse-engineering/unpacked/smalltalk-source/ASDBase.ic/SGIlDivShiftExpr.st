"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020300; bytecode file offset 0x92209c"
!SGIlDivShiftExpr methodsFor: 'recovered'!
serviceLabel
    ^'/<'
! !

"ASDBase.ic method 0x20054f78; bytecode file offset 0x952a9c"
!SGIlDivShiftExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) divShiftServiceExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20076ea4; bytecode file offset 0x9757c8"
!SGIlDivShiftExpr methodsFor: 'recovered'!
isIleDivShiftServiceExpr
    ^true
! !

"ASDBase.ic method 0x20148e30; bytecode file offset 0xa45714"
!SGIlDivShiftExpr methodsFor: 'recovered'!
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
    recoveredValue8 := (recoveredValue0) createDivShiftExpr: (recoveredValue1) secondOperand: (recoveredValue2) thirdOperand: (recoveredValue3) goalInterval: (recoveredValue4) limit: (recoveredValue5) alternative: (recoveredValue6) source: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2020e2a8; bytecode file offset 0xb0abac"
!SGIlDivShiftExpr methodsFor: 'recovered'!
addServiceArgs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super addServiceArgs: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) interval.
    recoveredValue4 := (recoveredValue3) left.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue2) at: ('rll') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) interval.
    recoveredValue8 := (recoveredValue7) right.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue6) at: ('rul') put: (recoveredValue9).
    ^recoveredValue1
! !

