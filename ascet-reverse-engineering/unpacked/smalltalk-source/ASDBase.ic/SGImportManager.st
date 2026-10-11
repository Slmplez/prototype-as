"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012ed0; bytecode file offset 0x912098"
!SGImportManager methodsFor: 'recovered'!
amdImportControllerClass
    | recoveredValue0 |
    recoveredValue0 := ASDXMLImportControllerUI.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20020588; bytecode file offset 0x92209c"
!SGImportManager methodsFor: 'recovered'!
a2aExe
    ^'Tools\AutosarToAscetImporter\A2AImporter.exe'
! !

"ASDBase.ic method 0x2005bef4; bytecode file offset 0x958ab0"
!SGImportManager methodsFor: 'recovered'!
biFinishImport
    | recoveredValue0 |
    recoveredValue0 := MainController.
    (recoveredValue0) doItemsImportedActivities.
    ^self
! !

"ASDBase.ic method 0x2005cb40; bytecode file offset 0x959680"
!SGImportManager methodsFor: 'recovered'!
getExistingLibraries
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGDatabaseAccess.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) libraryKeys.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006d534; bytecode file offset 0x96a390"
!SGImportManager methodsFor: 'recovered'!
importError
    | recoveredValue0 |
    recoveredValue0 := importError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200af0a8; bytecode file offset 0x9aba2c"
!SGImportManager methodsFor: 'recovered'!
measureTimeForImport: recoveredArg1 notificationWindow: recoveredArg2 userInteraction: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) import: (recoveredValue0) notificationWindow: (recoveredValue1) userInteraction: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b1d40; bytecode file offset 0x9ae66c"
!SGImportManager methodsFor: 'recovered'!
isSCMControlledImport
    | recoveredValue0 |
    recoveredValue0 := ('Rnz') == ('EHI_83833').
    ^false
! !

"ASDBase.ic method 0x200c412c; bytecode file offset 0x9c0bf0"
!SGImportManager methodsFor: 'recovered'!
importError: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    importError := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d4574; bytecode file offset 0x9d0e74"
!SGImportManager methodsFor: 'recovered'!
newItem
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) importInfo.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) newItemString.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200da468; bytecode file offset 0x9d6d5c"
!SGImportManager methodsFor: 'recovered'!
newItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) importInfo.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) newItemString.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20129f5c; bytecode file offset 0xa26878"
!SGImportManager methodsFor: 'recovered'!
importInfo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newFolder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            newFolder := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := newFolder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201876d0; bytecode file offset 0xa83f98"
!SGImportManager methodsFor: 'recovered'!
biCheckContainersBeforeImport: recoveredArg1 notificationWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := EtImportFollowingItems.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) cr.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (self) showImportLoggingInfo: (recoveredValue3) notificationWindow: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    (self) checkContainersBeforeImport: (recoveredValue5) notificationWindow: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201880e4; bytecode file offset 0xa849a0"
!SGImportManager methodsFor: 'recovered'!
checkContainersBeforeImport: recoveredArg1 notificationWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredArg2.
    recoveredBlock7Value2 := (recoveredBlock7Value0) updateBeforeImportNotificationWindow: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201ded90; bytecode file offset 0xadb658"
!SGImportManager methodsFor: 'recovered'!
biRemoveIgnoredContainers: recoveredArg1
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
            recoveredStack2 := [:block280d6230Arg1 | 
    | block280d6230Value0 block280d6230Value1 |
    block280d6230Value0 := block280d6230Arg1.
    block280d6230Value1 := (block280d6230Value0) ignored.
    block280d6230Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fa114; bytecode file offset 0xaf69dc"
!SGImportManager methodsFor: 'recovered'!
biGetContainers: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d857cArg1 :block280d857cArg2 | 
    | block280d857cValue0 block280d857cValue1 block280d857cValue2 block280d857cValue3 block280d857cValue4 |
    block280d857cValue0 := block280d857cArg1.
    block280d857cValue1 := (block280d857cValue0) importLabel.
    block280d857cValue2 := block280d857cArg2.
    block280d857cValue3 := (block280d857cValue2) importLabel.
    block280d857cValue4 := (block280d857cValue1) < (block280d857cValue3).
    block280d857cValue4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fb8b4; bytecode file offset 0xaf818c"
!SGImportManager methodsFor: 'recovered'!
createXMLImportControllerHeadlessOn: recoveredArg1 keepHierarchy: recoveredArg2 remapOIDs: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDXMLImportControllerHeadless.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) initOn: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) options.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) optionKeepHierarchy: (true).
    (recoveredValue5) optionRemapOIDs: (false).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) xmlExt: ('amd').
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) importManager: (self).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2026113c; bytecode file offset 0xb5da14"
!SGImportManager methodsFor: 'recovered'!
biUIDisallowOverwriteCheck: recoveredArg1
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
            recoveredStack2 := [:block280dfbc0Arg1 | 
    | block280dfbc0Local1 block280dfbc0Stack0 block280dfbc0Stack1 block280dfbc0Stack2 block280dfbc0Stack3 block280dfbc0PC block280dfbc0Step block280dfbc0Done block280dfbc0Result |
    block280dfbc0Stack0 := self.
    block280dfbc0PC := 4.
    block280dfbc0Done := false.
    [block280dfbc0Done not] whileTrue: [
        block280dfbc0Step := block280dfbc0PC.
        block280dfbc0Step = 4 ifTrue: [
            block280dfbc0Stack1 := block280dfbc0Arg1.
            block280dfbc0PC := 5.
        ].
        block280dfbc0Step = 5 ifTrue: [
            block280dfbc0Stack1 := (block280dfbc0Stack1) item.
            block280dfbc0PC := 6.
        ].
        block280dfbc0Step = 6 ifTrue: [
            block280dfbc0Local1 := block280dfbc0Stack1.
            block280dfbc0PC := 7.
        ].
        block280dfbc0Step = 7 ifTrue: [
            block280dfbc0Stack1 := false.
            block280dfbc0PC := 8.
        ].
        block280dfbc0Step = 8 ifTrue: [
            block280dfbc0Stack2 := block280dfbc0Local1.
            block280dfbc0PC := 9.
        ].
        block280dfbc0Step = 9 ifTrue: [
            (block280dfbc0Stack2 == nil) ifTrue: [block280dfbc0PC := 15] ifFalse: [block280dfbc0PC := 12].
        ].
        block280dfbc0Step = 12 ifTrue: [
            block280dfbc0PC := 13.
        ].
        block280dfbc0Step = 13 ifTrue: [
            block280dfbc0Stack1 := block280dfbc0Local1.
            block280dfbc0PC := 14.
        ].
        block280dfbc0Step = 14 ifTrue: [
            block280dfbc0Stack1 := (block280dfbc0Stack1) isDisallowOverwrite.
            block280dfbc0PC := 15.
        ].
        block280dfbc0Step = 15 ifTrue: [
            block280dfbc0Result := block280dfbc0Stack1.
            block280dfbc0Done := true.
        ].
    ].
    block280dfbc0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'You tried to import some items having the disallow overwrite flag set.
Please check monitor output for details.'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e7ca4; bytecode file offset 0xbe4570"
!SGImportManager methodsFor: 'recovered'!
importFiles: recoveredArg1 notificationWindow: recoveredArg2 userInteraction: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg2.
    recoveredBlock13Value2 := recoveredArg3.
    recoveredBlock13Value3 := (self) measureTimeForImport: (recoveredBlock13Value0) notificationWindow: (recoveredBlock13Value1) userInteraction: (recoveredBlock13Value2).
    recoveredBlock13Value4 := [:recoveredBlock13Block30Arg1 | 
    | recoveredBlock13Block30Value0 recoveredBlock13Block30Value1 recoveredBlock13Block30Value2 |
    recoveredBlock13Block30Value0 := recoveredLocal1.
    recoveredBlock13Block30Value1 := recoveredBlock13Block30Arg1.
    recoveredBlock13Block30Value2 := (recoveredBlock13Block30Value0) addAll: (recoveredBlock13Block30Value1).
    recoveredBlock13Block30Value2
].
    recoveredBlock13Value5 := (recoveredBlock13Value3) ifNotNil: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20302318; bytecode file offset 0xbfebfc"
!SGImportManager methodsFor: 'recovered'!
scanForAutosarImporterErrors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '[ERROR]'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 9.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203067a8; bytecode file offset 0xc03080"
!SGImportManager methodsFor: 'recovered'!
showImportLoggingInfo: recoveredArg1 notificationWindow: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) overwriteItemName.
    recoveredBlock7Value2 := [:recoveredBlock7Block18Arg1 | 
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 recoveredBlock7Block18Value3 recoveredBlock7Block18Value4 recoveredBlock7Block18Value5 recoveredBlock7Block18Value6 recoveredBlock7Block18Value7 recoveredBlock7Block18Value8 recoveredBlock7Block18Value9 |
    recoveredBlock7Block18Value0 := recoveredArg2.
    recoveredBlock7Block18Value1 := recoveredBlock7Block18Value0.
    (recoveredBlock7Block18Value1) cr.
    recoveredBlock7Block18Value2 := recoveredBlock7Block18Value0.
    recoveredBlock7Block18Value3 := recoveredBlock7Arg1.
    recoveredBlock7Block18Value4 := (recoveredBlock7Block18Value3) importLabel.
    (recoveredBlock7Block18Value2) nextPutAll: (recoveredBlock7Block18Value4).
    recoveredBlock7Block18Value5 := recoveredBlock7Block18Value0.
    (recoveredBlock7Block18Value5) nextPutAll: (' ').
    recoveredBlock7Block18Value6 := EtReplaces.
    recoveredBlock7Block18Value7 := recoveredBlock7Block18Arg1.
    recoveredBlock7Block18Value8 := (recoveredBlock7Block18Value6) bindWith: (recoveredBlock7Block18Value7).
    recoveredBlock7Block18Value9 := (recoveredBlock7Block18Value0) nextPutAll: (recoveredBlock7Block18Value8).
    recoveredBlock7Block18Value9
].
    recoveredBlock7Value3 := (recoveredBlock7Value1) ifNotNil: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2031ef00; bytecode file offset 0xc1b7ec"
