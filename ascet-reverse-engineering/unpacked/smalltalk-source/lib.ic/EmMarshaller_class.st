"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000018; bytecode file offset 0x3c0a8"
!EmMarshaller class methodsFor: 'recovered'!
_PRAGMA_EmLibraryOperationConstants
    ^self
! !

"lib.ic method 0x20003f84; bytecode file offset 0x3ffb4"
!EmMarshaller class methodsFor: 'recovered'!
nextObjectFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) next.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (self) classForType: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) emReadBinary: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20008420; bytecode file offset 0x44468"
!EmMarshaller class methodsFor: 'recovered'!
typeForClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ClassTypeEncodings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := MxEMcsES36.
    recoveredBlock7Value1 := (self) error: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) keyAtValue: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20008438; bytecode file offset 0x44468"
!EmMarshaller class methodsFor: 'recovered'!
classForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ClassTypeEncodings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := MxEMcsES35.
    recoveredBlock7Value1 := (self) error: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20021090; bytecode file offset 0x5d100"
!EmMarshaller class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (17).
    ClassTypeEncodings := recoveredValue1.
    recoveredValue2 := ClassTypeEncodings.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := String.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := Symbol.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := Integer.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := EmLibraryPointer.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := EmTimeStamp.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := True.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := False.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := Array.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := UndefinedObject.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := recoveredValue2.
    recoveredValue22 := OrderedCollection.
    (recoveredValue21) at: (10) put: (recoveredValue22).
    recoveredValue23 := recoveredValue2.
    recoveredValue24 := Association.
    (recoveredValue23) at: (11) put: (recoveredValue24).
    recoveredValue25 := recoveredValue2.
    recoveredValue26 := Dictionary.
    (recoveredValue25) at: (12) put: (recoveredValue26).
    recoveredValue27 := recoveredValue2.
    recoveredValue28 := LookupTable.
    (recoveredValue27) at: (13) put: (recoveredValue28).
    recoveredValue29 := recoveredValue2.
    recoveredValue30 := SmallInteger.
    (recoveredValue29) at: (14) put: (recoveredValue30).
    recoveredValue31 := recoveredValue2.
    recoveredValue32 := LargeInteger.
    (recoveredValue31) at: (15) put: (recoveredValue32).
    recoveredValue33 := recoveredValue2.
    recoveredValue34 := DBString.
    (recoveredValue33) at: (16) put: (recoveredValue34).
    recoveredValue35 := Set.
    (recoveredValue2) at: (17) put: (recoveredValue35).
    ^self
! !

