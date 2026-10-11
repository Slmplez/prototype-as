"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2019b63c; bytecode file offset 0xa97f0c"
!SGBdlDirectInputPort class methodsFor: 'recovered'!
createForVariable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createForVariable: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) addArgument.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) interfaceArguments.
    recoveredValue5 := (recoveredValue4) first.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) aliasName.
    (recoveredValue5) dataModelAliasName: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