!SGImportManager methodsFor: 'recovered'!
biUIContainerSelection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := EtImportLabel.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack5 := EtSelectItemsToImport.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack6 := [:block280eb830Arg1 | 
    | block280eb830Local1 block280eb830Stack0 block280eb830Stack1 block280eb830Stack2 block280eb830Stack3 block280eb830PC block280eb830Step block280eb830Done block280eb830Result |
    block280eb830Stack0 := self.
    block280eb830PC := 4.
    block280eb830Done := false.
    [block280eb830Done not] whileTrue: [
        block280eb830Step := block280eb830PC.
        block280eb830Step = 4 ifTrue: [
            block280eb830Stack1 := block280eb830Arg1.
            block280eb830PC := 5.
        ].
        block280eb830Step = 5 ifTrue: [
            block280eb830Stack1 := (block280eb830Stack1) overwriteString.
            block280eb830PC := 7.
        ].
        block280eb830Step = 7 ifTrue: [
            block280eb830Stack2 := block280eb830Stack1.
            block280eb830PC := 8.
        ].
        block280eb830Step = 8 ifTrue: [
            block280eb830Local1 := block280eb830Stack2.
            block280eb830PC := 9.
        ].
        block280eb830Step = 9 ifTrue: [
            (block280eb830Stack1 ~~ nil) ifTrue: [block280eb830PC := 18] ifFalse: [block280eb830PC := 12].
        ].
        block280eb830Step = 12 ifTrue: [
            block280eb830Stack1 := block280eb830Arg1.
            block280eb830PC := 13.
        ].
        block280eb830Step = 13 ifTrue: [
            block280eb830Stack1 := (block280eb830Stack1) importLabel.
            block280eb830PC := 15.
        ].
        block280eb830Step = 15 ifTrue: [
            block280eb830PC := 19.
        ].
        block280eb830Step = 18 ifTrue: [
            block280eb830Stack1 := block280eb830Local1.
            block280eb830PC := 19.
        ].
        block280eb830Step = 19 ifTrue: [
            block280eb830Result := block280eb830Stack1.
            block280eb830Done := true.
        ].
    ].
    block280eb830Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := MainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := (recoveredStack8) userInterface.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack8 := (recoveredStack8) shell.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptListItems: (recoveredStack2) selectedItems: (recoveredStack3) title: (recoveredStack4) messageString: (recoveredStack5) printBlock: (recoveredStack6) multiSelection: (recoveredStack7) withParent: (recoveredStack8).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'Import aborted by user'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20357f0c; bytecode file offset 0xc547fc"
!SGImportManager methodsFor: 'recovered'!
createMissingLib: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExistingLibraries.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280efbd4Arg1 | 
    | block280efbd4Value0 block280efbd4Value1 block280efbd4Value2 |
    block280efbd4Value0 := block280efbd4Arg1.
    block280efbd4Value1 := (block280efbd4Value0) label.
    block280efbd4Value2 := (block280efbd4Value1) trimBlanks.
    block280efbd4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initChildrenCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) uniqueStringFor: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) clearMarkAsDeleted.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) writeImported: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:block280efbf8Arg1 | 
    nil
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035e2bc; bytecode file offset 0xc5ab90"
!SGImportManager methodsFor: 'recovered'!
biGetImpObjects: recoveredArg1 containers: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) rehash.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Arg1.
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Stack4 := [
    | recoveredBlock18Block29Value0 |
    recoveredBlock18Block29Value0 := (self) etasDevHalt.
    recoveredBlock18Block29Value0
].
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) at: (recoveredBlock18Stack3) ifAbsent: (recoveredBlock18Stack4).
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 41.
        ].
        recoveredBlock18Step = 41 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack3.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 59] ifFalse: [recoveredBlock18PC := 46].
        ].
        recoveredBlock18Step = 46 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) isError.
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 59] ifFalse: [recoveredBlock18PC := 52].
        ].
        recoveredBlock18Step = 52 ifTrue: [
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 56.
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) addAll: (recoveredBlock18Stack2).
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20364a70; bytecode file offset 0xc61358"
!SGImportManager methodsFor: 'recovered'!
biGetImportDirectory: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) importDirectoryFromFile: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNumber.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 24.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorObject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'RBGlobalID'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := ExASDImportError.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'This file is for ASCET-SD V2.1 and cannot be imported into current version.'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := ExASDImportError.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := EtWrongFileFormatIn.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c942c; bytecode file offset 0xcc5d08"
!SGImportManager methodsFor: 'recovered'!
ignoredContainersIn: recoveredArg1 notificationWindow: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := false.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11Stack5 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ignored.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 69].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 44] ifFalse: [recoveredBlock11PC := 30].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack3 := EtUnableToImport.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            (recoveredBlock11Stack2) nextPutAll: (recoveredBlock11Stack3).
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            (recoveredBlock11Stack1) cr.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := true.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 44.
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) importLabel.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            (recoveredBlock11Stack2) nextPutAll: (recoveredBlock11Stack3).
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack3 := '<'.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack4 := recoveredBlock11Arg1.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack4 := (recoveredBlock11Stack4) ignoreReason.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) , (recoveredBlock11Stack4).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack4 := '>'.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) , (recoveredBlock11Stack4).
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            (recoveredBlock11Stack2) nextPutAll: (recoveredBlock11Stack3).
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            (recoveredBlock11Stack1) cr.
            recoveredBlock11PC := 69.
        ].
        recoveredBlock11Step = 69 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Arg1.
            recoveredBlock11PC := 70.
        ].
        recoveredBlock11Step = 70 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) ignoreReason.
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) notNil.
            recoveredBlock11PC := 73.
        ].
        recoveredBlock11Step = 73 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20409d74; bytecode file offset 0xd06668"
!SGImportManager methodsFor: 'recovered'!
queryImportLabel: recoveredArg1 question: recoveredArg2 strings: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI49581'.
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
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := recoveredBlock33Value0.
    recoveredBlock33Value2 := recoveredBlock33Arg1.
    (recoveredBlock33Value1) nextPutAll: (recoveredBlock33Value2).
    recoveredBlock33Value3 := (recoveredBlock33Value0) cr.
    recoveredBlock33Value3
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := RBUserQuestionMultiLine.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := '                         '.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) contents.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2) answerString: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20416220; bytecode file offset 0xd12afc"
!SGImportManager methodsFor: 'recovered'!
getOrCreateLibFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getExistingLibraries.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) label.
    recoveredBlock5Value2 := (recoveredBlock5Value1) trimBlanks.
    recoveredBlock5Value3 := (recoveredBlock5Value2) asLowercase.
    recoveredBlock5Value4 := recoveredArg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) label.
    recoveredBlock5Value6 := (recoveredBlock5Value5) trimBlanks.
    recoveredBlock5Value7 := (recoveredBlock5Value6) asLowercase.
    recoveredBlock5Value8 := (recoveredBlock5Value3) = (recoveredBlock5Value7).
    recoveredBlock5Value8
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessRightsPassword.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessRightsPassword.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWrite.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWrite.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisallowOverwrite.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisallowOverwrite.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMissingLib: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044af64; bytecode file offset 0xd47860"
!SGImportManager methodsFor: 'recovered'!
biPerformImportFrom: recoveredArg1 objects: recoveredArg2 notificationWindow: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := (self) dbController.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) importRecordsFromFile: (recoveredBlock6Value1) objects: (recoveredBlock6Value2) newGlobalId: (false).
    recoveredBlock6Value4 := recoveredBlock6Value3.
    recoveredLocal1 := recoveredBlock6Value4.
    recoveredBlock6Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) disableCachingWhile: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) numModifiedObjects.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) library.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCacheSize.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) emptyCache: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:block280ff070Arg1 | 
    | block280ff070Value0 block280ff070Value1 |
    block280ff070Value0 := block280ff070Arg1.
    block280ff070Value1 := (block280ff070Value0) removeFromCache.
    block280ff070Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageText.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := ExASDImportError.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) messageText.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049fba0; bytecode file offset 0xd9c4bc"
