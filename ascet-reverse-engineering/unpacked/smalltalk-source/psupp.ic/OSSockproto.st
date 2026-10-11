"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200017ac; bytecode file offset 0x155d58"
!OSSockproto methodsFor: 'recovered'!
spFamily
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200026ec; bytecode file offset 0x1561c4"
!OSSockproto methodsFor: 'recovered'!
spProtocol
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x20011150; bytecode file offset 0x165330"
!OSSockproto methodsFor: 'recovered'!
spFamily: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011ed0; bytecode file offset 0x1657d4"
!OSSockproto methodsFor: 'recovered'!
spProtocol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

