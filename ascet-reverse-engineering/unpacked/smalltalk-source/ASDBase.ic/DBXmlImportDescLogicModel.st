"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023420; bytecode file offset 0x92209c"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
dbXmlAmdType
    ^'amdType_auto'
! !

"ASDBase.ic method 0x2004081c; bytecode file offset 0x93d278"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
database
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) database.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2009cf90; bytecode file offset 0x99988c"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
getDescription
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getDescription.
    recoveredValue2 := (recoveredValue1) , ('[LogicModel]').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdebc; bytecode file offset 0x9bb178"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20132fa0; bytecode file offset 0xa2f89c"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := parent.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := super printParent: (recoveredValue1) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20265690; bytecode file offset 0xb61f6c"
!DBXmlImportDescLogicModel methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) spec.
    recoveredValue2 := (recoveredValue1) xmlMakeInitialLogicModel.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := parent.
    recoveredValue4 := (recoveredValue3) parent.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) prepareLogicModel: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) object: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) dbObject: (recoveredValue9).
    recoveredValue10 := parent.
    recoveredValue11 := (recoveredValue10) spec.
    (recoveredValue11) xmlRecreateLogicModel.
    recoveredValue12 := ('Kli') == ('Workspace_Performance').
    recoveredValue13 := recoveredLocal1.
    (recoveredValue13) dbXmlClearModifyRecursive.
    ^nil
! !