!SGImportManager methodsFor: 'recovered'!
importAmdFiles: recoveredArg1 toFolder: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) databaseAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'No database available for import!!'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 |
    recoveredBlock44Value0 := System.
    recoveredBlock44Value1 := [
    | recoveredBlock44Block52Value0 recoveredBlock44Block52Value1 recoveredBlock44Block52Value2 recoveredBlock44Block52Value3 |
    recoveredBlock44Block52Value0 := ('Kli') == ('XMLImport').
    recoveredBlock44Block52Value1 := EtasDatamodelObserver.
    recoveredBlock44Block52Value2 := [
    | recoveredBlock44Block52Block66Value0 recoveredBlock44Block52Block66Value1 recoveredBlock44Block52Block66Value2 recoveredBlock44Block52Block66Value3 recoveredBlock44Block52Block66Value4 recoveredBlock44Block52Block66Value5 recoveredBlock44Block52Block66Value6 recoveredBlock44Block52Block66Value7 recoveredBlock44Block52Block66Value8 |
    recoveredBlock44Block52Block66Value0 := (self) amdImportControllerClass.
    recoveredBlock44Block52Block66Value1 := (recoveredBlock44Block52Block66Value0) new.
    recoveredBlock44Block52Block66Value2 := MainController.
    recoveredBlock44Block52Block66Value3 := (recoveredBlock44Block52Block66Value1) initOn: (recoveredBlock44Block52Block66Value2).
    recoveredBlock44Block52Block66Value4 := recoveredBlock44Block52Block66Value3.
    (recoveredBlock44Block52Block66Value4) xmlExt: ('amd').
    recoveredBlock44Block52Block66Value5 := recoveredArg1.
    recoveredBlock44Block52Block66Value6 := recoveredLocal2.
    recoveredBlock44Block52Block66Value7 := (recoveredBlock44Block52Block66Value3) importFromFiles: (recoveredBlock44Block52Block66Value5) components: (nil) importFolder: (recoveredBlock44Block52Block66Value6).
    recoveredBlock44Block52Block66Value8 := recoveredBlock44Block52Block66Value7.
    recoveredLocal1 := recoveredBlock44Block52Block66Value8.
    recoveredBlock44Block52Block66Value7
].
    recoveredBlock44Block52Value3 := (recoveredBlock44Block52Value1) deferObservingWhile: (recoveredBlock44Block52Value2).
    recoveredBlock44Block52Value3
].
    (recoveredBlock44Value0) showBusyCursorWhile: (recoveredBlock44Value1).
    recoveredBlock44Value2 := ('Kli') == ('Call_71668').
    recoveredBlock44Value3 := MainController.
    recoveredBlock44Value4 := MainController.
    recoveredBlock44Value5 := (recoveredBlock44Value4) userInterface.
    recoveredBlock44Value6 := (recoveredBlock44Value3) commitDBView: (recoveredBlock44Value5).
    recoveredBlock44Value6
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) syncExecInUI: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204a23e4; bytecode file offset 0xd9ecf0"
!SGImportManager methodsFor: 'recovered'!
checkContainersAfterImport: recoveredArg1 importDictionary: recoveredArg2 notificationWindow: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := MainController.
    recoveredValue1 := (recoveredValue0) sgSettings.
    dbSettings := recoveredValue1.
    recoveredValue2 := RBProgressDialog.
    recoveredValue3 := (recoveredValue2) for: (nil).
    recoveredValue4 := recoveredValue3.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) title: ('Checking components after import').
    recoveredValue6 := recoveredValue3.
    (recoveredValue6) allowCancel: (false).
    (recoveredValue3) open.
    recoveredLocal1 := 0.
    recoveredValue7 := ('Kk') == ('Call_67666').
    recoveredValue8 := [
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredArg1.
    recoveredBlock39Value1 := [:recoveredBlock39Block49Arg1 | 
    | recoveredBlock39Block49Value0 recoveredBlock39Block49Value1 recoveredBlock39Block49Value2 recoveredBlock39Block49Value3 recoveredBlock39Block49Value4 recoveredBlock39Block49Value5 |
    recoveredBlock39Block49Value0 := recoveredLocal2.
    recoveredBlock39Block49Value1 := [:recoveredBlock39Block49Block59Arg1 | 
    | recoveredBlock39Block49Block59Local1 recoveredBlock39Block49Block59Local2 recoveredBlock39Block49Block59Value0 recoveredBlock39Block49Block59Value1 recoveredBlock39Block49Block59Value2 recoveredBlock39Block49Block59Value3 recoveredBlock39Block49Block59Value4 recoveredBlock39Block49Block59Value5 recoveredBlock39Block49Block59Value6 recoveredBlock39Block49Block59Value7 recoveredBlock39Block49Block59Value8 recoveredBlock39Block49Block59Value9 recoveredBlock39Block49Block59Value10 recoveredBlock39Block49Block59Value11 recoveredBlock39Block49Block59Value12 |
    recoveredBlock39Block49Block59Value0 := ('Kk') == ('Call_84826').
    recoveredBlock39Block49Block59Value1 := recoveredBlock39Block49Block59Arg1.
    recoveredBlock39Block49Block59Value2 := recoveredLocal1.
    recoveredBlock39Block49Block59Value3 := (recoveredBlock39Block49Block59Value2) + (1).
    recoveredBlock39Block49Block59Value4 := recoveredBlock39Block49Block59Value3.
    recoveredLocal1 := recoveredBlock39Block49Block59Value4.
    recoveredBlock39Block49Block59Value5 := recoveredArg1.
    recoveredBlock39Block49Block59Value6 := (recoveredBlock39Block49Block59Value5) size.
    recoveredBlock39Block49Block59Value7 := (recoveredBlock39Block49Block59Value3) / (recoveredBlock39Block49Block59Value6).
    (recoveredBlock39Block49Block59Value1) fractionComplete: (recoveredBlock39Block49Block59Value7).
    recoveredBlock39Block49Block59Value8 := recoveredBlock39Block49Block59Arg1.
    recoveredBlock39Block49Block59Value9 := recoveredBlock39Block49Arg1.
    recoveredBlock39Block49Block59Value10 := (recoveredBlock39Block49Block59Value9) itemKey.
    recoveredBlock39Block49Block59Value11 := (recoveredBlock39Block49Block59Value10) label.
    recoveredBlock39Block49Block59Value12 := (recoveredBlock39Block49Block59Value8) messageString: (recoveredBlock39Block49Block59Value11).
    recoveredBlock39Block49Block59Value12
].
    (recoveredBlock39Block49Value0) ifNotNil: (recoveredBlock39Block49Value1).
    recoveredBlock39Block49Value2 := recoveredBlock39Block49Arg1.
    recoveredBlock39Block49Value3 := recoveredArg2.
    recoveredBlock39Block49Value4 := recoveredArg3.
    recoveredBlock39Block49Value5 := (recoveredBlock39Block49Value2) updateAfterImportImportDictionary: (recoveredBlock39Block49Value3) notificationWindow: (recoveredBlock39Block49Value4) importManager: (self).
    recoveredBlock39Block49Value5
].
    recoveredBlock39Value2 := (recoveredBlock39Value0) do: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
    recoveredValue9 := [
    | recoveredBlock120Value0 recoveredBlock120Value1 |
    recoveredBlock120Value0 := recoveredLocal2.
    recoveredBlock120Value1 := (recoveredBlock120Value0) close.
    recoveredBlock120Value1
].
    (recoveredValue8) ensure: (recoveredValue9).
    dbSettings := nil.
    ^self
! !

"ASDBase.ic method 0x204b0f48; bytecode file offset 0xdad868"
!SGImportManager methodsFor: 'recovered'!
importAxlFiles: recoveredArg1 toFolder: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) databaseAccess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'No database available for import!!'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CwAppContext.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 |
    recoveredBlock44Value0 := System.
    recoveredBlock44Value1 := [
    | recoveredBlock44Block52Value0 recoveredBlock44Block52Value1 recoveredBlock44Block52Value2 recoveredBlock44Block52Value3 |
    recoveredBlock44Block52Value0 := ('Kli') == ('XMLImport').
    recoveredBlock44Block52Value1 := EtasDatamodelObserver.
    recoveredBlock44Block52Value2 := [
    | recoveredBlock44Block52Block66Value0 recoveredBlock44Block52Block66Value1 recoveredBlock44Block52Block66Value2 recoveredBlock44Block52Block66Value3 recoveredBlock44Block52Block66Value4 recoveredBlock44Block52Block66Value5 recoveredBlock44Block52Block66Value6 recoveredBlock44Block52Block66Value7 recoveredBlock44Block52Block66Value8 recoveredBlock44Block52Block66Value9 |
    recoveredBlock44Block52Block66Value0 := ('Kli') == ('Call_2007400121').
    recoveredBlock44Block52Block66Value1 := (self) amdImportControllerClass.
    recoveredBlock44Block52Block66Value2 := (recoveredBlock44Block52Block66Value1) new.
    recoveredBlock44Block52Block66Value3 := MainController.
    recoveredBlock44Block52Block66Value4 := (recoveredBlock44Block52Block66Value2) initOn: (recoveredBlock44Block52Block66Value3).
    recoveredBlock44Block52Block66Value5 := recoveredBlock44Block52Block66Value4.
    (recoveredBlock44Block52Block66Value5) xmlExt: ('amd').
    recoveredBlock44Block52Block66Value6 := recoveredArg1.
    recoveredBlock44Block52Block66Value7 := recoveredLocal2.
    recoveredBlock44Block52Block66Value8 := (recoveredBlock44Block52Block66Value4) importFromAXLFiles: (recoveredBlock44Block52Block66Value6) components: (nil) importFolder: (recoveredBlock44Block52Block66Value7).
    recoveredBlock44Block52Block66Value9 := recoveredBlock44Block52Block66Value8.
    recoveredLocal1 := recoveredBlock44Block52Block66Value9.
    recoveredBlock44Block52Block66Value8
].
    recoveredBlock44Block52Value3 := (recoveredBlock44Block52Value1) deferObservingWhile: (recoveredBlock44Block52Value2).
    recoveredBlock44Block52Value3
].
    (recoveredBlock44Value0) showBusyCursorWhile: (recoveredBlock44Value1).
    recoveredBlock44Value2 := ('Kli') == ('Call_71668').
    recoveredBlock44Value3 := MainController.
    recoveredBlock44Value4 := MainController.
    recoveredBlock44Value5 := (recoveredBlock44Value4) userInterface.
    recoveredBlock44Value6 := (recoveredBlock44Value3) commitDBView: (recoveredBlock44Value5).
    recoveredBlock44Value6
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) syncExecInUI: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204b1840; bytecode file offset 0xdae128"
!SGImportManager methodsFor: 'recovered'!
messageImportLabel: recoveredArg1 question: recoveredArg2 strings: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 50.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := recoveredLocal3.
    recoveredBlock60Value1 := recoveredBlock60Value0.
    recoveredBlock60Value2 := recoveredBlock60Arg1.
    (recoveredBlock60Value1) nextPutAll: (recoveredBlock60Value2).
    recoveredBlock60Value3 := (recoveredBlock60Value0) cr.
    recoveredBlock60Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := EtEtc.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 |
    recoveredBlock95Value0 := recoveredLocal3.
    recoveredBlock95Value1 := recoveredBlock95Value0.
    recoveredBlock95Value2 := recoveredBlock95Arg1.
    (recoveredBlock95Value1) nextPutAll: (recoveredBlock95Value2).
    recoveredBlock95Value3 := (recoveredBlock95Value0) cr.
    recoveredBlock95Value3
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204defc4; bytecode file offset 0xddb8fc"
!SGImportManager methodsFor: 'recovered'!
biVersionCheck: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) productId.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Call_56688'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolVersion.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'V4.1.1'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 'ASD2001'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) productId: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) productId.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) product.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) productId.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'ASD'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'V4*'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolVersion.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'This file is compatible with ASCET-SD V3.x or earlier. It cannot be imported directly. 
Convert it to a newer database using your old version of ASCET-SD, then open this database.'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := EtWrongTool.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := MainController.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) toolName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbVersion.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 159] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbVersion.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentDBVersion.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'This file is an import file for a newer version of '.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolName.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := '\Do you want to continue anyway (only possible in developer image)?'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) yesNo.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20567f68; bytecode file offset 0xe64870"
!SGImportManager methodsFor: 'recovered'!
checkImportContainer: recoveredArg1 userInteraction: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2811131cArg1 :block2811131cArg2 | 
    | block2811131cValue0 block2811131cValue1 block2811131cValue2 block2811131cValue3 block2811131cValue4 |
    block2811131cValue0 := block2811131cArg1.
    block2811131cValue1 := (block2811131cValue0) level.
    block2811131cValue2 := block2811131cArg2.
    block2811131cValue3 := (block2811131cValue2) level.
    block2811131cValue4 := (block2811131cValue1) < (block2811131cValue3).
    block2811131cValue4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) ignoreItemName.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack3.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 55] ifFalse: [recoveredBlock32PC := 48].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := EtMissingDependentItems.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := EtImportIgnored.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) messageImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := EtMissingDependentItemsIgnored.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := EtQuestionContinue.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:recoveredBlock126Arg1 | 
    | recoveredBlock126Local1 recoveredBlock126Stack0 recoveredBlock126Stack1 recoveredBlock126Stack2 recoveredBlock126Stack3 recoveredBlock126Stack4 recoveredBlock126PC recoveredBlock126Step recoveredBlock126Done recoveredBlock126Result |
    recoveredBlock126Stack0 := self.
    recoveredBlock126PC := 132.
    recoveredBlock126Done := false.
    [recoveredBlock126Done not] whileTrue: [
        recoveredBlock126Step := recoveredBlock126PC.
        recoveredBlock126Step = 132 ifTrue: [
            recoveredBlock126Stack1 := nil.
            recoveredBlock126PC := 133.
        ].
        recoveredBlock126Step = 133 ifTrue: [
            recoveredBlock126Stack2 := recoveredBlock126Arg1.
            recoveredBlock126PC := 134.
        ].
        recoveredBlock126Step = 134 ifTrue: [
            recoveredBlock126Stack2 := (recoveredBlock126Stack2) overwriteItemName.
            recoveredBlock126PC := 136.
        ].
        recoveredBlock126Step = 136 ifTrue: [
            recoveredBlock126Stack3 := recoveredBlock126Stack2.
            recoveredBlock126PC := 137.
        ].
        recoveredBlock126Step = 137 ifTrue: [
            recoveredBlock126Local1 := recoveredBlock126Stack3.
            recoveredBlock126PC := 138.
        ].
        recoveredBlock126Step = 138 ifTrue: [
            (recoveredBlock126Stack2 == nil) ifTrue: [recoveredBlock126PC := 149] ifFalse: [recoveredBlock126PC := 142].
        ].
        recoveredBlock126Step = 142 ifTrue: [
            recoveredBlock126PC := 143.
        ].
        recoveredBlock126Step = 143 ifTrue: [
            recoveredBlock126Stack1 := recoveredLocal3.
            recoveredBlock126PC := 146.
        ].
        recoveredBlock126Step = 146 ifTrue: [
            recoveredBlock126Stack2 := recoveredBlock126Local1.
            recoveredBlock126PC := 147.
        ].
        recoveredBlock126Step = 147 ifTrue: [
            recoveredBlock126Stack1 := (recoveredBlock126Stack1) add: (recoveredBlock126Stack2).
            recoveredBlock126PC := 149.
        ].
        recoveredBlock126Step = 149 ifTrue: [
            recoveredBlock126Result := recoveredBlock126Stack1.
            recoveredBlock126Done := true.
        ].
    ].
    recoveredBlock126Result
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := EtOverwriteItems.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := EtQuestionContinue.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := [:recoveredBlock192Arg1 | 
    | recoveredBlock192Local1 recoveredBlock192Stack0 recoveredBlock192Stack1 recoveredBlock192Stack2 recoveredBlock192Stack3 recoveredBlock192Stack4 recoveredBlock192PC recoveredBlock192Step recoveredBlock192Done recoveredBlock192Result |
    recoveredBlock192Stack0 := self.
    recoveredBlock192PC := 198.
    recoveredBlock192Done := false.
    [recoveredBlock192Done not] whileTrue: [
        recoveredBlock192Step := recoveredBlock192PC.
        recoveredBlock192Step = 198 ifTrue: [
            recoveredBlock192Stack1 := nil.
            recoveredBlock192PC := 199.
        ].
        recoveredBlock192Step = 199 ifTrue: [
            recoveredBlock192Stack2 := recoveredBlock192Arg1.
            recoveredBlock192PC := 200.
        ].
        recoveredBlock192Step = 200 ifTrue: [
            recoveredBlock192Stack2 := (recoveredBlock192Stack2) readOnlyName.
            recoveredBlock192PC := 202.
        ].
        recoveredBlock192Step = 202 ifTrue: [
            recoveredBlock192Stack3 := recoveredBlock192Stack2.
            recoveredBlock192PC := 203.
        ].
        recoveredBlock192Step = 203 ifTrue: [
            recoveredBlock192Local1 := recoveredBlock192Stack3.
            recoveredBlock192PC := 204.
        ].
        recoveredBlock192Step = 204 ifTrue: [
            (recoveredBlock192Stack2 == nil) ifTrue: [recoveredBlock192PC := 215] ifFalse: [recoveredBlock192PC := 208].
        ].
        recoveredBlock192Step = 208 ifTrue: [
            recoveredBlock192PC := 209.
        ].
        recoveredBlock192Step = 209 ifTrue: [
            recoveredBlock192Stack1 := recoveredLocal4.
            recoveredBlock192PC := 212.
        ].
        recoveredBlock192Step = 212 ifTrue: [
            recoveredBlock192Stack2 := recoveredBlock192Local1.
            recoveredBlock192PC := 213.
        ].
        recoveredBlock192Step = 213 ifTrue: [
            recoveredBlock192Stack1 := (recoveredBlock192Stack1) add: (recoveredBlock192Stack2).
            recoveredBlock192PC := 215.
        ].
        recoveredBlock192Step = 215 ifTrue: [
            recoveredBlock192Result := recoveredBlock192Stack1.
            recoveredBlock192Done := true.
        ].
    ].
    recoveredBlock192Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 239].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := EtDisallowOverwriteItems.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := EtItemsWontBeImported.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) messageImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b75b4; bytecode file offset 0xeb3f20"
