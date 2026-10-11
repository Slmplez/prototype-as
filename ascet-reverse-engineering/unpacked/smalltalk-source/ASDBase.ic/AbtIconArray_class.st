"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200ca664; bytecode file offset 0x9c7020"
!AbtIconArray class methodsFor: 'recovered'!
fromFile: recoveredArg1 maskFile: recoveredArg2 count: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) fromFile: (recoveredValue1) maskFile: (recoveredValue2) count: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20157f4c; bytecode file offset 0xa54814"
!AbtIconArray class methodsFor: 'recovered'!
fromImage: recoveredArg1 mask: recoveredArg2 count: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg3.
    (recoveredValue1) size: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) image: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) mask: (recoveredValue6).
    recoveredValue7 := (recoveredValue0) calculateSizes.
    ^recoveredValue7
! !

