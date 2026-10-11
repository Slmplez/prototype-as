"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200015d8; bytecode file offset 0x155d58"
!OSWaveformat methodsFor: 'recovered'!
wFormatTag
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200026b0; bytecode file offset 0x1561c4"
!OSWaveformat methodsFor: 'recovered'!
nChannels
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20002a08; bytecode file offset 0x157170"
!OSWaveformat methodsFor: 'recovered'!
nSamplesPerSec
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003dc0; bytecode file offset 0x157f64"
!OSWaveformat methodsFor: 'recovered'!
nAvgBytesPerSec
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004bc0; bytecode file offset 0x1589a4"
!OSWaveformat methodsFor: 'recovered'!
nBlockAlign
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x20011198; bytecode file offset 0x165330"
!OSWaveformat methodsFor: 'recovered'!
wFormatTag: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d74; bytecode file offset 0x1657d4"
!OSWaveformat methodsFor: 'recovered'!
nChannels: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134e4; bytecode file offset 0x166e00"
!OSWaveformat methodsFor: 'recovered'!
nSamplesPerSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d84; bytecode file offset 0x1683c0"
!OSWaveformat methodsFor: 'recovered'!
nAvgBytesPerSec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001517c; bytecode file offset 0x169290"
!OSWaveformat methodsFor: 'recovered'!
nBlockAlign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

