"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20010e80; bytecode file offset 0x165330"
!OSMdinextmenu methodsFor: 'recovered'!
hmenuIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012c8c; bytecode file offset 0x166e00"
!OSMdinextmenu methodsFor: 'recovered'!
hmenuNext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013da8; bytecode file offset 0x1683c0"
!OSMdinextmenu methodsFor: 'recovered'!
hwndNext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac30; bytecode file offset 0x16ea70"
!OSMdinextmenu methodsFor: 'recovered'!
hmenuIn
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmenu.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b3e4; bytecode file offset 0x16f1fc"
!OSMdinextmenu methodsFor: 'recovered'!
hmenuNext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHmenu.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ba94; bytecode file offset 0x16f8e8"
!OSMdinextmenu methodsFor: 'recovered'!
hwndNext
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

