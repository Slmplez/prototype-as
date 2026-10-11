"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x2000c2b0; bytecode file offset 0x88474"
!CgJPEGDefineNumberOfLines methodsFor: 'recovered'!
numberOfLines
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uint8At: (4).
    recoveredValue1 := (recoveredValue0) * (256).
    recoveredValue2 := (self) uint8At: (5).
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    ^recoveredValue3
! !

"winsys.ic method 0x20014f48; bytecode file offset 0x91118"
!CgJPEGDefineNumberOfLines methodsFor: 'recovered'!
numberOfLines: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) // (256).
    (self) uint8At: (4) put: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) \\ (256).
    (self) uint8At: (5) put: (recoveredValue3).
    ^self
! !

