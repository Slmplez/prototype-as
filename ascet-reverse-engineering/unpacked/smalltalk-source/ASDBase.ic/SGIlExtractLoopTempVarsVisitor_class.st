"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ea744; bytecode file offset 0x9e7008"
!SGIlExtractLoopTempVarsVisitor class methodsFor: 'recovered'!
extract: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initState.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) visitNode: (recoveredValue3).
    recoveredValue4 := (recoveredValue0) loopVars.
    ^recoveredValue4
! !

