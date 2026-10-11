"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200017b0; bytecode file offset 0x7d9bc"
!CgTIFFInfoHeader methodsFor: 'recovered'!
format
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"winsys.ic method 0x20001838; bytecode file offset 0x7da20"
!CgTIFFInfoHeader methodsFor: 'recovered'!
version
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"winsys.ic method 0x20001890; bytecode file offset 0x7daa8"
!CgTIFFInfoHeader methodsFor: 'recovered'!
directoryOffset
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"winsys.ic method 0x200064a8; bytecode file offset 0x82690"
!CgTIFFInfoHeader methodsFor: 'recovered'!
format: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x2000652c; bytecode file offset 0x826fc"
!CgTIFFInfoHeader methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x200065c8; bytecode file offset 0x8278c"
!CgTIFFInfoHeader methodsFor: 'recovered'!
directoryOffset: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

