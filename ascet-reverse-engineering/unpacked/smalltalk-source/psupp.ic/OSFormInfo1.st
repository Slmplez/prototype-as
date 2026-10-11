"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20001a70; bytecode file offset 0x155d58"
!OSFormInfo1 methodsFor: 'recovered'!
Flags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d9a8; bytecode file offset 0x161514"
!OSFormInfo1 methodsFor: 'recovered'!
Size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSSizel.
    recoveredValue1 := (self) structAt: (8) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000dfac; bytecode file offset 0x161938"
!OSFormInfo1 methodsFor: 'recovered'!
ImageableArea
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSRectl.
    recoveredValue1 := (self) structAt: (16) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f938; bytecode file offset 0x165330"
!OSFormInfo1 methodsFor: 'recovered'!
Flags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012788; bytecode file offset 0x166e00"
!OSFormInfo1 methodsFor: 'recovered'!
pName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013c34; bytecode file offset 0x1683c0"
!OSFormInfo1 methodsFor: 'recovered'!
Size: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016490; bytecode file offset 0x169eb4"
!OSFormInfo1 methodsFor: 'recovered'!
ImageableArea: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001b894; bytecode file offset 0x16f1fc"
!OSFormInfo1 methodsFor: 'recovered'!
pName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

