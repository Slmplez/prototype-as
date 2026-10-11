"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200058d0; bytecode file offset 0x41900"
!Boolean methodsFor: 'recovered'!
emWriteBinary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EmMarshaller.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue1) typeForClass: (recoveredValue2).
    (recoveredValue0) nextPut: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

