"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200016ec; bytecode file offset 0x155d58"
!OSSecurityDescriptor methodsFor: 'recovered'!
Revision
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000257c; bytecode file offset 0x155e38"
!OSSecurityDescriptor methodsFor: 'recovered'!
Sbz1
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20002794; bytecode file offset 0x1561c4"
!OSSecurityDescriptor methodsFor: 'recovered'!
Control
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x200031f4; bytecode file offset 0x157170"
!OSSecurityDescriptor methodsFor: 'recovered'!
Owner
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004354; bytecode file offset 0x157f64"
!OSSecurityDescriptor methodsFor: 'recovered'!
Group
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000ff98; bytecode file offset 0x165330"
!OSSecurityDescriptor methodsFor: 'recovered'!
Revision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011b4c; bytecode file offset 0x16542c"
!OSSecurityDescriptor methodsFor: 'recovered'!
Sbz1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011d80; bytecode file offset 0x1657d4"
!OSSecurityDescriptor methodsFor: 'recovered'!
Control: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013304; bytecode file offset 0x166e00"
!OSSecurityDescriptor methodsFor: 'recovered'!
Owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014024; bytecode file offset 0x1683c0"
!OSSecurityDescriptor methodsFor: 'recovered'!
Group: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014e04; bytecode file offset 0x169290"
!OSSecurityDescriptor methodsFor: 'recovered'!
Sacl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016394; bytecode file offset 0x169eb4"
!OSSecurityDescriptor methodsFor: 'recovered'!
Dacl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c39c; bytecode file offset 0x16fe44"
!OSSecurityDescriptor methodsFor: 'recovered'!
Sacl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSAcl.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c984; bytecode file offset 0x170238"
!OSSecurityDescriptor methodsFor: 'recovered'!
Dacl
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSAcl.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

