"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200148f8; bytecode file offset 0x912098"
!ASDTwoDTableConfig class methodsFor: 'recovered'!
dataClass
    | recoveredValue0 |
    recoveredValue0 := ASDTwoDTableData.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014f70; bytecode file offset 0x912098"
!ASDTwoDTableConfig class methodsFor: 'recovered'!
implClass
    | recoveredValue0 |
    recoveredValue0 := ASDTwoDTableImpl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20138868; bytecode file offset 0xa35168"
!ASDTwoDTableConfig class methodsFor: 'recovered'!
createDataForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createDataForDataElement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) yDistribution.
    recoveredValue5 := (recoveredValue4) createPrimitiveDataValues.
    (recoveredValue2) configYDistrib: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20138884; bytecode file offset 0xa35168"
!ASDTwoDTableConfig class methodsFor: 'recovered'!
createImplForDataElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createImplForDataElement: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) yDistribution.
    recoveredValue5 := (recoveredValue4) createPrimitiveImplValues.
    (recoveredValue2) configYDistrib: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

