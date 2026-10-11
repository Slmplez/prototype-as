"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200032fc; bytecode file offset 0x157170"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
fUnicode
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000396c; bytecode file offset 0x1572b8"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
nDebugStringLength
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fbc0; bytecode file offset 0x165330"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
lpDebugStringData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013508; bytecode file offset 0x166e00"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
fUnicode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200135bc; bytecode file offset 0x166f5c"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
nDebugStringLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aa8c; bytecode file offset 0x16ea70"
!OSOutputDebugStringInfo methodsFor: 'recovered'!
lpDebugStringData
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

