"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003fd0; bytecode file offset 0x90206c"
!EsError methodsFor: 'recovered'!
ifNoError: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200559f8; bytecode file offset 0x952a9c"
!EsError methodsFor: 'recovered'!
ifError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value: (self).
    ^recoveredValue1
! !

