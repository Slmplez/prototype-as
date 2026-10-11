"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000234c; bytecode file offset 0x155d58"
!OSOfstruct methodsFor: 'recovered'!
cBytes
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002528; bytecode file offset 0x155e38"
!OSOfstruct methodsFor: 'recovered'!
fFixedDisk
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002698; bytecode file offset 0x1561c4"
!OSOfstruct methodsFor: 'recovered'!
nErrCode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200036bc; bytecode file offset 0x157170"
!OSOfstruct methodsFor: 'recovered'!
Reserved1
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003a08; bytecode file offset 0x1572b8"
!OSOfstruct methodsFor: 'recovered'!
Reserved2
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fdf4; bytecode file offset 0x165330"
!OSOfstruct methodsFor: 'recovered'!
cBytes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b1c; bytecode file offset 0x16542c"
!OSOfstruct methodsFor: 'recovered'!
fFixedDisk: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d20; bytecode file offset 0x1657d4"
!OSOfstruct methodsFor: 'recovered'!
nErrCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c98; bytecode file offset 0x166e00"
!OSOfstruct methodsFor: 'recovered'!
Reserved1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200135c8; bytecode file offset 0x166f5c"
!OSOfstruct methodsFor: 'recovered'!
Reserved2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ef48; bytecode file offset 0x1727e0"
!OSOfstruct methodsFor: 'recovered'!
szPathName
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (8) size: (128).
    ^recoveredValue0
! !

"psupp.ic method 0x20025658; bytecode file offset 0x178ef0"
!OSOfstruct methodsFor: 'recovered'!
szPathName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (8) put: (recoveredValue0) size: (128).
    ^self
! !

