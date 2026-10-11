"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003650; bytecode file offset 0x90206c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
messagePrompt: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d2dc; bytecode file offset 0x909e08"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
checkSizeOfItems: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000dacc; bytecode file offset 0x90a4b8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
selectImportItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200149a0; bytecode file offset 0x912098"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
xmlExt
    | recoveredValue0 |
    recoveredValue0 := XmlExt.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002a654; bytecode file offset 0x934580"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
decryptionKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) options.
    recoveredValue1 := (recoveredValue0) optionXMLDecryptionKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040c84; bytecode file offset 0x93d83c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := controller.
    recoveredValue1 := (recoveredValue0) importManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20052adc; bytecode file offset 0x9505d0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
showIssues: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20052f80; bytecode file offset 0x9505d0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
selecttemsToOverwrite: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200531b4; bytecode file offset 0x9505d0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
selectAutofixIssues: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20053ed0; bytecode file offset 0x951190"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
xmlExt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    XmlExt := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20059b48; bytecode file offset 0x9566ac"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
execLongOperation: recoveredArg1 message: recoveredArg2
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005bea4; bytecode file offset 0x958ab0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
dispatchEvents
    | recoveredValue0 |
    recoveredValue0 := Util.
    (recoveredValue0) dispatchEvents.
    ^self
! !

"ASDBase.ic method 0x2005c474; bytecode file offset 0x959680"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
isDiscardExistingImpls
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDImportExportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionImportDiscardExistingImplementations.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005cbcc; bytecode file offset 0x959680"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
isVerifyImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDXMLImportOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionVerifyXMLExport.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d664; bytecode file offset 0x959f30"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
isSCMControlledImport
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := controller.
    recoveredValue1 := (recoveredValue0) importManager.
    recoveredValue2 := (recoveredValue1) isSCMControlledImport.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20067b64; bytecode file offset 0x9646f8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := controller.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d2d8; bytecode file offset 0x969c04"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importFolder
    | recoveredValue0 |
    recoveredValue0 := importFolder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d97c; bytecode file offset 0x96a390"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ebc4; bytecode file offset 0x96b8a0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
catalog
    | recoveredValue0 |
    recoveredValue0 := catalog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f668; bytecode file offset 0x96bf7c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
folders
    | recoveredValue0 |
    recoveredValue0 := folders.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd00; bytecode file offset 0x96c6ac"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
postImportFixes
    | recoveredValue0 |
    recoveredValue0 := postImportFixes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074c6c; bytecode file offset 0x9757c8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
shallReadFolder
    ^true
! !

"ASDBase.ic method 0x2007866c; bytecode file offset 0x9757c8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
optionImportExperiments
    ^true
! !

"ASDBase.ic method 0x200814d8; bytecode file offset 0x97e234"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
makeDBProxy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) makeDBProxy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20081528; bytecode file offset 0x97e234"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
itemByOID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) itemByOID: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200825fc; bytecode file offset 0x97eec0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
getSchema: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := catalog.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getSchema: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bb68; bytecode file offset 0x988420"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
currentFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentFile.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008c0dc; bytecode file offset 0x988b68"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
mainFileSuffix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xmlExt.
    recoveredValue1 := ('.main.') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20092d64; bytecode file offset 0x98f634"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
scheduleForDeletion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := oidRemove.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20096220; bytecode file offset 0x992bec"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
handleError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printString.
    (self) logFatal: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009b964; bytecode file offset 0x998260"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
handleAbortRequest
    | recoveredValue0 |
    recoveredValue0 := ImportAborted.
    (recoveredValue0) signalWith: ('Import aborted on user request').
    ^self
! !

"ASDBase.ic method 0x200ad900; bytecode file offset 0x9aa218"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
itemForPath: recoveredArg1 oid: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) itemForPath: (recoveredValue0) oid: (recoveredValue1) createDummy: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b91bc; bytecode file offset 0x9b5a74"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
verificationState: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentFile.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: (2) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c40c4; bytecode file offset 0x9c0bf0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7034; bytecode file offset 0x9d38f0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
currentFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: (nil).
    currentFile := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200df5e4; bytecode file offset 0x9dbea8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
dirsForImportInPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) findDirectories: ('*') in: (recoveredValue1).
    recoveredValue3 := (self) sortItems: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fdcec; bytecode file offset 0x9fa5a8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
makeMappedDBProxy: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) effectiveOID: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeDBProxy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011db40; bytecode file offset 0xa1a40c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
filesForImportInPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (self) mainFileSuffix.
    recoveredValue2 := ('*') , (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) findFiles: (recoveredValue2) in: (recoveredValue3).
    recoveredValue5 := (self) sortItems: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20138140; bytecode file offset 0xa34a04"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
createOID: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNewOidBytes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20143c88; bytecode file offset 0xa4054c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
sortItems: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280cc36cArg1 :block280cc36cArg2 | 
    | block280cc36cValue0 block280cc36cValue1 block280cc36cValue2 block280cc36cValue3 block280cc36cValue4 |
    block280cc36cValue0 := block280cc36cArg1.
    block280cc36cValue1 := (block280cc36cValue0) dName.
    block280cc36cValue2 := block280cc36cArg2.
    block280cc36cValue3 := (block280cc36cValue2) dName.
    block280cc36cValue4 := (block280cc36cValue1) < (block280cc36cValue3).
    block280cc36cValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014dae4; bytecode file offset 0xa4a3a8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
uuidLookup
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uuidLookup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDPersistenceController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDBInterfaceGlobal.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeUUIDManager.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            uuidLookup := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := uuidLookup.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202033a4; bytecode file offset 0xaffc5c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
effectiveOID: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := oidMap.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock17Value0 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value0
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020f32c; bytecode file offset 0xb0bbf4"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
findExtensionFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := CfsStat.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) , (recoveredBlock6Stack4).
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) exists: (recoveredBlock6Stack3).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 27].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (#('amd' 'xml')) do: (recoveredValue0).
    ^nil
! !

"ASDBase.ic method 0x20217198; bytecode file offset 0xb13a64"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
readProcessReferenceIDChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'processReferenceOID'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalIDChain: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) adjustOIDChain: (recoveredStack2) refItem: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021abb4; bytecode file offset 0xb174f0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
logFatal: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '### FATAL: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021abe4; bytecode file offset 0xb174f0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '### WARNING: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addWarningText: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021ac14; bytecode file offset 0xb174f0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '### INFORMATION: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addInfoText: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20243cf4; bytecode file offset 0xb405c8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
exceptionString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ' ('.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024c3ec; bytecode file offset 0xb48cbc"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
performStep: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) performStep.
    recoveredBlock4Local1 := recoveredBlock4Value1.
    recoveredBlock4Value2 := recoveredBlock4Local1.
    ^recoveredBlock4Value2
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := [:block280dec48Arg1 | 
    | block280dec48Value0 block280dec48Value1 block280dec48Value2 block280dec48Value3 |
    block280dec48Value0 := Util.
    block280dec48Value1 := block280dec48Arg1.
    (block280dec48Value0) writeStackTrace: (block280dec48Value1).
    block280dec48Value2 := block280dec48Arg1.
    block280dec48Value3 := (block280dec48Value2) exitWith: (nil).
    block280dec48Value3
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024f9e4; bytecode file offset 0xb4c2b8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
registerProtoItem: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '.defaultProject'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := protoItems.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespace.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '/'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
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
            (recoveredStack1) registerGlobal: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025510c; bytecode file offset 0xb519f0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '### ERROR: '.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ab9c4; bytecode file offset 0xba8290"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
addPostImportFix: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) postImportFixes.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 recoveredBlock8Value4 recoveredBlock8Value5 |
    recoveredBlock8Value0 := (self) postImportFixes.
    recoveredBlock8Value1 := recoveredArg2.
    recoveredBlock8Value2 := Set.
    recoveredBlock8Value3 := recoveredArg1.
    recoveredBlock8Value4 := (recoveredBlock8Value2) with: (recoveredBlock8Value3).
    recoveredBlock8Value5 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) put: (recoveredBlock8Value4).
    recoveredBlock8Value5
].
    recoveredValue3 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) add: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
    (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202ae438; bytecode file offset 0xbaad00"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
globalByOID: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oidGlobal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    ^recoveredBlock11Value0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Util.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemByOID: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c5c74; bytecode file offset 0xbc2554"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
pathFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplicit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionKeepHierarchy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) namespace.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := importFolder.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlPathString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) baseName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := '\'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) lastIndexOf: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030f990; bytecode file offset 0xc0c26c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
destinationFolderForProtoItem: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImplicit.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionKeepHierarchy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := controller.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) databaseAccess.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) folderByParts: (recoveredStack2) root: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) baseName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) removeLast.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := importFolder.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) folderByParts: (recoveredStack1) root: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203100a8; bytecode file offset 0xc0c978"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
registerGlobal: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) xmlOID.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := oidGlobal.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := oidGlobal.
    recoveredBlock16Value1 := recoveredLocal1.
    recoveredBlock16Value2 := recoveredArg1.
    recoveredBlock16Value3 := (recoveredBlock16Value0) at: (recoveredBlock16Value1) put: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    recoveredValue5 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 |
    recoveredBlock33Value0 := ASDXMLImportIssueDuplOID.
    recoveredBlock33Value1 := (recoveredBlock33Value0) new.
    recoveredBlock33Value2 := recoveredArg1.
    recoveredBlock33Value3 := recoveredBlock33Arg1.
    recoveredBlock33Value4 := (recoveredBlock33Value1) initOn: (recoveredBlock33Value2) earlier: (recoveredBlock33Value3).
    recoveredBlock33Value5 := (self) addIssue: (recoveredBlock33Value4).
    recoveredBlock33Value5
].
    (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4) ifPresent: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20346bd4; bytecode file offset 0xc4349c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
normalizePath: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '..'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) ~= (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := '..'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) removeAtIndex: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) removeAtIndex: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) normalizePath: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 60]] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203471c8; bytecode file offset 0xc43a90"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
realOID: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) validateGlobalId: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := oidFixes.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock39Local1 recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 |
    recoveredBlock39Value0 := DBInterface.
    recoveredBlock39Value1 := (recoveredBlock39Value0) getNewOidBytes.
    recoveredBlock39Local1 := recoveredBlock39Value1.
    recoveredBlock39Value2 := oidFixes.
    recoveredBlock39Value3 := recoveredArg1.
    recoveredBlock39Value4 := recoveredBlock39Local1.
    (recoveredBlock39Value2) at: (recoveredBlock39Value3) put: (recoveredBlock39Value4).
    recoveredBlock39Value5 := recoveredBlock39Local1.
    ^recoveredBlock39Value5
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2034b69c; bytecode file offset 0xc47f64"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
remapOID: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := ByteArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := oidMap.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock29Local1 recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := (self) createOID: (recoveredBlock29Value0).
    recoveredBlock29Local1 := recoveredBlock29Value1.
    recoveredBlock29Value2 := oidMap.
    recoveredBlock29Value3 := recoveredArg1.
    recoveredBlock29Value4 := recoveredBlock29Local1.
    (recoveredBlock29Value2) at: (recoveredBlock29Value3) put: (recoveredBlock29Value4).
    recoveredBlock29Value5 := recoveredBlock29Local1.
    ^recoveredBlock29Value5
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    ^recoveredBlock51Value0
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035d34c; bytecode file offset 0xc59c30"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
surveyDone: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280f036cArg1 | 
    | block280f036cValue0 block280f036cValue1 |
    block280f036cValue0 := block280f036cArg1.
    block280f036cValue1 := (block280f036cValue0) protoItem.
    block280f036cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionRemapOIDs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (recoveredBlock23Value0) remapOIDs: (self).
    recoveredBlock23Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (recoveredBlock41Value0) keepOIDs: (self).
    recoveredBlock41Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'There are warnings (see monitor for details). Proceed anyway?'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'Up to now nothing has been done to your database'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) handleIssues: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203655e4; bytecode file offset 0xc61ed8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
unzip: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) currentFile: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := EtasZipToolController.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) unzipAllFrom: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Extraction of '.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ' into '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ' failed'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) logFatal: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) logFatal: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := 'Die'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'TFS_306677'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueUnzip.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) messageText.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) error: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c50c; bytecode file offset 0xc68dec"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
getSizeOfItems: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal1 := 0.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 |
    recoveredBlock12Value0 := CfsDirectoryDescriptor.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) baseName.
    recoveredBlock12Value3 := (recoveredBlock12Value2) , ('.*.').
    recoveredBlock12Value4 := XmlExt.
    recoveredBlock12Value5 := (recoveredBlock12Value3) , (recoveredBlock12Value4).
    recoveredBlock12Value6 := recoveredBlock12Arg1.
    recoveredBlock12Value7 := (recoveredBlock12Value6) importPath.
    recoveredBlock12Value8 := (recoveredBlock12Value0) findFiles: (recoveredBlock12Value5) in: (recoveredBlock12Value7).
    recoveredBlock12Local1 := recoveredBlock12Value8.
    recoveredBlock12Value9 := recoveredBlock12Local1.
    recoveredBlock12Value10 := [:recoveredBlock12Block35Arg1 | 
    | recoveredBlock12Block35Value0 recoveredBlock12Block35Value1 recoveredBlock12Block35Value2 recoveredBlock12Block35Value3 recoveredBlock12Block35Value4 |
    recoveredBlock12Block35Value0 := recoveredLocal1.
    recoveredBlock12Block35Value1 := recoveredBlock12Block35Arg1.
    recoveredBlock12Block35Value2 := (recoveredBlock12Block35Value1) stSize.
    recoveredBlock12Block35Value3 := (recoveredBlock12Block35Value0) + (recoveredBlock12Block35Value2).
    recoveredBlock12Block35Value4 := recoveredBlock12Block35Value3.
    recoveredLocal1 := recoveredBlock12Block35Value4.
    recoveredBlock12Block35Value3
].
    recoveredBlock12Value11 := (recoveredBlock12Value9) do: (recoveredBlock12Value10).
    recoveredBlock12Value11
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) * (#[0 0 0 0 0 0 4 64]).
    recoveredValue4 := (recoveredValue3) asInteger.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2039f308; bytecode file offset 0xc9bbec"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
handleIssues: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := issues.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f4290Arg1 | 
    | block280f4290Value0 block280f4290Value1 |
    block280f4290Value0 := block280f4290Arg1.
    block280f4290Value1 := (block280f4290Value0) needsHandling.
    block280f4290Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectAutofixIssues: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := ImportAborted.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Import aborted by user!!'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) work: (self) mode: ('autofix').
    recoveredBlock31Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := issues.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isUnhandled.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 64] ifFalse: [recoveredBlock49PC := 71].
        ].
        recoveredBlock49Step = 64 ifTrue: [
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 66.
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49Stack2 := self.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack3 := 'discard'.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) work: (recoveredBlock49Stack2) mode: (recoveredBlock49Stack3).
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a20f0; bytecode file offset 0xc9e9dc"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
initOn: recoveredArg1 logger: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    super initialize.
    recoveredValue0 := recoveredArg1.
    controller := recoveredValue0.
    recoveredValue1 := LookupTable.
    recoveredValue2 := (recoveredValue1) new.
    oidGlobal := recoveredValue2.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new.
    oidMap := recoveredValue4.
    recoveredValue5 := Set.
    recoveredValue6 := (recoveredValue5) new.
    oidRemove := recoveredValue6.
    recoveredValue7 := LookupTable.
    recoveredValue8 := (recoveredValue7) new.
    oidFixes := recoveredValue8.
    recoveredValue9 := LookupTable.
    recoveredValue10 := (recoveredValue9) new.
    protoItems := recoveredValue10.
    recoveredValue11 := Date.
    recoveredValue12 := (recoveredValue11) dateAndTimeNowInSeconds.
    now := recoveredValue12.
    recoveredValue13 := ('Kk') == ('Call_73778').
    recoveredValue14 := recoveredArg2.
    logger := recoveredValue14.
    recoveredValue15 := ASDXMLImportOptions.
    recoveredValue16 := (recoveredValue15) instance.
    recoveredValue17 := (recoveredValue16) copy.
    options := recoveredValue17.
    recoveredValue18 := LookupTable.
    recoveredValue19 := (recoveredValue18) new.
    folders := recoveredValue19.
    recoveredValue20 := EtasXmlSupportCatalog.
    recoveredValue21 := (recoveredValue20) makeCatalog.
    catalog := recoveredValue21.
    recoveredValue22 := LookupTable.
    recoveredValue23 := (recoveredValue22) new.
    postImportFixes := recoveredValue23.
    ^self
! !

