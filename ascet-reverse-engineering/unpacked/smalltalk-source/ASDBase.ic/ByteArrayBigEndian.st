"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200d9020; bytecode file offset 0x9d591c"
!ByteArrayBigEndian methodsFor: 'recovered'!
int32At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) swap4At: (recoveredValue0).
    recoveredValue1 := EndianBuffer.
    recoveredValue2 := (recoveredValue1) int32At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9034; bytecode file offset 0x9d591c"
!ByteArrayBigEndian methodsFor: 'recovered'!
uint32At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) swap4At: (recoveredValue0).
    recoveredValue1 := EndianBuffer.
    recoveredValue2 := (recoveredValue1) uint32At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d9048; bytecode file offset 0x9d591c"
!ByteArrayBigEndian methodsFor: 'recovered'!
uint16At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) swap2At: (recoveredValue0).
    recoveredValue1 := EndianBuffer.
    recoveredValue2 := (recoveredValue1) uint16At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d905c; bytecode file offset 0x9d591c"
!ByteArrayBigEndian methodsFor: 'recovered'!
int16At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) swap2At: (recoveredValue0).
    recoveredValue1 := EndianBuffer.
    recoveredValue2 := (recoveredValue1) int16At: (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20110300; bytecode file offset 0xa0cbfc"
!ByteArrayBigEndian methodsFor: 'recovered'!
uint16At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) uint16At: (0) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) swap2In: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20110314; bytecode file offset 0xa0cbfc"
!ByteArrayBigEndian methodsFor: 'recovered'!
uint32At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) uint32At: (0) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) swap4In: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20110328; bytecode file offset 0xa0cbfc"
!ByteArrayBigEndian methodsFor: 'recovered'!
int32At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) int32At: (0) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) swap4In: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011033c; bytecode file offset 0xa0cbfc"
!ByteArrayBigEndian methodsFor: 'recovered'!
int16At: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) int16At: (0) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) swap2In: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201cb430; bytecode file offset 0xac7cf0"
!ByteArrayBigEndian methodsFor: 'recovered'!
swap2At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (2).
    recoveredValue3 := (self) at: (recoveredValue2).
    (recoveredValue0) at: (1) put: (recoveredValue3).
    recoveredValue4 := EndianBuffer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (1).
    recoveredValue7 := (self) at: (recoveredValue6).
    (recoveredValue4) at: (2) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201cc444; bytecode file offset 0xac8d04"
!ByteArrayBigEndian methodsFor: 'recovered'!
swap2In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (2).
    recoveredValue2 := EndianBuffer.
    recoveredValue3 := (recoveredValue2) at: (1).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (1).
    recoveredValue6 := EndianBuffer.
    recoveredValue7 := (recoveredValue6) at: (2).
    (self) at: (recoveredValue5) put: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202e2120; bytecode file offset 0xbde9e0"
!ByteArrayBigEndian methodsFor: 'recovered'!
swap4At: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := EndianBuffer.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) + (4).
    recoveredValue3 := (self) at: (recoveredValue2).
    (recoveredValue0) at: (1) put: (recoveredValue3).
    recoveredValue4 := EndianBuffer.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) + (3).
    recoveredValue7 := (self) at: (recoveredValue6).
    (recoveredValue4) at: (2) put: (recoveredValue7).
    recoveredValue8 := EndianBuffer.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) + (2).
    recoveredValue11 := (self) at: (recoveredValue10).
    (recoveredValue8) at: (3) put: (recoveredValue11).
    recoveredValue12 := EndianBuffer.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) + (1).
    recoveredValue15 := (self) at: (recoveredValue14).
    (recoveredValue12) at: (4) put: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x202e2518; bytecode file offset 0xbdedd8"
!ByteArrayBigEndian methodsFor: 'recovered'!
swap4In: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) + (4).
    recoveredValue2 := EndianBuffer.
    recoveredValue3 := (recoveredValue2) at: (1).
    (self) at: (recoveredValue1) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) + (3).
    recoveredValue6 := EndianBuffer.
    recoveredValue7 := (recoveredValue6) at: (2).
    (self) at: (recoveredValue5) put: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) + (2).
    recoveredValue10 := EndianBuffer.
    recoveredValue11 := (recoveredValue10) at: (3).
    (self) at: (recoveredValue9) put: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) + (1).
    recoveredValue14 := EndianBuffer.
    recoveredValue15 := (recoveredValue14) at: (4).
    (self) at: (recoveredValue13) put: (recoveredValue15).
    ^self
! !

