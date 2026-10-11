"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002430; bytecode file offset 0x155d58"
!OSLdtEntry methodsFor: 'recovered'!
LimitLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (0).
    ^recoveredValue0
! !

"psupp.ic method 0x200026e0; bytecode file offset 0x1561c4"
!OSLdtEntry methodsFor: 'recovered'!
BaseLow
    | recoveredValue0 |
    recoveredValue0 := (self) uint16At: (2).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d544; bytecode file offset 0x160f90"
!OSLdtEntry methodsFor: 'recovered'!
HighWord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSLdtEntryAnon3.
    recoveredValue1 := (self) structAt: (4) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x20011318; bytecode file offset 0x165330"
!OSLdtEntry methodsFor: 'recovered'!
LimitLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20011edc; bytecode file offset 0x1657d4"
!OSLdtEntry methodsFor: 'recovered'!
BaseLow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint16At: (2) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012068; bytecode file offset 0x166e00"
!OSLdtEntry methodsFor: 'recovered'!
HighWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (4) put: (recoveredValue0).
    ^self
! !

