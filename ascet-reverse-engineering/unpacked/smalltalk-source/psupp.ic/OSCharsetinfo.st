"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001fe0; bytecode file offset 0x155d58"
!OSCharsetinfo methodsFor: 'recovered'!
ciCharset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003200; bytecode file offset 0x157170"
!OSCharsetinfo methodsFor: 'recovered'!
ciACP
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d8f8; bytecode file offset 0x161514"
!OSCharsetinfo methodsFor: 'recovered'!
fs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFontsignature.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010604; bytecode file offset 0x165330"
!OSCharsetinfo methodsFor: 'recovered'!
ciCharset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013220; bytecode file offset 0x166e00"
!OSCharsetinfo methodsFor: 'recovered'!
ciACP: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200138bc; bytecode file offset 0x1683c0"
!OSCharsetinfo methodsFor: 'recovered'!
fs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

