"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002220; bytecode file offset 0x155d58"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
fIsLocked
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003c64; bytecode file offset 0x157f64"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
dwLockDuration
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x200113f0; bytecode file offset 0x165330"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
fIsLocked: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013058; bytecode file offset 0x166e00"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
lpLockOwner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014288; bytecode file offset 0x1683c0"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
dwLockDuration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b5b0; bytecode file offset 0x16f1fc"
!OSQueryServiceLockStatus methodsFor: 'recovered'!
lpLockOwner
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

