"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013a4; bytecode file offset 0x155d58"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
TimeDateStamp
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000362c; bytecode file offset 0x157170"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
OffsetModuleName
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x200039fc; bytecode file offset 0x1572b8"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
Reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"psupp.ic method 0x20011834; bytecode file offset 0x165330"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
TimeDateStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012680; bytecode file offset 0x166e00"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
OffsetModuleName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001361c; bytecode file offset 0x166f5c"
!OSImageBoundForwarderRef methodsFor: 'recovered'!
Reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

