"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000d634; bytecode file offset 0x160f90"
!OSTthittestinfo methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df0c; bytecode file offset 0x1617e8"
!OSTthittestinfo methodsFor: 'recovered'!
ti
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSToolinfo.
    recoveredValue1 := (self) structAt: (12) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010748; bytecode file offset 0x165330"
!OSTthittestinfo methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013424; bytecode file offset 0x166e00"
!OSTthittestinfo methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015068; bytecode file offset 0x169290"
!OSTthittestinfo methodsFor: 'recovered'!
ti: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ac6c; bytecode file offset 0x16ea70"
!OSTthittestinfo methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

