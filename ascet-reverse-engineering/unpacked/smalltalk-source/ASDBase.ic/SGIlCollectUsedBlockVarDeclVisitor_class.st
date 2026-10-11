"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200aacc4; bytecode file offset 0x9a7610"
!SGIlCollectUsedBlockVarDeclVisitor class methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) visitNode: (recoveredValue2).
    recoveredValue3 := (recoveredValue0) usedBlockVarDecls.
    ^recoveredValue3
! !

