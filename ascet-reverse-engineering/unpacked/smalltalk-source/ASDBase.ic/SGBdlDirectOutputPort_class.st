"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2017c984; bytecode file offset 0xa79250"
!SGBdlDirectOutputPort class methodsFor: 'recovered'!
createForVariable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createForVariable: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) addResult.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) interfaceEntryPoint.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) aliasName.
    (recoveredValue4) dataModelAliasName: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

