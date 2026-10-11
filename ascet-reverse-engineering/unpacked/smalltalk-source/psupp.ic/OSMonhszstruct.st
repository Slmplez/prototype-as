"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200020c4; bytecode file offset 0x155d58"
!OSMonhszstruct methodsFor: 'recovered'!
cb
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x20003d9c; bytecode file offset 0x157f64"
!OSMonhszstruct methodsFor: 'recovered'!
dwTime
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x2000bf08; bytecode file offset 0x15fa24"
!OSMonhszstruct methodsFor: 'recovered'!
str: recoveredArg1
    (self) error: ('This method is no longer supported.').
    ^self
! !

"psupp.ic method 0x2000d740; bytecode file offset 0x161038"
!OSMonhszstruct methodsFor: 'recovered'!
fsAction
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (4).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000e198; bytecode file offset 0x161aa4"
!OSMonhszstruct methodsFor: 'recovered'!
str
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSChar8.
    recoveredValue1 := (self) arrayAt: (20) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010f94; bytecode file offset 0x165330"
!OSMonhszstruct methodsFor: 'recovered'!
cb: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200134f0; bytecode file offset 0x166e00"
!OSMonhszstruct methodsFor: 'recovered'!
fsAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014414; bytecode file offset 0x1683c0"
!OSMonhszstruct methodsFor: 'recovered'!
dwTime: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015530; bytecode file offset 0x169290"
!OSMonhszstruct methodsFor: 'recovered'!
hsz: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016574; bytecode file offset 0x169eb4"
!OSMonhszstruct methodsFor: 'recovered'!
hTask: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c428; bytecode file offset 0x16fe44"
!OSMonhszstruct methodsFor: 'recovered'!
hsz
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHsz.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001c628; bytecode file offset 0x170238"
!OSMonhszstruct methodsFor: 'recovered'!
hTask
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

