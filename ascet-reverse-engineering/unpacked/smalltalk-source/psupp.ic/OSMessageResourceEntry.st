"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001cec; bytecode file offset 0x155d58"
!OSMessageResourceEntry methodsFor: 'recovered'!
Length
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002764; bytecode file offset 0x1561c4"
!OSMessageResourceEntry methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d494; bytecode file offset 0x160f90"
!OSMessageResourceEntry methodsFor: 'recovered'!
Text
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000fcd4; bytecode file offset 0x165330"
!OSMessageResourceEntry methodsFor: 'recovered'!
Length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011bac; bytecode file offset 0x1657d4"
!OSMessageResourceEntry methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

