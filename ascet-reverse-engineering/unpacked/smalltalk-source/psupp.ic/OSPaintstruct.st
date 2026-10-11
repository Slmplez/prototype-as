"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d7a0; bytecode file offset 0x161038"
!OSPaintstruct methodsFor: 'recovered'!
fErase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d9d8; bytecode file offset 0x161514"
!OSPaintstruct methodsFor: 'recovered'!
rcPaint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e3a4; bytecode file offset 0x161c48"
!OSPaintstruct methodsFor: 'recovered'!
fRestore
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (24).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e49c; bytecode file offset 0x161d40"
!OSPaintstruct methodsFor: 'recovered'!
fIncUpdate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (28).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fa40; bytecode file offset 0x165330"
!OSPaintstruct methodsFor: 'recovered'!
hdc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012bfc; bytecode file offset 0x166e00"
!OSPaintstruct methodsFor: 'recovered'!
fErase: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200147d4; bytecode file offset 0x1683c0"
!OSPaintstruct methodsFor: 'recovered'!
rcPaint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001718c; bytecode file offset 0x16afe8"
!OSPaintstruct methodsFor: 'recovered'!
fRestore: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (24) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20017a68; bytecode file offset 0x16b690"
!OSPaintstruct methodsFor: 'recovered'!
fIncUpdate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (28) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b0e0; bytecode file offset 0x16ea70"
!OSPaintstruct methodsFor: 'recovered'!
hdc
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHdc.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x200223f8; bytecode file offset 0x175c94"
!OSPaintstruct methodsFor: 'recovered'!
rgbReserved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (32) size: (32) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023cec; bytecode file offset 0x177584"
!OSPaintstruct methodsFor: 'recovered'!
rgbReserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (32) put: (recoveredValue0) size: (32).
    ^self
! !

