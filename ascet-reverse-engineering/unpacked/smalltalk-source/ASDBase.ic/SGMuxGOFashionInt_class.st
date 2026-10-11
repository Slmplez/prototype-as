"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x202942f4; bytecode file offset 0xb90bd4"
!SGMuxGOFashionInt class methodsFor: 'recovered'!
createWith: recoveredArg1 inputs: recoveredArg2 lineStyle: recoveredArg3 fashionInt: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := super createWith: (recoveredValue0) lineStyle: (recoveredValue1) inputs: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg4.
    (recoveredValue5) fashionInt: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) initAxisFor: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) createDefaultFrameGO.
    recoveredValue10 := recoveredValue4.
    (recoveredValue10) buildIconGO.
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) createOutput.
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := recoveredArg2.
    (recoveredValue12) buildInterfaceFor: (recoveredValue13).
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := OrderedCollection.
    recoveredValue16 := (recoveredValue15) new.
    (recoveredValue14) hideInterfaceNames: (recoveredValue16).
    ^recoveredValue4
! !

