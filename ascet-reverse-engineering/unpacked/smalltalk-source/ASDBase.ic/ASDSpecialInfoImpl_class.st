"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20133544; bytecode file offset 0xa2fe10"
!ASDSpecialInfoImpl class methodsFor: 'recovered'!
createForDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) memoryClass.
    (recoveredValue1) memoryLocation: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) extraImplInfo.
    recoveredValue7 := (recoveredValue6) text.
    (recoveredValue4) additionalInfo: (recoveredValue7).
    ^recoveredValue0
! !

