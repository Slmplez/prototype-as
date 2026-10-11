"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005631c; bytecode file offset 0x952c58"
!DBXmlImportStepProject methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeRBDBObject.
    ^self
! !

"ASDBase.ic method 0x20073ae8; bytecode file offset 0x970b34"
!DBXmlImportStepProject methodsFor: 'recovered'!
makeExperimentImportStep
    ^nil
! !

"ASDBase.ic method 0x20093040; bytecode file offset 0x98f958"
!DBXmlImportStepProject methodsFor: 'recovered'!
handleOSLogic: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := importDesc.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) osLogic: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20093070; bytecode file offset 0x98f958"
!DBXmlImportStepProject methodsFor: 'recovered'!
handleFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := importDesc.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) files: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae18c; bytecode file offset 0x9aaa48"
!DBXmlImportStepProject methodsFor: 'recovered'!
handleSGDBObject: recoveredArg1 oid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) library.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) makeObject: (recoveredValue1) data: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20100d08; bytecode file offset 0x9fd5c4"
!DBXmlImportStepProject methodsFor: 'recovered'!
initOn: recoveredArg1 importDesc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) importDesc: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    importDesc := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x202e8fa4; bytecode file offset 0xbe5894"
!DBXmlImportStepProject methodsFor: 'recovered'!
handleFileContent: recoveredArg1 location: recoveredArg2 pack: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := protoClass.
    recoveredValue1 := (recoveredValue0) thing.
    recoveredValue2 := (recoveredValue1) dbObject.
    recoveredValue3 := (recoveredValue2) database.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := DBXmlImportDescProjectFile.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := protoClass.
    recoveredValue8 := (recoveredValue7) thing.
    recoveredValue9 := (recoveredValue8) dbObject.
    recoveredValue10 := (recoveredValue9) importDesc.
    recoveredValue11 := (recoveredValue5) initOn: (recoveredValue6) parent: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue13) makeNewProxy: (recoveredValue14).
    (recoveredValue12) fileContents: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) fileInformations.
    recoveredValue18 := CfsStat.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (recoveredValue18) getFileSize: (recoveredValue19).
    (recoveredValue17) at: ('size') put: (recoveredValue20).
    recoveredValue21 := recoveredArg3.
    recoveredValue22 := recoveredArg1.
    (recoveredValue21) add: (recoveredValue22).
    ^self
! !

