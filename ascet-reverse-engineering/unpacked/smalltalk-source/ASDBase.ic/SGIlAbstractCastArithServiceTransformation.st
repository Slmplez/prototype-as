"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20036664; bytecode file offset 0x934580"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
contextType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) castExprTransformation.
    recoveredValue1 := (recoveredValue0) contextType.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052c98; bytecode file offset 0x9505d0"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
unaryServiceExpr: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052eb4; bytecode file offset 0x9505d0"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
binaryServiceExpr: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053cac; bytecode file offset 0x9505d0"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
ternaryServiceExpr: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20058ab8; bytecode file offset 0x956284"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) castExprTransformation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069124; bytecode file offset 0x965b90"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
castExprTransformation
    | recoveredValue0 |
    recoveredValue0 := castExprTransformation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009a3e8; bytecode file offset 0x997194"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
withContextType: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) castExprTransformation.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) withContextType: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ba914; bytecode file offset 0x9b71cc"
!SGIlAbstractCastArithServiceTransformation methodsFor: 'recovered'!
castExprTransformation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    castExprTransformation := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) castArithServiceTransformation: (self).
    ^self
! !

