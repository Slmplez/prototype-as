"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200098f4; bytecode file offset 0x45934"
!EmTimeStamp methodsFor: 'recovered'!
emWriteBinary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EmMarshaller.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue1) typeForClass: (recoveredValue2).
    (recoveredValue0) nextPut: (recoveredValue3).
    recoveredValue4 := (self) seconds.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) emWriteInteger: (recoveredValue5).
    recoveredValue6 := (self) versionName.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) emWriteBinary: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

