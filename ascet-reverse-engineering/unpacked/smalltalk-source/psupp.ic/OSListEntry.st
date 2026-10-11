"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20010f88; bytecode file offset 0x165330"
!OSListEntry methodsFor: 'recovered'!
Flink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200120e0; bytecode file offset 0x166e00"
!OSListEntry methodsFor: 'recovered'!
Blink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac44; bytecode file offset 0x16ea70"
!OSListEntry methodsFor: 'recovered'!
Flink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSListEntry.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b5c4; bytecode file offset 0x16f1fc"
!OSListEntry methodsFor: 'recovered'!
Blink
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSListEntry.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

