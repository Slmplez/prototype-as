"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004678; bytecode file offset 0x90206c"
!DBXmlImportStepXML methodsFor: 'recovered'!
resolveSpecification: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200047e0; bytecode file offset 0x90206c"
!DBXmlImportStepXML methodsFor: 'recovered'!
handleDefaultProject: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004950; bytecode file offset 0x90206c"
!DBXmlImportStepXML methodsFor: 'recovered'!
resolveImplementations: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005320; bytecode file offset 0x90206c"
!DBXmlImportStepXML methodsFor: 'recovered'!
resolveData: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20014b80; bytecode file offset 0x912098"
!DBXmlImportStepXML methodsFor: 'recovered'!
classOfNextStep
    | recoveredValue0 |
    recoveredValue0 := DBXmlImportStepMain.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20127314; bytecode file offset 0xa23bd4"
!DBXmlImportStepXML methodsFor: 'recovered'!
readMainDOMTree: recoveredArg1 schema: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super readMainDOMTree: (recoveredValue0) schema: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dom.
    mainDom := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013688c; bytecode file offset 0xa33148"
!DBXmlImportStepXML methodsFor: 'recovered'!
initOn: recoveredArg1 baseName: recoveredArg2 importPath: recoveredArg3 dbo: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg5.
    super initOn: (recoveredValue0) baseName: (recoveredValue1) importPath: (recoveredValue2) xmlExt: (recoveredValue3).
    recoveredValue4 := recoveredArg4.
    dbo := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x201d0588; bytecode file offset 0xacce58"
!DBXmlImportStepXML methodsFor: 'recovered'!
createMetaStep
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := DBXmlImportStepXML.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := controller.
    recoveredValue3 := (self) baseName.
    recoveredValue4 := dbo.
    recoveredValue5 := (recoveredValue4) database.
    recoveredValue6 := (recoveredValue5) databasePath.
    recoveredValue7 := dbo.
    recoveredValue8 := (self) extension.
    recoveredValue9 := (recoveredValue1) initOn: (recoveredValue2) baseName: (recoveredValue3) importPath: (recoveredValue6) dbo: (recoveredValue7) ext: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x20236d7c; bytecode file offset 0xb3364c"
!DBXmlImportStepXML methodsFor: 'recovered'!
createNextStep
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) classOfNextStep.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := controller.
    recoveredValue3 := protoItem.
    recoveredValue4 := importPath.
    recoveredValue5 := extension.
    recoveredValue6 := mainDom.
    recoveredValue7 := dbo.
    recoveredValue8 := (recoveredValue1) initOn: (recoveredValue2) item: (recoveredValue3) importPath: (recoveredValue4) ext: (recoveredValue5) dom: (recoveredValue6) dbo: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) originalSchemaVersion.
    (recoveredValue9) originalSchemaVersion: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) currentSchemaVersion.
    (recoveredValue11) currentSchemaVersion: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

