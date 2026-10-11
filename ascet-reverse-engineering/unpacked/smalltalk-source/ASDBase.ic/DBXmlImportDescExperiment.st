"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b368; bytecode file offset 0x92209c"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
dbXmlAmdType
    ^'amdType_experiment'
! !

"ASDBase.ic method 0x200400a8; bytecode file offset 0x93d278"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200676d4; bytecode file offset 0x9646f8"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
simConfigs
    | recoveredValue0 |
    recoveredValue0 := simConfigs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009cfcc; bytecode file offset 0x99988c"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := (recoveredValue1) , ('[Experiments]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8f70; bytecode file offset 0x9a5828"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := simConfigs.
    (recoveredValue0) addAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20132fc8; bytecode file offset 0xa2f89c"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20177758; bytecode file offset 0xa74018"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
collectOIDs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := simConfigs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value1) oid.
    recoveredBlock6Value3 := (recoveredBlock6Value0) add: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201e9120; bytecode file offset 0xae59e4"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
initOn: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    parent := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := parent.
    recoveredBlock10Value1 := (recoveredBlock10Value0) database.
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) makeProxyFromDom: (recoveredBlock10Value2) importDesc: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := (recoveredValue1) multiple: ('experiment') do: (recoveredValue2).
    simConfigs := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x202663c4; bytecode file offset 0xb62c94"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
asXML: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initOn: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := simConfigs.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) dbXmlDesc: ('experiment').
    recoveredBlock16Value3 := (recoveredBlock16Value0) addSubElement: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20294a8c; bytecode file offset 0xb91370"
!DBXmlImportDescExperiment methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := ('Die') == ('Call_98591').
    recoveredValue1 := parent.
    recoveredValue2 := (recoveredValue1) proxy.
    recoveredValue3 := [].
    (recoveredValue2) getObjectIfUndefined: (recoveredValue3).
    recoveredValue4 := DBXmlImporter.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) initOn: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := DBXmlImportStepExperiment.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := parent.
    recoveredValue12 := (recoveredValue9) initOn: (recoveredValue10) importDesc: (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) performStep.
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) handleIssues.
    recoveredValue15 := recoveredLocal2.
    ^recoveredValue15
! !

