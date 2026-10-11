"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201304bc; bytecode file offset 0xa2cda8"
!CfsWriteFileStream class methodsFor: 'recovered'!
openAppend: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OWRONLY.
    recoveredValue3 := OCREAT.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := OAPPEND.
    recoveredValue6 := (recoveredValue4) bitOr: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) open: (recoveredValue1) oflag: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201304dc; bytecode file offset 0xa2cda8"
!CfsWriteFileStream class methodsFor: 'recovered'!
openAppendDB: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CfsFileStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := OWRONLY.
    recoveredValue3 := OCREAT.
    recoveredValue4 := (recoveredValue2) bitOr: (recoveredValue3).
    recoveredValue5 := OAPPEND.
    recoveredValue6 := (recoveredValue4) bitOr: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) openDB: (recoveredValue1) oflag: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20174244; bytecode file offset 0xa70b18"
!CfsWriteFileStream class methodsFor: 'recovered'!
openEmptyDB: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) deleteFile: (recoveredValue2).
    recoveredValue3 := CfsFileStream.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := OWRONLY.
    recoveredValue6 := OCREAT.
    recoveredValue7 := (recoveredValue5) bitOr: (recoveredValue6).
    recoveredValue8 := (recoveredValue3) openDB: (recoveredValue4) oflag: (recoveredValue7).
    ^recoveredValue8
! !

