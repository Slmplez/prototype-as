"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x200035d8; bytecode file offset 0x157170"
!OSNmhdr methodsFor: 'recovered'!
idFrom
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004198; bytecode file offset 0x157f64"
!OSNmhdr methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (8).
    ^recoveredValue0
! !

"psupp.ic method 0x20011a80; bytecode file offset 0x165330"
!OSNmhdr methodsFor: 'recovered'!
hwndFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200120d4; bytecode file offset 0x166e00"
!OSNmhdr methodsFor: 'recovered'!
idFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014120; bytecode file offset 0x1683c0"
!OSNmhdr methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001aac8; bytecode file offset 0x16ea70"
!OSNmhdr methodsFor: 'recovered'!
hwndFrom
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

