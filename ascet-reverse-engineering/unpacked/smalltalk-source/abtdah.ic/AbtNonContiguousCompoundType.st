"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20001b34; bytecode file offset 0x11b5c"
!AbtNonContiguousCompoundType methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    length := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001d44; bytecode file offset 0x11d78"
!AbtNonContiguousCompoundType methodsFor: 'recovered'!
removeField: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := fields.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := [].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"abtdah.ic method 0x20003afc; bytecode file offset 0x13b38"
!AbtNonContiguousCompoundType methodsFor: 'recovered'!
addField: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := fields.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) offset: (recoveredValue5).
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) length.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    redefineLength := recoveredValue9.
    recoveredValue10 := length.
    recoveredValue11 := redefineLength.
    recoveredValue12 := (recoveredValue10) max: (recoveredValue11).
    length := recoveredValue12.
    ^self
! !

