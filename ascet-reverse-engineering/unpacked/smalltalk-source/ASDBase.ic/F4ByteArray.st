"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095ea8; bytecode file offset 0x992764"
!F4ByteArray methodsFor: 'recovered'!
readObjectFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) readF4ByteArray.
    recoveredValue2 := (recoveredValue1) real32At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d841c; bytecode file offset 0x9d4cd8"
!F4ByteArray methodsFor: 'recovered'!
emWriteLiteralOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) writeLiteralTypeFor: (self).
    (recoveredValue0) writeF4ByteArray: (self).
    ^self
! !

