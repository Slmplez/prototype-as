"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001794; bytecode file offset 0x155d58"
!OSTtpolygonheader methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200038d8; bytecode file offset 0x157170"
!OSTtpolygonheader methodsFor: 'recovered'!
dwType
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x2000dbb8; bytecode file offset 0x161514"
!OSTtpolygonheader methodsFor: 'recovered'!
pfxStart
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointfx.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2001130c; bytecode file offset 0x165330"
!OSTtpolygonheader methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013550; bytecode file offset 0x166e00"
!OSTtpolygonheader methodsFor: 'recovered'!
dwType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013d54; bytecode file offset 0x1683c0"
!OSTtpolygonheader methodsFor: 'recovered'!
pfxStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

