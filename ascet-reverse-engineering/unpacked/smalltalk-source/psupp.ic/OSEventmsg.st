"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001164; bytecode file offset 0x155d58"
!OSEventmsg methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200035c0; bytecode file offset 0x157170"
!OSEventmsg methodsFor: 'recovered'!
paramL
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20003ac0; bytecode file offset 0x157f64"
!OSEventmsg methodsFor: 'recovered'!
paramH
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004da0; bytecode file offset 0x1589a4"
!OSEventmsg methodsFor: 'recovered'!
time
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000f95c; bytecode file offset 0x165330"
!OSEventmsg methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012d94; bytecode file offset 0x166e00"
!OSEventmsg methodsFor: 'recovered'!
paramL: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014144; bytecode file offset 0x1683c0"
!OSEventmsg methodsFor: 'recovered'!
paramH: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001595c; bytecode file offset 0x169290"
!OSEventmsg methodsFor: 'recovered'!
time: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d1c; bytecode file offset 0x169eb4"
!OSEventmsg methodsFor: 'recovered'!
hwnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c614; bytecode file offset 0x170238"
!OSEventmsg methodsFor: 'recovered'!
hwnd
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

