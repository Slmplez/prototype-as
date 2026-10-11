"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005cfd4; bytecode file offset 0x9599ac"
!ASDImplType class methodsFor: 'recovered'!
createDefaultDataElement
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBFloat.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredValue2 := (self) createDefaultDataElementForDataType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200817c8; bytecode file offset 0x97e234"
!ASDImplType class methodsFor: 'recovered'!
createDefaultDataElementForDataType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBArithmeticElement.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createForType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2019d228; bytecode file offset 0xa99afc"
!ASDImplType class methodsFor: 'recovered'!
createDefault
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) createDefaultDataElement.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := (recoveredValue1) values.
    recoveredValue3 := (recoveredValue2) createPrimitiveImplValues.
    recoveredValue4 := (recoveredValue3) scalarImpl.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) new.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) implTypeValue: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) implTypeName: ('impl_type').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2022e964; bytecode file offset 0xb2b240"
!ASDImplType class methodsFor: 'recovered'!
createDefaultForType: recoveredArg1 modelType: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) createDefaultDataElementForDataType: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) updateImplType: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    (recoveredValue4) updatePhysicsRepresentation.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) values.
    recoveredValue7 := (recoveredValue6) createPrimitiveImplValues.
    recoveredValue8 := (recoveredValue7) scalarImpl.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) new.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) implTypeValue: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) implTypeName: ('impl_type').
    ^recoveredValue9
! !

