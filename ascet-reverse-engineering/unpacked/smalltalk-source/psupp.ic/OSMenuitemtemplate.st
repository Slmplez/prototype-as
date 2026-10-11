"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001038; bytecode file offset 0x155d58"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtOption
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20002890; bytecode file offset 0x1561c4"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtID
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000c018; bytecode file offset 0x15fa24"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtString: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d484; bytecode file offset 0x160f90"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt16.
    recoveredValue1 := (self) arrayAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010ef8; bytecode file offset 0x165330"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtOption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011c00; bytecode file offset 0x1657d4"
!OSMenuitemtemplate methodsFor: 'recovered'!
mtID: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

