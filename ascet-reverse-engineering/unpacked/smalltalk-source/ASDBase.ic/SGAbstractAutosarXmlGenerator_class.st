"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200e6f10; bytecode file offset 0x9e37d8"
!SGAbstractAutosarXmlGenerator class methodsFor: 'recovered'!
createAutosarXmlGenerator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGAbstractARXmlGeneratorStrategy.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) autosarSettings.
    recoveredValue3 := (recoveredValue2) versionString.
    recoveredValue4 := (recoveredValue0) selectAutosarXmlGeneratorClass: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) createWithContext: (recoveredValue5).
    ^recoveredValue6
! !

