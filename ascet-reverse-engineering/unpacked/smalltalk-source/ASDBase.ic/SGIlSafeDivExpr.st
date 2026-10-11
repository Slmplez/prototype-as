"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20029e54; bytecode file offset 0x934580"
!SGIlSafeDivExpr methodsFor: 'recovered'!
ileNumExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightExpr.
    recoveredValue1 := (recoveredValue0) ileNumExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036ac4; bytecode file offset 0x934580"
!SGIlSafeDivExpr methodsFor: 'recovered'!
ileDenomExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rightExpr.
    recoveredValue1 := (recoveredValue0) ileDenomExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056178; bytecode file offset 0x952a9c"
!SGIlSafeDivExpr methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) safeDivExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200776e4; bytecode file offset 0x9757c8"
!SGIlSafeDivExpr methodsFor: 'recovered'!
isIleSafeDivExpr
    ^true
! !

"ASDBase.ic method 0x20210824; bytecode file offset 0xb0d0f0"
!SGIlSafeDivExpr methodsFor: 'recovered'!
createOpLeftExpr: recoveredArg1 rightExpr: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := (self) condExpr.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := recoveredArg2.
    recoveredBlock7Value4 := (self) ileBasicType.
    recoveredBlock7Value5 := (recoveredBlock7Value0) safeDivExpr: (recoveredBlock7Value1) leftExpr: (recoveredBlock7Value2) rightExpr: (recoveredBlock7Value3) type: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021e8d0; bytecode file offset 0xb1b198"
!SGIlSafeDivExpr methodsFor: 'recovered'!
createOpCond: recoveredArg1 leftExpr: recoveredArg2 rightExpr: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg2.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := (self) ileBasicType.
    recoveredBlock7Value5 := (recoveredBlock7Value0) safeDivExpr: (recoveredBlock7Value1) leftExpr: (recoveredBlock7Value2) rightExpr: (recoveredBlock7Value3) type: (recoveredBlock7Value4).
    recoveredBlock7Value5
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

