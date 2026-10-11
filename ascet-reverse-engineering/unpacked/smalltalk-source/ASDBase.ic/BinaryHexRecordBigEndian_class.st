"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014d9c; bytecode file offset 0x912098"
!BinaryHexRecordBigEndian class methodsFor: 'recovered'!
EndianBuffer
    | recoveredValue0 |
    recoveredValue0 := EndianBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200541dc; bytecode file offset 0x951190"
!BinaryHexRecordBigEndian class methodsFor: 'recovered'!
EndianBuffer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    EndianBuffer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ccb44; bytecode file offset 0x9c9404"
!BinaryHexRecordBigEndian class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    (self) EndianBuffer: (recoveredValue1).
    ^self
! !