"ASDBase.ic method 0x203addf8; bytecode file offset 0xcaa6e0"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
parentizeItem: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) thing.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) destinationFolderForProtoItem: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 recoveredBlock22Value4 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) label.
    recoveredBlock22Value2 := recoveredArg1.
    recoveredBlock22Value3 := (recoveredBlock22Value2) name.
    recoveredBlock22Value4 := (recoveredBlock22Value1) equalsIgnoringCase: (recoveredBlock22Value3).
    recoveredBlock22Value4
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) removeFromParentWithCommit.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) delete.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) commit.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) addChild: (recoveredStack1) checkPath: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c1dd8; bytecode file offset 0xcbe6a8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
adjustOIDChain: recoveredArg1 refItem: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionRemapOIDs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Local1 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg2.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) xmlElementByOID: (recoveredBlock23Stack2).
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            (recoveredBlock23Stack1 ~~ nil) ifTrue: [recoveredBlock23PC := 48] ifFalse: [recoveredBlock23PC := 40].
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack1 := 'todo'.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) notNil.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg2.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Local1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) xmlOID.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            (recoveredBlock23Stack1) at: (recoveredBlock23Stack2) put: (recoveredBlock23Stack3).
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) xmlSGClass.
            recoveredBlock23PC := 59.
        ].
        recoveredBlock23Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            (recoveredBlock23Stack2 ~~ nil) ifTrue: [recoveredBlock23PC := 75] ifFalse: [recoveredBlock23PC := 70].
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 75 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e980c; bytecode file offset 0xce60fc"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := currentFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) fileInfo: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ASDXMLImportOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWriteXMLImportLogFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := currentFile.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := currentFile.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'unknown file'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := currentFile.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) problem.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) detail.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := logger.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) detail.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            super addIssue: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20417e48; bytecode file offset 0xd14758"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
import: recoveredArg1 into: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 |
    (self) logInfo: ('====== import: into: ======').
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('baseName: ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' into: ').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) xmlPathString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    (self) logInfo: (recoveredValue5).
    recoveredValue6 := (self) options.
    (recoveredValue6) optionImportReferenced: (true).
    recoveredValue7 := (self) options.
    (recoveredValue7) optionKeepHierarchy: (false).
    recoveredValue8 := (self) options.
    (recoveredValue8) optionRemapOIDs: (false).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) getPathOnly.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) fileName.
    recoveredLocal4 := recoveredValue12.
    recoveredValue13 := recoveredArg2.
    importFolder := recoveredValue13.
    recoveredValue14 := ASDXMLImportStepXML.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue15) initOn: (self) baseName: (recoveredValue16) importPath: (recoveredValue17).
    recoveredLocal3 := recoveredValue18.
    recoveredValue19 := OrderedCollection.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := (recoveredValue19) with: (recoveredValue20).
    (self) performImportSteps: (recoveredValue21).
    recoveredValue22 := recoveredLocal3.
    recoveredValue23 := (recoveredValue22) protoItem.
    recoveredValue24 := (recoveredValue23) namespace.
    recoveredValue25 := (recoveredValue24) , ('/').
    recoveredValue26 := recoveredLocal3.
    recoveredValue27 := (recoveredValue26) protoItem.
    recoveredValue28 := (recoveredValue27) name.
    recoveredValue29 := (recoveredValue25) , (recoveredValue28).
    recoveredLocal2 := recoveredValue29.
    recoveredValue30 := recoveredLocal2.
    recoveredValue31 := ('return: ') , (recoveredValue30).
    (self) logInfo: (recoveredValue31).
    recoveredValue32 := recoveredLocal2.
    ^recoveredValue32
! !

