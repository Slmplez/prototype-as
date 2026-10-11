"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20096130; bytecode file offset 0x992bec"
!SGIlAnyStructureVisitor methodsFor: 'recovered'!
abstractNoOverflowExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) limitOverflowExpr.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c81b4; bytecode file offset 0x9c4a6c"
!SGIlAnyStructureVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1 check: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    conditionBlock := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) visitNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200fbe24; bytecode file offset 0x9f86e4"
!SGIlAnyStructureVisitor methodsFor: 'recovered'!
visitNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := conditionBlock.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super visitNode: (recoveredValue2).
    ^recoveredValue3
! !

