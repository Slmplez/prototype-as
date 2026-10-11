"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002d68; bytecode file offset 0x157170"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
Pointer
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004684; bytecode file offset 0x157f64"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
RefId
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004e0c; bytecode file offset 0x1589a4"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
State
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000fbe4; bytecode file offset 0x165330"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
Next: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012fe0; bytecode file offset 0x166e00"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
Pointer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013b74; bytecode file offset 0x1683c0"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
RefId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015254; bytecode file offset 0x169290"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
State: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001abb8; bytecode file offset 0x16ea70"
!OSFullPtrToRefidElement methodsFor: 'recovered'!
Next
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSFullPtrToRefidElement.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

