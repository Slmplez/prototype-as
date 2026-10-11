"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20179d7c; bytecode file offset 0xa7667c"
!EtasBorrowStatEntry class methodsFor: 'recovered'!
createForfeature: recoveredArg1 vendor: recoveredArg2 start: recoveredArg3 end: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) feature: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) vendor: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) start: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) end: (recoveredValue8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201d85a8; bytecode file offset 0xad4e78"
!EtasBorrowStatEntry class methodsFor: 'recovered'!
createFromBorrowStatPtr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := EtasBorrowStatEntry.
    recoveredValue1 := EtasFLEXnetInterface.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) borrowStatFeature: (recoveredValue2).
    recoveredValue4 := EtasFLEXnetInterface.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) borrowStatVendor: (recoveredValue5).
    recoveredValue7 := EtasFLEXnetInterface.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue7) borrowStatStart: (recoveredValue8).
    recoveredValue10 := EtasFLEXnetInterface.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue10) borrowStatEnd: (recoveredValue11).
    recoveredValue13 := (recoveredValue0) createForfeature: (recoveredValue3) vendor: (recoveredValue6) start: (recoveredValue9) end: (recoveredValue12).
    ^recoveredValue13
! !

