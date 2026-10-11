"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200013b0; bytecode file offset 0x155d58"
!OSDraginfo methodsFor: 'recovered'!
uSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200060c4; bytecode file offset 0x159974"
!OSDraginfo methodsFor: 'recovered'!
grfKeyState
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d6c4; bytecode file offset 0x160f90"
!OSDraginfo methodsFor: 'recovered'!
pt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSPoint.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000df68; bytecode file offset 0x16180c"
!OSDraginfo methodsFor: 'recovered'!
fNC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) int32At: (12).
    recoveredValue1 := (recoveredValue0) ~= (0).
    ^recoveredValue1
! !

"psupp.ic method 0x20010c94; bytecode file offset 0x165330"
!OSDraginfo methodsFor: 'recovered'!
uSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20013364; bytecode file offset 0x166e00"
!OSDraginfo methodsFor: 'recovered'!
pt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015518; bytecode file offset 0x169290"
!OSDraginfo methodsFor: 'recovered'!
fNC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016478; bytecode file offset 0x169eb4"
!OSDraginfo methodsFor: 'recovered'!
lpFileList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20016b80; bytecode file offset 0x16a7b4"
!OSDraginfo methodsFor: 'recovered'!
grfKeyState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c830; bytecode file offset 0x170238"
!OSDraginfo methodsFor: 'recovered'!
lpFileList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (16).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

