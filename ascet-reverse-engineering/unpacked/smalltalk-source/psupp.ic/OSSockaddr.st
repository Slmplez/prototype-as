"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001914; bytecode file offset 0x155d58"
!OSSockaddr methodsFor: 'recovered'!
saFamily
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d404; bytecode file offset 0x160c9c"
!OSSockaddr methodsFor: 'recovered'!
saData
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (2) size: (14).
    ^recoveredValue0
! !

"psupp.ic method 0x20010af0; bytecode file offset 0x165330"
!OSSockaddr methodsFor: 'recovered'!
saFamily: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200238b0; bytecode file offset 0x177148"
!OSSockaddr methodsFor: 'recovered'!
saData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) stringAt: (2) put: (recoveredValue0) size: (14).
    ^self
! !

