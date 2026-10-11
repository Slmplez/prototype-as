"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20005afc; bytecode file offset 0x50a0c"
!OSFloat32 methodsFor: 'recovered'!
at: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (4).
    recoveredValue2 := (self) float32At: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20007d44; bytecode file offset 0x52c54"
!OSFloat32 methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) * (4).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) float32At: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

