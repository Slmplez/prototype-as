"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200017b8; bytecode file offset 0x155d58"
!OSTapeSetPosition methodsFor: 'recovered'!
Method
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200031dc; bytecode file offset 0x157170"
!OSTapeSetPosition methodsFor: 'recovered'!
Partition
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d878; bytecode file offset 0x161514"
!OSTapeSetPosition methodsFor: 'recovered'!
Offset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e0d0; bytecode file offset 0x161974"
!OSTapeSetPosition methodsFor: 'recovered'!
Immediate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int8At: (16).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x200111c8; bytecode file offset 0x165330"
!OSTapeSetPosition methodsFor: 'recovered'!
Method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200133a0; bytecode file offset 0x166e00"
!OSTapeSetPosition methodsFor: 'recovered'!
Partition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014588; bytecode file offset 0x1683c0"
!OSTapeSetPosition methodsFor: 'recovered'!
Offset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200164fc; bytecode file offset 0x169eb4"
!OSTapeSetPosition methodsFor: 'recovered'!
Immediate: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int8At: (16) put: (recoveredValue0).
    ^self
! !

