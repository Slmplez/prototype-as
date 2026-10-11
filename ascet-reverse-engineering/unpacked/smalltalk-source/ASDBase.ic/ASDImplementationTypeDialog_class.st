"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2016d0b8; bytecode file offset 0xa69980"
!ASDImplementationTypeDialog class methodsFor: 'recovered'!
createForDataElement: recoveredArg1 project: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) deepCopy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) create.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) majorDataElement: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) dataElement: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) project: (recoveredValue8).
    ^recoveredValue2
! !

