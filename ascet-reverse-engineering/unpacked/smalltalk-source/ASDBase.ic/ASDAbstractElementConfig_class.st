"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012f90; bytecode file offset 0x912098"
!ASDAbstractElementConfig class methodsFor: 'recovered'!
dataClass
    | recoveredValue0 |
    recoveredValue0 := ASDElementData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200154f8; bytecode file offset 0x912098"
!ASDAbstractElementConfig class methodsFor: 'recovered'!
implClass
    | recoveredValue0 |
    recoveredValue0 := ASDElementImpl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2016caf8; bytecode file offset 0xa693c8"
!ASDAbstractElementConfig class methodsFor: 'recovered'!
createDataForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) dataClass.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := (recoveredValue4) createPrimitiveDataValues.
    (recoveredValue2) configValues: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := ASDSpecialInfoData.
    recoveredValue8 := (recoveredValue7) create.
    (recoveredValue6) specialInfo: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2018b73c; bytecode file offset 0xa88010"
!ASDAbstractElementConfig class methodsFor: 'recovered'!
createImplForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) implClass.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := (recoveredValue4) createPrimitiveImplValues.
    (recoveredValue2) configValues: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := ASDSpecialInfoImpl.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue7) createForDataElement: (recoveredValue8).
    (recoveredValue6) specialInfo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

