"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013650; bytecode file offset 0x912098"
!ASDXMLExportController methodsFor: 'recovered'!
xmlExt
    | recoveredValue0 |
    recoveredValue0 := XmlExt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20041f60; bytecode file offset 0x93e8fc"
!ASDXMLExportController methodsFor: 'recovered'!
encryptionKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := options.
    recoveredValue1 := (recoveredValue0) encryptionKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041f9c; bytecode file offset 0x93e8fc"
!ASDXMLExportController methodsFor: 'recovered'!
isSignExport
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := options.
    recoveredValue1 := (recoveredValue0) signXMLExport.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ff0; bytecode file offset 0x93e8fc"
!ASDXMLExportController methodsFor: 'recovered'!
destVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := options.
    recoveredValue1 := (recoveredValue0) destVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200542c0; bytecode file offset 0x951190"
!ASDXMLExportController methodsFor: 'recovered'!
xmlExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    XmlExt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005c6e0; bytecode file offset 0x959680"
!ASDXMLExportController methodsFor: 'recovered'!
defaultExportPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDPathOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionExportPath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067884; bytecode file offset 0x9646f8"
!ASDXMLExportController methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c164; bytecode file offset 0x9692b0"
!ASDXMLExportController methodsFor: 'recovered'!
catalog
    | recoveredValue0 |
    recoveredValue0 := catalog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d984; bytecode file offset 0x96a390"
!ASDXMLExportController methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dba8; bytecode file offset 0x96a9dc"
!ASDXMLExportController methodsFor: 'recovered'!
currentItem
    | recoveredValue0 |
    recoveredValue0 := currentItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007e9a4; bytecode file offset 0x97c330"
!ASDXMLExportController methodsFor: 'recovered'!
maxPathLengthHandling
    ^false
! !

"ASDBase.ic method 0x200824b8; bytecode file offset 0x97edc4"
!ASDXMLExportController methodsFor: 'recovered'!
shouldExportDefaultProject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := options.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) shouldExportDefaultProject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a29b4; bytecode file offset 0x99f274"
!ASDXMLExportController methodsFor: 'recovered'!
messagePrompt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) message: (recoveredValue1).
    (recoveredValue2) prompt.
    ^self
! !

"ASDBase.ic method 0x200a944c; bytecode file offset 0x9a5d18"
!ASDXMLExportController methodsFor: 'recovered'!
inconsistencyFound: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) inconsistencyFound: (recoveredValue0) severity: ('warning').
    ^self
! !

"ASDBase.ic method 0x200b943c; bytecode file offset 0x9b5d08"
!ASDXMLExportController methodsFor: 'recovered'!
exported: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('removeMe') notNil.
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x200b944c; bytecode file offset 0x9b5d08"
!ASDXMLExportController methodsFor: 'recovered'!
referenced: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := ('removeMe') notNil.
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x200b95dc; bytecode file offset 0x9b5ec4"
!ASDXMLExportController methodsFor: 'recovered'!
unableToWriteFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Unable to write file: ') , (recoveredValue0).
    (self) logError: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bacd8; bytecode file offset 0x9b75b4"
!ASDXMLExportController methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ASDXMLExportParameters.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue2) initFromOptions.
    recoveredValue4 := (self) initOn: (recoveredValue0) options: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c3630; bytecode file offset 0x9c058c"
!ASDXMLExportController methodsFor: 'recovered'!
progressWindow: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressWindow := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44a0; bytecode file offset 0x9c11bc"
!ASDXMLExportController methodsFor: 'recovered'!
currentItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentItem := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca020; bytecode file offset 0x9c692c"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponents: recoveredArg1 to: recoveredArg2 zip: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) exportComponents: (recoveredValue0) to: (recoveredValue1) zip: (recoveredValue2) ui: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d02c4; bytecode file offset 0x9ccda0"
!ASDXMLExportController methodsFor: 'recovered'!
zombiePath
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('Call_71010').
    ^'LostAndFound'
! !

"ASDBase.ic method 0x200db8b4; bytecode file offset 0x9d8170"
!ASDXMLExportController methodsFor: 'recovered'!
reportIssues: recoveredArg1 abort: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := issues.
    (self) showIssues: (recoveredValue0).
    (self) clearIssues.
    ^self
! !

"ASDBase.ic method 0x200dbc94; bytecode file offset 0x9d8550"
!ASDXMLExportController methodsFor: 'recovered'!
initHeadlessOn: recoveredArg1 options: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (recoveredValue0) headless: (true).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) initOn: (recoveredValue1) options: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200decc0; bytecode file offset 0x9db590"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponents: recoveredArg1 path: recoveredArg2 references: recoveredArg3 compressed: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) exportComponents: (recoveredValue0) path: (recoveredValue1) references: (recoveredValue2) compressed: (recoveredValue3) createHierarchyPath: (false).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e7d5c; bytecode file offset 0x9e4624"
!ASDXMLExportController methodsFor: 'recovered'!
alienFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := ('Formerly unknown object encountered: ') , (recoveredValue2).
    (self) logInfo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20101a80; bytecode file offset 0x9fe354"
!ASDXMLExportController methodsFor: 'recovered'!
makeWriter: recoveredArg1 schema: recoveredArg2 sign: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDXMLExportWriter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) initOn: (self) filename: (recoveredValue2) schema: (recoveredValue3) sign: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2010248c; bytecode file offset 0x9fed4c"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponent: recoveredArg1 path: recoveredArg2 references: recoveredArg3 compressed: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (self) exportComponents: (recoveredValue2) path: (recoveredValue3) references: (recoveredValue4) compressed: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010d2c0; bytecode file offset 0xa09b84"
!ASDXMLExportController methodsFor: 'recovered'!
wrongAssumption: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('todo') notNil.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Wrong assumption: ') , (recoveredValue1).
    (self) logWarning: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010d314; bytecode file offset 0xa09c14"
!ASDXMLExportController methodsFor: 'recovered'!
readProtected: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) xmlPathString.
    recoveredValue2 := ('Cannot export ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (': access denied').
    (self) logInfo: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20121f10; bytecode file offset 0xa1e7d8"
!ASDXMLExportController methodsFor: 'recovered'!
outdatedLocalID: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) aliasAsPrintableString.
    recoveredValue2 := ('Outdated local ID detected: ') , (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    (self) detectedIncompatibility: (recoveredValue2) for: ('V5.2.2') in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20121f58; bytecode file offset 0xa1e81c"
!ASDXMLExportController methodsFor: 'recovered'!
ambiguousMessageName: recoveredArg1 componentName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Ambiguous message ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' in ').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (self) logInfo: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012a06c; bytecode file offset 0xa269a8"
!ASDXMLExportController methodsFor: 'recovered'!
progressWindow
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := progressWindow.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBDummyProgressReporter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            progressWindow := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := progressWindow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20134544; bytecode file offset 0xa30e04"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponent: recoveredArg1 path: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) exportComponents: (recoveredValue2) to: (recoveredValue3) zip: (false) ui: (nil).
    recoveredValue5 := (recoveredValue4) == (0).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20137f34; bytecode file offset 0xa347fc"
!ASDXMLExportController methodsFor: 'recovered'!
initHeadlessOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDXMLExportParameters.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initFromOptions.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) headless: (true).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) initOn: (recoveredValue4) options: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x201421d8; bytecode file offset 0xa3ea98"
!ASDXMLExportController methodsFor: 'recovered'!
logLine: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeLogFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201534bc; bytecode file offset 0xa4fd88"
!ASDXMLExportController methodsFor: 'recovered'!
unknownExperimentWidget: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) windowClass.
    recoveredValue2 := ('Unknown experiment widget encountered: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' in ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) name.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    (self) logInfo: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2015a114; bytecode file offset 0xa569d8"
!ASDXMLExportController methodsFor: 'recovered'!
oldStyleCustomerData: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Illegal or old style customer data encoutered in ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('. Please reimport the component').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) logInfo: (recoveredValue3).
    oldStyle := true.
    ^self
! !

"ASDBase.ic method 0x201ac670; bytecode file offset 0xaa8f40"
!ASDXMLExportController methodsFor: 'recovered'!
cantCreateDir: recoveredArg1 reason: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Cant create directory ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (': ').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) logError: (recoveredValue6).
    recoveredValue7 := ExASDXML.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) signalWith: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201f3bd0; bytecode file offset 0xaf04f4"
