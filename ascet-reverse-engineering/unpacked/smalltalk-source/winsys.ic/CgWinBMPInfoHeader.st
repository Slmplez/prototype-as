"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200017f8; bytecode file offset 0x7d9bc"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
headerSize
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (0).
    ^recoveredValue0
! !

"winsys.ic method 0x200018e4; bytecode file offset 0x7daa8"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"winsys.ic method 0x2000193c; bytecode file offset 0x7db30"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"winsys.ic method 0x200019f8; bytecode file offset 0x7dbd4"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
planes
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a24; bytecode file offset 0x7dbf4"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
bitCount
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a44; bytecode file offset 0x7dc14"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
compression
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (16).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a78; bytecode file offset 0x7dc3c"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
sizeImage
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (20).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a8c; bytecode file offset 0x7dc50"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
xPelsPerMeter
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (24).
    ^recoveredValue0
! !

"winsys.ic method 0x20001aa0; bytecode file offset 0x7dc64"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
yPelsPerMeter
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (28).
    ^recoveredValue0
! !

"winsys.ic method 0x20001ab4; bytecode file offset 0x7dc78"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
clrUsed
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (32).
    ^recoveredValue0
! !

"winsys.ic method 0x20001ac8; bytecode file offset 0x7dc8c"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
clrImportant
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (36).
    ^recoveredValue0
! !

"winsys.ic method 0x20006490; bytecode file offset 0x82690"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
headerSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006598; bytecode file offset 0x8278c"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006628; bytecode file offset 0x8281c"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200066e8; bytecode file offset 0x828ac"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
planes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006700; bytecode file offset 0x828d0"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
bitCount: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006724; bytecode file offset 0x828e8"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
compression: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (16) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000673c; bytecode file offset 0x82900"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
sizeImage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (20) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006754; bytecode file offset 0x82918"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
xPelsPerMeter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (24) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000676c; bytecode file offset 0x82930"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
yPelsPerMeter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (28) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006784; bytecode file offset 0x82948"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
clrUsed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (32) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000679c; bytecode file offset 0x82960"
!CgWinBMPInfoHeader methodsFor: 'recovered'!
clrImportant: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (36) put: (recoveredValue0).
    ^self
! !

