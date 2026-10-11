"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001140; bytecode file offset 0x155d58"
!OSTransmitFileBuffers methodsFor: 'recovered'!
Head
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002ff0; bytecode file offset 0x157170"
!OSTransmitFileBuffers methodsFor: 'recovered'!
HeadLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200043b4; bytecode file offset 0x157f64"
!OSTransmitFileBuffers methodsFor: 'recovered'!
Tail
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200048cc; bytecode file offset 0x1589a4"
!OSTransmitFileBuffers methodsFor: 'recovered'!
TailLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20010448; bytecode file offset 0x165330"
!OSTransmitFileBuffers methodsFor: 'recovered'!
Head: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001319c; bytecode file offset 0x166e00"
!OSTransmitFileBuffers methodsFor: 'recovered'!
HeadLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013874; bytecode file offset 0x1683c0"
!OSTransmitFileBuffers methodsFor: 'recovered'!
Tail: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200158fc; bytecode file offset 0x169290"
!OSTransmitFileBuffers methodsFor: 'recovered'!
TailLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