"ASDBase.ic method 0x2043d068; bytecode file offset 0xd39950"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
makeImportStepEntry: recoveredArg1 path: recoveredArg2 into: recoveredArg3 importPath: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ASDXMLImportStepXML.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) dNameOnly.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) baseName: (recoveredStack4) importPath: (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) dName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) filesForImportInPath: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) dirsForImportInPath: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredLocal2.
    recoveredBlock83Value2 := recoveredArg3.
    recoveredBlock83Value3 := recoveredArg4.
    recoveredBlock83Value4 := (self) makeImportStepEntry: (recoveredBlock83Value0) path: (recoveredBlock83Value1) into: (recoveredBlock83Value2) importPath: (recoveredBlock83Value3).
    recoveredBlock83Value4
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046b91c; bytecode file offset 0xd6822c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
insertInDatabase: recoveredArg1 object: recoveredArg2 name: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'Call_79927'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOID: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := DBInterface32.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) proxyClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithBytes: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := DBInterface.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeObject: (recoveredStack2) data: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := DBInterface.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) dbInterface: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) setDefaultValues: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) internalName: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) dbObject: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := now.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) applicationTimeStamp: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) arbiterCounter.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) applicationTimeStampNanoSecondsFromTimeStampWithCounter: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := 'XMLImport'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) commitWithoutCacheWrite.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) asDBProxy.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20486ea8; bytecode file offset 0xd837bc"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
itemForPath: recoveredArg1 oid: recoveredArg2 ownBase: recoveredArg3 missing: recoveredArg4 importPath: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1) oid: (recoveredStack2) createDummy: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionImportReferenced.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) namespace.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) baseName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeRelativeBaseName: (recoveredStack1) src: (recoveredStack2) baseName: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ASDXMLImportStepXML.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) initOn: (recoveredStack1) baseName: (recoveredStack2) importPath: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) resolvedFileName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueMissingFile.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Missing referenced component'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) namespace.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := '/'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) baseName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := ' refers to a component that does not exist as AMD file'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) detail: (recoveredStack3) class: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) performStep: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) protoItem.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) isImplicit: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) resolveReferences: (recoveredStack1) missing: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) protoItem.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d796c; bytecode file offset 0xdd4264"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
folderByParts: recoveredArg1 root: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFirst.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 |
    recoveredBlock31Value0 := recoveredBlock31Arg1.
    recoveredBlock31Value1 := (recoveredBlock31Value0) label.
    recoveredBlock31Value2 := recoveredLocal1.
    recoveredBlock31Value3 := (recoveredBlock31Value1) equalsIgnoringCase: (recoveredBlock31Value2).
    recoveredBlock31Value3
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := SGDatabaseAccess.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) addLibraryNamed: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFolderNamed: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'Call_2009404374'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := folders.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlPathString.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := [:recoveredBlock115Arg1 | 
    | recoveredBlock115Value0 recoveredBlock115Value1 recoveredBlock115Value2 |
    recoveredBlock115Value0 := recoveredLocal3.
    recoveredBlock115Value1 := recoveredBlock115Arg1.
    recoveredBlock115Value2 := (recoveredBlock115Value0) setComment: (recoveredBlock115Value1).
    recoveredBlock115Value2
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e6ec4; bytecode file offset 0xde37b8"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
itemForPath: recoveredArg1 oid: recoveredArg2 createDummy: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    ^recoveredBlock11Value0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionOverwriteReferenced.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalByOID: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoItemWithSpec.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3) namespace: (recoveredStack4) baseName: (recoveredStack5).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) registerProtoItem: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 |
    recoveredBlock105Value0 := recoveredArg1.
    recoveredBlock105Value1 := (recoveredBlock105Value0) startsWith: ('.defaultProject').
    recoveredBlock105Value2 := (recoveredBlock105Value1) not.
    recoveredBlock105Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'default projects cannot be resolved by name'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := protoItems.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 |
    recoveredBlock132Value0 := recoveredBlock132Arg1.
    ^recoveredBlock132Value0
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionOverwriteReferenced.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051ce50; bytecode file offset 0xe19740"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
makeRelativeBaseName: recoveredArg1 src: recoveredArg2 baseName: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := $/.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) removeLast.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := '..'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 122] ifFalse: [recoveredPC := 139]] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) normalizePath: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFirst.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := [:recoveredBlock164Arg1 | 
    | recoveredBlock164Value0 recoveredBlock164Value1 recoveredBlock164Value2 recoveredBlock164Value3 recoveredBlock164Value4 |
    recoveredBlock164Value0 := recoveredLocal3.
    recoveredBlock164Value1 := (recoveredBlock164Value0) , ('\').
    recoveredBlock164Value2 := recoveredBlock164Arg1.
    recoveredBlock164Value3 := (recoveredBlock164Value1) , (recoveredBlock164Value2).
    recoveredBlock164Value4 := recoveredBlock164Value3.
    recoveredLocal3 := recoveredBlock164Value4.
    recoveredBlock164Value3
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055f934; bytecode file offset 0xe5c254"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
canImport: recoveredArg1 folders: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) protoItem.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) namespace.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionKeepHierarchy.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := protoItems.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) name.
    recoveredBlock38Value2 := recoveredLocal4.
    recoveredBlock38Value3 := (recoveredBlock38Value2) name.
    recoveredBlock38Value4 := (recoveredBlock38Value1) = (recoveredBlock38Value3).
    recoveredBlock38Value4
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueNameComponentClash.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) colliders: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueNameFolderClash.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) item: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) findDestinationFor: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueNameFolderClash.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) item: (recoveredStack3).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueNameFolderClash.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) item: (recoveredStack3).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisallowOverwrite.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWrite.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueWriteDenied.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) destination: (recoveredStack3).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) replaces: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056e8dc; bytecode file offset 0xe6b22c"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importFromAXLFiles: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := 'Rnz'.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := 'EHI_84275'.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) == (recoveredBlock21Stack2).
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            recoveredBlock21Stack1 := [
    | recoveredBlock21Block34Value0 recoveredBlock21Block34Value1 recoveredBlock21Block34Value2 |
    recoveredBlock21Block34Value0 := recoveredArg1.
    recoveredBlock21Block34Value1 := [:recoveredBlock21Block34Block43Arg1 | 
    | recoveredBlock21Block34Block43Stack0 recoveredBlock21Block34Block43Stack1 recoveredBlock21Block34Block43Stack2 recoveredBlock21Block34Block43Stack3 recoveredBlock21Block34Block43Stack4 recoveredBlock21Block34Block43Stack5 recoveredBlock21Block34Block43PC recoveredBlock21Block34Block43Step recoveredBlock21Block34Block43Done recoveredBlock21Block34Block43Result |
    recoveredBlock21Block34Block43Stack0 := self.
    recoveredBlock21Block34Block43PC := 50.
    recoveredBlock21Block34Block43Done := false.
    [recoveredBlock21Block34Block43Done not] whileTrue: [
        recoveredBlock21Block34Block43Step := recoveredBlock21Block34Block43PC.
        recoveredBlock21Block34Block43Step = 50 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := nil.
            recoveredBlock21Block34Block43PC := 51.
        ].
        recoveredBlock21Block34Block43Step = 51 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := #('zip' 'axl').
            recoveredBlock21Block34Block43PC := 53.
        ].
        recoveredBlock21Block34Block43Step = 53 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := recoveredBlock21Block34Block43Arg1.
            recoveredBlock21Block34Block43PC := 54.
        ].
        recoveredBlock21Block34Block43Step = 54 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := (recoveredBlock21Block34Block43Stack3) fileExtension.
            recoveredBlock21Block34Block43PC := 56.
        ].
        recoveredBlock21Block34Block43Step = 56 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := (recoveredBlock21Block34Block43Stack3) asLowercase.
            recoveredBlock21Block34Block43PC := 58.
        ].
        recoveredBlock21Block34Block43Step = 58 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := (recoveredBlock21Block34Block43Stack2) includes: (recoveredBlock21Block34Block43Stack3).
            recoveredBlock21Block34Block43PC := 60.
        ].
        recoveredBlock21Block34Block43Step = 60 ifTrue: [
            (recoveredBlock21Block34Block43Stack2) ifTrue: [recoveredBlock21Block34Block43PC := 64] ifFalse: [recoveredBlock21Block34Block43PC := 121].
        ].
        recoveredBlock21Block34Block43Step = 64 ifTrue: [
            recoveredBlock21Block34Block43PC := 65.
        ].
        recoveredBlock21Block34Block43Step = 65 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := Util.
            recoveredBlock21Block34Block43PC := 67.
        ].
        recoveredBlock21Block34Block43Step = 67 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := ''.
            recoveredBlock21Block34Block43PC := 69.
        ].
        recoveredBlock21Block34Block43Step = 69 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := (recoveredBlock21Block34Block43Stack1) makeTempDir: (recoveredBlock21Block34Block43Stack2).
            recoveredBlock21Block34Block43PC := 71.
        ].
        recoveredBlock21Block34Block43Step = 71 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := recoveredBlock21Block34Block43Stack1.
            recoveredBlock21Block34Block43PC := 72.
        ].
        recoveredBlock21Block34Block43Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock21Block34Block43Stack2.
            recoveredBlock21Block34Block43PC := 75.
        ].
        recoveredBlock21Block34Block43Step = 75 ifTrue: [
            recoveredLocal5 := recoveredBlock21Block34Block43Stack1.
            recoveredBlock21Block34Block43PC := 78.
        ].
        recoveredBlock21Block34Block43Step = 78 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := recoveredLocal4.
            recoveredBlock21Block34Block43PC := 81.
        ].
        recoveredBlock21Block34Block43Step = 81 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := recoveredLocal5.
            recoveredBlock21Block34Block43PC := 84.
        ].
        recoveredBlock21Block34Block43Step = 84 ifTrue: [
            (recoveredBlock21Block34Block43Stack1) add: (recoveredBlock21Block34Block43Stack2).
            recoveredBlock21Block34Block43PC := 86.
        ].
        recoveredBlock21Block34Block43Step = 86 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := self.
            recoveredBlock21Block34Block43PC := 87.
        ].
        recoveredBlock21Block34Block43Step = 87 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := recoveredBlock21Block34Block43Arg1.
            recoveredBlock21Block34Block43PC := 88.
        ].
        recoveredBlock21Block34Block43Step = 88 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := recoveredLocal2.
            recoveredBlock21Block34Block43PC := 91.
        ].
        recoveredBlock21Block34Block43Step = 91 ifTrue: [
            (recoveredBlock21Block34Block43Stack1) unzip: (recoveredBlock21Block34Block43Stack2) into: (recoveredBlock21Block34Block43Stack3).
            recoveredBlock21Block34Block43PC := 93.
        ].
        recoveredBlock21Block34Block43Step = 93 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := recoveredLocal3.
            recoveredBlock21Block34Block43PC := 96.
        ].
        recoveredBlock21Block34Block43Step = 96 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := CfsDirectoryDescriptor.
            recoveredBlock21Block34Block43PC := 98.
        ].
        recoveredBlock21Block34Block43Step = 98 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := '*.main.xml'.
            recoveredBlock21Block34Block43PC := 100.
        ].
        recoveredBlock21Block34Block43Step = 100 ifTrue: [
            recoveredBlock21Block34Block43Stack4 := recoveredLocal5.
            recoveredBlock21Block34Block43PC := 103.
        ].
        recoveredBlock21Block34Block43Step = 103 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := (recoveredBlock21Block34Block43Stack2) findFileNames: (recoveredBlock21Block34Block43Stack3) in: (recoveredBlock21Block34Block43Stack4).
            recoveredBlock21Block34Block43PC := 105.
        ].
        recoveredBlock21Block34Block43Step = 105 ifTrue: [
            (recoveredBlock21Block34Block43Stack1) addAll: (recoveredBlock21Block34Block43Stack2).
            recoveredBlock21Block34Block43PC := 107.
        ].
        recoveredBlock21Block34Block43Step = 107 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := recoveredLocal3.
            recoveredBlock21Block34Block43PC := 110.
        ].
        recoveredBlock21Block34Block43Step = 110 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := CfsDirectoryDescriptor.
            recoveredBlock21Block34Block43PC := 112.
        ].
        recoveredBlock21Block34Block43Step = 112 ifTrue: [
            recoveredBlock21Block34Block43Stack3 := '*.main.amd'.
            recoveredBlock21Block34Block43PC := 114.
        ].
        recoveredBlock21Block34Block43Step = 114 ifTrue: [
            recoveredBlock21Block34Block43Stack4 := recoveredLocal5.
            recoveredBlock21Block34Block43PC := 117.
        ].
        recoveredBlock21Block34Block43Step = 117 ifTrue: [
            recoveredBlock21Block34Block43Stack2 := (recoveredBlock21Block34Block43Stack2) findFileNames: (recoveredBlock21Block34Block43Stack3) in: (recoveredBlock21Block34Block43Stack4).
            recoveredBlock21Block34Block43PC := 119.
        ].
        recoveredBlock21Block34Block43Step = 119 ifTrue: [
            recoveredBlock21Block34Block43Stack1 := (recoveredBlock21Block34Block43Stack1) addAll: (recoveredBlock21Block34Block43Stack2).
            recoveredBlock21Block34Block43PC := 121.
        ].
        recoveredBlock21Block34Block43Step = 121 ifTrue: [
            recoveredBlock21Block34Block43Result := recoveredBlock21Block34Block43Stack1.
            recoveredBlock21Block34Block43Done := true.
        ].
    ].
    recoveredBlock21Block34Block43Result
].
    recoveredBlock21Block34Value2 := (recoveredBlock21Block34Value0) do: (recoveredBlock21Block34Value1).
    recoveredBlock21Block34Value2
].
            recoveredBlock21PC := 125.
        ].
        recoveredBlock21Step = 125 ifTrue: [
            recoveredBlock21Stack2 := 'Extracting ZIP archives'.
            recoveredBlock21PC := 127.
        ].
        recoveredBlock21Step = 127 ifTrue: [
            (recoveredBlock21Stack0) execLongOperation: (recoveredBlock21Stack1) message: (recoveredBlock21Stack2).
            recoveredBlock21PC := 129.
        ].
        recoveredBlock21Step = 129 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal3.
            recoveredBlock21PC := 132.
        ].
        recoveredBlock21Step = 132 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) isEmpty.
            recoveredBlock21PC := 134.
        ].
        recoveredBlock21Step = 134 ifTrue: [
            (recoveredBlock21Stack0) ifTrue: [recoveredBlock21PC := 138] ifFalse: [recoveredBlock21PC := 144].
        ].
        recoveredBlock21Step = 138 ifTrue: [
            recoveredBlock21Stack0 := NoMainXMLFound.
            recoveredBlock21PC := 140.
        ].
        recoveredBlock21Step = 140 ifTrue: [
            recoveredBlock21Stack1 := 'No files matching "*.main.xml" or "*.main.amd" found for import.'.
            recoveredBlock21PC := 142.
        ].
        recoveredBlock21Step = 142 ifTrue: [
            (recoveredBlock21Stack0) signalWith: (recoveredBlock21Stack1).
            recoveredBlock21PC := 144.
        ].
        recoveredBlock21Step = 144 ifTrue: [
            recoveredBlock21Stack0 := self.
            recoveredBlock21PC := 145.
        ].
        recoveredBlock21Step = 145 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal3.
            recoveredBlock21PC := 148.
        ].
        recoveredBlock21Step = 148 ifTrue: [
            recoveredBlock21Stack2 := recoveredArg2.
            recoveredBlock21PC := 151.
        ].
        recoveredBlock21Step = 151 ifTrue: [
            recoveredBlock21Stack3 := recoveredArg3.
            recoveredBlock21PC := 154.
        ].
        recoveredBlock21Step = 154 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) importFromFiles: (recoveredBlock21Stack1) components: (recoveredBlock21Stack2) importFolder: (recoveredBlock21Stack3).
            recoveredBlock21PC := 157.
        ].
        recoveredBlock21Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock21Stack0.
            recoveredBlock21PC := 160.
        ].
        recoveredBlock21Step = 160 ifTrue: [
            recoveredBlock21Stack0 := recoveredLocal4.
            recoveredBlock21PC := 163.
        ].
        recoveredBlock21Step = 163 ifTrue: [
            recoveredBlock21Stack1 := [:block28111970Arg1 | 
    | block28111970Stack0 block28111970Stack1 block28111970Stack2 block28111970Stack3 block28111970PC block28111970Step block28111970Done block28111970Result |
    block28111970Stack0 := self.
    block28111970PC := 4.
    block28111970Done := false.
    [block28111970Done not] whileTrue: [
        block28111970Step := block28111970PC.
        block28111970Step = 4 ifTrue: [
            block28111970Stack1 := nil.
            block28111970PC := 5.
        ].
        block28111970Step = 5 ifTrue: [
            block28111970Stack2 := block28111970Arg1.
            block28111970PC := 6.
        ].
        block28111970Step = 6 ifTrue: [
            (block28111970Stack2 == nil) ifTrue: [block28111970PC := 16] ifFalse: [block28111970PC := 10].
        ].
        block28111970Step = 10 ifTrue: [
            block28111970PC := 11.
        ].
        block28111970Step = 11 ifTrue: [
            block28111970Stack1 := CfsDirectoryDescriptor.
            block28111970PC := 13.
        ].
        block28111970Step = 13 ifTrue: [
            block28111970Stack2 := block28111970Arg1.
            block28111970PC := 14.
        ].
        block28111970Step = 14 ifTrue: [
            block28111970Stack1 := (block28111970Stack1) deletePathRecursiveNoWait: (block28111970Stack2).
            block28111970PC := 16.
        ].
        block28111970Step = 16 ifTrue: [
            block28111970Result := block28111970Stack1.
            block28111970Done := true.
        ].
    ].
    block28111970Result
].
            recoveredBlock21PC := 165.
        ].
        recoveredBlock21Step = 165 ifTrue: [
            recoveredBlock21PC := 181.
        ].
        recoveredBlock21Step = 181 ifTrue: [
            recoveredBlock21Stack0 := (recoveredBlock21Stack0) do: (recoveredBlock21Stack1).
            recoveredBlock21PC := 183.
        ].
        recoveredBlock21Step = 183 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack0.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := [:recoveredBlock186Arg1 | 
    | recoveredBlock186Stack0 recoveredBlock186Stack1 recoveredBlock186Stack2 recoveredBlock186Stack3 recoveredBlock186PC recoveredBlock186Step recoveredBlock186Done recoveredBlock186Result |
    recoveredBlock186Stack0 := self.
    recoveredBlock186PC := 192.
    recoveredBlock186Done := false.
    [recoveredBlock186Done not] whileTrue: [
        recoveredBlock186Step := recoveredBlock186PC.
        recoveredBlock186Step = 192 ifTrue: [
            recoveredBlock186Stack1 := NoMainXMLFound.
            recoveredBlock186PC := 194.
        ].
        recoveredBlock186Step = 194 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 195.
        ].
        recoveredBlock186Step = 195 ifTrue: [
            recoveredBlock186Stack2 := (recoveredBlock186Stack2) exception.
            recoveredBlock186PC := 197.
        ].
        recoveredBlock186Step = 197 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) handles: (recoveredBlock186Stack2).
            recoveredBlock186PC := 199.
        ].
        recoveredBlock186Step = 199 ifTrue: [
            (recoveredBlock186Stack1) ifTrue: [recoveredBlock186PC := 207] ifFalse: [recoveredBlock186PC := 202].
        ].
        recoveredBlock186Step = 202 ifTrue: [
            recoveredBlock186Stack1 := Util.
            recoveredBlock186PC := 204.
        ].
        recoveredBlock186Step = 204 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 205.
        ].
        recoveredBlock186Step = 205 ifTrue: [
            (recoveredBlock186Stack1) writeStackTrace: (recoveredBlock186Stack2).
            recoveredBlock186PC := 207.
        ].
        recoveredBlock186Step = 207 ifTrue: [
            recoveredBlock186Stack1 := Util.
            recoveredBlock186PC := 209.
        ].
        recoveredBlock186Step = 209 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 210.
        ].
        recoveredBlock186Step = 210 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) exceptionString: (recoveredBlock186Stack2).
            recoveredBlock186PC := 212.
        ].
        recoveredBlock186Step = 212 ifTrue: [
            (recoveredBlock186Stack0) logError: (recoveredBlock186Stack1).
            recoveredBlock186PC := 214.
        ].
        recoveredBlock186Step = 214 ifTrue: [
            recoveredBlock186Stack0 := self.
            recoveredBlock186PC := 215.
        ].
        recoveredBlock186Step = 215 ifTrue: [
            recoveredBlock186Stack1 := Util.
            recoveredBlock186PC := 217.
        ].
        recoveredBlock186Step = 217 ifTrue: [
            recoveredBlock186Stack2 := recoveredBlock186Arg1.
            recoveredBlock186PC := 218.
        ].
        recoveredBlock186Step = 218 ifTrue: [
            recoveredBlock186Stack1 := (recoveredBlock186Stack1) exceptionString: (recoveredBlock186Stack2).
            recoveredBlock186PC := 220.
        ].
        recoveredBlock186Step = 220 ifTrue: [
            (recoveredBlock186Stack0) messagePrompt: (recoveredBlock186Stack1).
            recoveredBlock186PC := 222.
        ].
        recoveredBlock186Step = 222 ifTrue: [
            recoveredBlock186Stack0 := recoveredBlock186Arg1.
            recoveredBlock186PC := 223.
        ].
        recoveredBlock186Step = 223 ifTrue: [
            recoveredBlock186Stack1 := nil.
            recoveredBlock186PC := 224.
        ].
        recoveredBlock186Step = 224 ifTrue: [
            recoveredBlock186Stack0 := (recoveredBlock186Stack0) exitWith: (recoveredBlock186Stack1).
            recoveredBlock186PC := 226.
        ].
        recoveredBlock186Step = 226 ifTrue: [
            recoveredBlock186Result := recoveredBlock186Stack0.
            recoveredBlock186Done := true.
        ].
    ].
    recoveredBlock186Result
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 241] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205951f4; bytecode file offset 0xe91b50"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importFromFiles: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'XMLImport'.
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 10000.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block28114bc8Arg1 | 
    | block28114bc8Stack0 block28114bc8Stack1 block28114bc8Stack2 block28114bc8Stack3 block28114bc8Stack4 block28114bc8PC block28114bc8Step block28114bc8Done block28114bc8Result |
    block28114bc8Stack0 := self.
    block28114bc8PC := 4.
    block28114bc8Done := false.
    [block28114bc8Done not] whileTrue: [
        block28114bc8Step := block28114bc8PC.
        block28114bc8Step = 4 ifTrue: [
            block28114bc8Stack1 := true.
            block28114bc8PC := 5.
        ].
        block28114bc8Step = 5 ifTrue: [
            block28114bc8Stack2 := block28114bc8Arg1.
            block28114bc8PC := 6.
        ].
        block28114bc8Step = 6 ifTrue: [
            block28114bc8Stack2 := (block28114bc8Stack2) asLowercase.
            block28114bc8PC := 8.
        ].
        block28114bc8Step = 8 ifTrue: [
            block28114bc8Stack3 := 'main.xml'.
            block28114bc8PC := 10.
        ].
        block28114bc8Step = 10 ifTrue: [
            block28114bc8Stack2 := (block28114bc8Stack2) includesSubstring: (block28114bc8Stack3).
            block28114bc8PC := 12.
        ].
        block28114bc8Step = 12 ifTrue: [
            (block28114bc8Stack2) ifTrue: [block28114bc8PC := 24] ifFalse: [block28114bc8PC := 16].
        ].
        block28114bc8Step = 16 ifTrue: [
            block28114bc8PC := 17.
        ].
        block28114bc8Step = 17 ifTrue: [
            block28114bc8Stack1 := block28114bc8Arg1.
            block28114bc8PC := 18.
        ].
        block28114bc8Step = 18 ifTrue: [
            block28114bc8Stack1 := (block28114bc8Stack1) asLowercase.
            block28114bc8PC := 20.
        ].
        block28114bc8Step = 20 ifTrue: [
            block28114bc8Stack2 := 'main.amd'.
            block28114bc8PC := 22.
        ].
        block28114bc8Step = 22 ifTrue: [
            block28114bc8Stack1 := (block28114bc8Stack1) includesSubstring: (block28114bc8Stack2).
            block28114bc8PC := 24.
        ].
        block28114bc8Step = 24 ifTrue: [
            block28114bc8Result := block28114bc8Stack1.
            block28114bc8Done := true.
        ].
    ].
    block28114bc8Result
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Call_327483'.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'Too many import files (%1). Supported maximum import size is %2'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) logError: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := ImportAborted.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'Too many import files.\You try to import %1 files. Supported maximum import size is %2.'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Local1 recoveredBlock112Stack0 recoveredBlock112Stack1 recoveredBlock112Stack2 recoveredBlock112Stack3 recoveredBlock112Stack4 recoveredBlock112Stack5 recoveredBlock112PC recoveredBlock112Step recoveredBlock112Done recoveredBlock112Result |
    recoveredBlock112Stack0 := self.
    recoveredBlock112PC := 118.
    recoveredBlock112Done := false.
    [recoveredBlock112Done not] whileTrue: [
        recoveredBlock112Step := recoveredBlock112PC.
        recoveredBlock112Step = 118 ifTrue: [
            recoveredBlock112Stack1 := OrderedCollection.
            recoveredBlock112PC := 120.
        ].
        recoveredBlock112Step = 120 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) new.
            recoveredBlock112PC := 121.
        ].
        recoveredBlock112Step = 121 ifTrue: [
            recoveredLocal7 := recoveredBlock112Stack1.
            recoveredBlock112PC := 124.
        ].
        recoveredBlock112Step = 124 ifTrue: [
            recoveredBlock112Stack1 := recoveredBlock112Arg1.
            recoveredBlock112PC := 125.
        ].
        recoveredBlock112Step = 125 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) pathName.
            recoveredBlock112PC := 127.
        ].
        recoveredBlock112Step = 127 ifTrue: [
            recoveredLocal4 := recoveredBlock112Stack1.
            recoveredBlock112PC := 130.
        ].
        recoveredBlock112Step = 130 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal7.
            recoveredBlock112PC := 133.
        ].
        recoveredBlock112Step = 133 ifTrue: [
            recoveredBlock112Stack2 := CfsDirectoryDescriptor.
            recoveredBlock112PC := 135.
        ].
        recoveredBlock112Step = 135 ifTrue: [
            recoveredBlock112Stack3 := recoveredBlock112Arg1.
            recoveredBlock112PC := 136.
        ].
        recoveredBlock112Step = 136 ifTrue: [
            recoveredBlock112Stack3 := (recoveredBlock112Stack3) fileName.
            recoveredBlock112PC := 138.
        ].
        recoveredBlock112Step = 138 ifTrue: [
            recoveredBlock112Stack4 := recoveredLocal4.
            recoveredBlock112PC := 141.
        ].
        recoveredBlock112Step = 141 ifTrue: [
            recoveredBlock112Stack2 := (recoveredBlock112Stack2) findFiles: (recoveredBlock112Stack3) in: (recoveredBlock112Stack4).
            recoveredBlock112PC := 143.
        ].
        recoveredBlock112Step = 143 ifTrue: [
            (recoveredBlock112Stack1) addAll: (recoveredBlock112Stack2).
            recoveredBlock112PC := 145.
        ].
        recoveredBlock112Step = 145 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal7.
            recoveredBlock112PC := 148.
        ].
        recoveredBlock112Step = 148 ifTrue: [
            (recoveredBlock112Stack1 ~~ nil) ifTrue: [recoveredBlock112PC := 155] ifFalse: [recoveredBlock112PC := 152].
        ].
        recoveredBlock112Step = 152 ifTrue: [
            recoveredBlock112Stack1 := #().
            recoveredBlock112PC := 154.
        ].
        recoveredBlock112Step = 154 ifTrue: [
            ^recoveredBlock112Stack1
        ].
        recoveredBlock112Step = 155 ifTrue: [
            recoveredBlock112Stack1 := recoveredArg3.
            recoveredBlock112PC := 158.
        ].
        recoveredBlock112Step = 158 ifTrue: [
            importFolder := recoveredBlock112Stack1.
            recoveredBlock112PC := 160.
        ].
        recoveredBlock112Step = 160 ifTrue: [
            recoveredBlock112Stack1 := importFolder.
            recoveredBlock112PC := 162.
        ].
        recoveredBlock112Step = 162 ifTrue: [
            recoveredBlock112Stack2 := SGDatabaseAccess.
            recoveredBlock112PC := 164.
        ].
        recoveredBlock112Step = 164 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) isKindOf: (recoveredBlock112Stack2).
            recoveredBlock112PC := 166.
        ].
        recoveredBlock112Step = 166 ifTrue: [
            (recoveredBlock112Stack1) ifTrue: [recoveredBlock112PC := 170] ifFalse: [recoveredBlock112PC := 212].
        ].
        recoveredBlock112Step = 170 ifTrue: [
            recoveredBlock112Stack1 := self.
            recoveredBlock112PC := 171.
        ].
        recoveredBlock112Step = 171 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) options.
            recoveredBlock112PC := 173.
        ].
        recoveredBlock112Step = 173 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) optionKeepHierarchy.
            recoveredBlock112PC := 175.
        ].
        recoveredBlock112Step = 175 ifTrue: [
            (recoveredBlock112Stack1) ifTrue: [recoveredBlock112PC := 212] ifFalse: [recoveredBlock112PC := 178].
        ].
        recoveredBlock112Step = 178 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal7.
            recoveredBlock112PC := 181.
        ].
        recoveredBlock112Step = 181 ifTrue: [
            recoveredBlock112Stack2 := [:block28114becArg1 | 
    | block28114becValue0 block28114becValue1 block28114becValue2 |
    block28114becValue0 := block28114becArg1.
    block28114becValue1 := (block28114becValue0) isDir.
    block28114becValue2 := (block28114becValue1) not.
    block28114becValue2
].
            recoveredBlock112PC := 183.
        ].
        recoveredBlock112Step = 183 ifTrue: [
            recoveredBlock112PC := 191.
        ].
        recoveredBlock112Step = 191 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) select: (recoveredBlock112Stack2).
            recoveredBlock112PC := 193.
        ].
        recoveredBlock112Step = 193 ifTrue: [
            recoveredBlock112Local1 := recoveredBlock112Stack1.
            recoveredBlock112PC := 194.
        ].
        recoveredBlock112Step = 194 ifTrue: [
            recoveredBlock112Stack1 := recoveredBlock112Local1.
            recoveredBlock112PC := 195.
        ].
        recoveredBlock112Step = 195 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) size.
            recoveredBlock112PC := 197.
        ].
        recoveredBlock112Step = 197 ifTrue: [
            recoveredBlock112Stack2 := 0.
            recoveredBlock112PC := 199.
        ].
        recoveredBlock112Step = 199 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) > (recoveredBlock112Stack2).
            recoveredBlock112PC := 200.
        ].
        recoveredBlock112Step = 200 ifTrue: [
            (recoveredBlock112Stack1) ifTrue: [recoveredBlock112PC := 204] ifFalse: [recoveredBlock112PC := 210].
        ].
        recoveredBlock112Step = 204 ifTrue: [
            recoveredBlock112Stack1 := ImportAborted.
            recoveredBlock112PC := 206.
        ].
        recoveredBlock112Step = 206 ifTrue: [
            recoveredBlock112Stack2 := 'Cannot import item(s) to database root. Please import selected item(s) to a database folder or enable the "Keep Hierarchy" option.'.
            recoveredBlock112PC := 208.
        ].
        recoveredBlock112Step = 208 ifTrue: [
            (recoveredBlock112Stack1) signalWith: (recoveredBlock112Stack2).
            recoveredBlock112PC := 210.
        ].
        recoveredBlock112Step = 210 ifTrue: [
            recoveredBlock112Stack1 := nil.
            recoveredBlock112PC := 211.
        ].
        recoveredBlock112Step = 211 ifTrue: [
            recoveredBlock112Local1 := recoveredBlock112Stack1.
            recoveredBlock112PC := 212.
        ].
        recoveredBlock112Step = 212 ifTrue: [
            recoveredBlock112Stack1 := recoveredLocal7.
            recoveredBlock112PC := 215.
        ].
        recoveredBlock112Step = 215 ifTrue: [
            recoveredBlock112Stack2 := [:recoveredBlock112Block215Arg1 | 
    | recoveredBlock112Block215Value0 recoveredBlock112Block215Value1 recoveredBlock112Block215Value2 recoveredBlock112Block215Value3 recoveredBlock112Block215Value4 |
    recoveredBlock112Block215Value0 := recoveredBlock112Block215Arg1.
    recoveredBlock112Block215Value1 := recoveredLocal6.
    recoveredBlock112Block215Value2 := recoveredLocal4.
    recoveredBlock112Block215Value3 := (recoveredBlock112Block215Value2) copy.
    recoveredBlock112Block215Value4 := (self) makeImportStepEntry: (recoveredBlock112Block215Value0) path: ('') into: (recoveredBlock112Block215Value1) importPath: (recoveredBlock112Block215Value3).
    recoveredBlock112Block215Value4
].
            recoveredBlock112PC := 237.
        ].
        recoveredBlock112Step = 237 ifTrue: [
            recoveredBlock112Stack1 := (recoveredBlock112Stack1) do: (recoveredBlock112Stack2).
            recoveredBlock112PC := 239.
        ].
        recoveredBlock112Step = 239 ifTrue: [
            recoveredBlock112Result := recoveredBlock112Stack1.
            recoveredBlock112Done := true.
        ].
    ].
    recoveredBlock112Result
].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 'Bugfix'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectImportItems: (recoveredStack1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := [
    ^#()
].
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := 'ASCET_SCM'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) performImportSteps: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b2d54; bytecode file offset 0xeaf6b4"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importFromPath: recoveredArg1 components: recoveredArg2 importFolder: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := CfsStat.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isDirectory: (recoveredBlock10Stack2).
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 58].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack2 := CfsDirectoryDescriptor.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack3 := '*.main.xml'.
            recoveredBlock10PC := 33.
        ].
        recoveredBlock10Step = 33 ifTrue: [
            recoveredBlock10Stack4 := recoveredArg1.
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) findFileNames: (recoveredBlock10Stack3) in: (recoveredBlock10Stack4).
            recoveredBlock10PC := 38.
        ].
        recoveredBlock10Step = 38 ifTrue: [
            (recoveredBlock10Stack1) addAll: (recoveredBlock10Stack2).
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 43.
        ].
        recoveredBlock10Step = 43 ifTrue: [
            recoveredBlock10Stack2 := CfsDirectoryDescriptor.
            recoveredBlock10PC := 45.
        ].
        recoveredBlock10Step = 45 ifTrue: [
            recoveredBlock10Stack3 := '*.main.amd'.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack4 := recoveredArg1.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) findFileNames: (recoveredBlock10Stack3) in: (recoveredBlock10Stack4).
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            (recoveredBlock10Stack1) addAll: (recoveredBlock10Stack2).
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            recoveredBlock10PC := 182.
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack1 := 'Kli'.
            recoveredBlock10PC := 60.
        ].
        recoveredBlock10Step = 60 ifTrue: [
            recoveredBlock10Stack2 := 'XMLImport'.
            recoveredBlock10PC := 62.
        ].
        recoveredBlock10Step = 62 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) == (recoveredBlock10Stack2).
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            recoveredBlock10Stack1 := #('zip' 'axl').
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) fileExtension.
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) asLowercase.
            recoveredBlock10PC := 73.
        ].
        recoveredBlock10Step = 73 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) includes: (recoveredBlock10Stack2).
            recoveredBlock10PC := 75.
        ].
        recoveredBlock10Step = 75 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 78] ifFalse: [recoveredBlock10PC := 150].
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Stack1 := 'Rnz'.
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            recoveredBlock10Stack2 := 'EHI_84275'.
            recoveredBlock10PC := 82.
        ].
        recoveredBlock10Step = 82 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) == (recoveredBlock10Stack2).
            recoveredBlock10PC := 83.
        ].
        recoveredBlock10Step = 83 ifTrue: [
            recoveredBlock10PC := 84.
        ].
        recoveredBlock10Step = 84 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 85.
        ].
        recoveredBlock10Step = 85 ifTrue: [
            recoveredBlock10Stack2 := [
    | recoveredBlock10Block85Value0 recoveredBlock10Block85Value1 recoveredBlock10Block85Value2 recoveredBlock10Block85Value3 recoveredBlock10Block85Value4 recoveredBlock10Block85Value5 recoveredBlock10Block85Value6 recoveredBlock10Block85Value7 recoveredBlock10Block85Value8 recoveredBlock10Block85Value9 recoveredBlock10Block85Value10 recoveredBlock10Block85Value11 recoveredBlock10Block85Value12 recoveredBlock10Block85Value13 |
    recoveredBlock10Block85Value0 := Util.
    recoveredBlock10Block85Value1 := (recoveredBlock10Block85Value0) makeTempDir: ('').
    recoveredBlock10Block85Value2 := recoveredBlock10Block85Value1.
    recoveredLocal2 := recoveredBlock10Block85Value2.
    recoveredLocal4 := recoveredBlock10Block85Value1.
    recoveredBlock10Block85Value3 := recoveredArg1.
    recoveredBlock10Block85Value4 := recoveredLocal2.
    (self) unzip: (recoveredBlock10Block85Value3) into: (recoveredBlock10Block85Value4).
    recoveredBlock10Block85Value5 := recoveredLocal3.
    recoveredBlock10Block85Value6 := CfsDirectoryDescriptor.
    recoveredBlock10Block85Value7 := recoveredLocal4.
    recoveredBlock10Block85Value8 := (recoveredBlock10Block85Value6) findFileNames: ('*.main.xml') in: (recoveredBlock10Block85Value7).
    (recoveredBlock10Block85Value5) addAll: (recoveredBlock10Block85Value8).
    recoveredBlock10Block85Value9 := recoveredLocal3.
    recoveredBlock10Block85Value10 := CfsDirectoryDescriptor.
    recoveredBlock10Block85Value11 := recoveredLocal4.
    recoveredBlock10Block85Value12 := (recoveredBlock10Block85Value10) findFileNames: ('*.main.amd') in: (recoveredBlock10Block85Value11).
    recoveredBlock10Block85Value13 := (recoveredBlock10Block85Value9) addAll: (recoveredBlock10Block85Value12).
    recoveredBlock10Block85Value13
].
            recoveredBlock10PC := 142.
        ].
        recoveredBlock10Step = 142 ifTrue: [
            recoveredBlock10Stack3 := 'Extracting ZIP Archives'.
            recoveredBlock10PC := 144.
        ].
        recoveredBlock10Step = 144 ifTrue: [
            (recoveredBlock10Stack1) execLongOperation: (recoveredBlock10Stack2) message: (recoveredBlock10Stack3).
            recoveredBlock10PC := 146.
        ].
        recoveredBlock10Step = 146 ifTrue: [
            recoveredBlock10PC := 182.
        ].
        recoveredBlock10Step = 150 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 153.
        ].
        recoveredBlock10Step = 153 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) asLowercase.
            recoveredBlock10PC := 155.
        ].
        recoveredBlock10Step = 155 ifTrue: [
            recoveredBlock10Stack2 := 'main.xml'.
            recoveredBlock10PC := 157.
        ].
        recoveredBlock10Step = 157 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) includesSubstring: (recoveredBlock10Stack2).
            recoveredBlock10PC := 159.
        ].
        recoveredBlock10Step = 159 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 174] ifFalse: [recoveredBlock10PC := 162].
        ].
        recoveredBlock10Step = 162 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 165.
        ].
        recoveredBlock10Step = 165 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) asLowercase.
            recoveredBlock10PC := 167.
        ].
        recoveredBlock10Step = 167 ifTrue: [
            recoveredBlock10Stack2 := 'main.amd'.
            recoveredBlock10PC := 169.
        ].
        recoveredBlock10Step = 169 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) includesSubstring: (recoveredBlock10Stack2).
            recoveredBlock10PC := 171.
        ].
        recoveredBlock10Step = 171 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 174] ifFalse: [recoveredBlock10PC := 182].
        ].
        recoveredBlock10Step = 174 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 177.
        ].
        recoveredBlock10Step = 177 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg1.
            recoveredBlock10PC := 180.
        ].
        recoveredBlock10Step = 180 ifTrue: [
            (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 182.
        ].
        recoveredBlock10Step = 182 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 185.
        ].
        recoveredBlock10Step = 185 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isEmpty.
            recoveredBlock10PC := 187.
        ].
        recoveredBlock10Step = 187 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 190] ifFalse: [recoveredBlock10PC := 201].
        ].
        recoveredBlock10Step = 190 ifTrue: [
            recoveredBlock10Stack1 := NoMainXMLFound.
            recoveredBlock10PC := 192.
        ].
        recoveredBlock10Step = 192 ifTrue: [
            recoveredBlock10Stack2 := 'No files matching "*.main.xml" or "*.main.amd" found for import in path: '.
            recoveredBlock10PC := 194.
        ].
        recoveredBlock10Step = 194 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal2.
            recoveredBlock10PC := 197.
        ].
        recoveredBlock10Step = 197 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) , (recoveredBlock10Stack3).
            recoveredBlock10PC := 199.
        ].
        recoveredBlock10Step = 199 ifTrue: [
            (recoveredBlock10Stack1) signalWith: (recoveredBlock10Stack2).
            recoveredBlock10PC := 201.
        ].
        recoveredBlock10Step = 201 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal3.
            recoveredBlock10PC := 204.
        ].
        recoveredBlock10Step = 204 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg2.
            recoveredBlock10PC := 207.
        ].
        recoveredBlock10Step = 207 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg3.
            recoveredBlock10PC := 210.
        ].
        recoveredBlock10Step = 210 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) importFromFiles: (recoveredBlock10Stack1) components: (recoveredBlock10Stack2) importFolder: (recoveredBlock10Stack3).
            recoveredBlock10PC := 213.
        ].
        recoveredBlock10Step = 213 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 214.
        ].
        recoveredBlock10Step = 214 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 217.
        ].
        recoveredBlock10Step = 217 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := NoMainXMLFound.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 recoveredBlock220Value3 recoveredBlock220Value4 recoveredBlock220Value5 recoveredBlock220Value6 recoveredBlock220Value7 |
    recoveredBlock220Value0 := Util.
    recoveredBlock220Value1 := recoveredBlock220Arg1.
    recoveredBlock220Value2 := (recoveredBlock220Value0) exceptionString: (recoveredBlock220Value1).
    (self) logError: (recoveredBlock220Value2).
    recoveredBlock220Value3 := Util.
    recoveredBlock220Value4 := recoveredBlock220Arg1.
    recoveredBlock220Value5 := (recoveredBlock220Value3) exceptionString: (recoveredBlock220Value4).
    (self) messagePrompt: (recoveredBlock220Value5).
    recoveredBlock220Value6 := recoveredBlock220Arg1.
    recoveredBlock220Value7 := (recoveredBlock220Value6) exitWith: (nil).
    recoveredBlock220Value7
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := ExError.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack5 := [:recoveredBlock248Arg1 | 
    | recoveredBlock248Value0 recoveredBlock248Value1 recoveredBlock248Value2 recoveredBlock248Value3 recoveredBlock248Value4 recoveredBlock248Value5 recoveredBlock248Value6 recoveredBlock248Value7 recoveredBlock248Value8 recoveredBlock248Value9 |
    recoveredBlock248Value0 := Util.
    recoveredBlock248Value1 := recoveredBlock248Arg1.
    (recoveredBlock248Value0) writeStackTrace: (recoveredBlock248Value1).
    recoveredBlock248Value2 := Util.
    recoveredBlock248Value3 := recoveredBlock248Arg1.
    recoveredBlock248Value4 := (recoveredBlock248Value2) exceptionString: (recoveredBlock248Value3).
    (self) logError: (recoveredBlock248Value4).
    recoveredBlock248Value5 := Util.
    recoveredBlock248Value6 := recoveredBlock248Arg1.
    recoveredBlock248Value7 := (recoveredBlock248Value5) exceptionString: (recoveredBlock248Value6).
    (self) messagePrompt: (recoveredBlock248Value7).
    recoveredBlock248Value8 := recoveredBlock248Arg1.
    recoveredBlock248Value9 := (recoveredBlock248Value8) exitWith: (nil).
    recoveredBlock248Value9
].
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3) when: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 295] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) deletePathRecursiveNoWait: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 307] ifFalse: [recoveredPC := 304].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205c50b4; bytecode file offset 0xec1a30"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
importFrom: recoveredArg1 under: recoveredArg2 components: recoveredArg3 remapOID: recoveredArg4 discardImpl: recoveredArg5 keepHierarchy: recoveredArg6 refItems: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '====== importFrom: ... ======'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'source: '.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'under: '.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'remapOID: '.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := ' discardImpl: '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := ' keepHierarchy: '.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := ' refItems: '.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg7.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'components: '.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'nil'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := [:block28118504Arg1 :block28118504Arg2 | 
    | block28118504Value0 block28118504Value1 block28118504Value2 block28118504Value3 |
    block28118504Value0 := block28118504Arg1.
    block28118504Value1 := block28118504Arg2.
    block28118504Value2 := (block28118504Value0) , (block28118504Value1).
    block28118504Value3 := (block28118504Value2) , (', ').
    block28118504Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) inject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := $/.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceAll: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'Error: Invalid database parent path at import: '.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) handleError: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := 'Error: Boolean value expected for argument "shallRemap" at import.'.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) handleError: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) optionRemapOIDs: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 189] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := 'Error: Boolean value expected for argument "keepHierarchy" at import.'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) handleError: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) optionKeepHierarchy: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 213] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := 'Error: Boolean value expected for argument "refItems" at import.'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) handleError: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) optionImportReferenced: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock221Local1 recoveredBlock221Stack0 recoveredBlock221Stack1 recoveredBlock221Stack2 recoveredBlock221Stack3 recoveredBlock221Stack4 recoveredBlock221Stack5 recoveredBlock221Stack6 recoveredBlock221PC recoveredBlock221Step recoveredBlock221Done recoveredBlock221Result |
    recoveredBlock221Stack0 := self.
    recoveredBlock221PC := 228.
    recoveredBlock221Done := false.
    [recoveredBlock221Done not] whileTrue: [
        recoveredBlock221Step := recoveredBlock221PC.
        recoveredBlock221Step = 228 ifTrue: [
            recoveredBlock221Stack1 := nil.
            recoveredBlock221PC := 229.
        ].
        recoveredBlock221Step = 229 ifTrue: [
            recoveredBlock221Stack2 := self.
            recoveredBlock221PC := 230.
        ].
        recoveredBlock221Step = 230 ifTrue: [
            recoveredBlock221Stack3 := recoveredArg1.
            recoveredBlock221PC := 233.
        ].
        recoveredBlock221Step = 233 ifTrue: [
            recoveredBlock221Stack4 := recoveredArg3.
            recoveredBlock221PC := 236.
        ].
        recoveredBlock221Step = 236 ifTrue: [
            recoveredBlock221Stack5 := recoveredLocal3.
            recoveredBlock221PC := 239.
        ].
        recoveredBlock221Step = 239 ifTrue: [
            recoveredBlock221Stack2 := (recoveredBlock221Stack2) importFromPath: (recoveredBlock221Stack3) components: (recoveredBlock221Stack4) importFolder: (recoveredBlock221Stack5).
            recoveredBlock221PC := 242.
        ].
        recoveredBlock221Step = 242 ifTrue: [
            (recoveredBlock221Stack2 == nil) ifTrue: [recoveredBlock221PC := 291] ifFalse: [recoveredBlock221PC := 246].
        ].
        recoveredBlock221Step = 246 ifTrue: [
            recoveredBlock221PC := 247.
        ].
        recoveredBlock221Step = 247 ifTrue: [
            recoveredBlock221Stack1 := protoItems.
            recoveredBlock221PC := 249.
        ].
        recoveredBlock221Step = 249 ifTrue: [
            recoveredBlock221Stack1 := (recoveredBlock221Stack1) values.
            recoveredBlock221PC := 251.
        ].
        recoveredBlock221Step = 251 ifTrue: [
            recoveredBlock221Stack2 := [:block28118528Arg1 | 
    | block28118528Value0 block28118528Value1 |
    block28118528Value0 := block28118528Arg1.
    block28118528Value1 := (block28118528Value0) isImportedItem.
    block28118528Value1
].
            recoveredBlock221PC := 253.
        ].
        recoveredBlock221Step = 253 ifTrue: [
            recoveredBlock221PC := 260.
        ].
        recoveredBlock221Step = 260 ifTrue: [
            recoveredBlock221Stack1 := (recoveredBlock221Stack1) select: (recoveredBlock221Stack2).
            recoveredBlock221PC := 262.
        ].
        recoveredBlock221Step = 262 ifTrue: [
            recoveredBlock221Stack2 := [:block2811854cArg1 | 
    | block2811854cValue0 block2811854cValue1 |
    block2811854cValue0 := block2811854cArg1.
    block2811854cValue1 := (block2811854cValue0) xmlOID.
    block2811854cValue1
].
            recoveredBlock221PC := 264.
        ].
        recoveredBlock221Step = 264 ifTrue: [
            recoveredBlock221PC := 272.
        ].
        recoveredBlock221Step = 272 ifTrue: [
            recoveredBlock221Stack1 := (recoveredBlock221Stack1) collect: (recoveredBlock221Stack2).
            recoveredBlock221PC := 274.
        ].
        recoveredBlock221Step = 274 ifTrue: [
            recoveredBlock221Local1 := recoveredBlock221Stack1.
            recoveredBlock221PC := 275.
        ].
        recoveredBlock221Step = 275 ifTrue: [
            recoveredBlock221Stack1 := self.
            recoveredBlock221PC := 276.
        ].
        recoveredBlock221Step = 276 ifTrue: [
            recoveredBlock221Stack2 := 'return: Success ('.
            recoveredBlock221PC := 278.
        ].
        recoveredBlock221Step = 278 ifTrue: [
            recoveredBlock221Stack3 := recoveredBlock221Local1.
            recoveredBlock221PC := 279.
        ].
        recoveredBlock221Step = 279 ifTrue: [
            recoveredBlock221Stack3 := (recoveredBlock221Stack3) size.
            recoveredBlock221PC := 281.
        ].
        recoveredBlock221Step = 281 ifTrue: [
            recoveredBlock221Stack3 := (recoveredBlock221Stack3) asString.
            recoveredBlock221PC := 283.
        ].
        recoveredBlock221Step = 283 ifTrue: [
            recoveredBlock221Stack2 := (recoveredBlock221Stack2) , (recoveredBlock221Stack3).
            recoveredBlock221PC := 284.
        ].
        recoveredBlock221Step = 284 ifTrue: [
            recoveredBlock221Stack3 := ' items imported)'.
            recoveredBlock221PC := 286.
        ].
        recoveredBlock221Step = 286 ifTrue: [
            recoveredBlock221Stack2 := (recoveredBlock221Stack2) , (recoveredBlock221Stack3).
            recoveredBlock221PC := 287.
        ].
        recoveredBlock221Step = 287 ifTrue: [
            (recoveredBlock221Stack1) logInfo: (recoveredBlock221Stack2).
            recoveredBlock221PC := 289.
        ].
        recoveredBlock221Step = 289 ifTrue: [
            recoveredBlock221Stack1 := recoveredBlock221Local1.
            recoveredBlock221PC := 290.
        ].
        recoveredBlock221Step = 290 ifTrue: [
            ^recoveredBlock221Stack1
        ].
        recoveredBlock221Step = 291 ifTrue: [
            recoveredBlock221Result := recoveredBlock221Stack1.
            recoveredBlock221Done := true.
        ].
    ].
    recoveredBlock221Result
].
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := [:recoveredBlock294Arg1 | 
    | recoveredBlock294Value0 recoveredBlock294Value1 recoveredBlock294Value2 recoveredBlock294Value3 recoveredBlock294Value4 recoveredBlock294Value5 recoveredBlock294Value6 recoveredBlock294Value7 recoveredBlock294Value8 recoveredBlock294Value9 |
    recoveredBlock294Value0 := Util.
    recoveredBlock294Value1 := recoveredBlock294Arg1.
    (recoveredBlock294Value0) writeStackTrace: (recoveredBlock294Value1).
    recoveredBlock294Value2 := Util.
    recoveredBlock294Value3 := recoveredBlock294Arg1.
    recoveredBlock294Value4 := (recoveredBlock294Value2) exceptionString: (recoveredBlock294Value3).
    (self) logError: (recoveredBlock294Value4).
    recoveredBlock294Value5 := Util.
    recoveredBlock294Value6 := recoveredBlock294Arg1.
    recoveredBlock294Value7 := (recoveredBlock294Value5) exceptionString: (recoveredBlock294Value6).
    (self) messagePrompt: (recoveredBlock294Value7).
    recoveredBlock294Value8 := recoveredBlock294Arg1.
    recoveredBlock294Value9 := (recoveredBlock294Value8) exitWith: (nil).
    recoveredBlock294Value9
].
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := 'return: Failure'.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack0) logInfo: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20607754; bytecode file offset 0xf040dc"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
findDestinationFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUseUUIDs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) uuid.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) uuidLookup.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) uuid.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemByUUID: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlOID.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionRemapOIDs.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := Util.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemByOID: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplicit.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionKeepHierarchy.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespace.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := 'Invalid name or namespace'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespace.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := $/.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) removeFirst.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) databaseAccess.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 191.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseName.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := 'Invalid component location'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) baseName.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := importFolder.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := 'Call_71010'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := SGDatabaseAccess.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 261].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 257].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := 'Cannot find item'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := ASDXMLImportIssueCantProcess.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentFile.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) file: (recoveredStack3) reason: (recoveredStack4) fatal: (recoveredStack5).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) addIssue: (recoveredStack1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFirst.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := [:recoveredBlock277Arg1 | 
    | recoveredBlock277Value0 recoveredBlock277Value1 recoveredBlock277Value2 recoveredBlock277Value3 |
    recoveredBlock277Value0 := recoveredBlock277Arg1.
    recoveredBlock277Value1 := (recoveredBlock277Value0) label.
    recoveredBlock277Value2 := recoveredLocal1.
    recoveredBlock277Value3 := (recoveredBlock277Value1) equalsIgnoringCase: (recoveredBlock277Value2).
    recoveredBlock277Value3
].
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlPathString.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := [:recoveredBlock341Arg1 | 
    | recoveredBlock341Value0 recoveredBlock341Value1 recoveredBlock341Value2 recoveredBlock341Value3 recoveredBlock341Value4 |
    recoveredBlock341Value0 := recoveredBlock341Arg1.
    recoveredBlock341Value1 := (recoveredBlock341Value0) label.
    recoveredBlock341Value2 := recoveredArg1.
    recoveredBlock341Value3 := (recoveredBlock341Value2) name.
    recoveredBlock341Value4 := (recoveredBlock341Value1) equalsIgnoringCase: (recoveredBlock341Value3).
    recoveredBlock341Value4
].
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := [:recoveredBlock368Arg1 | 
    | recoveredBlock368Local1 recoveredBlock368Stack0 recoveredBlock368Stack1 recoveredBlock368Stack2 recoveredBlock368Stack3 recoveredBlock368Stack4 recoveredBlock368Stack5 recoveredBlock368Stack6 recoveredBlock368Stack7 recoveredBlock368PC recoveredBlock368Step recoveredBlock368Done recoveredBlock368Result |
    recoveredBlock368Stack0 := self.
    recoveredBlock368PC := 374.
    recoveredBlock368Done := false.
    [recoveredBlock368Done not] whileTrue: [
        recoveredBlock368Step := recoveredBlock368PC.
        recoveredBlock368Step = 374 ifTrue: [
            recoveredBlock368Stack1 := Dictionary.
            recoveredBlock368PC := 376.
        ].
        recoveredBlock368Step = 376 ifTrue: [
            recoveredBlock368Stack1 := (recoveredBlock368Stack1) new.
            recoveredBlock368PC := 378.
        ].
        recoveredBlock368Step = 378 ifTrue: [
            recoveredBlock368Local1 := recoveredBlock368Stack1.
            recoveredBlock368PC := 381.
        ].
        recoveredBlock368Step = 381 ifTrue: [
            recoveredBlock368Stack1 := recoveredLocal3.
            recoveredBlock368PC := 384.
        ].
        recoveredBlock368Step = 384 ifTrue: [
            recoveredBlock368Stack1 := (recoveredBlock368Stack1) children.
            recoveredBlock368PC := 386.
        ].
        recoveredBlock368Step = 386 ifTrue: [
            recoveredBlock368Stack2 := [:recoveredBlock368Block386Arg1 | 
    | recoveredBlock368Block386Value0 recoveredBlock368Block386Value1 recoveredBlock368Block386Value2 recoveredBlock368Block386Value3 recoveredBlock368Block386Value4 |
    recoveredBlock368Block386Value0 := recoveredBlock368Local1.
    recoveredBlock368Block386Value1 := recoveredBlock368Block386Arg1.
    recoveredBlock368Block386Value2 := (recoveredBlock368Block386Value1) label.
    recoveredBlock368Block386Value3 := recoveredBlock368Block386Arg1.
    recoveredBlock368Block386Value4 := (recoveredBlock368Block386Value0) at: (recoveredBlock368Block386Value2) put: (recoveredBlock368Block386Value3).
    recoveredBlock368Block386Value4
].
            recoveredBlock368PC := 402.
        ].
        recoveredBlock368Step = 402 ifTrue: [
            (recoveredBlock368Stack1) do: (recoveredBlock368Stack2).
            recoveredBlock368PC := 404.
        ].
        recoveredBlock368Step = 404 ifTrue: [
            recoveredBlock368Stack1 := recoveredArg1.
            recoveredBlock368PC := 407.
        ].
        recoveredBlock368Step = 407 ifTrue: [
            recoveredBlock368Stack1 := (recoveredBlock368Stack1) xmlOID.
            recoveredBlock368PC := 409.
        ].
        recoveredBlock368Step = 409 ifTrue: [
            (recoveredBlock368Stack1 ~~ nil) ifTrue: [recoveredBlock368PC := 435] ifFalse: [recoveredBlock368PC := 412].
        ].
        recoveredBlock368Step = 412 ifTrue: [
            recoveredBlock368Stack1 := self.
            recoveredBlock368PC := 413.
        ].
        recoveredBlock368Step = 413 ifTrue: [
            recoveredBlock368Stack2 := ASDXMLImportIssueDuplicateComponent.
            recoveredBlock368PC := 415.
        ].
        recoveredBlock368Step = 415 ifTrue: [
            recoveredBlock368Stack2 := (recoveredBlock368Stack2) new.
            recoveredBlock368PC := 417.
        ].
        recoveredBlock368Step = 417 ifTrue: [
            recoveredBlock368Stack3 := recoveredArg1.
            recoveredBlock368PC := 420.
        ].
        recoveredBlock368Step = 420 ifTrue: [
            recoveredBlock368Stack4 := recoveredLocal3.
            recoveredBlock368PC := 423.
        ].
        recoveredBlock368Step = 423 ifTrue: [
            recoveredBlock368Stack5 := recoveredBlock368Local1.
            recoveredBlock368PC := 426.
        ].
        recoveredBlock368Step = 426 ifTrue: [
            recoveredBlock368Stack2 := (recoveredBlock368Stack2) initOn: (recoveredBlock368Stack3) parent: (recoveredBlock368Stack4) namespace: (recoveredBlock368Stack5).
            recoveredBlock368PC := 429.
        ].
        recoveredBlock368Step = 429 ifTrue: [
            (recoveredBlock368Stack1) addIssue: (recoveredBlock368Stack2).
            recoveredBlock368PC := 431.
        ].
        recoveredBlock368Step = 431 ifTrue: [
            recoveredBlock368Stack1 := recoveredBlock368Arg1.
            recoveredBlock368PC := 434.
        ].
        recoveredBlock368Step = 434 ifTrue: [
            ^recoveredBlock368Stack1
        ].
        recoveredBlock368Step = 435 ifTrue: [
            recoveredBlock368Stack1 := self.
            recoveredBlock368PC := 436.
        ].
        recoveredBlock368Step = 436 ifTrue: [
            recoveredBlock368Stack2 := ASDXMLImportIssueDuplicateElement.
            recoveredBlock368PC := 438.
        ].
        recoveredBlock368Step = 438 ifTrue: [
            recoveredBlock368Stack2 := (recoveredBlock368Stack2) new.
            recoveredBlock368PC := 440.
        ].
        recoveredBlock368Step = 440 ifTrue: [
            recoveredBlock368Stack3 := recoveredArg1.
            recoveredBlock368PC := 443.
        ].
        recoveredBlock368Step = 443 ifTrue: [
            recoveredBlock368Stack4 := recoveredLocal3.
            recoveredBlock368PC := 446.
        ].
        recoveredBlock368Step = 446 ifTrue: [
            recoveredBlock368Stack5 := recoveredBlock368Local1.
            recoveredBlock368PC := 449.
        ].
        recoveredBlock368Step = 449 ifTrue: [
            recoveredBlock368Stack6 := ASDAscetController.
            recoveredBlock368PC := 451.
        ].
        recoveredBlock368Step = 451 ifTrue: [
            recoveredBlock368Stack6 := (recoveredBlock368Stack6) isSCMActive.
            recoveredBlock368PC := 453.
        ].
        recoveredBlock368Step = 453 ifTrue: [
            recoveredBlock368Stack2 := (recoveredBlock368Stack2) initOn: (recoveredBlock368Stack3) parent: (recoveredBlock368Stack4) namespace: (recoveredBlock368Stack5) fatal: (recoveredBlock368Stack6).
            recoveredBlock368PC := 456.
        ].
        recoveredBlock368Step = 456 ifTrue: [
            (recoveredBlock368Stack1) addIssue: (recoveredBlock368Stack2).
            recoveredBlock368PC := 458.
        ].
        recoveredBlock368Step = 458 ifTrue: [
            recoveredBlock368Stack1 := nil.
            recoveredBlock368PC := 459.
        ].
        recoveredBlock368Step = 459 ifTrue: [
            ^recoveredBlock368Stack1
        ].
    ].
    recoveredBlock368Result
].
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2) ifOne: (recoveredStack3).
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066ffd0; bytecode file offset 0xf6ca44"
!ASDXMLImportControllerBase methodsFor: 'recovered'!
performImportSteps: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := [:recoveredBlock10Block19Arg1 :recoveredBlock10Block19Arg2 | 
    | recoveredBlock10Block19Value0 recoveredBlock10Block19Value1 recoveredBlock10Block19Value2 recoveredBlock10Block19Value3 recoveredBlock10Block19Value4 recoveredBlock10Block19Value5 recoveredBlock10Block19Value6 recoveredBlock10Block19Value7 recoveredBlock10Block19Value8 recoveredBlock10Block19Value9 recoveredBlock10Block19Value10 recoveredBlock10Block19Value11 recoveredBlock10Block19Value12 recoveredBlock10Block19Value13 recoveredBlock10Block19Value14 recoveredBlock10Block19Value15 recoveredBlock10Block19Value16 recoveredBlock10Block19Value17 recoveredBlock10Block19Value18 |
    recoveredBlock10Block19Value0 := Util.
    recoveredBlock10Block19Value1 := recoveredBlock10Block19Arg1.
    recoveredBlock10Block19Value2 := (recoveredBlock10Block19Value1) description.
    recoveredBlock10Block19Value3 := (recoveredBlock10Block19Value2) , (': ').
    recoveredBlock10Block19Value4 := recoveredBlock10Block19Arg1.
    recoveredBlock10Block19Value5 := (recoveredBlock10Block19Value4) baseName.
    recoveredBlock10Block19Value6 := (recoveredBlock10Block19Value3) , (recoveredBlock10Block19Value5).
    recoveredBlock10Block19Value7 := (recoveredBlock10Block19Value6) , ('... ').
    (recoveredBlock10Block19Value0) show: (recoveredBlock10Block19Value7).
    recoveredBlock10Block19Value8 := recoveredBlock10Block19Arg1.
    recoveredBlock10Block19Value9 := (self) performStep: (recoveredBlock10Block19Value8).
    recoveredBlock10Block19Value10 := [:recoveredBlock10Block19Block48Arg1 | 
    | recoveredBlock10Block19Block48Value0 recoveredBlock10Block19Block48Value1 recoveredBlock10Block19Block48Value2 |
    recoveredBlock10Block19Block48Value0 := recoveredLocal3.
    recoveredBlock10Block19Block48Value1 := recoveredBlock10Block19Block48Arg1.
    recoveredBlock10Block19Block48Value2 := (recoveredBlock10Block19Block48Value0) add: (recoveredBlock10Block19Block48Value1).
    recoveredBlock10Block19Block48Value2
].
    (recoveredBlock10Block19Value9) ifNotNil: (recoveredBlock10Block19Value10).
    recoveredBlock10Block19Value11 := Util.
    recoveredBlock10Block19Value12 := recoveredBlock10Block19Value11.
    (recoveredBlock10Block19Value12) show: ('done.').
    (recoveredBlock10Block19Value11) cr.
    (self) dispatchEvents.
    recoveredBlock10Block19Value13 := recoveredBlock10Arg1.
    recoveredBlock10Block19Value14 := recoveredBlock10Block19Arg2.
    recoveredBlock10Block19Value15 := recoveredArg1.
    recoveredBlock10Block19Value16 := (recoveredBlock10Block19Value15) size.
    recoveredBlock10Block19Value17 := (recoveredBlock10Block19Value14) / (recoveredBlock10Block19Value16).
    recoveredBlock10Block19Value18 := (recoveredBlock10Block19Value13) fractionComplete: (recoveredBlock10Block19Value17).
    recoveredBlock10Block19Value18
].
    recoveredBlock10Value2 := (recoveredBlock10Value0) doWithIndex: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'Analyzing import data'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := protoItems.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := [:recoveredBlock100Arg1 | 
    | recoveredBlock100Value0 recoveredBlock100Value1 recoveredBlock100Value2 |
    recoveredBlock100Value0 := recoveredBlock100Arg1.
    recoveredBlock100Value1 := recoveredLocal3.
    recoveredBlock100Value2 := (recoveredBlock100Value0) resolveReferences: (self) missing: (recoveredBlock100Value1).
    recoveredBlock100Value2
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:block28126d30Arg1 | 
    | block28126d30Value0 block28126d30Value1 block28126d30Value2 |
    block28126d30Value0 := block28126d30Arg1.
    block28126d30Value1 := (block28126d30Value0) protoItem.
    block28126d30Value2 := (block28126d30Value1) namespace.
    block28126d30Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 |
    recoveredBlock140Value0 := recoveredBlock140Arg1.
    recoveredBlock140Value1 := recoveredLocal1.
    recoveredBlock140Value2 := (self) canImport: (recoveredBlock140Value0) folders: (recoveredBlock140Value1).
    recoveredBlock140Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Local1 recoveredBlock169Stack0 recoveredBlock169Stack1 recoveredBlock169Stack2 recoveredBlock169Stack3 recoveredBlock169Stack4 recoveredBlock169PC recoveredBlock169Step recoveredBlock169Done recoveredBlock169Result |
    recoveredBlock169Stack0 := self.
    recoveredBlock169PC := 176.
    recoveredBlock169Done := false.
    [recoveredBlock169Done not] whileTrue: [
        recoveredBlock169Step := recoveredBlock169PC.
        recoveredBlock169Step = 176 ifTrue: [
            recoveredBlock169Stack0 := (recoveredBlock169Stack0) library.
            recoveredBlock169PC := 178.
        ].
        recoveredBlock169Step = 178 ifTrue: [
            recoveredBlock169Stack0 := (recoveredBlock169Stack0) location.
            recoveredBlock169PC := 180.
        ].
        recoveredBlock169Step = 180 ifTrue: [
            recoveredBlock169Stack1 := self.
            recoveredBlock169PC := 181.
        ].
        recoveredBlock169Step = 181 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 182.
        ].
        recoveredBlock169Step = 182 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) protoItem.
            recoveredBlock169PC := 184.
        ].
        recoveredBlock169Step = 184 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) pathFor: (recoveredBlock169Stack2).
            recoveredBlock169PC := 186.
        ].
        recoveredBlock169Step = 186 ifTrue: [
            recoveredBlock169Stack0 := (recoveredBlock169Stack0) , (recoveredBlock169Stack1).
            recoveredBlock169PC := 188.
        ].
        recoveredBlock169Step = 188 ifTrue: [
            recoveredBlock169Local1 := recoveredBlock169Stack0.
            recoveredBlock169PC := 189.
        ].
        recoveredBlock169Step = 189 ifTrue: [
            recoveredBlock169Stack0 := nil.
            recoveredBlock169PC := 190.
        ].
        recoveredBlock169Step = 190 ifTrue: [
            recoveredBlock169Stack1 := recoveredBlock169Local1.
            recoveredBlock169PC := 191.
        ].
        recoveredBlock169Step = 191 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) size.
            recoveredBlock169PC := 193.
        ].
        recoveredBlock169Step = 193 ifTrue: [
            recoveredBlock169Stack2 := '.dp.implementationTypes.amd'.
            recoveredBlock169PC := 195.
        ].
        recoveredBlock169Step = 195 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) size.
            recoveredBlock169PC := 197.
        ].
        recoveredBlock169Step = 197 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) + (recoveredBlock169Stack2).
            recoveredBlock169PC := 198.
        ].
        recoveredBlock169Step = 198 ifTrue: [
            recoveredBlock169Stack2 := Util.
            recoveredBlock169PC := 200.
        ].
        recoveredBlock169Step = 200 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) maxPathLen.
            recoveredBlock169PC := 202.
        ].
        recoveredBlock169Step = 202 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) > (recoveredBlock169Stack2).
            recoveredBlock169PC := 203.
        ].
        recoveredBlock169Step = 203 ifTrue: [
            (recoveredBlock169Stack1) ifTrue: [recoveredBlock169PC := 206] ifFalse: [recoveredBlock169PC := 237].
        ].
        recoveredBlock169Step = 206 ifTrue: [
            recoveredBlock169PC := 207.
        ].
        recoveredBlock169Step = 207 ifTrue: [
            recoveredBlock169Stack0 := self.
            recoveredBlock169PC := 208.
        ].
        recoveredBlock169Step = 208 ifTrue: [
            recoveredBlock169Stack1 := recoveredBlock169Arg1.
            recoveredBlock169PC := 209.
        ].
        recoveredBlock169Step = 209 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 210.
        ].
        recoveredBlock169Step = 210 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) baseName.
            recoveredBlock169PC := 212.
        ].
        recoveredBlock169Step = 212 ifTrue: [
            recoveredBlock169Stack3 := '.main.'.
            recoveredBlock169PC := 214.
        ].
        recoveredBlock169Step = 214 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) , (recoveredBlock169Stack3).
            recoveredBlock169PC := 216.
        ].
        recoveredBlock169Step = 216 ifTrue: [
            recoveredBlock169Stack3 := recoveredBlock169Arg1.
            recoveredBlock169PC := 217.
        ].
        recoveredBlock169Step = 217 ifTrue: [
            recoveredBlock169Stack3 := (recoveredBlock169Stack3) extension.
            recoveredBlock169PC := 219.
        ].
        recoveredBlock169Step = 219 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) , (recoveredBlock169Stack3).
            recoveredBlock169PC := 221.
        ].
        recoveredBlock169Step = 221 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) qualifyBaseName: (recoveredBlock169Stack2).
            recoveredBlock169PC := 223.
        ].
        recoveredBlock169Step = 223 ifTrue: [
            (recoveredBlock169Stack0) currentFile: (recoveredBlock169Stack1).
            recoveredBlock169PC := 225.
        ].
        recoveredBlock169Step = 225 ifTrue: [
            recoveredBlock169Stack0 := self.
            recoveredBlock169PC := 226.
        ].
        recoveredBlock169Step = 226 ifTrue: [
            recoveredBlock169Stack1 := ASDXMLImportIssueLongComponentPath.
            recoveredBlock169PC := 228.
        ].
        recoveredBlock169Step = 228 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) new.
            recoveredBlock169PC := 229.
        ].
        recoveredBlock169Step = 229 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Arg1.
            recoveredBlock169PC := 230.
        ].
        recoveredBlock169Step = 230 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) protoItem.
            recoveredBlock169PC := 232.
        ].
        recoveredBlock169Step = 232 ifTrue: [
            recoveredBlock169Stack3 := recoveredBlock169Local1.
            recoveredBlock169PC := 233.
        ].
        recoveredBlock169Step = 233 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) initOn: (recoveredBlock169Stack2) path: (recoveredBlock169Stack3).
            recoveredBlock169PC := 235.
        ].
        recoveredBlock169Step = 235 ifTrue: [
            recoveredBlock169Stack0 := (recoveredBlock169Stack0) addIssue: (recoveredBlock169Stack1).
            recoveredBlock169PC := 237.
        ].
        recoveredBlock169Step = 237 ifTrue: [
            recoveredBlock169Result := recoveredBlock169Stack0.
            recoveredBlock169Done := true.
        ].
    ].
    recoveredBlock169Result
].
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := [:block28126d54Arg1 | 
    | block28126d54Value0 block28126d54Value1 block28126d54Value2 block28126d54Value3 |
    block28126d54Value0 := block28126d54Arg1.
    block28126d54Value1 := (block28126d54Value0) protoItem.
    block28126d54Value2 := (block28126d54Value1) replaces.
    block28126d54Value3 := (block28126d54Value2) notNil.
    block28126d54Value3
].
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) selecttemsToOverwrite: (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := [
    | block28126d78Value0 block28126d78Value1 |
    block28126d78Value0 := ImportAborted.
    block28126d78Value1 := (block28126d78Value0) signalWith: ('Import aborted').
    block28126d78Value1
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSizeOfItems: (recoveredStack1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 290] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := ImportAborted.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := 'Import aborted'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) surveyDone: (recoveredStack1).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Value0 recoveredBlock297Value1 recoveredBlock297Value2 |
    recoveredBlock297Value0 := recoveredLocal3.
    recoveredBlock297Value1 := [:recoveredBlock297Block307Arg1 :recoveredBlock297Block307Arg2 | 
    | recoveredBlock297Block307Local1 recoveredBlock297Block307Stack0 recoveredBlock297Block307Stack1 recoveredBlock297Block307Stack2 recoveredBlock297Block307Stack3 recoveredBlock297Block307Stack4 recoveredBlock297Block307PC recoveredBlock297Block307Step recoveredBlock297Block307Done recoveredBlock297Block307Result |
    recoveredBlock297Block307Stack0 := self.
    recoveredBlock297Block307PC := 314.
    recoveredBlock297Block307Done := false.
    [recoveredBlock297Block307Done not] whileTrue: [
        recoveredBlock297Block307Step := recoveredBlock297Block307PC.
        recoveredBlock297Block307Step = 314 ifTrue: [
            recoveredBlock297Block307Stack1 := Util.
            recoveredBlock297Block307PC := 316.
        ].
        recoveredBlock297Block307Step = 316 ifTrue: [
            recoveredBlock297Block307Stack2 := recoveredBlock297Block307Arg1.
            recoveredBlock297Block307PC := 317.
        ].
        recoveredBlock297Block307Step = 317 ifTrue: [
            recoveredBlock297Block307Stack2 := (recoveredBlock297Block307Stack2) description.
            recoveredBlock297Block307PC := 318.
        ].
        recoveredBlock297Block307Step = 318 ifTrue: [
            recoveredBlock297Block307Stack3 := ': '.
            recoveredBlock297Block307PC := 320.
        ].
        recoveredBlock297Block307Step = 320 ifTrue: [
            recoveredBlock297Block307Stack2 := (recoveredBlock297Block307Stack2) , (recoveredBlock297Block307Stack3).
            recoveredBlock297Block307PC := 322.
        ].
        recoveredBlock297Block307Step = 322 ifTrue: [
            recoveredBlock297Block307Stack3 := recoveredBlock297Block307Arg1.
            recoveredBlock297Block307PC := 323.
        ].
        recoveredBlock297Block307Step = 323 ifTrue: [
            recoveredBlock297Block307Stack3 := (recoveredBlock297Block307Stack3) baseName.
            recoveredBlock297Block307PC := 325.
        ].
        recoveredBlock297Block307Step = 325 ifTrue: [
            recoveredBlock297Block307Stack2 := (recoveredBlock297Block307Stack2) , (recoveredBlock297Block307Stack3).
            recoveredBlock297Block307PC := 327.
        ].
        recoveredBlock297Block307Step = 327 ifTrue: [
            recoveredBlock297Block307Stack3 := '... '.
            recoveredBlock297Block307PC := 329.
        ].
        recoveredBlock297Block307Step = 329 ifTrue: [
            recoveredBlock297Block307Stack2 := (recoveredBlock297Block307Stack2) , (recoveredBlock297Block307Stack3).
            recoveredBlock297Block307PC := 331.
        ].
        recoveredBlock297Block307Step = 331 ifTrue: [
            (recoveredBlock297Block307Stack1) show: (recoveredBlock297Block307Stack2).
            recoveredBlock297Block307PC := 333.
        ].
        recoveredBlock297Block307Step = 333 ifTrue: [
            recoveredBlock297Block307Stack1 := recoveredBlock297Block307Arg1.
            recoveredBlock297Block307PC := 334.
        ].
        recoveredBlock297Block307Step = 334 ifTrue: [
            recoveredBlock297Block307Local1 := recoveredBlock297Block307Stack1.
            recoveredBlock297Block307PC := 335.
        ].
        recoveredBlock297Block307Step = 335 ifTrue: [
            recoveredBlock297Block307PC := 343.
        ].
        recoveredBlock297Block307Step = 338 ifTrue: [
            recoveredBlock297Block307Stack1 := self.
            recoveredBlock297Block307PC := 339.
        ].
        recoveredBlock297Block307Step = 339 ifTrue: [
            recoveredBlock297Block307Stack2 := recoveredBlock297Block307Local1.
            recoveredBlock297Block307PC := 340.
        ].
        recoveredBlock297Block307Step = 340 ifTrue: [
            recoveredBlock297Block307Stack1 := (recoveredBlock297Block307Stack1) performStep: (recoveredBlock297Block307Stack2).
            recoveredBlock297Block307PC := 342.
        ].
        recoveredBlock297Block307Step = 342 ifTrue: [
            recoveredBlock297Block307Local1 := recoveredBlock297Block307Stack1.
            recoveredBlock297Block307PC := 343.
        ].
        recoveredBlock297Block307Step = 343 ifTrue: [
            recoveredBlock297Block307Stack1 := recoveredBlock297Block307Local1.
            recoveredBlock297Block307PC := 344.
        ].
        recoveredBlock297Block307Step = 344 ifTrue: [
            (recoveredBlock297Block307Stack1 == nil) ifTrue: [recoveredBlock297Block307PC := 355] ifFalse: [recoveredBlock297Block307PC := 348].
        ].
        recoveredBlock297Block307Step = 348 ifTrue: [
            recoveredBlock297Block307Stack1 := recoveredBlock297Block307Local1.
            recoveredBlock297Block307PC := 349.
        ].
        recoveredBlock297Block307Step = 349 ifTrue: [
            recoveredBlock297Block307Stack1 := (recoveredBlock297Block307Stack1) protoItem.
            recoveredBlock297Block307PC := 351.
        ].
        recoveredBlock297Block307Step = 351 ifTrue: [
            recoveredBlock297Block307Stack1 := (recoveredBlock297Block307Stack1) hasErrors.
            recoveredBlock297Block307PC := 353.
        ].
        recoveredBlock297Block307Step = 353 ifTrue: [
            (recoveredBlock297Block307Stack1) ifTrue: [recoveredBlock297Block307PC := 355] ifFalse: [recoveredBlock297Block307PC := 338].
        ].
        recoveredBlock297Block307Step = 355 ifTrue: [
            recoveredBlock297Block307Stack1 := Util.
            recoveredBlock297Block307PC := 357.
        ].
        recoveredBlock297Block307Step = 357 ifTrue: [
            recoveredBlock297Block307Stack2 := recoveredBlock297Block307Stack1.
            recoveredBlock297Block307PC := 358.
        ].
        recoveredBlock297Block307Step = 358 ifTrue: [
            recoveredBlock297Block307Stack3 := 'done.'.
            recoveredBlock297Block307PC := 360.
        ].
        recoveredBlock297Block307Step = 360 ifTrue: [
            (recoveredBlock297Block307Stack2) show: (recoveredBlock297Block307Stack3).
            recoveredBlock297Block307PC := 362.
        ].
        recoveredBlock297Block307Step = 362 ifTrue: [
            (recoveredBlock297Block307Stack1) cr.
            recoveredBlock297Block307PC := 364.
        ].
        recoveredBlock297Block307Step = 364 ifTrue: [
            (recoveredBlock297Block307Stack0) dispatchEvents.
            recoveredBlock297Block307PC := 366.
        ].
        recoveredBlock297Block307Step = 366 ifTrue: [
            recoveredBlock297Block307Stack0 := recoveredBlock297Arg1.
            recoveredBlock297Block307PC := 369.
        ].
        recoveredBlock297Block307Step = 369 ifTrue: [
            recoveredBlock297Block307Stack1 := recoveredBlock297Block307Arg2.
            recoveredBlock297Block307PC := 370.
        ].
        recoveredBlock297Block307Step = 370 ifTrue: [
            recoveredBlock297Block307Stack2 := recoveredLocal3.
            recoveredBlock297Block307PC := 373.
        ].
        recoveredBlock297Block307Step = 373 ifTrue: [
            recoveredBlock297Block307Stack2 := (recoveredBlock297Block307Stack2) size.
            recoveredBlock297Block307PC := 375.
        ].
        recoveredBlock297Block307Step = 375 ifTrue: [
            recoveredBlock297Block307Stack1 := (recoveredBlock297Block307Stack1) / (recoveredBlock297Block307Stack2).
            recoveredBlock297Block307PC := 377.
        ].
        recoveredBlock297Block307Step = 377 ifTrue: [
            recoveredBlock297Block307Stack0 := (recoveredBlock297Block307Stack0) fractionComplete: (recoveredBlock297Block307Stack1).
            recoveredBlock297Block307PC := 379.
        ].
        recoveredBlock297Block307Step = 379 ifTrue: [
            recoveredBlock297Block307Result := recoveredBlock297Block307Stack0.
            recoveredBlock297Block307Done := true.
        ].
    ].
    recoveredBlock297Block307Result
].
    recoveredBlock297Value2 := (recoveredBlock297Value0) doWithIndex: (recoveredBlock297Value1).
    recoveredBlock297Value2
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'Importing files'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := protoItems.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := [:block28126d9cArg1 | 
    | block28126d9cStack0 block28126d9cStack1 block28126d9cStack2 block28126d9cStack3 block28126d9cPC block28126d9cStep block28126d9cDone block28126d9cResult |
    block28126d9cStack0 := self.
    block28126d9cPC := 4.
    block28126d9cDone := false.
    [block28126d9cDone not] whileTrue: [
        block28126d9cStep := block28126d9cPC.
        block28126d9cStep = 4 ifTrue: [
            block28126d9cStack1 := false.
            block28126d9cPC := 5.
        ].
        block28126d9cStep = 5 ifTrue: [
            block28126d9cStack2 := block28126d9cArg1.
            block28126d9cPC := 6.
        ].
        block28126d9cStep = 6 ifTrue: [
            block28126d9cStack2 := (block28126d9cStack2) baseName.
            block28126d9cPC := 8.
        ].
        block28126d9cStep = 8 ifTrue: [
            (block28126d9cStack2 == nil) ifTrue: [block28126d9cPC := 17] ifFalse: [block28126d9cPC := 12].
        ].
        block28126d9cStep = 12 ifTrue: [
            block28126d9cPC := 13.
        ].
        block28126d9cStep = 13 ifTrue: [
            block28126d9cStack1 := block28126d9cArg1.
            block28126d9cPC := 14.
        ].
        block28126d9cStep = 14 ifTrue: [
            block28126d9cStack1 := (block28126d9cStack1) hasErrors.
            block28126d9cPC := 16.
        ].
        block28126d9cStep = 16 ifTrue: [
            block28126d9cStack1 := (block28126d9cStack1) not.
            block28126d9cPC := 17.
        ].
        block28126d9cStep = 17 ifTrue: [
            block28126d9cResult := block28126d9cStack1.
            block28126d9cDone := true.
        ].
    ].
    block28126d9cResult
].
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := [:block28126dc0Arg1 :block28126dc0Arg2 | 
    | block28126dc0Value0 block28126dc0Value1 block28126dc0Value2 block28126dc0Value3 block28126dc0Value4 |
    block28126dc0Value0 := block28126dc0Arg1.
    block28126dc0Value1 := (block28126dc0Value0) baseName.
    block28126dc0Value2 := block28126dc0Arg2.
    block28126dc0Value3 := (block28126dc0Value2) baseName.
    block28126dc0Value4 := (block28126dc0Value1) <= (block28126dc0Value3).
    block28126dc0Value4
].
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDiscardExistingImpls.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 468] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack1 := [:recoveredBlock451Arg1 | 
    | recoveredBlock451Value0 recoveredBlock451Value1 |
    recoveredBlock451Value0 := recoveredBlock451Arg1.
    recoveredBlock451Value1 := (recoveredBlock451Value0) mergeExistingImpls: (self).
    recoveredBlock451Value1
].
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := 'There are warnings (see monitor for details). Commit anyway?'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := 'Up to now nothing has been done to your database'.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack0) handleIssues: (recoveredStack1).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := [:block28126de4Arg1 | 
    | block28126de4Stack0 block28126de4Stack1 block28126de4Stack2 block28126de4Stack3 block28126de4PC block28126de4Step block28126de4Done block28126de4Result |
    block28126de4Stack0 := self.
    block28126de4PC := 4.
    block28126de4Done := false.
    [block28126de4Done not] whileTrue: [
        block28126de4Step := block28126de4PC.
        block28126de4Step = 4 ifTrue: [
            block28126de4Stack1 := false.
            block28126de4PC := 5.
        ].
        block28126de4Step = 5 ifTrue: [
            block28126de4Stack2 := block28126de4Arg1.
            block28126de4PC := 6.
        ].
        block28126de4Step = 6 ifTrue: [
            block28126de4Stack2 := (block28126de4Stack2) hasErrors.
            block28126de4PC := 8.
        ].
        block28126de4Step = 8 ifTrue: [
            (block28126de4Stack2) ifTrue: [block28126de4PC := 20] ifFalse: [block28126de4PC := 12].
        ].
        block28126de4Step = 12 ifTrue: [
            block28126de4PC := 13.
        ].
        block28126de4Step = 13 ifTrue: [
            block28126de4Stack1 := block28126de4Arg1.
            block28126de4PC := 14.
        ].
        block28126de4Step = 14 ifTrue: [
            block28126de4Stack1 := (block28126de4Stack1) thing.
            block28126de4PC := 19.
        ].
        block28126de4Step = 19 ifTrue: [
            block28126de4Stack1 := (block28126de4Stack1) notNil.
            block28126de4PC := 20.
        ].
        block28126de4Step = 20 ifTrue: [
            block28126de4Result := block28126de4Stack1.
            block28126de4Done := true.
        ].
    ].
    block28126de4Result
].
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := [:recoveredBlock517Arg1 | 
    | recoveredBlock517Value0 recoveredBlock517Value1 recoveredBlock517Value2 |
    recoveredBlock517Value0 := recoveredLocal2.
    recoveredBlock517Value1 := [:recoveredBlock517Block527Arg1 :recoveredBlock517Block527Arg2 | 
    | recoveredBlock517Block527Local1 recoveredBlock517Block527Local2 recoveredBlock517Block527Local3 recoveredBlock517Block527Local4 recoveredBlock517Block527Stack0 recoveredBlock517Block527Stack1 recoveredBlock517Block527Stack2 recoveredBlock517Block527Stack3 recoveredBlock517Block527Stack4 recoveredBlock517Block527PC recoveredBlock517Block527Step recoveredBlock517Block527Done recoveredBlock517Block527Result |
    recoveredBlock517Block527Stack0 := self.
    recoveredBlock517Block527PC := 534.
    recoveredBlock517Block527Done := false.
    [recoveredBlock517Block527Done not] whileTrue: [
        recoveredBlock517Block527Step := recoveredBlock517Block527PC.
        recoveredBlock517Block527Step = 534 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Arg1.
            recoveredBlock517Block527PC := 537.
        ].
        recoveredBlock517Block527Step = 537 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) namespace.
            recoveredBlock517Block527PC := 539.
        ].
        recoveredBlock517Block527Step = 539 ifTrue: [
            recoveredBlock517Block527Stack2 := '.defaultProject'.
            recoveredBlock517Block527PC := 542.
        ].
        recoveredBlock517Block527Step = 542 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) = (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 543.
        ].
        recoveredBlock517Block527Step = 543 ifTrue: [
            (recoveredBlock517Block527Stack1) ifTrue: [recoveredBlock517Block527PC := 546] ifFalse: [recoveredBlock517Block527PC := 551].
        ].
        recoveredBlock517Block527Step = 546 ifTrue: [
            recoveredBlock517Block527Stack1 := self.
            recoveredBlock517Block527PC := 547.
        ].
        recoveredBlock517Block527Step = 547 ifTrue: [
            (recoveredBlock517Block527Stack1) etasDevHalt.
            recoveredBlock517Block527PC := 551.
        ].
        recoveredBlock517Block527Step = 551 ifTrue: [
            recoveredBlock517Block527Stack1 := nil.
            recoveredBlock517Block527PC := 552.
        ].
        recoveredBlock517Block527Step = 552 ifTrue: [
            recoveredBlock517Block527Local3 := recoveredBlock517Block527Stack1.
            recoveredBlock517Block527PC := 555.
        ].
        recoveredBlock517Block527Step = 555 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Arg1.
            recoveredBlock517Block527PC := 558.
        ].
        recoveredBlock517Block527Step = 558 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) replaces.
            recoveredBlock517Block527PC := 560.
        ].
        recoveredBlock517Block527Step = 560 ifTrue: [
            recoveredBlock517Block527Local4 := recoveredBlock517Block527Stack1.
            recoveredBlock517Block527PC := 563.
        ].
        recoveredBlock517Block527Step = 563 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Local4.
            recoveredBlock517Block527PC := 566.
        ].
        recoveredBlock517Block527Step = 566 ifTrue: [
            (recoveredBlock517Block527Stack1 == nil) ifTrue: [recoveredBlock517Block527PC := 724] ifFalse: [recoveredBlock517Block527PC := 570].
        ].
        recoveredBlock517Block527Step = 570 ifTrue: [
            recoveredBlock517Block527Stack1 := ASDAscetController.
            recoveredBlock517Block527PC := 574.
        ].
        recoveredBlock517Block527Step = 574 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) isSCMActive.
            recoveredBlock517Block527PC := 579.
        ].
        recoveredBlock517Block527Step = 579 ifTrue: [
            (recoveredBlock517Block527Stack1) ifTrue: [recoveredBlock517Block527PC := 582] ifFalse: [recoveredBlock517Block527PC := 592].
        ].
        recoveredBlock517Block527Step = 582 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Local4.
            recoveredBlock517Block527PC := 585.
        ].
        recoveredBlock517Block527Step = 585 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) scmXMLImportOverwriteHook.
            recoveredBlock517Block527PC := 589.
        ].
        recoveredBlock517Block527Step = 589 ifTrue: [
            recoveredBlock517Block527Local3 := recoveredBlock517Block527Stack1.
            recoveredBlock517Block527PC := 592.
        ].
        recoveredBlock517Block527Step = 592 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Local4.
            recoveredBlock517Block527PC := 595.
        ].
        recoveredBlock517Block527Step = 595 ifTrue: [
            recoveredBlock517Block527Stack2 := [:recoveredBlock517Block527Block595Arg1 | 
    (self) etasDevHalt.
    nil
].
            recoveredBlock517Block527PC := 609.
        ].
        recoveredBlock517Block527Step = 609 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) getObjectIfUndefined: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 613.
        ].
        recoveredBlock517Block527Step = 613 ifTrue: [
            recoveredBlock517Block527Stack2 := [:block28126e08Arg1 | 
    | block28126e08Value0 block28126e08Value1 |
    block28126e08Value0 := block28126e08Arg1.
    block28126e08Value1 := (block28126e08Value0) removeFromParentWithCommit.
    block28126e08Value1
].
            recoveredBlock517Block527PC := 616.
        ].
        recoveredBlock517Block527Step = 616 ifTrue: [
            recoveredBlock517Block527PC := 626.
        ].
        recoveredBlock517Block527Step = 626 ifTrue: [
            (recoveredBlock517Block527Stack1) ifNotNil: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 628.
        ].
        recoveredBlock517Block527Step = 628 ifTrue: [
            recoveredBlock517Block527Stack1 := self.
            recoveredBlock517Block527PC := 629.
        ].
        recoveredBlock517Block527Step = 629 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) library.
            recoveredBlock517Block527PC := 631.
        ].
        recoveredBlock517Block527Step = 631 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) getDBInterfaceGlobal.
            recoveredBlock517Block527PC := 635.
        ].
        recoveredBlock517Block527Step = 635 ifTrue: [
            recoveredBlock517Block527Stack2 := recoveredBlock517Block527Local4.
            recoveredBlock517Block527PC := 638.
        ].
        recoveredBlock517Block527Step = 638 ifTrue: [
            recoveredBlock517Block527Stack2 := (recoveredBlock517Block527Stack2) dbObject.
            recoveredBlock517Block527PC := 643.
        ].
        recoveredBlock517Block527Step = 643 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) aboutToOverwriteItem: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 647.
        ].
        recoveredBlock517Block527Step = 647 ifTrue: [
            recoveredBlock517Block527Local2 := recoveredBlock517Block527Stack1.
            recoveredBlock517Block527PC := 650.
        ].
        recoveredBlock517Block527Step = 650 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Local4.
            recoveredBlock517Block527PC := 653.
        ].
        recoveredBlock517Block527Step = 653 ifTrue: [
            recoveredBlock517Block527Stack2 := Set.
            recoveredBlock517Block527PC := 656.
        ].
        recoveredBlock517Block527Step = 656 ifTrue: [
            recoveredBlock517Block527Stack2 := (recoveredBlock517Block527Stack2) new.
            recoveredBlock517Block527PC := 657.
        ].
        recoveredBlock517Block527Step = 657 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) xmlCollectDependent: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 661.
        ].
        recoveredBlock517Block527Step = 661 ifTrue: [
            recoveredBlock517Block527Stack2 := [:recoveredBlock517Block527Block661Arg1 | 
    | recoveredBlock517Block527Block661Stack0 recoveredBlock517Block527Block661Stack1 recoveredBlock517Block527Block661Stack2 recoveredBlock517Block527Block661Stack3 recoveredBlock517Block527Block661PC recoveredBlock517Block527Block661Step recoveredBlock517Block527Block661Done recoveredBlock517Block527Block661Result |
    recoveredBlock517Block527Block661Stack0 := nil.
    recoveredBlock517Block527Block661PC := 668.
    recoveredBlock517Block527Block661Done := false.
    [recoveredBlock517Block527Block661Done not] whileTrue: [
        recoveredBlock517Block527Block661Step := recoveredBlock517Block527Block661PC.
        recoveredBlock517Block527Block661Step = 668 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := nil.
            recoveredBlock517Block527Block661PC := 669.
        ].
        recoveredBlock517Block527Block661Step = 669 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := recoveredBlock517Block527Block661Arg1.
            recoveredBlock517Block527Block661PC := 670.
        ].
        recoveredBlock517Block527Block661Step = 670 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := (recoveredBlock517Block527Block661Stack2) rawGetObject.
            recoveredBlock517Block527Block661PC := 675.
        ].
        recoveredBlock517Block527Block661Step = 675 ifTrue: [
            (recoveredBlock517Block527Block661Stack2 == nil) ifTrue: [recoveredBlock517Block527Block661PC := 721] ifFalse: [recoveredBlock517Block527Block661PC := 678].
        ].
        recoveredBlock517Block527Block661Step = 678 ifTrue: [
            recoveredBlock517Block527Block661PC := 679.
        ].
        recoveredBlock517Block527Block661Step = 679 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := recoveredBlock517Block527Block661Arg1.
            recoveredBlock517Block527Block661PC := 680.
        ].
        recoveredBlock517Block527Block661Step = 680 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := [].
            recoveredBlock517Block527Block661PC := 684.
        ].
        recoveredBlock517Block527Block661Step = 684 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := (recoveredBlock517Block527Block661Stack1) getObjectIfUndefined: (recoveredBlock517Block527Block661Stack2).
            recoveredBlock517Block527Block661PC := 689.
        ].
        recoveredBlock517Block527Block661Step = 689 ifTrue: [
            recoveredBlock517Block527Local1 := recoveredBlock517Block527Block661Stack1.
            recoveredBlock517Block527Block661PC := 692.
        ].
        recoveredBlock517Block527Block661Step = 692 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := nil.
            recoveredBlock517Block527Block661PC := 693.
        ].
        recoveredBlock517Block527Block661Step = 693 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := recoveredBlock517Block527Local1.
            recoveredBlock517Block527Block661PC := 696.
        ].
        recoveredBlock517Block527Block661Step = 696 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := (recoveredBlock517Block527Block661Stack2) isMetaData.
            recoveredBlock517Block527Block661PC := 701.
        ].
        recoveredBlock517Block527Block661Step = 701 ifTrue: [
            (recoveredBlock517Block527Block661Stack2) ifTrue: [recoveredBlock517Block527Block661PC := 721] ifFalse: [recoveredBlock517Block527Block661PC := 704].
        ].
        recoveredBlock517Block527Block661Step = 704 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := recoveredBlock517Block527Local1.
            recoveredBlock517Block527Block661PC := 707.
        ].
        recoveredBlock517Block527Block661Step = 707 ifTrue: [
            recoveredBlock517Block527Block661Stack2 := (recoveredBlock517Block527Block661Stack2) isSCMData.
            recoveredBlock517Block527Block661PC := 711.
        ].
        recoveredBlock517Block527Block661Step = 711 ifTrue: [
            (recoveredBlock517Block527Block661Stack2) ifTrue: [recoveredBlock517Block527Block661PC := 721] ifFalse: [recoveredBlock517Block527Block661PC := 714].
        ].
        recoveredBlock517Block527Block661Step = 714 ifTrue: [
            recoveredBlock517Block527Block661PC := 715.
        ].
        recoveredBlock517Block527Block661Step = 715 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := recoveredBlock517Block527Block661Arg1.
            recoveredBlock517Block527Block661PC := 716.
        ].
        recoveredBlock517Block527Block661Step = 716 ifTrue: [
            recoveredBlock517Block527Block661Stack1 := (recoveredBlock517Block527Block661Stack1) deleteOnly.
            recoveredBlock517Block527Block661PC := 721.
        ].
        recoveredBlock517Block527Block661Step = 721 ifTrue: [
            recoveredBlock517Block527Block661Result := recoveredBlock517Block527Block661Stack1.
            recoveredBlock517Block527Block661Done := true.
        ].
    ].
    recoveredBlock517Block527Block661Result
].
            recoveredBlock517Block527PC := 722.
        ].
        recoveredBlock517Block527Step = 722 ifTrue: [
            (recoveredBlock517Block527Stack1) do: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 724.
        ].
        recoveredBlock517Block527Step = 724 ifTrue: [
            recoveredBlock517Block527Stack1 := Util.
            recoveredBlock517Block527PC := 726.
        ].
        recoveredBlock517Block527Step = 726 ifTrue: [
            recoveredBlock517Block527Stack2 := 'Committing '.
            recoveredBlock517Block527PC := 730.
        ].
        recoveredBlock517Block527Step = 730 ifTrue: [
            recoveredBlock517Block527Stack3 := recoveredBlock517Block527Arg1.
            recoveredBlock517Block527PC := 733.
        ].
        recoveredBlock517Block527Step = 733 ifTrue: [
            recoveredBlock517Block527Stack3 := (recoveredBlock517Block527Stack3) baseName.
            recoveredBlock517Block527PC := 735.
        ].
        recoveredBlock517Block527Step = 735 ifTrue: [
            recoveredBlock517Block527Stack2 := (recoveredBlock517Block527Stack2) , (recoveredBlock517Block527Stack3).
            recoveredBlock517Block527PC := 737.
        ].
        recoveredBlock517Block527Step = 737 ifTrue: [
            recoveredBlock517Block527Stack3 := '... '.
            recoveredBlock517Block527PC := 739.
        ].
        recoveredBlock517Block527Step = 739 ifTrue: [
            recoveredBlock517Block527Stack2 := (recoveredBlock517Block527Stack2) , (recoveredBlock517Block527Stack3).
            recoveredBlock517Block527PC := 741.
        ].
        recoveredBlock517Block527Step = 741 ifTrue: [
            (recoveredBlock517Block527Stack1) show: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 743.
        ].
        recoveredBlock517Block527Step = 743 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Arg1.
            recoveredBlock517Block527PC := 746.
        ].
        recoveredBlock517Block527Step = 746 ifTrue: [
            recoveredBlock517Block527Stack2 := self.
            recoveredBlock517Block527PC := 747.
        ].
        recoveredBlock517Block527Step = 747 ifTrue: [
            (recoveredBlock517Block527Stack1) commit: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 751.
        ].
        recoveredBlock517Block527Step = 751 ifTrue: [
            recoveredBlock517Block527Stack1 := ASDAscetController.
            recoveredBlock517Block527PC := 754.
        ].
        recoveredBlock517Block527Step = 754 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) isSCMActive.
            recoveredBlock517Block527PC := 759.
        ].
        recoveredBlock517Block527Step = 759 ifTrue: [
            (recoveredBlock517Block527Stack1) ifTrue: [recoveredBlock517Block527PC := 762] ifFalse: [recoveredBlock517Block527PC := 777].
        ].
        recoveredBlock517Block527Step = 762 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Arg1.
            recoveredBlock517Block527PC := 765.
        ].
        recoveredBlock517Block527Step = 765 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) thing.
            recoveredBlock517Block527PC := 769.
        ].
        recoveredBlock517Block527Step = 769 ifTrue: [
            recoveredBlock517Block527Stack2 := recoveredBlock517Block527Local2.
            recoveredBlock517Block527PC := 772.
        ].
        recoveredBlock517Block527Step = 772 ifTrue: [
            (recoveredBlock517Block527Stack1) scmXMLImportHook: (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 777.
        ].
        recoveredBlock517Block527Step = 777 ifTrue: [
            recoveredBlock517Block527Stack1 := Util.
            recoveredBlock517Block527PC := 779.
        ].
        recoveredBlock517Block527Step = 779 ifTrue: [
            recoveredBlock517Block527Stack2 := recoveredBlock517Block527Stack1.
            recoveredBlock517Block527PC := 780.
        ].
        recoveredBlock517Block527Step = 780 ifTrue: [
            recoveredBlock517Block527Stack3 := ' done'.
            recoveredBlock517Block527PC := 784.
        ].
        recoveredBlock517Block527Step = 784 ifTrue: [
            (recoveredBlock517Block527Stack2) show: (recoveredBlock517Block527Stack3).
            recoveredBlock517Block527PC := 786.
        ].
        recoveredBlock517Block527Step = 786 ifTrue: [
            (recoveredBlock517Block527Stack1) cr.
            recoveredBlock517Block527PC := 788.
        ].
        recoveredBlock517Block527Step = 788 ifTrue: [
            (recoveredBlock517Block527Stack0) dispatchEvents.
            recoveredBlock517Block527PC := 790.
        ].
        recoveredBlock517Block527Step = 790 ifTrue: [
            recoveredBlock517Block527Stack0 := recoveredBlock517Arg1.
            recoveredBlock517Block527PC := 793.
        ].
        recoveredBlock517Block527Step = 793 ifTrue: [
            recoveredBlock517Block527Stack1 := recoveredBlock517Block527Arg2.
            recoveredBlock517Block527PC := 796.
        ].
        recoveredBlock517Block527Step = 796 ifTrue: [
            recoveredBlock517Block527Stack2 := recoveredLocal2.
            recoveredBlock517Block527PC := 799.
        ].
        recoveredBlock517Block527Step = 799 ifTrue: [
            recoveredBlock517Block527Stack2 := (recoveredBlock517Block527Stack2) size.
            recoveredBlock517Block527PC := 801.
        ].
        recoveredBlock517Block527Step = 801 ifTrue: [
            recoveredBlock517Block527Stack1 := (recoveredBlock517Block527Stack1) / (recoveredBlock517Block527Stack2).
            recoveredBlock517Block527PC := 803.
        ].
        recoveredBlock517Block527Step = 803 ifTrue: [
            recoveredBlock517Block527Stack0 := (recoveredBlock517Block527Stack0) fractionComplete: (recoveredBlock517Block527Stack1).
            recoveredBlock517Block527PC := 805.
        ].
        recoveredBlock517Block527Step = 805 ifTrue: [
            recoveredBlock517Block527Result := recoveredBlock517Block527Stack0.
            recoveredBlock517Block527Done := true.
        ].
    ].
    recoveredBlock517Block527Result
].
    recoveredBlock517Value2 := (recoveredBlock517Value0) doWithIndex: (recoveredBlock517Value1).
    recoveredBlock517Value2
].
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack2 := 'Committing to database'.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack1 := [:recoveredBlock815Arg1 | 
    | recoveredBlock815Value0 recoveredBlock815Value1 recoveredBlock815Value2 |
    recoveredBlock815Value0 := recoveredLocal2.
    recoveredBlock815Value1 := [:recoveredBlock815Block825Arg1 :recoveredBlock815Block825Arg2 | 
    | recoveredBlock815Block825Value0 recoveredBlock815Block825Value1 recoveredBlock815Block825Value2 recoveredBlock815Block825Value3 recoveredBlock815Block825Value4 recoveredBlock815Block825Value5 recoveredBlock815Block825Value6 recoveredBlock815Block825Value7 recoveredBlock815Block825Value8 recoveredBlock815Block825Value9 recoveredBlock815Block825Value10 recoveredBlock815Block825Value11 recoveredBlock815Block825Value12 recoveredBlock815Block825Value13 recoveredBlock815Block825Value14 |
    recoveredBlock815Block825Value0 := Util.
    recoveredBlock815Block825Value1 := recoveredBlock815Block825Arg1.
    recoveredBlock815Block825Value2 := (recoveredBlock815Block825Value1) baseName.
    recoveredBlock815Block825Value3 := ('Finalize item ') , (recoveredBlock815Block825Value2).
    recoveredBlock815Block825Value4 := (recoveredBlock815Block825Value3) , ('... ').
    (recoveredBlock815Block825Value0) show: (recoveredBlock815Block825Value4).
    recoveredBlock815Block825Value5 := recoveredBlock815Block825Arg1.
    (recoveredBlock815Block825Value5) improveKarma: (self).
    recoveredBlock815Block825Value6 := recoveredBlock815Block825Arg1.
    (recoveredBlock815Block825Value6) updateTimestamp.
    recoveredBlock815Block825Value7 := Util.
    recoveredBlock815Block825Value8 := recoveredBlock815Block825Value7.
    (recoveredBlock815Block825Value8) show: ('done').
    (recoveredBlock815Block825Value7) cr.
    (self) dispatchEvents.
    recoveredBlock815Block825Value9 := recoveredBlock815Arg1.
    recoveredBlock815Block825Value10 := recoveredBlock815Block825Arg2.
    recoveredBlock815Block825Value11 := recoveredLocal2.
    recoveredBlock815Block825Value12 := (recoveredBlock815Block825Value11) size.
    recoveredBlock815Block825Value13 := (recoveredBlock815Block825Value10) / (recoveredBlock815Block825Value12).
    recoveredBlock815Block825Value14 := (recoveredBlock815Block825Value9) fractionComplete: (recoveredBlock815Block825Value13).
    recoveredBlock815Block825Value14
].
    recoveredBlock815Value2 := (recoveredBlock815Value0) doWithIndex: (recoveredBlock815Value1).
    recoveredBlock815Value2
].
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack2 := 'Finalize items'.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack1 := [:recoveredBlock897Arg1 | 
    | recoveredBlock897Local1 recoveredBlock897Local2 recoveredBlock897Value0 recoveredBlock897Value1 recoveredBlock897Value2 recoveredBlock897Value3 recoveredBlock897Value4 |
    recoveredBlock897Value0 := (self) postImportFixes.
    recoveredBlock897Value1 := (recoveredBlock897Value0) size.
    recoveredBlock897Local2 := recoveredBlock897Value1.
    recoveredBlock897Local1 := 0.
    recoveredBlock897Value2 := (self) postImportFixes.
    recoveredBlock897Value3 := [:recoveredBlock897Block925Arg1 :recoveredBlock897Block925Arg2 | 
    | recoveredBlock897Block925Value0 recoveredBlock897Block925Value1 recoveredBlock897Block925Value2 recoveredBlock897Block925Value3 recoveredBlock897Block925Value4 recoveredBlock897Block925Value5 recoveredBlock897Block925Value6 recoveredBlock897Block925Value7 recoveredBlock897Block925Value8 |
    recoveredBlock897Block925Value0 := recoveredBlock897Local1.
    recoveredBlock897Block925Value1 := (recoveredBlock897Block925Value0) + (1).
    recoveredBlock897Local1 := recoveredBlock897Block925Value1.
    recoveredBlock897Block925Value2 := recoveredBlock897Block925Arg2.
    recoveredBlock897Block925Value3 := [:recoveredBlock897Block925Block942Arg1 | 
    | recoveredBlock897Block925Block942Value0 recoveredBlock897Block925Block942Value1 recoveredBlock897Block925Block942Value2 |
    recoveredBlock897Block925Block942Value0 := recoveredBlock897Block925Arg1.
    recoveredBlock897Block925Block942Value1 := recoveredBlock897Block925Block942Arg1.
    recoveredBlock897Block925Block942Value2 := (recoveredBlock897Block925Block942Value0) perform: (recoveredBlock897Block925Block942Value1).
    recoveredBlock897Block925Block942Value2
].
    (recoveredBlock897Block925Value2) do: (recoveredBlock897Block925Value3).
    recoveredBlock897Block925Value4 := recoveredBlock897Arg1.
    recoveredBlock897Block925Value5 := recoveredBlock897Local1.
    recoveredBlock897Block925Value6 := recoveredBlock897Local2.
    recoveredBlock897Block925Value7 := (recoveredBlock897Block925Value5) / (recoveredBlock897Block925Value6).
    recoveredBlock897Block925Value8 := (recoveredBlock897Block925Value4) fractionComplete: (recoveredBlock897Block925Value7).
    recoveredBlock897Block925Value8
].
    recoveredBlock897Value4 := (recoveredBlock897Value2) keysAndValuesDo: (recoveredBlock897Value3).
    recoveredBlock897Value4
].
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack2 := 'Post processing imported items'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := [:recoveredBlock987Arg1 | 
    | recoveredBlock987Value0 recoveredBlock987Value1 recoveredBlock987Value2 |
    recoveredBlock987Value0 := recoveredLocal2.
    recoveredBlock987Value1 := [:recoveredBlock987Block997Arg1 :recoveredBlock987Block997Arg2 | 
    | recoveredBlock987Block997Value0 recoveredBlock987Block997Value1 recoveredBlock987Block997Value2 recoveredBlock987Block997Value3 recoveredBlock987Block997Value4 recoveredBlock987Block997Value5 recoveredBlock987Block997Value6 recoveredBlock987Block997Value7 recoveredBlock987Block997Value8 recoveredBlock987Block997Value9 recoveredBlock987Block997Value10 recoveredBlock987Block997Value11 recoveredBlock987Block997Value12 recoveredBlock987Block997Value13 recoveredBlock987Block997Value14 recoveredBlock987Block997Value15 |
    recoveredBlock987Block997Value0 := Util.
    recoveredBlock987Block997Value1 := recoveredBlock987Block997Arg1.
    recoveredBlock987Block997Value2 := (recoveredBlock987Block997Value1) baseName.
    recoveredBlock987Block997Value3 := ('Protocol item ') , (recoveredBlock987Block997Value2).
    recoveredBlock987Block997Value4 := (recoveredBlock987Block997Value3) , ('... ').
    (recoveredBlock987Block997Value0) show: (recoveredBlock987Block997Value4).
    recoveredBlock987Block997Value5 := (self) importManager.
    recoveredBlock987Block997Value6 := recoveredBlock987Block997Arg1.
    recoveredBlock987Block997Value7 := (recoveredBlock987Block997Value6) thing.
    (recoveredBlock987Block997Value5) addImportedItem: (recoveredBlock987Block997Value7).
    recoveredBlock987Block997Value8 := Util.
    recoveredBlock987Block997Value9 := recoveredBlock987Block997Value8.
    (recoveredBlock987Block997Value9) show: ('done').
    (recoveredBlock987Block997Value8) cr.
    recoveredBlock987Block997Value10 := recoveredBlock987Arg1.
    recoveredBlock987Block997Value11 := recoveredBlock987Block997Arg2.
    recoveredBlock987Block997Value12 := recoveredLocal2.
    recoveredBlock987Block997Value13 := (recoveredBlock987Block997Value12) size.
    recoveredBlock987Block997Value14 := (recoveredBlock987Block997Value11) / (recoveredBlock987Block997Value13).
    recoveredBlock987Block997Value15 := (recoveredBlock987Block997Value10) fractionComplete: (recoveredBlock987Block997Value14).
    recoveredBlock987Block997Value15
].
    recoveredBlock987Value2 := (recoveredBlock987Value0) doWithIndex: (recoveredBlock987Value1).
    recoveredBlock987Value2
].
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack2 := 'Protocol imported items'.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 1072.
        ].
        recoveredStep = 1072 ifTrue: [
            recoveredStack1 := 'Call_328269'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMActive.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1090] ifFalse: [recoveredPC := 1115].
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack0 := (recoveredStack0) importManager.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMControlledImport.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 1115] ifFalse: [recoveredPC := 1106].
        ].
        recoveredStep = 1106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack0) scmImportProtoHook: (recoveredStack1).
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack1 := 'ASCET_SCM'.
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredPC := 1124.
        ].
        recoveredStep = 1124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack1 := [:block28126e2cArg1 | 
    | block28126e2cValue0 block28126e2cValue1 block28126e2cValue2 |
    block28126e2cValue0 := block28126e2cArg1.
    block28126e2cValue1 := (block28126e2cValue0) namespace.
    block28126e2cValue2 := (block28126e2cValue1) ~= ('.defaultProject').
    block28126e2cValue2
].
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            recoveredStack1 := [:block28126e50Arg1 | 
    | block28126e50Value0 block28126e50Value1 |
    block28126e50Value0 := block28126e50Arg1.
    block28126e50Value1 := (block28126e50Value0) thing.
    block28126e50Value1
].
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