!ASDXMLExportController methodsFor: 'recovered'!
logFatal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeLogFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '### FATAL: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f3bf8; bytecode file offset 0xaf04f4"
!ASDXMLExportController methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeLogFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '### WARNING: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addWarningText: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f3c20; bytecode file offset 0xaf04f4"
!ASDXMLExportController methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeLogFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '### INFORMATION: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addInfoText: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fb170; bytecode file offset 0xaf7a3c"
!ASDXMLExportController methodsFor: 'recovered'!
badRef: recoveredArg1 oid: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := '----'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasAsIdString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Cannot find '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ' for OID '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202325d4; bytecode file offset 0xb2eeb0"
!ASDXMLExportController methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeLogFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '### ERROR: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024d68c; bytecode file offset 0xb49f64"
!ASDXMLExportController methodsFor: 'recovered'!
detectedIncompatibility: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'Incompatibility found: AMD file not compatible to ASCET '.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ' or lower!! Details: '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) logWarning: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ASDXMLExportIssueIncompatibility.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) incompatibility: (recoveredStack3) ascetVersion: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026d5b4; bytecode file offset 0xb69e90"
!ASDXMLExportController methodsFor: 'recovered'!
showIssues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) headless.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMediumDialogs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := issues.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := ASDXMLExportIssuesDisplayTreeDialog.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) issues: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20277bc0; bytecode file offset 0xb74488"
!ASDXMLExportController methodsFor: 'recovered'!
addReference: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includeReferencedItems.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDefaultProject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := referenced.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) includes: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'Mechanism to collect referenced items either missed one or have not been consulted at all'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20299644; bytecode file offset 0xb95f24"
!ASDXMLExportController methodsFor: 'recovered'!
initOn: recoveredArg1 options: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initialize.
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    options := recoveredValue1.
    recoveredValue2 := EtasXmlLogfile.
    recoveredValue3 := (recoveredValue2) default.
    logger := recoveredValue3.
    oldStyle := false.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    schemaVersions := recoveredValue5.
    recoveredValue6 := EtasXmlSupportCatalog.
    recoveredValue7 := (recoveredValue6) makeCatalog.
    catalog := recoveredValue7.
    recoveredValue8 := ASAP2BaseObject.
    (recoveredValue8) initializeClass.
    recoveredValue9 := AMLBaseObject.
    (recoveredValue9) initializeClass.
    ^self
! !

"ASDBase.ic method 0x202ca940; bytecode file offset 0xbc7214"
!ASDXMLExportController methodsFor: 'recovered'!
handleIssues: recoveredArg1 abort: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectAutofixIssues: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ExportAborted.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Export aborted by user!!'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := issues.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := ExportAborted.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'Export aborted due to unfixed problems!!'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'TFS_354515'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e346c; bytecode file offset 0xbdfd54"
!ASDXMLExportController methodsFor: 'recovered'!
selectAutofixIssues: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) headless.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMediumDialogs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280e7444Arg1 | 
    | block280e7444Value0 block280e7444Value1 |
    block280e7444Value0 := block280e7444Arg1.
    block280e7444Value1 := (block280e7444Value0) isAutofixable.
    block280e7444Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := ASDXMLExportIssueSolverTreeDialog.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) issues: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e36d0; bytecode file offset 0xbdffa8"
