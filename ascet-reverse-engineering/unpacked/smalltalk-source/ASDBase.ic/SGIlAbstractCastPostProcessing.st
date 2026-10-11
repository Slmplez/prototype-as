"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a96a4; bytecode file offset 0x9a5fc8"
!SGIlAbstractCastPostProcessing methodsFor: 'recovered'!
caseStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) stmnt.
    recoveredValue3 := (self) visitNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createNoOpStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200a9708; bytecode file offset 0x9a5fc8"
!SGIlAbstractCastPostProcessing methodsFor: 'recovered'!
cppIfThenStmnt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) thenStmnt.
    recoveredValue3 := (self) visitNode: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) createNoOpThenStmnt: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2014bbe4; bytecode file offset 0xa484c0"
!SGIlAbstractCastPostProcessing methodsFor: 'recovered'!
cppIfThenElseStmnt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) thenStmnt.
    recoveredValue2 := (self) visitNode: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) elseStmnt.
    recoveredValue5 := (self) visitNode: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue6) createNoOpThenStmnt: (recoveredValue7) elseStmnt: (recoveredValue8).
    ^recoveredValue9
! !

