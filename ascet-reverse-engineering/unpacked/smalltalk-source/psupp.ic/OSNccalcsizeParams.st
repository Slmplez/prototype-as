"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20018fe0; bytecode file offset 0x16c9d4"
!OSNccalcsizeParams methodsFor: 'recovered'!
lppos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (48) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001d6b8; bytecode file offset 0x170f6c"
!OSNccalcsizeParams methodsFor: 'recovered'!
lppos
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSWindowpos.
    recoveredValue1 := (self) uint32At: (48).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x20021e98; bytecode file offset 0x175734"
!OSNccalcsizeParams methodsFor: 'recovered'!
rgrc
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRect.
    recoveredValue1 := (self) arrayAt: (0) size: (3) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2002375c; bytecode file offset 0x176ff4"
!OSNccalcsizeParams methodsFor: 'recovered'!
rgrc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (0) put: (recoveredValue0) size: (3).
    ^self
! !

