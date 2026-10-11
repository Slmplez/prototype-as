"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002268; bytecode file offset 0x155d58"
!OSWaveformatex methodsFor: 'recovered'!
wFormatTag
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200028f0; bytecode file offset 0x1561c4"
!OSWaveformatex methodsFor: 'recovered'!
nChannels
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002b94; bytecode file offset 0x157170"
!OSWaveformatex methodsFor: 'recovered'!
nSamplesPerSec
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003de4; bytecode file offset 0x157f64"
!OSWaveformatex methodsFor: 'recovered'!
nAvgBytesPerSec
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004830; bytecode file offset 0x1589a4"
!OSWaveformatex methodsFor: 'recovered'!
nBlockAlign
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200051a0; bytecode file offset 0x158aa4"
!OSWaveformatex methodsFor: 'recovered'!
wBitsPerSample
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x2000593c; bytecode file offset 0x159294"
!OSWaveformatex methodsFor: 'recovered'!
cbSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20010c10; bytecode file offset 0x165330"
!OSWaveformatex methodsFor: 'recovered'!
wFormatTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ef4; bytecode file offset 0x1657d4"
!OSWaveformatex methodsFor: 'recovered'!
nChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d10; bytecode file offset 0x166e00"
!OSWaveformatex methodsFor: 'recovered'!
nSamplesPerSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b2c; bytecode file offset 0x1683c0"
!OSWaveformatex methodsFor: 'recovered'!
nAvgBytesPerSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200151dc; bytecode file offset 0x169290"
!OSWaveformatex methodsFor: 'recovered'!
nBlockAlign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015aa0; bytecode file offset 0x169398"
!OSWaveformatex methodsFor: 'recovered'!
wBitsPerSample: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016460; bytecode file offset 0x169eb4"
!OSWaveformatex methodsFor: 'recovered'!
cbSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (16) put: (recoveredValue0).
    ^self
! !

