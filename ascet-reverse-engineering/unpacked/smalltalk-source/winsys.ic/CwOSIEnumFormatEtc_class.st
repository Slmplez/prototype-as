"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200132cc; bytecode file offset 0x8f4a4"
!CwOSIEnumFormatEtc class methodsFor: 'recovered'!
withFormats: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OSIEnumFORMATETC.
    recoveredValue1 := (self) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) collection: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (recoveredValue0) makeStubOn: (recoveredValue4).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    (recoveredValue7) oleObject: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

