"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001ae8; bytecode file offset 0x155d58"
!OSStylebuf methodsFor: 'recovered'!
dwStyle
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d71c; bytecode file offset 0x160fb4"
!OSStylebuf methodsFor: 'recovered'!
szDescription
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (4) size: (32).
    ^recoveredValue0
! !

"psupp.ic method 0x200116cc; bytecode file offset 0x165330"
!OSStylebuf methodsFor: 'recovered'!
dwStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20023954; bytecode file offset 0x1771ec"
!OSStylebuf methodsFor: 'recovered'!
szDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (4) put: (recoveredValue0) size: (32).
    ^self
! !

