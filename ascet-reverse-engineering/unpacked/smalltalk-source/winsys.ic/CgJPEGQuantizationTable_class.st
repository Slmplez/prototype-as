"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x200009f8; bytecode file offset 0x7cc7c"
!CgJPEGQuantizationTable class methodsFor: 'recovered'!
signature
    | recoveredValue0 |
    recoveredValue0 := DQT.
    ^recoveredValue0
! !

"winsys.ic method 0x200012b0; bytecode file offset 0x7d498"
!CgJPEGQuantizationTable class methodsFor: 'recovered'!
defaultLuminanceTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DefaultLuminanceQTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    ^recoveredValue1
! !

"winsys.ic method 0x200012c0; bytecode file offset 0x7d498"
!CgJPEGQuantizationTable class methodsFor: 'recovered'!
defaultChrominanceTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DefaultChrominanceQTable.
    recoveredValue1 := (self) reference: (recoveredValue0).
    ^recoveredValue1
! !

"winsys.ic method 0x20009148; bytecode file offset 0x85330"
!CgJPEGQuantizationTable class methodsFor: 'recovered'!
initializeOnLoad
    DefaultLuminanceQTable := #[255 219 0 67 0 16 11 10 16 24 40 51 61 12 12 14 19 26 58 60 55 14 13 16 24 40 57 69 56 14 17 22 29 51 87 80 62 18 22 37 56 68 109 103 77 24 35 55 64 81 104 113 92 49 64 78 87 103 121 120 101 72 92 95 98 112 100 103 99].
    DefaultChrominanceQTable := #[255 219 0 67 1 17 18 24 47 99 99 99 99 18 21 26 66 99 99 99 99 24 26 56 99 99 99 99 99 47 66 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99].
    ^self
! !

