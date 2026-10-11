"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200558cc; bytecode file offset 0x952a9c"
!SGIlCppIfElseStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) cppIfThenElseStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074adc; bytecode file offset 0x9757c8"
!SGIlCppIfElseStmnt methodsFor: 'recovered'!
isIleCppIfElseStmnt
    ^true
! !

"ASDBase.ic method 0x2009a428; bytecode file offset 0x997194"
!SGIlCppIfElseStmnt methodsFor: 'recovered'!
createStmntExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) cppIfExpr: (recoveredValue1) thenStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ca4b4; bytecode file offset 0x9c7020"
!SGIlCppIfElseStmnt methodsFor: 'recovered'!
createStmntExpr: recoveredArg1 thenStmnt: recoveredArg2 elseStmnt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) cppIfExpr: (recoveredValue1) thenStmnt: (recoveredValue2) elseStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20190e24; bytecode file offset 0xa8d6f4"
!SGIlCppIfElseStmnt methodsFor: 'recovered'!
executableContainsCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) asIleCopy.
    recoveredValue2 := (self) thenStmnt.
    recoveredValue3 := (recoveredValue2) executableContainsCode.
    recoveredValue4 := (recoveredValue1) andExpr: (recoveredValue3).
    recoveredValue5 := (self) expr.
    recoveredValue6 := (recoveredValue5) asIleCopy.
    recoveredValue7 := (recoveredValue6) not.
    recoveredValue8 := (self) elseStmnt.
    recoveredValue9 := (recoveredValue8) executableContainsCode.
    recoveredValue10 := (recoveredValue7) andExpr: (recoveredValue9).
    recoveredValue11 := (recoveredValue4) orExpr: (recoveredValue10).
    ^recoveredValue11
! !

