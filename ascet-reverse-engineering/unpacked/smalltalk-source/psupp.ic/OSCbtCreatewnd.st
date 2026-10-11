"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20010fdc; bytecode file offset 0x165330"
!OSCbtCreatewnd methodsFor: 'recovered'!
lpcs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012608; bytecode file offset 0x166e00"
!OSCbtCreatewnd methodsFor: 'recovered'!
hwndInsertAfter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001ab04; bytecode file offset 0x16ea70"
!OSCbtCreatewnd methodsFor: 'recovered'!
lpcs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSCreatestruct.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001b90c; bytecode file offset 0x16f1fc"
!OSCbtCreatewnd methodsFor: 'recovered'!
hwndInsertAfter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHwnd.
    recoveredValue1 := (self) uint32At: (4).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

