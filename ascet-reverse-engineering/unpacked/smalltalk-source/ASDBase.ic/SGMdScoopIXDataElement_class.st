"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20196014; bytecode file offset 0xa928e4"
!SGMdScoopIXDataElement class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) mdlVarDecl: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) genIleType.
    (recoveredValue3) implType: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) mdlClass.
    (recoveredValue6) mdlClass: (recoveredValue8).
    ^recoveredValue0
! !

