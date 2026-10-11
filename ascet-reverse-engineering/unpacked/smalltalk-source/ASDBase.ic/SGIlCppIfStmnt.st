"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054aec; bytecode file offset 0x952a9c"
!SGIlCppIfStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) cppIfThenStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20078aac; bytecode file offset 0x9757c8"
!SGIlCppIfStmnt methodsFor: 'recovered'!
isIleCppIfStmnt
    ^true
! !

"ASDBase.ic method 0x2009a448; bytecode file offset 0x997194"
!SGIlCppIfStmnt methodsFor: 'recovered'!
createStmntExpr: recoveredArg1 thenStmnt: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) cppIfExpr: (recoveredValue1) thenStmnt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b56a0; bytecode file offset 0x9b1ff4"
!SGIlCppIfStmnt methodsFor: 'recovered'!
executableContainsCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := (recoveredValue0) asIleCopy.
    recoveredValue2 := (self) thenStmnt.
    recoveredValue3 := (recoveredValue2) executableContainsCode.
    recoveredValue4 := (recoveredValue1) andExpr: (recoveredValue3).
    ^recoveredValue4
! !

