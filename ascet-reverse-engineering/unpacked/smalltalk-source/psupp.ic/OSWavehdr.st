"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003320; bytecode file offset 0x157170"
!OSWavehdr methodsFor: 'recovered'!
dwBufferLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003e8c; bytecode file offset 0x157f64"
!OSWavehdr methodsFor: 'recovered'!
dwBytesRecorded
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004920; bytecode file offset 0x1589a4"
!OSWavehdr methodsFor: 'recovered'!
dwUser
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200054bc; bytecode file offset 0x159294"
!OSWavehdr methodsFor: 'recovered'!
dwFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20005b48; bytecode file offset 0x159974"
!OSWavehdr methodsFor: 'recovered'!
dwLoops
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x200069bc; bytecode file offset 0x15a428"
!OSWavehdr methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"psupp.ic method 0x20011984; bytecode file offset 0x165330"
!OSWavehdr methodsFor: 'recovered'!
lpData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013100; bytecode file offset 0x166e00"
!OSWavehdr methodsFor: 'recovered'!
dwBufferLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013dd8; bytecode file offset 0x1683c0"
!OSWavehdr methodsFor: 'recovered'!
dwBytesRecorded: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200153e0; bytecode file offset 0x169290"
!OSWavehdr methodsFor: 'recovered'!
dwUser: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015c74; bytecode file offset 0x169eb4"
!OSWavehdr methodsFor: 'recovered'!
dwFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016970; bytecode file offset 0x16a7b4"
!OSWavehdr methodsFor: 'recovered'!
dwLoops: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017558; bytecode file offset 0x16afe8"
!OSWavehdr methodsFor: 'recovered'!
lpNext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017924; bytecode file offset 0x16b690"
!OSWavehdr methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b07c; bytecode file offset 0x16ea70"
!OSWavehdr methodsFor: 'recovered'!
lpData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ccbc; bytecode file offset 0x170728"
!OSWavehdr methodsFor: 'recovered'!
lpNext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSWavehdr.
    recoveredValue1 := (self) uint32At: (24).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

