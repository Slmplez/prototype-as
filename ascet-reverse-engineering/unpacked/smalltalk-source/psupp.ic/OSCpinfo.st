"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001f68; bytecode file offset 0x155d58"
!OSCpinfo methodsFor: 'recovered'!
MaxCharSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20010ebc; bytecode file offset 0x165330"
!OSCpinfo methodsFor: 'recovered'!
MaxCharSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022068; bytecode file offset 0x175904"
!OSCpinfo methodsFor: 'recovered'!
DefaultChar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (4) size: (2) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200220e8; bytecode file offset 0x175984"
!OSCpinfo methodsFor: 'recovered'!
LeadByte
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (6) size: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20023904; bytecode file offset 0x17719c"
!OSCpinfo methodsFor: 'recovered'!
DefaultChar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (4) put: (recoveredValue0) size: (2).
    ^self
! !

"psupp.ic method 0x2002398c; bytecode file offset 0x177224"
!OSCpinfo methodsFor: 'recovered'!
LeadByte: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (6) put: (recoveredValue0) size: (12).
    ^self
! !