!SGImportManager methodsFor: 'recovered'!
import: recoveredArg1 notificationWindow: recoveredArg2 userInteraction: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWorkspaceMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'The EXP format is not supported in Workspace mode!!\Please select another export format!!'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := EtImportItemsFromFile.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock40Local1 recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) biGetImportDirectory: (recoveredBlock40Stack1).
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredBlock40Local1 := recoveredBlock40Stack0.
            recoveredBlock40PC := 52.
        ].
        recoveredBlock40Step = 52 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local1.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack3 := recoveredArg2.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack4 := recoveredArg3.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) biGetSelectedContainersFrom: (recoveredBlock40Stack1) impDict: (recoveredBlock40Stack2) notificationWindow: (recoveredBlock40Stack3) userInteraction: (recoveredBlock40Stack4).
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredLocal2 := recoveredBlock40Stack0.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Local1.
            recoveredBlock40PC := 71.
        ].
        recoveredBlock40Step = 71 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal2.
            recoveredBlock40PC := 74.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) biGetImpObjects: (recoveredBlock40Stack1) containers: (recoveredBlock40Stack2).
            recoveredBlock40PC := 76.
        ].
        recoveredBlock40Step = 76 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Stack0.
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredLocal3 := recoveredBlock40Stack1.
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack1 := [
    | block28117298Value0 block28117298Value1 |
    block28117298Value0 := ExASDImportError.
    block28117298Value1 := (block28117298Value0) signalWith: (nil).
    block28117298Value1
].
            recoveredBlock40PC := 82.
        ].
        recoveredBlock40Step = 82 ifTrue: [
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            (recoveredBlock40Stack0) ifNil: (recoveredBlock40Stack1).
            recoveredBlock40PC := 94.
        ].
        recoveredBlock40Step = 94 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 98.
        ].
        recoveredBlock40Step = 98 ifTrue: [
            recoveredBlock40Stack2 := recoveredArg2.
            recoveredBlock40PC := 101.
        ].
        recoveredBlock40Step = 101 ifTrue: [
            (recoveredBlock40Stack0) biCheckContainersBeforeImport: (recoveredBlock40Stack1) notificationWindow: (recoveredBlock40Stack2).
            recoveredBlock40PC := 103.
        ].
        recoveredBlock40Step = 103 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 104.
        ].
        recoveredBlock40Step = 104 ifTrue: [
            recoveredBlock40Stack1 := recoveredArg1.
            recoveredBlock40PC := 107.
        ].
        recoveredBlock40Step = 107 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal3.
            recoveredBlock40PC := 110.
        ].
        recoveredBlock40Step = 110 ifTrue: [
            recoveredBlock40Stack3 := recoveredArg2.
            recoveredBlock40PC := 113.
        ].
        recoveredBlock40Step = 113 ifTrue: [
            (recoveredBlock40Stack0) biPerformImportFrom: (recoveredBlock40Stack1) objects: (recoveredBlock40Stack2) notificationWindow: (recoveredBlock40Stack3).
            recoveredBlock40PC := 116.
        ].
        recoveredBlock40Step = 116 ifTrue: [
            recoveredBlock40Stack0 := 'Kk'.
            recoveredBlock40PC := 118.
        ].
        recoveredBlock40Step = 118 ifTrue: [
            recoveredBlock40Stack1 := 'Call_67666'.
            recoveredBlock40PC := 120.
        ].
        recoveredBlock40Step = 120 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) == (recoveredBlock40Stack1).
            recoveredBlock40PC := 121.
        ].
        recoveredBlock40Step = 121 ifTrue: [
            recoveredBlock40PC := 122.
        ].
        recoveredBlock40Step = 122 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 123.
        ].
        recoveredBlock40Step = 123 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 126.
        ].
        recoveredBlock40Step = 126 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Local1.
            recoveredBlock40PC := 127.
        ].
        recoveredBlock40Step = 127 ifTrue: [
            recoveredBlock40Stack3 := recoveredArg2.
            recoveredBlock40PC := 130.
        ].
        recoveredBlock40Step = 130 ifTrue: [
            (recoveredBlock40Stack0) checkContainersAfterImport: (recoveredBlock40Stack1) importDictionary: (recoveredBlock40Stack2) notificationWindow: (recoveredBlock40Stack3).
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 134.
        ].
        recoveredBlock40Step = 134 ifTrue: [
            (recoveredBlock40Stack0) biFinishImport.
            recoveredBlock40PC := 136.
        ].
        recoveredBlock40Step = 136 ifTrue: [
            recoveredBlock40Stack0 := self.
            recoveredBlock40PC := 137.
        ].
        recoveredBlock40Step = 137 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 140.
        ].
        recoveredBlock40Step = 140 ifTrue: [
            (recoveredBlock40Stack0) addImportedItems: (recoveredBlock40Stack1).
            recoveredBlock40PC := 142.
        ].
        recoveredBlock40Step = 142 ifTrue: [
            recoveredBlock40Stack0 := recoveredArg2.
            recoveredBlock40PC := 145.
        ].
        recoveredBlock40Step = 145 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Stack0.
            recoveredBlock40PC := 146.
        ].
        recoveredBlock40Step = 146 ifTrue: [
            (recoveredBlock40Stack1) cr.
            recoveredBlock40Stack1 := recoveredBlock40Stack0.
            recoveredBlock40PC := 149.
        ].
        recoveredBlock40Step = 149 ifTrue: [
            recoveredBlock40Stack2 := EtFinished.
            recoveredBlock40PC := 151.
        ].
        recoveredBlock40Step = 151 ifTrue: [
            (recoveredBlock40Stack1) nextPutAll: (recoveredBlock40Stack2).
            recoveredBlock40PC := 153.
        ].
        recoveredBlock40Step = 153 ifTrue: [
            recoveredBlock40Stack0 := (recoveredBlock40Stack0) cr.
            recoveredBlock40PC := 155.
        ].
        recoveredBlock40Step = 155 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack0.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Value0 recoveredBlock158Value1 recoveredBlock158Value2 recoveredBlock158Value3 recoveredBlock158Value4 recoveredBlock158Value5 recoveredBlock158Value6 recoveredBlock158Value7 recoveredBlock158Value8 recoveredBlock158Value9 recoveredBlock158Value10 recoveredBlock158Value11 recoveredBlock158Value12 |
    recoveredBlock158Value0 := recoveredBlock158Arg1.
    recoveredBlock158Value1 := (recoveredBlock158Value0) argument.
    recoveredBlock158Value2 := [:recoveredBlock158Block169Arg1 | 
    | recoveredBlock158Block169Local1 recoveredBlock158Block169Value0 recoveredBlock158Block169Value1 recoveredBlock158Block169Value2 recoveredBlock158Block169Value3 recoveredBlock158Block169Value4 recoveredBlock158Block169Value5 recoveredBlock158Block169Value6 recoveredBlock158Block169Value7 recoveredBlock158Block169Value8 recoveredBlock158Block169Value9 recoveredBlock158Block169Value10 recoveredBlock158Block169Value11 recoveredBlock158Block169Value12 recoveredBlock158Block169Value13 recoveredBlock158Block169Value14 recoveredBlock158Block169Value15 recoveredBlock158Block169Value16 recoveredBlock158Block169Value17 recoveredBlock158Block169Value18 |
    recoveredBlock158Block169Value0 := ('Rnz') == ('EHI_79788').
    recoveredBlock158Block169Value1 := ReadWriteStream.
    recoveredBlock158Block169Value2 := (recoveredBlock158Block169Value1) on: ('').
    recoveredBlock158Block169Local1 := recoveredBlock158Block169Value2.
    recoveredBlock158Block169Value3 := recoveredBlock158Block169Local1.
    recoveredBlock158Block169Value4 := recoveredBlock158Block169Value3.
    recoveredBlock158Block169Value5 := recoveredBlock158Block169Arg1.
    (recoveredBlock158Block169Value4) nextPutAll: (recoveredBlock158Block169Value5).
    (recoveredBlock158Block169Value3) cr.
    recoveredBlock158Block169Value6 := recoveredBlock158Arg1.
    recoveredBlock158Block169Value7 := (recoveredBlock158Block169Value6) arguments.
    recoveredBlock158Block169Value8 := [].
    recoveredBlock158Block169Value9 := (recoveredBlock158Block169Value7) at: (2) ifAbsent: (recoveredBlock158Block169Value8).
    recoveredBlock158Block169Value10 := [:recoveredBlock158Block169Block213Arg1 | 
    | recoveredBlock158Block169Block213Stack0 recoveredBlock158Block169Block213Stack1 recoveredBlock158Block169Block213Stack2 recoveredBlock158Block169Block213Stack3 recoveredBlock158Block169Block213PC recoveredBlock158Block169Block213Step recoveredBlock158Block169Block213Done recoveredBlock158Block169Block213Result |
    recoveredBlock158Block169Block213Stack0 := nil.
    recoveredBlock158Block169Block213PC := 220.
    recoveredBlock158Block169Block213Done := false.
    [recoveredBlock158Block169Block213Done not] whileTrue: [
        recoveredBlock158Block169Block213Step := recoveredBlock158Block169Block213PC.
        recoveredBlock158Block169Block213Step = 220 ifTrue: [
            recoveredBlock158Block169Block213Stack1 := nil.
            recoveredBlock158Block169Block213PC := 221.
        ].
        recoveredBlock158Block169Block213Step = 221 ifTrue: [
            recoveredBlock158Block169Block213Stack2 := recoveredBlock158Block169Block213Arg1.
            recoveredBlock158Block169Block213PC := 222.
        ].
        recoveredBlock158Block169Block213Step = 222 ifTrue: [
            recoveredBlock158Block169Block213Stack2 := (recoveredBlock158Block169Block213Stack2) isOrderedCollection.
            recoveredBlock158Block169Block213PC := 224.
        ].
        recoveredBlock158Block169Block213Step = 224 ifTrue: [
            (recoveredBlock158Block169Block213Stack2) ifTrue: [recoveredBlock158Block169Block213PC := 228] ifFalse: [recoveredBlock158Block169Block213PC := 248].
        ].
        recoveredBlock158Block169Block213Step = 228 ifTrue: [
            recoveredBlock158Block169Block213PC := 229.
        ].
        recoveredBlock158Block169Block213Step = 229 ifTrue: [
            recoveredBlock158Block169Block213Stack1 := recoveredBlock158Block169Block213Arg1.
            recoveredBlock158Block169Block213PC := 230.
        ].
        recoveredBlock158Block169Block213Step = 230 ifTrue: [
            recoveredBlock158Block169Block213Stack2 := [:recoveredBlock158Block169Block213Block230Arg1 | 
    | recoveredBlock158Block169Block213Block230Value0 recoveredBlock158Block169Block213Block230Value1 recoveredBlock158Block169Block213Block230Value2 recoveredBlock158Block169Block213Block230Value3 |
    recoveredBlock158Block169Block213Block230Value0 := recoveredBlock158Block169Local1.
    recoveredBlock158Block169Block213Block230Value1 := recoveredBlock158Block169Block213Block230Value0.
    recoveredBlock158Block169Block213Block230Value2 := recoveredBlock158Block169Block213Block230Arg1.
    (recoveredBlock158Block169Block213Block230Value1) nextPutAll: (recoveredBlock158Block169Block213Block230Value2).
    recoveredBlock158Block169Block213Block230Value3 := (recoveredBlock158Block169Block213Block230Value0) cr.
    recoveredBlock158Block169Block213Block230Value3
].
            recoveredBlock158Block169Block213PC := 246.
        ].
        recoveredBlock158Block169Block213Step = 246 ifTrue: [
            recoveredBlock158Block169Block213Stack1 := (recoveredBlock158Block169Block213Stack1) do: (recoveredBlock158Block169Block213Stack2).
            recoveredBlock158Block169Block213PC := 248.
        ].
        recoveredBlock158Block169Block213Step = 248 ifTrue: [
            recoveredBlock158Block169Block213Result := recoveredBlock158Block169Block213Stack1.
            recoveredBlock158Block169Block213Done := true.
        ].
    ].
    recoveredBlock158Block169Block213Result
].
    (recoveredBlock158Block169Value9) ifNotNil: (recoveredBlock158Block169Value10).
    recoveredBlock158Block169Value11 := recoveredArg2.
    recoveredBlock158Block169Value12 := recoveredBlock158Block169Local1.
    recoveredBlock158Block169Value13 := (recoveredBlock158Block169Value12) contents.
    (recoveredBlock158Block169Value11) nextPutAll: (recoveredBlock158Block169Value13).
    recoveredBlock158Block169Value14 := RBUserInfo.
    recoveredBlock158Block169Value15 := recoveredBlock158Block169Local1.
    recoveredBlock158Block169Value16 := (recoveredBlock158Block169Value15) contents.
    recoveredBlock158Block169Value17 := (recoveredBlock158Block169Value14) message: (recoveredBlock158Block169Value16).
    recoveredBlock158Block169Value18 := (recoveredBlock158Block169Value17) prompt.
    recoveredBlock158Block169Value18
].
    (recoveredBlock158Value1) ifNotNil: (recoveredBlock158Value2).
    recoveredBlock158Value3 := recoveredArg2.
    recoveredBlock158Value4 := recoveredBlock158Value3.
    recoveredBlock158Value5 := recoveredArg1.
    recoveredBlock158Value6 := (' (') , (recoveredBlock158Value5).
    recoveredBlock158Value7 := (recoveredBlock158Value6) , (')').
    (recoveredBlock158Value4) nextPutAll: (recoveredBlock158Value7).
    (recoveredBlock158Value3) cr.
    recoveredBlock158Value8 := recoveredArg2.
    recoveredBlock158Value9 := recoveredBlock158Value8.
    recoveredBlock158Value10 := EtImportAborted.
    (recoveredBlock158Value9) nextPutAll: (recoveredBlock158Value10).
    (recoveredBlock158Value8) cr.
    recoveredBlock158Value11 := recoveredBlock158Arg1.
    recoveredBlock158Value12 := (recoveredBlock158Value11) exitWith: (nil).
    recoveredBlock158Value12
].
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205bddc0; bytecode file offset 0xeba6f4"
!SGImportManager methodsFor: 'recovered'!
biCheckImportContainer: recoveredArg1 userInteraction: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28117ac0Arg1 :block28117ac0Arg2 | 
    | block28117ac0Value0 block28117ac0Value1 block28117ac0Value2 block28117ac0Value3 block28117ac0Value4 |
    block28117ac0Value0 := block28117ac0Arg1.
    block28117ac0Value1 := (block28117ac0Value0) level.
    block28117ac0Value2 := block28117ac0Arg2.
    block28117ac0Value3 := (block28117ac0Value2) level.
    block28117ac0Value4 := (block28117ac0Value1) < (block28117ac0Value3).
    block28117ac0Value4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) ignoreItemName.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 43.
        ].
        recoveredBlock32Step = 43 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack3.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 55] ifFalse: [recoveredBlock32PC := 48].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Local1.
            recoveredBlock32PC := 53.
        ].
        recoveredBlock32Step = 53 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) add: (recoveredBlock32Stack2).
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := '%1 %2'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := EtImportIgnored.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := EtMissingDependentItems.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := EtMissingDependentItemsIgnored.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := EtQuestionContinue.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Local1 recoveredBlock133Stack0 recoveredBlock133Stack1 recoveredBlock133Stack2 recoveredBlock133Stack3 recoveredBlock133Stack4 recoveredBlock133PC recoveredBlock133Step recoveredBlock133Done recoveredBlock133Result |
    recoveredBlock133Stack0 := self.
    recoveredBlock133PC := 140.
    recoveredBlock133Done := false.
    [recoveredBlock133Done not] whileTrue: [
        recoveredBlock133Step := recoveredBlock133PC.
        recoveredBlock133Step = 140 ifTrue: [
            recoveredBlock133Stack1 := nil.
            recoveredBlock133PC := 141.
        ].
        recoveredBlock133Step = 141 ifTrue: [
            recoveredBlock133Stack2 := recoveredBlock133Arg1.
            recoveredBlock133PC := 142.
        ].
        recoveredBlock133Step = 142 ifTrue: [
            recoveredBlock133Stack2 := (recoveredBlock133Stack2) overwriteItemName.
            recoveredBlock133PC := 144.
        ].
        recoveredBlock133Step = 144 ifTrue: [
            recoveredBlock133Stack3 := recoveredBlock133Stack2.
            recoveredBlock133PC := 145.
        ].
        recoveredBlock133Step = 145 ifTrue: [
            recoveredBlock133Local1 := recoveredBlock133Stack3.
            recoveredBlock133PC := 146.
        ].
        recoveredBlock133Step = 146 ifTrue: [
            (recoveredBlock133Stack2 == nil) ifTrue: [recoveredBlock133PC := 157] ifFalse: [recoveredBlock133PC := 150].
        ].
        recoveredBlock133Step = 150 ifTrue: [
            recoveredBlock133PC := 151.
        ].
        recoveredBlock133Step = 151 ifTrue: [
            recoveredBlock133Stack1 := recoveredLocal4.
            recoveredBlock133PC := 154.
        ].
        recoveredBlock133Step = 154 ifTrue: [
            recoveredBlock133Stack2 := recoveredBlock133Local1.
            recoveredBlock133PC := 155.
        ].
        recoveredBlock133Step = 155 ifTrue: [
            recoveredBlock133Stack1 := (recoveredBlock133Stack1) add: (recoveredBlock133Stack2).
            recoveredBlock133PC := 157.
        ].
        recoveredBlock133Step = 157 ifTrue: [
            recoveredBlock133Result := recoveredBlock133Stack1.
            recoveredBlock133Done := true.
        ].
    ].
    recoveredBlock133Result
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := EtOverwriteItems.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := EtQuestionContinue.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) queryImportLabel: (recoveredStack2) question: (recoveredStack3) strings: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 193] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Local1 recoveredBlock203Stack0 recoveredBlock203Stack1 recoveredBlock203Stack2 recoveredBlock203Stack3 recoveredBlock203Stack4 recoveredBlock203PC recoveredBlock203Step recoveredBlock203Done recoveredBlock203Result |
    recoveredBlock203Stack0 := self.
    recoveredBlock203PC := 210.
    recoveredBlock203Done := false.
    [recoveredBlock203Done not] whileTrue: [
        recoveredBlock203Step := recoveredBlock203PC.
        recoveredBlock203Step = 210 ifTrue: [
            recoveredBlock203Stack1 := nil.
            recoveredBlock203PC := 211.
        ].
        recoveredBlock203Step = 211 ifTrue: [
            recoveredBlock203Stack2 := recoveredBlock203Arg1.
            recoveredBlock203PC := 212.
        ].
        recoveredBlock203Step = 212 ifTrue: [
            recoveredBlock203Stack2 := (recoveredBlock203Stack2) readOnlyName.
            recoveredBlock203PC := 214.
        ].
        recoveredBlock203Step = 214 ifTrue: [
            recoveredBlock203Stack3 := recoveredBlock203Stack2.
            recoveredBlock203PC := 215.
        ].
        recoveredBlock203Step = 215 ifTrue: [
            recoveredBlock203Local1 := recoveredBlock203Stack3.
            recoveredBlock203PC := 216.
        ].
        recoveredBlock203Step = 216 ifTrue: [
            (recoveredBlock203Stack2 == nil) ifTrue: [recoveredBlock203PC := 227] ifFalse: [recoveredBlock203PC := 220].
        ].
        recoveredBlock203Step = 220 ifTrue: [
            recoveredBlock203PC := 221.
        ].
        recoveredBlock203Step = 221 ifTrue: [
            recoveredBlock203Stack1 := recoveredLocal5.
            recoveredBlock203PC := 224.
        ].
        recoveredBlock203Step = 224 ifTrue: [
            recoveredBlock203Stack2 := recoveredBlock203Local1.
            recoveredBlock203PC := 225.
        ].
        recoveredBlock203Step = 225 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) add: (recoveredBlock203Stack2).
            recoveredBlock203PC := 227.
        ].
        recoveredBlock203Step = 227 ifTrue: [
            recoveredBlock203Result := recoveredBlock203Stack1.
            recoveredBlock203Done := true.
        ].
    ].
    recoveredBlock203Result
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 247].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := EtDisallowOverwriteItems.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 'EHI_79788'.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := [:recoveredBlock263Arg1 | 
    | recoveredBlock263Value0 recoveredBlock263Value1 recoveredBlock263Value2 recoveredBlock263Value3 |
    recoveredBlock263Value0 := recoveredBlock263Arg1.
    recoveredBlock263Value1 := (recoveredBlock263Value0) findConflictingComponentForPathWithImportManager: (self).
    recoveredBlock263Value2 := [:recoveredBlock263Block276Arg1 | 
    | recoveredBlock263Block276Value0 recoveredBlock263Block276Value1 recoveredBlock263Block276Value2 recoveredBlock263Block276Value3 recoveredBlock263Block276Value4 recoveredBlock263Block276Value5 recoveredBlock263Block276Value6 |
    recoveredBlock263Block276Value0 := recoveredLocal1.
    recoveredBlock263Block276Value1 := recoveredBlock263Arg1.
    recoveredBlock263Block276Value2 := (recoveredBlock263Block276Value1) importLabel.
    recoveredBlock263Block276Value3 := recoveredBlock263Block276Arg1.
    recoveredBlock263Block276Value4 := (recoveredBlock263Block276Value3) pathString.
    recoveredBlock263Block276Value5 := ('%1 conflicts with %2') bindWith: (recoveredBlock263Block276Value2) with: (recoveredBlock263Block276Value4).
    recoveredBlock263Block276Value6 := (recoveredBlock263Block276Value0) add: (recoveredBlock263Block276Value5).
    recoveredBlock263Block276Value6
].
    recoveredBlock263Value3 := (recoveredBlock263Value1) ifNotNil: (recoveredBlock263Value2).
    recoveredBlock263Value3
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 323].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := ExASDImportError.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := 'Some components cannot be imported due to path conflicts. See monitor window for details.'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205de574; bytecode file offset 0xedaf10"
!SGImportManager methodsFor: 'recovered'!
biGetSelectedContainersFrom: recoveredArg1 impDict: recoveredArg2 notificationWindow: recoveredArg3 userInteraction: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) biVersionCheck: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) biGetContainers: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'BOSCH_CC_SCM_RENAME'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block2811a190Arg1 | 
    | block2811a190Stack0 block2811a190Stack1 block2811a190Stack2 block2811a190Stack3 block2811a190Stack4 block2811a190PC block2811a190Step block2811a190Done block2811a190Result |
    block2811a190Stack0 := self.
    block2811a190PC := 4.
    block2811a190Done := false.
    [block2811a190Done not] whileTrue: [
        block2811a190Step := block2811a190PC.
        block2811a190Step = 4 ifTrue: [
            block2811a190Stack1 := nil.
            block2811a190PC := 5.
        ].
        block2811a190Step = 5 ifTrue: [
            block2811a190Stack2 := block2811a190Arg1.
            block2811a190PC := 6.
        ].
        block2811a190Step = 6 ifTrue: [
            block2811a190Stack2 := (block2811a190Stack2) dbVersion.
            block2811a190PC := 8.
        ].
        block2811a190Step = 8 ifTrue: [
            block2811a190Stack3 := MainController.
            block2811a190PC := 10.
        ].
        block2811a190Step = 10 ifTrue: [
            block2811a190Stack3 := (block2811a190Stack3) class.
            block2811a190PC := 12.
        ].
        block2811a190Step = 12 ifTrue: [
            block2811a190Stack3 := (block2811a190Stack3) currentDBVersion.
            block2811a190PC := 14.
        ].
        block2811a190Step = 14 ifTrue: [
            block2811a190Stack2 := (block2811a190Stack2) < (block2811a190Stack3).
            block2811a190PC := 15.
        ].
        block2811a190Step = 15 ifTrue: [
            (block2811a190Stack2) ifTrue: [block2811a190PC := 18] ifFalse: [block2811a190PC := 22].
        ].
        block2811a190Step = 18 ifTrue: [
            block2811a190PC := 19.
        ].
        block2811a190Step = 19 ifTrue: [
            block2811a190Stack1 := block2811a190Arg1.
            block2811a190PC := 20.
        ].
        block2811a190Step = 20 ifTrue: [
            block2811a190Stack1 := (block2811a190Stack1) fixFolderPathNames.
            block2811a190PC := 22.
        ].
        block2811a190Step = 22 ifTrue: [
            block2811a190Result := block2811a190Stack1.
            block2811a190Done := true.
        ].
    ].
    block2811a190Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) biUIContainerSelection: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) biUIDisallowOverwriteCheck: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) biRemoveIgnoredContainers: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83Stack6 recoveredBlock83Stack7 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack2 := [:recoveredBlock83Block91Arg1 | 
    | recoveredBlock83Block91Value0 recoveredBlock83Block91Value1 recoveredBlock83Block91Value2 recoveredBlock83Block91Value3 recoveredBlock83Block91Value4 recoveredBlock83Block91Value5 recoveredBlock83Block91Value6 recoveredBlock83Block91Value7 |
    recoveredBlock83Block91Value0 := recoveredArg3.
    recoveredBlock83Block91Value1 := recoveredBlock83Block91Value0.
    recoveredBlock83Block91Value2 := recoveredBlock83Block91Arg1.
    recoveredBlock83Block91Value3 := (recoveredBlock83Block91Value2) importLabel.
    recoveredBlock83Block91Value4 := recoveredBlock83Block91Arg1.
    recoveredBlock83Block91Value5 := (recoveredBlock83Block91Value4) ignoreReason.
    recoveredBlock83Block91Value6 := ('Item %1 can not be imported. Reason: <%2>') bindWith: (recoveredBlock83Block91Value3) with: (recoveredBlock83Block91Value5).
    (recoveredBlock83Block91Value1) addWarningText: (recoveredBlock83Block91Value6).
    recoveredBlock83Block91Value7 := (recoveredBlock83Block91Value0) cr.
    recoveredBlock83Block91Value7
].
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            (recoveredBlock83Stack1) do: (recoveredBlock83Stack2).
            recoveredBlock83PC := 119.
        ].
        recoveredBlock83Step = 119 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            recoveredBlock83Stack2 := recoveredArg4.
            recoveredBlock83PC := 123.
        ].
        recoveredBlock83Step = 123 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 126] ifFalse: [recoveredBlock83PC := 174].
        ].
        recoveredBlock83Step = 126 ifTrue: [
            recoveredBlock83PC := 127.
        ].
        recoveredBlock83Step = 127 ifTrue: [
            recoveredBlock83Stack1 := 'Kli'.
            recoveredBlock83PC := 129.
        ].
        recoveredBlock83Step = 129 ifTrue: [
            recoveredBlock83Stack2 := 'Call_85953'.
            recoveredBlock83PC := 131.
        ].
        recoveredBlock83Step = 131 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) == (recoveredBlock83Stack2).
            recoveredBlock83PC := 132.
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83PC := 133.
        ].
        recoveredBlock83Step = 133 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 134.
        ].
        recoveredBlock83Step = 134 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 135.
        ].
        recoveredBlock83Step = 135 ifTrue: [
            recoveredBlock83Stack3 := 'These items can not be imported (see monitor for details):'.
            recoveredBlock83PC := 137.
        ].
        recoveredBlock83Step = 137 ifTrue: [
            recoveredBlock83Stack4 := 'Continue without these items?'.
            recoveredBlock83PC := 139.
        ].
        recoveredBlock83Step = 139 ifTrue: [
            recoveredBlock83Stack5 := recoveredBlock83Arg1.
            recoveredBlock83PC := 140.
        ].
        recoveredBlock83Step = 140 ifTrue: [
            recoveredBlock83Stack6 := [:block2811a1b4Arg1 | 
    | block2811a1b4Value0 block2811a1b4Value1 block2811a1b4Value2 block2811a1b4Value3 block2811a1b4Value4 block2811a1b4Value5 |
    block2811a1b4Value0 := block2811a1b4Arg1.
    block2811a1b4Value1 := (block2811a1b4Value0) importLabel.
    block2811a1b4Value2 := (block2811a1b4Value1) , (' Reason : ').
    block2811a1b4Value3 := block2811a1b4Arg1.
    block2811a1b4Value4 := (block2811a1b4Value3) ignoreReason.
    block2811a1b4Value5 := (block2811a1b4Value2) , (block2811a1b4Value4).
    block2811a1b4Value5
].
            recoveredBlock83PC := 142.
        ].
        recoveredBlock83Step = 142 ifTrue: [
            recoveredBlock83PC := 159.
        ].
        recoveredBlock83Step = 159 ifTrue: [
            recoveredBlock83Stack5 := (recoveredBlock83Stack5) collect: (recoveredBlock83Stack6).
            recoveredBlock83PC := 161.
        ].
        recoveredBlock83Step = 161 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) queryImportLabel: (recoveredBlock83Stack3) question: (recoveredBlock83Stack4) strings: (recoveredBlock83Stack5).
            recoveredBlock83PC := 164.
        ].
        recoveredBlock83Step = 164 ifTrue: [
            (recoveredBlock83Stack2) ifTrue: [recoveredBlock83PC := 174] ifFalse: [recoveredBlock83PC := 168].
        ].
        recoveredBlock83Step = 168 ifTrue: [
            recoveredBlock83PC := 169.
        ].
        recoveredBlock83Step = 169 ifTrue: [
            recoveredBlock83Stack1 := ExASDImportError.
            recoveredBlock83PC := 171.
        ].
        recoveredBlock83Step = 171 ifTrue: [
            recoveredBlock83Stack2 := nil.
            recoveredBlock83PC := 172.
        ].
        recoveredBlock83Step = 172 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) signalWith: (recoveredBlock83Stack2).
            recoveredBlock83PC := 174.
        ].
        recoveredBlock83Step = 174 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := EtCheckImport.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := 'PathLimitation'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := [:recoveredBlock196Arg1 | 
    | recoveredBlock196Value0 recoveredBlock196Value1 recoveredBlock196Value2 recoveredBlock196Value3 recoveredBlock196Value4 recoveredBlock196Value5 |
    recoveredBlock196Value0 := recoveredBlock196Arg1.
    recoveredBlock196Value1 := (recoveredBlock196Value0) importPath.
    recoveredBlock196Value2 := (recoveredBlock196Value1) size.
    recoveredBlock196Value3 := (self) library.
    recoveredBlock196Value4 := (recoveredBlock196Value3) pathNameLimit.
    recoveredBlock196Value5 := (recoveredBlock196Value2) > (recoveredBlock196Value4).
    recoveredBlock196Value5
].
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 307].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := 'The database path of some of the new items exceeded '.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) library.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathNameLimit.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := ' characters.\This may cause a problem when trying to export this item to the file system!!\Continue anyway?'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) noYes.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 251] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := 'BOSCH_CC_SCM_180_CHARACTERS'.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := [:recoveredBlock260Arg1 | 
    | recoveredBlock260Value0 recoveredBlock260Value1 recoveredBlock260Value2 recoveredBlock260Value3 recoveredBlock260Value4 recoveredBlock260Value5 |
    recoveredBlock260Value0 := recoveredBlock260Arg1.
    recoveredBlock260Value1 := (recoveredBlock260Value0) importPath.
    recoveredBlock260Value2 := (recoveredBlock260Value1) size.
    recoveredBlock260Value3 := (self) library.
    recoveredBlock260Value4 := (recoveredBlock260Value3) pathNameLimit.
    recoveredBlock260Value5 := (recoveredBlock260Value2) > (recoveredBlock260Value4).
    recoveredBlock260Value5
].
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := [:block2811a1d8Arg1 | 
    | block2811a1d8Stack0 block2811a1d8Stack1 block2811a1d8Stack2 block2811a1d8Stack3 block2811a1d8Stack4 block2811a1d8PC block2811a1d8Step block2811a1d8Done block2811a1d8Result |
    block2811a1d8Stack0 := self.
    block2811a1d8PC := 4.
    block2811a1d8Done := false.
    [block2811a1d8Done not] whileTrue: [
        block2811a1d8Step := block2811a1d8PC.
        block2811a1d8Step = 4 ifTrue: [
            block2811a1d8Stack1 := nil.
            block2811a1d8PC := 5.
        ].
        block2811a1d8Step = 5 ifTrue: [
            block2811a1d8Stack2 := block2811a1d8Arg1.
            block2811a1d8PC := 6.
        ].
        block2811a1d8Step = 6 ifTrue: [
            block2811a1d8Stack2 := (block2811a1d8Stack2) dbVersion.
            block2811a1d8PC := 8.
        ].
        block2811a1d8Step = 8 ifTrue: [
            block2811a1d8Stack3 := MainController.
            block2811a1d8PC := 10.
        ].
        block2811a1d8Step = 10 ifTrue: [
            block2811a1d8Stack3 := (block2811a1d8Stack3) class.
            block2811a1d8PC := 12.
        ].
        block2811a1d8Step = 12 ifTrue: [
            block2811a1d8Stack3 := (block2811a1d8Stack3) currentDBVersion.
            block2811a1d8PC := 14.
        ].
        block2811a1d8Step = 14 ifTrue: [
            block2811a1d8Stack2 := (block2811a1d8Stack2) < (block2811a1d8Stack3).
            block2811a1d8PC := 15.
        ].
        block2811a1d8Step = 15 ifTrue: [
            (block2811a1d8Stack2) ifTrue: [block2811a1d8PC := 18] ifFalse: [block2811a1d8PC := 22].
        ].
        block2811a1d8Step = 18 ifTrue: [
            block2811a1d8PC := 19.
        ].
        block2811a1d8Step = 19 ifTrue: [
            block2811a1d8Stack1 := block2811a1d8Arg1.
            block2811a1d8PC := 20.
        ].
        block2811a1d8Step = 20 ifTrue: [
            block2811a1d8Stack1 := (block2811a1d8Stack1) moveItemToLostAndFound.
            block2811a1d8PC := 22.
        ].
        block2811a1d8Step = 22 ifTrue: [
            block2811a1d8Result := block2811a1d8Stack1.
            block2811a1d8Done := true.
        ].
    ].
    block2811a1d8Result
].
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) biCheckImportContainer: (recoveredStack1) userInteraction: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := EtPrepareImport.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolVersion.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 367] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := (recoveredStack0) toolVersion.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentProductVersionString.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 367].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'Importing components from version %1.'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := (recoveredStack3) toolVersion.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ef56c; bytecode file offset 0xeebf20"
!SGImportManager methodsFor: 'recovered'!
importArXmlFiles: recoveredArg1 toFolder: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '%ASCET%\'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) a2aExe.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFilename.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := RBUserInfo.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'AUTOSAR to ASCET converter missing!!\Please install the AUTOSAR to ASCET Importer.'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorMessage: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) importError: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ASDPathOptions.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionTempPath.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'ARXML'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildTempDirIn: (recoveredStack2) withPrefix: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionTempPath.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'ARImporterWorkspace'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) findFileNames: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'The output directory '.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := ' is not empty.'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := '\All files and folders in this directory will be deleted.\ \Are you sure?'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) okCancel.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := '\conversion.log'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := '\conversion.inv'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := '"'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppProgramPath.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) a2aExe.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := '" --launcher.suppressErrors -nosplash -data '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := ' -application com.etas.ascet.importer.a2a.headless.appl -inv "'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := '" > "'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 251] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := '-transfer -projects -namespaces'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := '-outdir "'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := '\amd"'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := [:recoveredBlock222Arg1 | 
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 recoveredBlock222Value4 recoveredBlock222Value5 |
    recoveredBlock222Value0 := recoveredLocal2.
    recoveredBlock222Value1 := recoveredBlock222Value0.
    recoveredBlock222Value2 := recoveredBlock222Arg1.
    recoveredBlock222Value3 := ('-file "') , (recoveredBlock222Value2).
    recoveredBlock222Value4 := (recoveredBlock222Value3) , ('"').
    (recoveredBlock222Value1) nextPutAll: (recoveredBlock222Value4).
    recoveredBlock222Value5 := (recoveredBlock222Value0) cr.
    recoveredBlock222Value5
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := '>>> Starting AUTOSAR to ASCET conversion'.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := ETASWinExec.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) executeOnWindows: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := ETASWinExec.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileDescriptor.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileDescriptor.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack1) executeOnWindows: (recoveredStack2) outputTo: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 336] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := (recoveredStack2) scanForAutosarImporterErrors: (recoveredStack3).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) importError: (recoveredStack2).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := '>>> Finished AUTOSAR to ASCET conversion'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack1) deletePathRecursive: (recoveredStack2).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