!ASDXMLExportController methodsFor: 'recovered'!
getSchemaVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := schemaVersions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 recoveredBlock9Value11 recoveredBlock9Value12 |
    recoveredBlock9Value0 := Util.
    recoveredBlock9Value1 := Util.
    recoveredBlock9Value2 := (recoveredBlock9Value1) schemaPath.
    recoveredBlock9Value3 := (recoveredBlock9Value2) , ('\').
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := (recoveredBlock9Value3) , (recoveredBlock9Value4).
    recoveredBlock9Value6 := (recoveredBlock9Value0) readDOMTree: (recoveredBlock9Value5) schema: (nil).
    recoveredBlock9Local2 := recoveredBlock9Value6.
    recoveredBlock9Value7 := recoveredBlock9Local2.
    recoveredBlock9Value8 := (recoveredBlock9Value7) getString: ('version').
    recoveredBlock9Local1 := recoveredBlock9Value8.
    recoveredBlock9Value9 := schemaVersions.
    recoveredBlock9Value10 := recoveredArg1.
    recoveredBlock9Value11 := recoveredBlock9Local1.
    (recoveredBlock9Value9) at: (recoveredBlock9Value10) put: (recoveredBlock9Value11).
    recoveredBlock9Value12 := recoveredBlock9Local1.
    ^recoveredBlock9Value12
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2035b410; bytecode file offset 0xc57cf0"
!ASDXMLExportController methodsFor: 'recovered'!
inconsistencyFound: recoveredArg1 severity: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'todo'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'information'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'Inconsistency found: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) logInfo: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'Inconsistency found: '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) logWarning: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'error'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Inconsistency found: '.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'fatal'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'Inconsistency found: '.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) logFatal: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fa3fc; bytecode file offset 0xcf6d28"
!ASDXMLExportController methodsFor: 'recovered'!
groupIssues
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := issues.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) item.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            (recoveredBlock12Stack1 ~~ nil) ifTrue: [recoveredBlock12PC := 30] ifFalse: [recoveredBlock12PC := 24].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := '<Unknown item>'.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) item.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) pathName.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack3 := [
    | block280f9cb4Value0 block280f9cb4Value1 |
    block280f9cb4Value0 := OrderedCollection.
    block280f9cb4Value1 := (block280f9cb4Value0) new.
    block280f9cb4Value1
].
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) ifAbsentPut: (recoveredBlock12Stack3).
            recoveredBlock12PC := 50.
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) new: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := [:recoveredBlock71Arg1 | 
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 |
    recoveredBlock71Value0 := recoveredLocal1.
    recoveredBlock71Value1 := recoveredBlock71Arg1.
    recoveredBlock71Value2 := (recoveredBlock71Value0) add: (recoveredBlock71Value1).
    recoveredBlock71Value2
].
    (recoveredValue8) associationsDo: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asSortedCollection.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2040da80; bytecode file offset 0xd0a374"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponents: recoveredArg1 path: recoveredArg2 references: recoveredArg3 compressed: recoveredArg4 createHierarchyPath: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '======= export from API ========'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) logLine: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'items: '.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [:block280fb118Arg1 :block280fb118Arg2 | 
    | block280fb118Value0 block280fb118Value1 block280fb118Value2 block280fb118Value3 |
    block280fb118Value0 := block280fb118Arg1.
    block280fb118Value1 := block280fb118Arg2.
    block280fb118Value2 := (block280fb118Value1) xmlPathString.
    block280fb118Value3 := (block280fb118Value0) , (block280fb118Value2).
    block280fb118Value3
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) inject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) logLine: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'path: '.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := ' references: '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := ' compressed: '.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) logLine: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := options.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) includeReferencedItems: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := options.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) createCompleteHierarchy: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) exportComponents: (recoveredStack1) to: (recoveredStack2) zip: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'return: '.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) logLine: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20564bac; bytecode file offset 0xe614fc"
!ASDXMLExportController methodsFor: 'recovered'!
writeComponent: recoveredArg1 dir: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := SGDatabaseAccess.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) currentItem: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg2.
            recoveredBlock21PC := 31.
        ].
        recoveredBlock21Step = 31 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) asPathname.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg3.
            recoveredBlock21PC := 35.
        ].
        recoveredBlock21Step = 35 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) , (recoveredBlock21Stack2).
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Local2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isFolder.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 46] ifFalse: [recoveredBlock21PC := 90].
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := CfsDirectoryDescriptor.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 49.
        ].
        recoveredBlock21Step = 49 ifTrue: [
            recoveredBlock21Stack3 := [].
            recoveredBlock21PC := 51.
        ].
        recoveredBlock21Step = 51 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) mkdirRecursive: (recoveredBlock21Stack2) ifPresent: (recoveredBlock21Stack3).
            recoveredBlock21PC := 53.
        ].
        recoveredBlock21Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isError.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 64] ifFalse: [recoveredBlock21PC := 71].
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 65.
        ].
        recoveredBlock21Step = 65 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 66.
        ].
        recoveredBlock21Step = 66 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal2.
            recoveredBlock21PC := 69.
        ].
        recoveredBlock21Step = 69 ifTrue: [
            (recoveredBlock21Stack1) cantCreateDir: (recoveredBlock21Stack2) reason: (recoveredBlock21Stack3).
            recoveredBlock21PC := 71.
        ].
        recoveredBlock21Step = 71 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 74.
        ].
        recoveredBlock21Step = 74 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 75.
        ].
        recoveredBlock21Step = 75 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local2.
            recoveredBlock21PC := 76.
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21Stack4 := '/folder'.
            recoveredBlock21PC := 78.
        ].
        recoveredBlock21Step = 78 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) , (recoveredBlock21Stack4).
            recoveredBlock21PC := 80.
        ].
        recoveredBlock21Step = 80 ifTrue: [
            recoveredBlock21Stack4 := self.
            recoveredBlock21PC := 81.
        ].
        recoveredBlock21Step = 81 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) xmlExt.
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) flushXMLToFiles: (recoveredBlock21Stack2) baseName: (recoveredBlock21Stack3) xmlExt: (recoveredBlock21Stack4).
            recoveredBlock21PC := 86.
        ].
        recoveredBlock21Step = 86 ifTrue: [
            recoveredBlock21PC := 194.
        ].
        recoveredBlock21Step = 90 ifTrue: [
            recoveredBlock21Stack1 := Util.
            recoveredBlock21PC := 92.
        ].
        recoveredBlock21Step = 92 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 93.
        ].
        recoveredBlock21Step = 93 ifTrue: [
            recoveredBlock21Stack3 := 'Exporting: '.
            recoveredBlock21PC := 95.
        ].
        recoveredBlock21Step = 95 ifTrue: [
            recoveredBlock21Stack4 := recoveredArg3.
            recoveredBlock21PC := 98.
        ].
        recoveredBlock21Step = 98 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) , (recoveredBlock21Stack4).
            recoveredBlock21PC := 100.
        ].
        recoveredBlock21Step = 100 ifTrue: [
            (recoveredBlock21Stack2) show: (recoveredBlock21Stack3).
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            (recoveredBlock21Stack1) cr.
            recoveredBlock21PC := 104.
        ].
        recoveredBlock21Step = 104 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 107.
        ].
        recoveredBlock21Step = 107 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) dbObject.
            recoveredBlock21PC := 109.
        ].
        recoveredBlock21Step = 109 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isRead.
            recoveredBlock21PC := 111.
        ].
        recoveredBlock21Step = 111 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 114] ifFalse: [recoveredBlock21PC := 188].
        ].
        recoveredBlock21Step = 114 ifTrue: [
            recoveredBlock21Stack1 := Util.
            recoveredBlock21PC := 116.
        ].
        recoveredBlock21Step = 116 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 117.
        ].
        recoveredBlock21Step = 117 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) splitPath: (recoveredBlock21Stack2).
            recoveredBlock21PC := 119.
        ].
        recoveredBlock21Step = 119 ifTrue: [
            recoveredBlock21Stack2 := 1.
            recoveredBlock21PC := 121.
        ].
        recoveredBlock21Step = 121 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) at: (recoveredBlock21Stack2).
            recoveredBlock21PC := 123.
        ].
        recoveredBlock21Step = 123 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack1.
            recoveredBlock21PC := 124.
        ].
        recoveredBlock21Step = 124 ifTrue: [
            recoveredBlock21Stack1 := CfsDirectoryDescriptor.
            recoveredBlock21PC := 126.
        ].
        recoveredBlock21Step = 126 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 127.
        ].
        recoveredBlock21Step = 127 ifTrue: [
            recoveredBlock21Stack3 := [].
            recoveredBlock21PC := 129.
        ].
        recoveredBlock21Step = 129 ifTrue: [
            recoveredBlock21Stack4 := 'Export path'.
            recoveredBlock21PC := 131.
        ].
        recoveredBlock21Step = 131 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) mkdirRecursive: (recoveredBlock21Stack2) ifPresent: (recoveredBlock21Stack3) errorLabel: (recoveredBlock21Stack4).
            recoveredBlock21PC := 134.
        ].
        recoveredBlock21Step = 134 ifTrue: [
            recoveredLocal2 := recoveredBlock21Stack1.
            recoveredBlock21PC := 137.
        ].
        recoveredBlock21Step = 137 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal2.
            recoveredBlock21PC := 140.
        ].
        recoveredBlock21Step = 140 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) isError.
            recoveredBlock21PC := 142.
        ].
        recoveredBlock21Step = 142 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 146] ifFalse: [recoveredBlock21PC := 153].
        ].
        recoveredBlock21Step = 146 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 147.
        ].
        recoveredBlock21Step = 147 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local1.
            recoveredBlock21PC := 148.
        ].
        recoveredBlock21Step = 148 ifTrue: [
            recoveredBlock21Stack3 := recoveredLocal2.
            recoveredBlock21PC := 151.
        ].
        recoveredBlock21Step = 151 ifTrue: [
            (recoveredBlock21Stack1) cantCreateDir: (recoveredBlock21Stack2) reason: (recoveredBlock21Stack3).
            recoveredBlock21PC := 153.
        ].
        recoveredBlock21Step = 153 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 156.
        ].
        recoveredBlock21Step = 156 ifTrue: [
            recoveredBlock21Stack2 := self.
            recoveredBlock21PC := 157.
        ].
        recoveredBlock21Step = 157 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Local2.
            recoveredBlock21PC := 158.
        ].
        recoveredBlock21Step = 158 ifTrue: [
            recoveredBlock21Stack4 := self.
            recoveredBlock21PC := 159.
        ].
        recoveredBlock21Step = 159 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) xmlExt.
            recoveredBlock21PC := 161.
        ].
        recoveredBlock21Step = 161 ifTrue: [
            (recoveredBlock21Stack1) flushXMLToFiles: (recoveredBlock21Stack2) baseName: (recoveredBlock21Stack3) xmlExt: (recoveredBlock21Stack4).
            recoveredBlock21PC := 164.
        ].
        recoveredBlock21Step = 164 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 165.
        ].
        recoveredBlock21Step = 165 ifTrue: [
            recoveredBlock21Stack2 := ASDAscetController.
            recoveredBlock21PC := 167.
        ].
        recoveredBlock21Step = 167 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isSCMActive.
            recoveredBlock21PC := 169.
        ].
        recoveredBlock21Step = 169 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 172] ifFalse: [recoveredBlock21PC := 182].
        ].
        recoveredBlock21Step = 172 ifTrue: [
            recoveredBlock21PC := 173.
        ].
        recoveredBlock21Step = 173 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 176.
        ].
        recoveredBlock21Step = 176 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Local2.
            recoveredBlock21PC := 177.
        ].
        recoveredBlock21Step = 177 ifTrue: [
            recoveredBlock21Stack3 := self.
            recoveredBlock21PC := 178.
        ].
        recoveredBlock21Step = 178 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) xmlExt.
            recoveredBlock21PC := 180.
        ].
        recoveredBlock21Step = 180 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) scmPostXMLExportHookWithBaseName: (recoveredBlock21Stack2) xmlExt: (recoveredBlock21Stack3).
            recoveredBlock21PC := 182.
        ].
        recoveredBlock21Step = 182 ifTrue: [
            recoveredBlock21Stack2 := nil.
            recoveredBlock21PC := 183.
        ].
        recoveredBlock21Step = 183 ifTrue: [
            recoveredBlock21Local1 := recoveredBlock21Stack2.
            recoveredBlock21PC := 184.
        ].
        recoveredBlock21Step = 184 ifTrue: [
            recoveredBlock21PC := 194.
        ].
        recoveredBlock21Step = 188 ifTrue: [
            recoveredBlock21Stack1 := self.
            recoveredBlock21PC := 189.
        ].
        recoveredBlock21Step = 189 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg1.
            recoveredBlock21PC := 192.
        ].
        recoveredBlock21Step = 192 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) readProtected: (recoveredBlock21Stack2).
            recoveredBlock21PC := 194.
        ].
        recoveredBlock21Step = 194 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := ExASDXML.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := [:recoveredBlock197Arg1 | 
    | recoveredBlock197Value0 recoveredBlock197Value1 recoveredBlock197Value2 recoveredBlock197Value3 recoveredBlock197Value4 recoveredBlock197Value5 recoveredBlock197Value6 recoveredBlock197Value7 recoveredBlock197Value8 recoveredBlock197Value9 recoveredBlock197Value10 recoveredBlock197Value11 |
    recoveredBlock197Value0 := Util.
    recoveredBlock197Value1 := recoveredBlock197Arg1.
    (recoveredBlock197Value0) writeStackTrace: (recoveredBlock197Value1).
    recoveredBlock197Value2 := RBUserInfo.
    recoveredBlock197Value3 := ('Export failed!!\ \Reported Reason:\') withCrs.
    recoveredBlock197Value4 := recoveredBlock197Arg1.
    recoveredBlock197Value5 := (recoveredBlock197Value4) arguments.
    recoveredBlock197Value6 := (recoveredBlock197Value5) printString.
    recoveredBlock197Value7 := (recoveredBlock197Value3) , (recoveredBlock197Value6).
    recoveredBlock197Value8 := (recoveredBlock197Value2) errorMessage: (recoveredBlock197Value7).
    recoveredBlock197Value9 := recoveredBlock197Value8.
    recoveredBlock197Value10 := recoveredBlock197Arg1.
    recoveredBlock197Value11 := (recoveredBlock197Value10) printString.
    (recoveredBlock197Value9) context: (recoveredBlock197Value11).
    (recoveredBlock197Value8) prompt.
    ^false
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d8508; bytecode file offset 0xed4e98"
!ASDXMLExportController methodsFor: 'recovered'!
export: recoveredArg1 to: recoveredArg2 ui: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) toExport.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) progressWindow.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) progressWindow.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'Exporting items'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'Exported 0 items to '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) autoUnmanage: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) allowCancel: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Call_85222'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := (recoveredStack3) values.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            referenced := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) issues.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 |
    recoveredBlock80Value0 := referenced.
    recoveredBlock80Value1 := recoveredBlock80Arg1.
    recoveredBlock80Value2 := (recoveredBlock80Value1) item.
    recoveredBlock80Value3 := (recoveredBlock80Value0) add: (recoveredBlock80Value2).
    recoveredBlock80Value3
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) clearIssues.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'TFS_354515'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock105Local1 recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 |
    recoveredBlock105Local1 := 0.
    recoveredBlock105Value0 := recoveredLocal1.
    recoveredBlock105Value1 := (recoveredBlock105Value0) keys.
    recoveredBlock105Value2 := (recoveredBlock105Value1) asSortedCollection.
    recoveredBlock105Value3 := [:recoveredBlock105Block124Arg1 | 
    | recoveredBlock105Block124Local1 recoveredBlock105Block124Stack0 recoveredBlock105Block124Stack1 recoveredBlock105Block124Stack2 recoveredBlock105Block124Stack3 recoveredBlock105Block124Stack4 recoveredBlock105Block124PC recoveredBlock105Block124Step recoveredBlock105Block124Done recoveredBlock105Block124Result |
    recoveredBlock105Block124Stack0 := self.
    recoveredBlock105Block124PC := 130.
    recoveredBlock105Block124Done := false.
    [recoveredBlock105Block124Done not] whileTrue: [
        recoveredBlock105Block124Step := recoveredBlock105Block124PC.
        recoveredBlock105Block124Step = 130 ifTrue: [
            recoveredBlock105Block124Stack1 := Util.
            recoveredBlock105Block124PC := 132.
        ].
        recoveredBlock105Block124Step = 132 ifTrue: [
            (recoveredBlock105Block124Stack1) dispatchEvents.
            recoveredBlock105Block124PC := 134.
        ].
        recoveredBlock105Block124Step = 134 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredLocal1.
            recoveredBlock105Block124PC := 137.
        ].
        recoveredBlock105Block124Step = 137 ifTrue: [
            recoveredBlock105Block124Stack2 := recoveredBlock105Block124Arg1.
            recoveredBlock105Block124PC := 138.
        ].
        recoveredBlock105Block124Step = 138 ifTrue: [
            recoveredBlock105Block124Stack1 := (recoveredBlock105Block124Stack1) at: (recoveredBlock105Block124Stack2).
            recoveredBlock105Block124PC := 140.
        ].
        recoveredBlock105Block124Step = 140 ifTrue: [
            recoveredBlock105Block124Local1 := recoveredBlock105Block124Stack1.
            recoveredBlock105Block124PC := 141.
        ].
        recoveredBlock105Block124Step = 141 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredBlock105Block124Local1.
            recoveredBlock105Block124PC := 142.
        ].
        recoveredBlock105Block124Step = 142 ifTrue: [
            recoveredBlock105Block124Stack2 := recoveredArg2.
            recoveredBlock105Block124PC := 145.
        ].
        recoveredBlock105Block124Step = 145 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredBlock105Block124Arg1.
            recoveredBlock105Block124PC := 146.
        ].
        recoveredBlock105Block124Step = 146 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) writeComponent: (recoveredBlock105Block124Stack1) dir: (recoveredBlock105Block124Stack2) baseName: (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 149.
        ].
        recoveredBlock105Block124Step = 149 ifTrue: [
            (recoveredBlock105Block124Stack0) ifTrue: [recoveredBlock105Block124PC := 152] ifFalse: [recoveredBlock105Block124PC := 170].
        ].
        recoveredBlock105Block124Step = 152 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredArg3.
            recoveredBlock105Block124PC := 155.
        ].
        recoveredBlock105Block124Step = 155 ifTrue: [
            (recoveredBlock105Block124Stack0 == nil) ifTrue: [recoveredBlock105Block124PC := 166] ifFalse: [recoveredBlock105Block124PC := 158].
        ].
        recoveredBlock105Block124Step = 158 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredArg3.
            recoveredBlock105Block124PC := 161.
        ].
        recoveredBlock105Block124Step = 161 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 164.
        ].
        recoveredBlock105Block124Step = 164 ifTrue: [
            (recoveredBlock105Block124Stack0) exported: (recoveredBlock105Block124Stack1).
            recoveredBlock105Block124PC := 166.
        ].
        recoveredBlock105Block124Step = 166 ifTrue: [
            recoveredBlock105Block124PC := 173.
        ].
        recoveredBlock105Block124Step = 170 ifTrue: [
            recoveredBlock105Block124Stack0 := -7.
            recoveredBlock105Block124PC := 172.
        ].
        recoveredBlock105Block124Step = 172 ifTrue: [
            ^recoveredBlock105Block124Stack0
        ].
        recoveredBlock105Block124Step = 173 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 176.
        ].
        recoveredBlock105Block124Step = 176 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) + (1).
            recoveredBlock105Block124PC := 177.
        ].
        recoveredBlock105Block124Step = 177 ifTrue: [
            recoveredBlock105Local1 := recoveredBlock105Block124Stack0.
            recoveredBlock105Block124PC := 180.
        ].
        recoveredBlock105Block124Step = 180 ifTrue: [
            recoveredBlock105Block124Stack0 := 'Kli'.
            recoveredBlock105Block124PC := 182.
        ].
        recoveredBlock105Block124Step = 182 ifTrue: [
            recoveredBlock105Block124Stack1 := 'Call_94999'.
            recoveredBlock105Block124PC := 184.
        ].
        recoveredBlock105Block124Step = 184 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) == (recoveredBlock105Block124Stack1).
            recoveredBlock105Block124PC := 185.
        ].
        recoveredBlock105Block124Step = 185 ifTrue: [
            recoveredBlock105Block124PC := 186.
        ].
        recoveredBlock105Block124Step = 186 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredArg3.
            recoveredBlock105Block124PC := 189.
        ].
        recoveredBlock105Block124Step = 189 ifTrue: [
            (recoveredBlock105Block124Stack0 == nil) ifTrue: [recoveredBlock105Block124PC := 203] ifFalse: [recoveredBlock105Block124PC := 192].
        ].
        recoveredBlock105Block124Step = 192 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredArg3.
            recoveredBlock105Block124PC := 195.
        ].
        recoveredBlock105Block124Step = 195 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) cancelled.
            recoveredBlock105Block124PC := 197.
        ].
        recoveredBlock105Block124Step = 197 ifTrue: [
            (recoveredBlock105Block124Stack0) ifTrue: [recoveredBlock105Block124PC := 200] ifFalse: [recoveredBlock105Block124PC := 203].
        ].
        recoveredBlock105Block124Step = 200 ifTrue: [
            recoveredBlock105Block124Stack0 := -6.
            recoveredBlock105Block124PC := 202.
        ].
        recoveredBlock105Block124Step = 202 ifTrue: [
            ^recoveredBlock105Block124Stack0
        ].
        recoveredBlock105Block124Step = 203 ifTrue: [
            recoveredBlock105Block124Stack0 := self.
            recoveredBlock105Block124PC := 204.
        ].
        recoveredBlock105Block124Step = 204 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) progressWindow.
            recoveredBlock105Block124PC := 205.
        ].
        recoveredBlock105Block124Step = 205 ifTrue: [
            (recoveredBlock105Block124Stack0 == nil) ifTrue: [recoveredBlock105Block124PC := 284] ifFalse: [recoveredBlock105Block124PC := 208].
        ].
        recoveredBlock105Block124Step = 208 ifTrue: [
            recoveredBlock105Block124Stack0 := recoveredArg3.
            recoveredBlock105Block124PC := 211.
        ].
        recoveredBlock105Block124Step = 211 ifTrue: [
            (recoveredBlock105Block124Stack0 ~~ nil) ifTrue: [recoveredBlock105Block124PC := 284] ifFalse: [recoveredBlock105Block124PC := 214].
        ].
        recoveredBlock105Block124Step = 214 ifTrue: [
            recoveredBlock105Block124Stack0 := self.
            recoveredBlock105Block124PC := 215.
        ].
        recoveredBlock105Block124Step = 215 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) progressWindow.
            recoveredBlock105Block124PC := 216.
        ].
        recoveredBlock105Block124Step = 216 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) cancelled.
            recoveredBlock105Block124PC := 218.
        ].
        recoveredBlock105Block124Step = 218 ifTrue: [
            (recoveredBlock105Block124Stack0) ifTrue: [recoveredBlock105Block124PC := 222] ifFalse: [recoveredBlock105Block124PC := 225].
        ].
        recoveredBlock105Block124Step = 222 ifTrue: [
            recoveredBlock105Block124Stack0 := -6.
            recoveredBlock105Block124PC := 224.
        ].
        recoveredBlock105Block124Step = 224 ifTrue: [
            ^recoveredBlock105Block124Stack0
        ].
        recoveredBlock105Block124Step = 225 ifTrue: [
            recoveredBlock105Block124Stack0 := self.
            recoveredBlock105Block124PC := 226.
        ].
        recoveredBlock105Block124Step = 226 ifTrue: [
            recoveredBlock105Block124Stack0 := (recoveredBlock105Block124Stack0) progressWindow.
            recoveredBlock105Block124PC := 227.
        ].
        recoveredBlock105Block124Step = 227 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredBlock105Block124Stack0.
            recoveredBlock105Block124PC := 228.
        ].
        recoveredBlock105Block124Step = 228 ifTrue: [
            recoveredBlock105Block124Stack2 := 'Exported '.
            recoveredBlock105Block124PC := 230.
        ].
        recoveredBlock105Block124Step = 230 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 233.
        ].
        recoveredBlock105Block124Step = 233 ifTrue: [
            recoveredBlock105Block124Stack3 := (recoveredBlock105Block124Stack3) printString.
            recoveredBlock105Block124PC := 235.
        ].
        recoveredBlock105Block124Step = 235 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 237.
        ].
        recoveredBlock105Block124Step = 237 ifTrue: [
            recoveredBlock105Block124Stack3 := '/'.
            recoveredBlock105Block124PC := 239.
        ].
        recoveredBlock105Block124Step = 239 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 241.
        ].
        recoveredBlock105Block124Step = 241 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredLocal1.
            recoveredBlock105Block124PC := 244.
        ].
        recoveredBlock105Block124Step = 244 ifTrue: [
            recoveredBlock105Block124Stack3 := (recoveredBlock105Block124Stack3) size.
            recoveredBlock105Block124PC := 245.
        ].
        recoveredBlock105Block124Step = 245 ifTrue: [
            recoveredBlock105Block124Stack3 := (recoveredBlock105Block124Stack3) printString.
            recoveredBlock105Block124PC := 247.
        ].
        recoveredBlock105Block124Step = 247 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 249.
        ].
        recoveredBlock105Block124Step = 249 ifTrue: [
            recoveredBlock105Block124Stack3 := ' items to '.
            recoveredBlock105Block124PC := 251.
        ].
        recoveredBlock105Block124Step = 251 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 253.
        ].
        recoveredBlock105Block124Step = 253 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredArg2.
            recoveredBlock105Block124PC := 256.
        ].
        recoveredBlock105Block124Step = 256 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 258.
        ].
        recoveredBlock105Block124Step = 258 ifTrue: [
            recoveredBlock105Block124Stack3 := '\'.
            recoveredBlock105Block124PC := 260.
        ].
        recoveredBlock105Block124Step = 260 ifTrue: [
            recoveredBlock105Block124Stack3 := (recoveredBlock105Block124Stack3) withCrs.
            recoveredBlock105Block124PC := 262.
        ].
        recoveredBlock105Block124Step = 262 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 264.
        ].
        recoveredBlock105Block124Step = 264 ifTrue: [
            recoveredBlock105Block124Stack3 := 'Exporting '.
            recoveredBlock105Block124PC := 266.
        ].
        recoveredBlock105Block124Step = 266 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 268.
        ].
        recoveredBlock105Block124Step = 268 ifTrue: [
            recoveredBlock105Block124Stack3 := recoveredBlock105Block124Arg1.
            recoveredBlock105Block124PC := 269.
        ].
        recoveredBlock105Block124Step = 269 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) , (recoveredBlock105Block124Stack3).
            recoveredBlock105Block124PC := 271.
        ].
        recoveredBlock105Block124Step = 271 ifTrue: [
            (recoveredBlock105Block124Stack1) messageString: (recoveredBlock105Block124Stack2).
            recoveredBlock105Block124PC := 273.
        ].
        recoveredBlock105Block124Step = 273 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 276.
        ].
        recoveredBlock105Block124Step = 276 ifTrue: [
            recoveredBlock105Block124Stack2 := recoveredLocal1.
            recoveredBlock105Block124PC := 279.
        ].
        recoveredBlock105Block124Step = 279 ifTrue: [
            recoveredBlock105Block124Stack2 := (recoveredBlock105Block124Stack2) size.
            recoveredBlock105Block124PC := 280.
        ].
        recoveredBlock105Block124Step = 280 ifTrue: [
            recoveredBlock105Block124Stack1 := (recoveredBlock105Block124Stack1) / (recoveredBlock105Block124Stack2).
            recoveredBlock105Block124PC := 282.
        ].
        recoveredBlock105Block124Step = 282 ifTrue: [
            (recoveredBlock105Block124Stack0) fractionComplete: (recoveredBlock105Block124Stack1).
            recoveredBlock105Block124PC := 284.
        ].
        recoveredBlock105Block124Step = 284 ifTrue: [
            recoveredBlock105Block124Stack0 := nil.
            recoveredBlock105Block124PC := 285.
        ].
        recoveredBlock105Block124Step = 285 ifTrue: [
            recoveredBlock105Block124Stack1 := recoveredBlock105Local1.
            recoveredBlock105Block124PC := 288.
        ].
        recoveredBlock105Block124Step = 288 ifTrue: [
            recoveredBlock105Block124Stack2 := 1000.
            recoveredBlock105Block124PC := 292.
        ].
        recoveredBlock105Block124Step = 292 ifTrue: [
            recoveredBlock105Block124Stack1 := (recoveredBlock105Block124Stack1) \\ (recoveredBlock105Block124Stack2).
            recoveredBlock105Block124PC := 293.
        ].
        recoveredBlock105Block124Step = 293 ifTrue: [
            recoveredBlock105Block124Stack2 := 0.
            recoveredBlock105Block124PC := 295.
        ].
        recoveredBlock105Block124Step = 295 ifTrue: [
            (recoveredBlock105Block124Stack1 ~~ recoveredBlock105Block124Stack2) ifTrue: [recoveredBlock105Block124PC := 300] ifFalse: [recoveredBlock105Block124PC := 298].
        ].
        recoveredBlock105Block124Step = 298 ifTrue: [
            recoveredBlock105Block124PC := 299.
        ].
        recoveredBlock105Block124Step = 299 ifTrue: [
            recoveredBlock105Block124Stack0 := nil.
            recoveredBlock105Block124PC := 300.
        ].
        recoveredBlock105Block124Step = 300 ifTrue: [
            recoveredBlock105Block124Result := recoveredBlock105Block124Stack0.
            recoveredBlock105Block124Done := true.
        ].
    ].
    recoveredBlock105Block124Result
].
    recoveredBlock105Value4 := (recoveredBlock105Value2) do: (recoveredBlock105Value3).
    recoveredBlock105Value4
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := ExASDXML.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := [:recoveredBlock306Arg1 | 
    | recoveredBlock306Value0 recoveredBlock306Value1 recoveredBlock306Value2 recoveredBlock306Value3 recoveredBlock306Value4 recoveredBlock306Value5 recoveredBlock306Value6 recoveredBlock306Value7 recoveredBlock306Value8 recoveredBlock306Value9 recoveredBlock306Value10 recoveredBlock306Value11 |
    recoveredBlock306Value0 := Util.
    recoveredBlock306Value1 := recoveredBlock306Arg1.
    (recoveredBlock306Value0) writeStackTrace: (recoveredBlock306Value1).
    recoveredBlock306Value2 := RBUserInfo.
    recoveredBlock306Value3 := ('Export failed!!\ \Reported Reason:\') withCrs.
    recoveredBlock306Value4 := recoveredBlock306Arg1.
    recoveredBlock306Value5 := (recoveredBlock306Value4) arguments.
    recoveredBlock306Value6 := (recoveredBlock306Value5) printString.
    recoveredBlock306Value7 := (recoveredBlock306Value3) , (recoveredBlock306Value6).
    recoveredBlock306Value8 := (recoveredBlock306Value2) errorMessage: (recoveredBlock306Value7).
    recoveredBlock306Value9 := recoveredBlock306Value8.
    recoveredBlock306Value10 := recoveredBlock306Arg1.
    recoveredBlock306Value11 := (recoveredBlock306Value10) printString.
    (recoveredBlock306Value9) context: (recoveredBlock306Value11).
    (recoveredBlock306Value8) prompt.
    ^-7
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := 'At least one incompatibility was detected!!\If you like to import the files into ASCET '.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := (recoveredStack2) destVersion.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack2 := ' you might need a patch for this version.\Otherwise the AMD file can not be imported or you may damage your model.'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack0) reportIssues: (recoveredStack1) abort: (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20601358; bytecode file offset 0xefdcf8"
!ASDXMLExportController methodsFor: 'recovered'!
exportComponents: recoveredArg1 to: recoveredArg2 zip: recoveredArg3 ui: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_329920'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CfsStat.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Too long export path: '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'Export path:\ \'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := '\ \is too long for Windows file system!!'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := -4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock56Local1 recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56Stack6 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := options.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) includeReferencedItems.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 70] ifFalse: [recoveredBlock56PC := 75].
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack1 := options.
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56Stack2 := true.
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            (recoveredBlock56Stack1) createCompleteHierarchy: (recoveredBlock56Stack2).
            recoveredBlock56PC := 75.
        ].
        recoveredBlock56Step = 75 ifTrue: [
            recoveredBlock56Stack1 := recoveredArg3.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 82] ifFalse: [recoveredBlock56PC := 92].
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack1 := Util.
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack2 := ''.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) makeTempDir: (recoveredBlock56Stack2).
            recoveredBlock56PC := 88.
        ].
        recoveredBlock56Step = 88 ifTrue: [
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            recoveredBlock56Stack1 := CfsDirectoryDescriptor.
            recoveredBlock56PC := 94.
        ].
        recoveredBlock56Step = 94 ifTrue: [
            recoveredBlock56Stack2 := recoveredArg2.
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            (recoveredBlock56Stack1) mkdirRecursive: (recoveredBlock56Stack2).
            recoveredBlock56PC := 99.
        ].
        recoveredBlock56Step = 99 ifTrue: [
            recoveredBlock56Stack1 := recoveredArg2.
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 102 ifTrue: [
            recoveredLocal3 := recoveredBlock56Stack1.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack1 := CfsStat.
            recoveredBlock56PC := 107.
        ].
        recoveredBlock56Step = 107 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal3.
            recoveredBlock56PC := 110.
        ].
        recoveredBlock56Step = 110 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) exists: (recoveredBlock56Stack2).
            recoveredBlock56PC := 112.
        ].
        recoveredBlock56Step = 112 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 116] ifFalse: [recoveredBlock56PC := 126].
        ].
        recoveredBlock56Step = 116 ifTrue: [
            recoveredBlock56Stack1 := CfsStat.
            recoveredBlock56PC := 118.
        ].
        recoveredBlock56Step = 118 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal3.
            recoveredBlock56PC := 121.
        ].
        recoveredBlock56Step = 121 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) isDirectory: (recoveredBlock56Stack2).
            recoveredBlock56PC := 123.
        ].
        recoveredBlock56Step = 123 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 139] ifFalse: [recoveredBlock56PC := 126].
        ].
        recoveredBlock56Step = 126 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 127.
        ].
        recoveredBlock56Step = 127 ifTrue: [
            recoveredBlock56Stack2 := 'Invalid export path: '.
            recoveredBlock56PC := 129.
        ].
        recoveredBlock56Step = 129 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal3.
            recoveredBlock56PC := 132.
        ].
        recoveredBlock56Step = 132 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) , (recoveredBlock56Stack3).
            recoveredBlock56PC := 134.
        ].
        recoveredBlock56Step = 134 ifTrue: [
            (recoveredBlock56Stack1) logError: (recoveredBlock56Stack2).
            recoveredBlock56PC := 136.
        ].
        recoveredBlock56Step = 136 ifTrue: [
            recoveredBlock56Stack1 := -4.
            recoveredBlock56PC := 138.
        ].
        recoveredBlock56Step = 138 ifTrue: [
            ^recoveredBlock56Stack1
        ].
        recoveredBlock56Step = 139 ifTrue: [
            recoveredBlock56Stack1 := ASDXMLExportCollection.
            recoveredBlock56PC := 141.
        ].
        recoveredBlock56Step = 141 ifTrue: [
            recoveredBlock56Stack2 := options.
            recoveredBlock56PC := 143.
        ].
        recoveredBlock56Step = 143 ifTrue: [
            recoveredBlock56Stack3 := recoveredArg1.
            recoveredBlock56PC := 146.
        ].
        recoveredBlock56Step = 146 ifTrue: [
            recoveredBlock56Stack4 := recoveredLocal3.
            recoveredBlock56PC := 149.
        ].
        recoveredBlock56Step = 149 ifTrue: [
            recoveredBlock56Stack5 := self.
            recoveredBlock56PC := 150.
        ].
        recoveredBlock56Step = 150 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) createFor: (recoveredBlock56Stack2) roots: (recoveredBlock56Stack3) destDir: (recoveredBlock56Stack4) exportController: (recoveredBlock56Stack5).
            recoveredBlock56PC := 153.
        ].
        recoveredBlock56Step = 153 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 156.
        ].
        recoveredBlock56Step = 156 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) issues.
            recoveredBlock56PC := 158.
        ].
        recoveredBlock56Step = 158 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) size.
            recoveredBlock56PC := 159.
        ].
        recoveredBlock56Step = 159 ifTrue: [
            recoveredBlock56Stack1 := 0.
            recoveredBlock56PC := 161.
        ].
        recoveredBlock56Step = 161 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) > (recoveredBlock56Stack1).
            recoveredBlock56PC := 162.
        ].
        recoveredBlock56Step = 162 ifTrue: [
            (recoveredBlock56Stack0) ifTrue: [recoveredBlock56PC := 166] ifFalse: [recoveredBlock56PC := 241].
        ].
        recoveredBlock56Step = 166 ifTrue: [
            recoveredBlock56Stack0 := false.
            recoveredBlock56PC := 167.
        ].
        recoveredBlock56Step = 167 ifTrue: [
            recoveredBlock56Stack1 := self.
            recoveredBlock56PC := 168.
        ].
        recoveredBlock56Step = 168 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) issues.
            recoveredBlock56PC := 170.
        ].
        recoveredBlock56Step = 170 ifTrue: [
            recoveredBlock56Stack2 := [:block2811c938Arg1 | 
    | block2811c938Value0 block2811c938Value1 |
    block2811c938Value0 := block2811c938Arg1.
    block2811c938Value1 := (block2811c938Value0) isError.
    block2811c938Value1
].
            recoveredBlock56PC := 172.
        ].
        recoveredBlock56Step = 172 ifTrue: [
            recoveredBlock56PC := 180.
        ].
        recoveredBlock56Step = 180 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) anySatisfy: (recoveredBlock56Stack2).
            recoveredBlock56PC := 182.
        ].
        recoveredBlock56Step = 182 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 186] ifFalse: [recoveredBlock56PC := 190].
        ].
        recoveredBlock56Step = 186 ifTrue: [
            recoveredBlock56PC := 187.
        ].
        recoveredBlock56Step = 187 ifTrue: [
            recoveredBlock56Stack0 := recoveredArg3.
            recoveredBlock56PC := 190.
        ].
        recoveredBlock56Step = 190 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack0.
            recoveredBlock56PC := 191.
        ].
        recoveredBlock56Step = 191 ifTrue: [
            recoveredBlock56Stack0 := self.
            recoveredBlock56PC := 192.
        ].
        recoveredBlock56Step = 192 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) issues.
            recoveredBlock56PC := 194.
        ].
        recoveredBlock56Step = 194 ifTrue: [
            recoveredBlock56Stack1 := [:recoveredBlock56Block194Arg1 | 
    | recoveredBlock56Block194Stack0 recoveredBlock56Block194Stack1 recoveredBlock56Block194Stack2 recoveredBlock56Block194Stack3 recoveredBlock56Block194PC recoveredBlock56Block194Step recoveredBlock56Block194Done recoveredBlock56Block194Result |
    recoveredBlock56Block194Stack0 := nil.
    recoveredBlock56Block194PC := 200.
    recoveredBlock56Block194Done := false.
    [recoveredBlock56Block194Done not] whileTrue: [
        recoveredBlock56Block194Step := recoveredBlock56Block194PC.
        recoveredBlock56Block194Step = 200 ifTrue: [
            recoveredBlock56Block194Stack1 := nil.
            recoveredBlock56Block194PC := 201.
        ].
        recoveredBlock56Block194Step = 201 ifTrue: [
            recoveredBlock56Block194Stack2 := recoveredBlock56Block194Arg1.
            recoveredBlock56Block194PC := 204.
        ].
        recoveredBlock56Block194Step = 204 ifTrue: [
            recoveredBlock56Block194Stack2 := (recoveredBlock56Block194Stack2) isError.
            recoveredBlock56Block194PC := 206.
        ].
        recoveredBlock56Block194Step = 206 ifTrue: [
            (recoveredBlock56Block194Stack2) ifTrue: [recoveredBlock56Block194PC := 210] ifFalse: [recoveredBlock56Block194PC := 230].
        ].
        recoveredBlock56Block194Step = 210 ifTrue: [
            recoveredBlock56Block194PC := 211.
        ].
        recoveredBlock56Block194Step = 211 ifTrue: [
            recoveredBlock56Block194Stack1 := recoveredLocal1.
            recoveredBlock56Block194PC := 214.
        ].
        recoveredBlock56Block194Step = 214 ifTrue: [
            recoveredBlock56Block194Stack2 := [:recoveredBlock56Block194Block214Arg1 | 
    | recoveredBlock56Block194Block214Value0 recoveredBlock56Block194Block214Value1 recoveredBlock56Block194Block214Value2 recoveredBlock56Block194Block214Value3 |
    recoveredBlock56Block194Block214Value0 := recoveredBlock56Block194Block214Arg1.
    recoveredBlock56Block194Block214Value1 := recoveredBlock56Block194Arg1.
    recoveredBlock56Block194Block214Value2 := (recoveredBlock56Block194Block214Value1) item.
    recoveredBlock56Block194Block214Value3 := (recoveredBlock56Block194Block214Value0) = (recoveredBlock56Block194Block214Value2).
    recoveredBlock56Block194Block214Value3
].
            recoveredBlock56Block194PC := 228.
        ].
        recoveredBlock56Block194Step = 228 ifTrue: [
            recoveredBlock56Block194Stack1 := (recoveredBlock56Block194Stack1) reject: (recoveredBlock56Block194Stack2).
            recoveredBlock56Block194PC := 230.
        ].
        recoveredBlock56Block194Step = 230 ifTrue: [
            recoveredBlock56Block194Result := recoveredBlock56Block194Stack1.
            recoveredBlock56Block194Done := true.
        ].
    ].
    recoveredBlock56Block194Result
].
            recoveredBlock56PC := 231.
        ].
        recoveredBlock56Step = 231 ifTrue: [
            (recoveredBlock56Stack0) do: (recoveredBlock56Stack1).
            recoveredBlock56PC := 233.
        ].
        recoveredBlock56Step = 233 ifTrue: [
            recoveredBlock56Stack0 := self.
            recoveredBlock56PC := 234.
        ].
        recoveredBlock56Step = 234 ifTrue: [
            recoveredBlock56Stack1 := 'There are warnings (see monitor for details). Export anyway?'.
            recoveredBlock56PC := 236.
        ].
        recoveredBlock56Step = 236 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local1.
            recoveredBlock56PC := 237.
        ].
        recoveredBlock56Step = 237 ifTrue: [
            (recoveredBlock56Stack0) handleIssues: (recoveredBlock56Stack1) abort: (recoveredBlock56Stack2).
            recoveredBlock56PC := 239.
        ].
        recoveredBlock56Step = 239 ifTrue: [
            recoveredBlock56Stack0 := nil.
            recoveredBlock56PC := 240.
        ].
        recoveredBlock56Step = 240 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack0.
            recoveredBlock56PC := 241.
        ].
        recoveredBlock56Step = 241 ifTrue: [
            recoveredBlock56Stack0 := recoveredLocal1.
            recoveredBlock56PC := 244.
        ].
        recoveredBlock56Step = 244 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) size.
            recoveredBlock56PC := 245.
        ].
        recoveredBlock56Step = 245 ifTrue: [
            recoveredBlock56Stack1 := 0.
            recoveredBlock56PC := 247.
        ].
        recoveredBlock56Step = 247 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) = (recoveredBlock56Stack1).
            recoveredBlock56PC := 248.
        ].
        recoveredBlock56Step = 248 ifTrue: [
            (recoveredBlock56Stack0) ifTrue: [recoveredBlock56PC := 252] ifFalse: [recoveredBlock56PC := 255].
        ].
        recoveredBlock56Step = 252 ifTrue: [
            recoveredBlock56Stack0 := -8.
            recoveredBlock56PC := 254.
        ].
        recoveredBlock56Step = 254 ifTrue: [
            ^recoveredBlock56Stack0
        ].
        recoveredBlock56Step = 255 ifTrue: [
            recoveredBlock56Stack0 := 'TFS357950'.
            recoveredBlock56PC := 257.
        ].
        recoveredBlock56Step = 257 ifTrue: [
            recoveredBlock56Stack1 := 'Kk'.
            recoveredBlock56PC := 259.
        ].
        recoveredBlock56Step = 259 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) == (recoveredBlock56Stack1).
            recoveredBlock56PC := 260.
        ].
        recoveredBlock56Step = 260 ifTrue: [
            recoveredBlock56PC := 261.
        ].
        recoveredBlock56Step = 261 ifTrue: [
            recoveredBlock56Stack0 := self.
            recoveredBlock56PC := 262.
        ].
        recoveredBlock56Step = 262 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 265.
        ].
        recoveredBlock56Step = 265 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal3.
            recoveredBlock56PC := 268.
        ].
        recoveredBlock56Step = 268 ifTrue: [
            recoveredBlock56Stack3 := recoveredArg4.
            recoveredBlock56PC := 271.
        ].
        recoveredBlock56Step = 271 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) export: (recoveredBlock56Stack1) to: (recoveredBlock56Stack2) ui: (recoveredBlock56Stack3).
            recoveredBlock56PC := 274.
        ].
        recoveredBlock56Step = 274 ifTrue: [
            recoveredLocal2 := recoveredBlock56Stack0.
            recoveredBlock56PC := 277.
        ].
        recoveredBlock56Step = 277 ifTrue: [
            recoveredBlock56Stack0 := recoveredArg3.
            recoveredBlock56PC := 280.
        ].
        recoveredBlock56Step = 280 ifTrue: [
            (recoveredBlock56Stack0) ifTrue: [recoveredBlock56PC := 284] ifFalse: [recoveredBlock56PC := 382].
        ].
        recoveredBlock56Step = 284 ifTrue: [
            recoveredBlock56Stack0 := recoveredLocal2.
            recoveredBlock56PC := 287.
        ].
        recoveredBlock56Step = 287 ifTrue: [
            recoveredBlock56Stack1 := 0.
            recoveredBlock56PC := 289.
        ].
        recoveredBlock56Step = 289 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) = (recoveredBlock56Stack1).
            recoveredBlock56PC := 290.
        ].
        recoveredBlock56Step = 290 ifTrue: [
            (recoveredBlock56Stack0) ifTrue: [recoveredBlock56PC := 294] ifFalse: [recoveredBlock56PC := 369].
        ].
        recoveredBlock56Step = 294 ifTrue: [
            recoveredBlock56Stack0 := 'Rnz'.
            recoveredBlock56PC := 296.
        ].
        recoveredBlock56Step = 296 ifTrue: [
            recoveredBlock56Stack1 := 'EHI_84275'.
            recoveredBlock56PC := 298.
        ].
        recoveredBlock56Step = 298 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) == (recoveredBlock56Stack1).
            recoveredBlock56PC := 299.
        ].
        recoveredBlock56Step = 299 ifTrue: [
            recoveredBlock56PC := 300.
        ].
        recoveredBlock56Step = 300 ifTrue: [
            recoveredBlock56Stack0 := self.
            recoveredBlock56PC := 301.
        ].
        recoveredBlock56Step = 301 ifTrue: [
            recoveredBlock56Stack1 := [
    | recoveredBlock56Block301Stack0 recoveredBlock56Block301Stack1 recoveredBlock56Block301Stack2 recoveredBlock56Block301Stack3 recoveredBlock56Block301Stack4 recoveredBlock56Block301Stack5 recoveredBlock56Block301PC recoveredBlock56Block301Step recoveredBlock56Block301Done recoveredBlock56Block301Result |
    recoveredBlock56Block301Stack0 := self.
    recoveredBlock56Block301PC := 308.
    recoveredBlock56Block301Done := false.
    [recoveredBlock56Block301Done not] whileTrue: [
        recoveredBlock56Block301Step := recoveredBlock56Block301PC.
        recoveredBlock56Block301Step = 308 ifTrue: [
            recoveredBlock56Block301Stack1 := CfsFileDescriptor.
            recoveredBlock56Block301PC := 310.
        ].
        recoveredBlock56Block301Step = 310 ifTrue: [
            recoveredBlock56Block301Stack2 := recoveredArg2.
            recoveredBlock56Block301PC := 313.
        ].
        recoveredBlock56Block301Step = 313 ifTrue: [
            (recoveredBlock56Block301Stack1) remove: (recoveredBlock56Block301Stack2).
            recoveredBlock56Block301PC := 315.
        ].
        recoveredBlock56Block301Step = 315 ifTrue: [
            recoveredBlock56Block301Stack1 := EtasZipToolController.
            recoveredBlock56Block301PC := 317.
        ].
        recoveredBlock56Block301Step = 317 ifTrue: [
            recoveredBlock56Block301Stack1 := (recoveredBlock56Block301Stack1) new.
            recoveredBlock56Block301PC := 319.
        ].
        recoveredBlock56Block301Step = 319 ifTrue: [
            recoveredBlock56Block301Stack2 := recoveredLocal3.
            recoveredBlock56Block301PC := 322.
        ].
        recoveredBlock56Block301Step = 322 ifTrue: [
            recoveredBlock56Block301Stack3 := recoveredArg2.
            recoveredBlock56Block301PC := 325.
        ].
        recoveredBlock56Block301Step = 325 ifTrue: [
            recoveredBlock56Block301Stack4 := true.
            recoveredBlock56Block301PC := 326.
        ].
        recoveredBlock56Block301Step = 326 ifTrue: [
            recoveredBlock56Block301Stack1 := (recoveredBlock56Block301Stack1) zipDirectoryRecursive: (recoveredBlock56Block301Stack2) into: (recoveredBlock56Block301Stack3) delete: (recoveredBlock56Block301Stack4).
            recoveredBlock56Block301PC := 329.
        ].
        recoveredBlock56Block301Step = 329 ifTrue: [
            recoveredLocal2 := recoveredBlock56Block301Stack1.
            recoveredBlock56Block301PC := 332.
        ].
        recoveredBlock56Block301Step = 332 ifTrue: [
            recoveredBlock56Block301Stack1 := recoveredLocal2.
            recoveredBlock56Block301PC := 335.
        ].
        recoveredBlock56Block301Step = 335 ifTrue: [
            recoveredBlock56Block301Stack1 := (recoveredBlock56Block301Stack1) isError.
            recoveredBlock56Block301PC := 337.
        ].
        recoveredBlock56Block301Step = 337 ifTrue: [
            (recoveredBlock56Block301Stack1) ifTrue: [recoveredBlock56Block301PC := 340] ifFalse: [recoveredBlock56Block301PC := 358].
        ].
        recoveredBlock56Block301Step = 340 ifTrue: [
            recoveredBlock56Block301Stack1 := self.
            recoveredBlock56Block301PC := 341.
        ].
        recoveredBlock56Block301Step = 341 ifTrue: [
            recoveredBlock56Block301Stack2 := recoveredLocal2.
            recoveredBlock56Block301PC := 344.
        ].
        recoveredBlock56Block301Step = 344 ifTrue: [
            recoveredBlock56Block301Stack2 := (recoveredBlock56Block301Stack2) messageText.
            recoveredBlock56Block301PC := 346.
        ].
        recoveredBlock56Block301Step = 346 ifTrue: [
            (recoveredBlock56Block301Stack1) logError: (recoveredBlock56Block301Stack2).
            recoveredBlock56Block301PC := 348.
        ].
        recoveredBlock56Block301Step = 348 ifTrue: [
            recoveredBlock56Block301Stack1 := -5.
            recoveredBlock56Block301PC := 350.
        ].
        recoveredBlock56Block301Step = 350 ifTrue: [
            recoveredBlock56Block301Stack2 := recoveredBlock56Block301Stack1.
            recoveredBlock56Block301PC := 351.
        ].
        recoveredBlock56Block301Step = 351 ifTrue: [
            recoveredLocal2 := recoveredBlock56Block301Stack2.
            recoveredBlock56Block301PC := 354.
        ].
        recoveredBlock56Block301Step = 354 ifTrue: [
            recoveredBlock56Block301PC := 364.
        ].
        recoveredBlock56Block301Step = 358 ifTrue: [
            recoveredBlock56Block301Stack1 := 0.
            recoveredBlock56Block301PC := 360.
        ].
        recoveredBlock56Block301Step = 360 ifTrue: [
            recoveredBlock56Block301Stack2 := recoveredBlock56Block301Stack1.
            recoveredBlock56Block301PC := 361.
        ].
        recoveredBlock56Block301Step = 361 ifTrue: [
            recoveredLocal2 := recoveredBlock56Block301Stack2.
            recoveredBlock56Block301PC := 364.
        ].
        recoveredBlock56Block301Step = 364 ifTrue: [
            recoveredBlock56Block301Result := recoveredBlock56Block301Stack1.
            recoveredBlock56Block301Done := true.
        ].
    ].
    recoveredBlock56Block301Result
].
            recoveredBlock56PC := 365.
        ].
        recoveredBlock56Step = 365 ifTrue: [
            recoveredBlock56Stack2 := 'Creating ZIP Archive'.
            recoveredBlock56PC := 367.
        ].
        recoveredBlock56Step = 367 ifTrue: [
            (recoveredBlock56Stack0) execLongOperation: (recoveredBlock56Stack1) message: (recoveredBlock56Stack2).
            recoveredBlock56PC := 369.
        ].
        recoveredBlock56Step = 369 ifTrue: [
            recoveredBlock56Stack0 := 'Kli'.
            recoveredBlock56PC := 371.
        ].
        recoveredBlock56Step = 371 ifTrue: [
            recoveredBlock56Stack1 := 'Call_93870'.
            recoveredBlock56PC := 373.
        ].
        recoveredBlock56Step = 373 ifTrue: [
            recoveredBlock56Stack0 := (recoveredBlock56Stack0) == (recoveredBlock56Stack1).
            recoveredBlock56PC := 374.
        ].
        recoveredBlock56Step = 374 ifTrue: [
            recoveredBlock56PC := 375.
        ].
        recoveredBlock56Step = 375 ifTrue: [
            recoveredBlock56Stack0 := CfsDirectoryDescriptor.
            recoveredBlock56PC := 377.
        ].
        recoveredBlock56Step = 377 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal3.
            recoveredBlock56PC := 380.
        ].
        recoveredBlock56Step = 380 ifTrue: [
            (recoveredBlock56Stack0) deletePathRecursive: (recoveredBlock56Stack1).
            recoveredBlock56PC := 382.
        ].
        recoveredBlock56Step = 382 ifTrue: [
            recoveredBlock56Stack0 := recoveredLocal2.
            recoveredBlock56PC := 385.
        ].
        recoveredBlock56Step = 385 ifTrue: [
            ^recoveredBlock56Stack0
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := ExASDXML.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := [:recoveredBlock388Arg1 | 
    | recoveredBlock388Stack0 recoveredBlock388Stack1 recoveredBlock388Stack2 recoveredBlock388Stack3 recoveredBlock388Stack4 recoveredBlock388PC recoveredBlock388Step recoveredBlock388Done recoveredBlock388Result |
    recoveredBlock388Stack0 := self.
    recoveredBlock388PC := 394.
    recoveredBlock388Done := false.
    [recoveredBlock388Done not] whileTrue: [
        recoveredBlock388Step := recoveredBlock388PC.
        recoveredBlock388Step = 394 ifTrue: [
            recoveredBlock388Stack1 := ExportAborted.
            recoveredBlock388PC := 396.
        ].
        recoveredBlock388Step = 396 ifTrue: [
            recoveredBlock388Stack2 := recoveredBlock388Arg1.
            recoveredBlock388PC := 397.
        ].
        recoveredBlock388Step = 397 ifTrue: [
            recoveredBlock388Stack2 := (recoveredBlock388Stack2) exception.
            recoveredBlock388PC := 399.
        ].
        recoveredBlock388Step = 399 ifTrue: [
            recoveredBlock388Stack1 := (recoveredBlock388Stack1) handles: (recoveredBlock388Stack2).
            recoveredBlock388PC := 401.
        ].
        recoveredBlock388Step = 401 ifTrue: [
            (recoveredBlock388Stack1) ifTrue: [recoveredBlock388PC := 404] ifFalse: [recoveredBlock388PC := 430].
        ].
        recoveredBlock388Step = 404 ifTrue: [
            recoveredBlock388Stack1 := self.
            recoveredBlock388PC := 405.
        ].
        recoveredBlock388Step = 405 ifTrue: [
            recoveredBlock388Stack2 := Util.
            recoveredBlock388PC := 407.
        ].
        recoveredBlock388Step = 407 ifTrue: [
            recoveredBlock388Stack3 := recoveredBlock388Arg1.
            recoveredBlock388PC := 408.
        ].
        recoveredBlock388Step = 408 ifTrue: [
            recoveredBlock388Stack2 := (recoveredBlock388Stack2) exceptionString: (recoveredBlock388Stack3).
            recoveredBlock388PC := 410.
        ].
        recoveredBlock388Step = 410 ifTrue: [
            (recoveredBlock388Stack1) logError: (recoveredBlock388Stack2).
            recoveredBlock388PC := 412.
        ].
        recoveredBlock388Step = 412 ifTrue: [
            recoveredBlock388Stack1 := self.
            recoveredBlock388PC := 413.
        ].
        recoveredBlock388Step = 413 ifTrue: [
            recoveredBlock388Stack2 := Util.
            recoveredBlock388PC := 415.
        ].
        recoveredBlock388Step = 415 ifTrue: [
            recoveredBlock388Stack3 := recoveredBlock388Arg1.
            recoveredBlock388PC := 416.
        ].
        recoveredBlock388Step = 416 ifTrue: [
            recoveredBlock388Stack2 := (recoveredBlock388Stack2) exceptionString: (recoveredBlock388Stack3).
            recoveredBlock388PC := 418.
        ].
        recoveredBlock388Step = 418 ifTrue: [
            (recoveredBlock388Stack1) messagePrompt: (recoveredBlock388Stack2).
            recoveredBlock388PC := 420.
        ].
        recoveredBlock388Step = 420 ifTrue: [
            recoveredBlock388Stack1 := -6.
            recoveredBlock388PC := 422.
        ].
        recoveredBlock388Step = 422 ifTrue: [
            recoveredLocal2 := recoveredBlock388Stack1.
            recoveredBlock388PC := 425.
        ].
        recoveredBlock388Step = 425 ifTrue: [
            recoveredBlock388Stack1 := recoveredBlock388Arg1.
            recoveredBlock388PC := 426.
        ].
        recoveredBlock388Step = 426 ifTrue: [
            recoveredBlock388Stack2 := -6.
            recoveredBlock388PC := 428.
        ].
        recoveredBlock388Step = 428 ifTrue: [
            (recoveredBlock388Stack1) exitWith: (recoveredBlock388Stack2).
            recoveredBlock388PC := 430.
        ].
        recoveredBlock388Step = 430 ifTrue: [
            recoveredBlock388Stack1 := recoveredBlock388Arg1.
            recoveredBlock388PC := 431.
        ].
        recoveredBlock388Step = 431 ifTrue: [
            recoveredBlock388Stack1 := (recoveredBlock388Stack1) signal.
            recoveredBlock388PC := 435.
        ].
        recoveredBlock388Step = 435 ifTrue: [
            recoveredBlock388Result := recoveredBlock388Stack1.
            recoveredBlock388Done := true.
        ].
    ].
    recoveredBlock388Result
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

