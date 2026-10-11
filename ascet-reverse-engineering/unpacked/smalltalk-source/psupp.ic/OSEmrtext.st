"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20003bc8; bytecode file offset 0x157f64"
!OSEmrtext methodsFor: 'recovered'!
nChars
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d94; bytecode file offset 0x1589a4"
!OSEmrtext methodsFor: 'recovered'!
offString
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x200052dc; bytecode file offset 0x159294"
!OSEmrtext methodsFor: 'recovered'!
fOptions
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x20007044; bytecode file offset 0x15aa74"
!OSEmrtext methodsFor: 'recovered'!
offDx
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"psupp.ic method 0x2000cdc0; bytecode file offset 0x160b8c"
!OSEmrtext methodsFor: 'recovered'!
ptlReference
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPointl.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e148; bytecode file offset 0x161aa4"
!OSEmrtext methodsFor: 'recovered'!
rcl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x200110fc; bytecode file offset 0x165330"
!OSEmrtext methodsFor: 'recovered'!
ptlReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200142b8; bytecode file offset 0x1683c0"
!OSEmrtext methodsFor: 'recovered'!
nChars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200159a4; bytecode file offset 0x169290"
!OSEmrtext methodsFor: 'recovered'!
offString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015b30; bytecode file offset 0x169eb4"
!OSEmrtext methodsFor: 'recovered'!
fOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016da8; bytecode file offset 0x16a7b4"
!OSEmrtext methodsFor: 'recovered'!
rcl: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20018584; bytecode file offset 0x16bff0"
!OSEmrtext methodsFor: 'recovered'!
offDx: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

