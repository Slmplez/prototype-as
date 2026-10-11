"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000ca60; bytecode file offset 0x160b8c"
!OSTvDispinfo methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df3c; bytecode file offset 0x1617e8"
!OSTvDispinfo methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSTvItem.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010754; bytecode file offset 0x165330"
!OSTvDispinfo methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015734; bytecode file offset 0x169290"
!OSTvDispinfo methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

