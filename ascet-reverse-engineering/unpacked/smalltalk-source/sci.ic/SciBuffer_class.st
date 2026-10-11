"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20001c08; bytecode file offset 0x14c98"
!SciBuffer class methodsFor: 'recovered'!
new: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) size: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := OSUInt8.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) calloc: (recoveredValue5).
    (recoveredValue3) data: (recoveredValue6).
    ^recoveredValue0
! !

