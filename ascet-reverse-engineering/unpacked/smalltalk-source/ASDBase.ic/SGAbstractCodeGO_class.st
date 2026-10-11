"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013c80; bytecode file offset 0x912098"
!SGAbstractCodeGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGCodeGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20122590; bytecode file offset 0xa1ee58"
!SGAbstractCodeGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 size: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('a_') , (recoveredValue1).
    recoveredValue3 := DefaultLineStyle.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) createDefault: (recoveredValue0) actualName: (recoveredValue2) lineStyle: (recoveredValue4) size: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2018c354; bytecode file offset 0xa88c14"
!SGAbstractCodeGO class methodsFor: 'recovered'!
createUpdatedDisplay: recoveredArg1 actualName: recoveredArg2 icon: recoveredArg3 lineStyle: recoveredArg4 size: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := super createUpdatedDisplay: (recoveredValue0) actualName: (recoveredValue1) icon: (recoveredValue2) lineStyle: (recoveredValue3) size: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) createClassSymbolGO: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20318f98; bytecode file offset 0xc15884"
!SGAbstractCodeGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 actualName: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := super createDefault: (recoveredValue0) actualName: (recoveredValue1) lineStyle: (recoveredValue2) size: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) createClassSymbolGO: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) createSymbolGO.
    recoveredValue9 := recoveredValue5.
    recoveredValue10 := recoveredArg1.
    (recoveredValue9) createIconGO: (recoveredValue10).
    recoveredValue11 := DefaultPinNameVisibility.
    recoveredValue12 := (recoveredValue11) deepCopy.
    (recoveredValue5) changePinNameVisibility: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := DefaultActualNameVisibility.
    recoveredValue15 := (recoveredValue14) deepCopy.
    (recoveredValue13) showActualName: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := DefaultBlockNameVisibility.
    recoveredValue18 := (recoveredValue17) deepCopy.
    (recoveredValue16) classSymbolVisibility: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := DefaultIconVisibility.
    recoveredValue21 := (recoveredValue20) deepCopy.
    (recoveredValue19) iconVisibility: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    ^recoveredValue22
! !

