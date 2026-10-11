"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001200; bytecode file offset 0x155d58"
!OSConsoleCursorInfo methodsFor: 'recovered'!
dwSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d77c; bytecode file offset 0x161038"
!OSConsoleCursorInfo methodsFor: 'recovered'!
bVisible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001199c; bytecode file offset 0x165330"
!OSConsoleCursorInfo methodsFor: 'recovered'!
dwSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013268; bytecode file offset 0x166e00"
!OSConsoleCursorInfo methodsFor: 'recovered'!
bVisible: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

