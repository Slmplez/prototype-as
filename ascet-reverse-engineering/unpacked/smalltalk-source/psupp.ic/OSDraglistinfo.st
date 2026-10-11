"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001c80; bytecode file offset 0x155d58"
!OSDraglistinfo methodsFor: 'recovered'!
uNotification
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dc38; bytecode file offset 0x161514"
!OSDraglistinfo methodsFor: 'recovered'!
ptCursor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001058c; bytecode file offset 0x165330"
!OSDraglistinfo methodsFor: 'recovered'!
uNotification: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200120bc; bytecode file offset 0x166e00"
!OSDraglistinfo methodsFor: 'recovered'!
hWnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200137c0; bytecode file offset 0x1683c0"
!OSDraglistinfo methodsFor: 'recovered'!
ptCursor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b7e0; bytecode file offset 0x16f1fc"
!OSDraglistinfo methodsFor: 'recovered'!
hWnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

