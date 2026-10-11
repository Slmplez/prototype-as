"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200555cc; bytecode file offset 0x952a9c"
!SGIlVariableArrayMatrixConstCast methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) variableArrayMatrixCastExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b9b58; bytecode file offset 0x9b6440"
!SGIlVariableArrayMatrixConstCast methodsFor: 'recovered'!
createOpRecursiveType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expr.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createOpRecursiveType: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) createOpExpr: (recoveredValue2) type: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e1e94; bytecode file offset 0x9de890"
!SGIlVariableArrayMatrixConstCast methodsFor: 'recovered'!
castCType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) type.
    recoveredValue1 := (recoveredValue0) asCType.
    recoveredValue2 := ('(struct ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('*)').
    ^recoveredValue3
! !

