"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015084; bytecode file offset 0x912098"
!SGDataGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGDataGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201020a4; bytecode file offset 0x9fe978"
!SGDataGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 procedures: recoveredArg2 positions: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := super createDefault: (recoveredValue0) procedures: (recoveredValue1) positions: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) connectorNamesAsString.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20267f7c; bytecode file offset 0xb6485c"
!SGDataGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 size: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) createWithLineStyle: (recoveredValue2) manager: (nil).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) setSelectFlag: (false).
    recoveredValue6 := recoveredValue4.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) defaultSize.
    (recoveredValue6) setDefSize: (recoveredValue8).
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := OrderedCollection.
    recoveredValue11 := (recoveredValue10) new.
    (recoveredValue9) setInterfaceGOs: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) createDefaultFrameGO.
    recoveredValue13 := recoveredArg1.
    (recoveredValue4) createActualNameGO: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    ^recoveredValue14
! !

"ASDBase.ic method 0x2035824c; bytecode file offset 0xc54b48"
!SGDataGO class methodsFor: 'recovered'!
createAsResult: recoveredArg1 sgClass: recoveredArg2 sequenceVisibiliy: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) internalSetMethod.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := SGReservedNames.
    recoveredValue6 := (recoveredValue5) setMethod.
    (recoveredValue4) at: (recoveredValue6) put: (#(350)).
    recoveredValue7 := Array.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (recoveredValue7) with: (recoveredValue8).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (self) createDefault: ('Scalar') procedures: (recoveredValue9) positions: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue14) aliasName.
    (recoveredValue13) aliasName: (recoveredValue15).
    recoveredValue16 := recoveredValue12.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (recoveredValue17) label.
    (recoveredValue16) changeActualName: (recoveredValue18).
    recoveredValue19 := recoveredValue12.
    (recoveredValue19) actualNameVisibility: (true).
    recoveredValue20 := recoveredValue12.
    recoveredValue21 := recoveredArg3.
    (recoveredValue20) sequenceVisibility: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := recoveredArg1.
    (recoveredValue22) updateGOForElement: (recoveredValue23) display: (false).
    recoveredValue24 := recoveredLocal1.
    ^recoveredValue24
! !

