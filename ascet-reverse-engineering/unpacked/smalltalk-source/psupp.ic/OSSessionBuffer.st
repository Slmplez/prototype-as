"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200014c4; bytecode file offset 0x155d58"
!OSSessionBuffer methodsFor: 'recovered'!
lsn
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200025a0; bytecode file offset 0x155e38"
!OSSessionBuffer methodsFor: 'recovered'!
state
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"psupp.ic method 0x20006f08; bytecode file offset 0x15a7d0"
!OSSessionBuffer methodsFor: 'recovered'!
rcvsOutstanding
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (34).
    ^recoveredValue0
! !

"psupp.ic method 0x20006f4c; bytecode file offset 0x15a7e4"
!OSSessionBuffer methodsFor: 'recovered'!
sendsOutstanding
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (35).
    ^recoveredValue0
! !

"psupp.ic method 0x200103d0; bytecode file offset 0x165330"
!OSSessionBuffer methodsFor: 'recovered'!
lsn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011aec; bytecode file offset 0x16542c"
!OSSessionBuffer methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018308; bytecode file offset 0x16bbd0"
!OSSessionBuffer methodsFor: 'recovered'!
rcvsOutstanding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (34) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018350; bytecode file offset 0x16bbe8"
!OSSessionBuffer methodsFor: 'recovered'!
sendsOutstanding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (35) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20022028; bytecode file offset 0x1758c4"
!OSSessionBuffer methodsFor: 'recovered'!
localName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (2) size: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20022298; bytecode file offset 0x175b34"
!OSSessionBuffer methodsFor: 'recovered'!
remoteName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSUInt8.
    recoveredValue1 := (self) arrayAt: (18) size: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200238cc; bytecode file offset 0x177164"
!OSSessionBuffer methodsFor: 'recovered'!
localName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (2) put: (recoveredValue0) size: (16).
    ^self
! !

"psupp.ic method 0x20023b70; bytecode file offset 0x177408"
!OSSessionBuffer methodsFor: 'recovered'!
remoteName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) arrayAt: (18) put: (recoveredValue0) size: (16).
    ^self
! !

