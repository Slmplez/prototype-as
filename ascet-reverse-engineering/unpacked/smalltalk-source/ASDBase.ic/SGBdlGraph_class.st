"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200c921c; bytecode file offset 0x9c5b2c"
!SGBdlGraph class methodsFor: 'recovered'!
createForElementsCT: recoveredArg1 entryElements: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) allElements: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) buildForCT: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c926c; bytecode file offset 0x9c5b2c"
!SGBdlGraph class methodsFor: 'recovered'!
createFor: recoveredArg1 entryElements: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) unit: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) buildForAnalyze: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20111bbc; bytecode file offset 0xa0e4c8"
!SGBdlGraph class methodsFor: 'recovered'!
createFor: recoveredArg1 validElements: recoveredArg2 entryElements: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) unit: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) allElements: (recoveredValue4).
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := (recoveredValue0) buildForSequencing: (recoveredValue5).
    ^recoveredValue6
! !

