"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200142c8; bytecode file offset 0x912098"
!ASDOneDTableConfig class methodsFor: 'recovered'!
implClass
    | recoveredValue0 |
    recoveredValue0 := ASDOneDTableImpl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155f4; bytecode file offset 0x912098"
!ASDOneDTableConfig class methodsFor: 'recovered'!
dataClass
    | recoveredValue0 |
    recoveredValue0 := ASDOneDTableData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013884c; bytecode file offset 0xa35168"
!ASDOneDTableConfig class methodsFor: 'recovered'!
createDataForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createDataForDataElement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) xDistribution.
    recoveredValue5 := (recoveredValue4) createPrimitiveDataValues.
    (recoveredValue2) configXDistrib: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201388a0; bytecode file offset 0xa35168"
!ASDOneDTableConfig class methodsFor: 'recovered'!
createImplForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createImplForDataElement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) xDistribution.
    recoveredValue5 := (recoveredValue4) createPrimitiveImplValues.
    (recoveredValue2) configXDistrib: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

