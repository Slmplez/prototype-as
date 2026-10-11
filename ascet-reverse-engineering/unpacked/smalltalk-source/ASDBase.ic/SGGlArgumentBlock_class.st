"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20100fb8; bytecode file offset 0x9fd8ac"
!SGGlArgumentBlock class methodsFor: 'recovered'!
createWithMethods: recoveredArg1 variable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) aliasName.
    (recoveredValue1) dataModelAliasName: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) setMethods: (recoveredValue5).
    ^recoveredValue0
! !

