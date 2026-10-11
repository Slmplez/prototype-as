"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200017e0; bytecode file offset 0x7d9bc"
!CgPCXInfoHeader methodsFor: 'recovered'!
manufacturer
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (0).
    ^recoveredValue0
! !

"winsys.ic method 0x2000180c; bytecode file offset 0x7d9dc"
!CgPCXInfoHeader methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (1).
    ^recoveredValue0
! !

"winsys.ic method 0x20001850; bytecode file offset 0x7da20"
!CgPCXInfoHeader methodsFor: 'recovered'!
encoding
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (2).
    ^recoveredValue0
! !

"winsys.ic method 0x20001870; bytecode file offset 0x7da34"
!CgPCXInfoHeader methodsFor: 'recovered'!
bitsPerPixel
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (3).
    ^recoveredValue0
! !

"winsys.ic method 0x200018d8; bytecode file offset 0x7daa8"
!CgPCXInfoHeader methodsFor: 'recovered'!
xmin
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (4).
    ^recoveredValue0
! !

"winsys.ic method 0x20001904; bytecode file offset 0x7dae0"
!CgPCXInfoHeader methodsFor: 'recovered'!
ymin
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (6).
    ^recoveredValue0
! !

"winsys.ic method 0x20001930; bytecode file offset 0x7db30"
!CgPCXInfoHeader methodsFor: 'recovered'!
xmax
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (8).
    ^recoveredValue0
! !

"winsys.ic method 0x200019c4; bytecode file offset 0x7db88"
!CgPCXInfoHeader methodsFor: 'recovered'!
ymax
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (10).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a10; bytecode file offset 0x7dbd4"
!CgPCXInfoHeader methodsFor: 'recovered'!
hres
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (12).
    ^recoveredValue0
! !

"winsys.ic method 0x20001a30; bytecode file offset 0x7dbf4"
!CgPCXInfoHeader methodsFor: 'recovered'!
vres
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (14).
    ^recoveredValue0
! !

"winsys.ic method 0x20005310; bytecode file offset 0x814d4"
!CgPCXInfoHeader methodsFor: 'recovered'!
reserved
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (64).
    ^recoveredValue0
! !

"winsys.ic method 0x20005328; bytecode file offset 0x814f8"
!CgPCXInfoHeader methodsFor: 'recovered'!
colorPlanes
    | recoveredValue0 |
    recoveredValue0 := (self) uint8At: (65).
    ^recoveredValue0
! !

"winsys.ic method 0x2000534c; bytecode file offset 0x81510"
!CgPCXInfoHeader methodsFor: 'recovered'!
bytesPerLine
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (66).
    ^recoveredValue0
! !

"winsys.ic method 0x20005364; bytecode file offset 0x81528"
!CgPCXInfoHeader methodsFor: 'recovered'!
paletteType
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (68).
    ^recoveredValue0
! !

"winsys.ic method 0x20006318; bytecode file offset 0x824dc"
!CgPCXInfoHeader methodsFor: 'recovered'!
palette
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (16) to: (63).
    ^recoveredValue0
! !

"winsys.ic method 0x200064cc; bytecode file offset 0x82690"
!CgPCXInfoHeader methodsFor: 'recovered'!
manufacturer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (0) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200064e4; bytecode file offset 0x826b4"
!CgPCXInfoHeader methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (1) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006520; bytecode file offset 0x826fc"
!CgPCXInfoHeader methodsFor: 'recovered'!
encoding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (2) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006550; bytecode file offset 0x82714"
!CgPCXInfoHeader methodsFor: 'recovered'!
bitsPerPixel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (3) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006580; bytecode file offset 0x8278c"
!CgPCXInfoHeader methodsFor: 'recovered'!
xmin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (4) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006604; bytecode file offset 0x827c8"
!CgPCXInfoHeader methodsFor: 'recovered'!
ymin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (6) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006640; bytecode file offset 0x8281c"
!CgPCXInfoHeader methodsFor: 'recovered'!
xmax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (8) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20006688; bytecode file offset 0x82864"
!CgPCXInfoHeader methodsFor: 'recovered'!
ymax: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (10) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200066d0; bytecode file offset 0x828ac"
!CgPCXInfoHeader methodsFor: 'recovered'!
hres: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (12) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000670c; bytecode file offset 0x828d0"
!CgPCXInfoHeader methodsFor: 'recovered'!
vres: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (14) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20009718; bytecode file offset 0x858dc"
!CgPCXInfoHeader methodsFor: 'recovered'!
reserved: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (64) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20009734; bytecode file offset 0x85904"
!CgPCXInfoHeader methodsFor: 'recovered'!
colorPlanes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint8At: (65) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000975c; bytecode file offset 0x85920"
!CgPCXInfoHeader methodsFor: 'recovered'!
bytesPerLine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (66) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20009778; bytecode file offset 0x8593c"
!CgPCXInfoHeader methodsFor: 'recovered'!
paletteType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (68) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000ad24; bytecode file offset 0x86ee8"
!CgPCXInfoHeader methodsFor: 'recovered'!
filler
    | recoveredValue0 |
    recoveredValue0 := (self) memcpyFrom: (70) to: (127).
    ^recoveredValue0
! !

"winsys.ic method 0x2000b8e8; bytecode file offset 0x87aac"
!CgPCXInfoHeader methodsFor: 'recovered'!
palette: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (47) into: (self) startingAt: (16).
    ^self
! !

"winsys.ic method 0x2000d540; bytecode file offset 0x89704"
!CgPCXInfoHeader methodsFor: 'recovered'!
filler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) memcpyFrom: (0) to: (57) into: (self) startingAt: (70).
    ^self
! !

