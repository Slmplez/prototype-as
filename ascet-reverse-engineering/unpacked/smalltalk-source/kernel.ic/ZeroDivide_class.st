"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200021d8; bytecode file offset 0x4d118"
!ZeroDivide class methodsFor: 'recovered'!
dividend: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) signalWith: (recoveredValue0).
    ^recoveredValue1
! !

"kernel.ic method 0x200082f4; bytecode file offset 0x53228"
!ZeroDivide class methodsFor: 'recovered'!
defaultDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultName.
    recoveredValue1 := ('(') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (') A  divide-by-zero exception has occurred').
    ^recoveredValue2
! !

