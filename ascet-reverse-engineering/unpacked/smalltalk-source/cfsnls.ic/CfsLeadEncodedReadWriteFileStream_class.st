"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x200036b8; bytecode file offset 0x26928"
!CfsLeadEncodedReadWriteFileStream class methodsFor: 'recovered'!
privateOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := CfsReadWriteFileStream.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) privateOn: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) fileStream: (recoveredValue3).
    ^recoveredValue4
! !

