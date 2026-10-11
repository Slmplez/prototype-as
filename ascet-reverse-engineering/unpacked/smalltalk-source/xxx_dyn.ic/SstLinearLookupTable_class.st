"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20004578; bytecode file offset 0x6563c"
!SstLinearLookupTable class methodsFor: 'recovered'!
minimumSize
    ^3
! !

"xxx_dyn.ic method 0x20007120; bytecode file offset 0x681f4"
!SstLinearLookupTable class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) basicNew.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) minimumSize.
    recoveredValue3 := (recoveredValue1) max: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) initialize: (recoveredValue3).
    ^recoveredValue4
! !

