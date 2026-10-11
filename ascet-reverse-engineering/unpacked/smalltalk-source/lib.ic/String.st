"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20005220; bytecode file offset 0x41258"
!String methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) writeLiteralTypeFor: (self).
    (recoveredValue0) writeString: (self).
    ^self
! !

"lib.ic method 0x20008eb4; bytecode file offset 0x44ef0"
!String methodsFor: 'recovered'!
emWriteBinary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := EmMarshaller.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue1) typeForClass: (recoveredValue2).
    (recoveredValue0) nextPut: (recoveredValue3).
    recoveredValue4 := (self) size.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) emWriteInteger: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (self).
    recoveredValue7 := recoveredArg1.
    ^recoveredValue7
! !

