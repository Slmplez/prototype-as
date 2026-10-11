"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000069c; bytecode file offset 0x3c804"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
systemConfigurationStrings
    ^#('EmClassEditionEntry compareMethodSource' 'System genericFormat' 'System fileOutComments' 'System fileOutDescriptions' 'System fileOutCategories' 'EsImageStartUp configurationFileName' 'EsImageStartUp walkbackFileName')
! !

"lib.ic method 0x200006cc; bytecode file offset 0x3c804"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
systemWideBrowserStrings
    ^#('EtAbstractMethodsBrowser confirmMethodCategoriesForNewMethods' 'EtAbstractMethodsBrowser methodCategoriesEnabled' 'EtAbstractMethodsBrowser showPrivatePublicOnOpen' 'EtApplicationBrowser useHierarchyDefault' 'EtApplicationManager showReleasedStatusForSubApplications' 'EtBrowser errorBellEnabled' 'EtChangesBrowser findFirstChange' 'EtClassBrowser inheritanceViewingMode' 'EtClassBrowser selectAllCategoriesByDefault' 'EtClassBrowser showingAllImplementations' 'EtClassBrowser showListHorizontalScrollBars' 'EtClassesBrowser promptOnSubclassing')
! !

"lib.ic method 0x20000768; bytecode file offset 0x3c804"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
individualBrowserStrings
    ^#('EtBrowser confirmDeletions' 'EtBrowser textPercentage' 'EtBrowser updateOnWindowActivation' 'EtClassBrowser methodListPercentage')
! !

"lib.ic method 0x2000078c; bytecode file offset 0x3c804"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
userInterfaceStrings
    ^#('EtTools expandAll' 'EtTools grayHierarchy' 'EtTools infoIndicator' 'EtTools loadedIndicator' 'EtTools showBothChoices' 'EtTools stackPanes' 'EtTools useWildcardOnFind')
! !

"lib.ic method 0x200007bc; bytecode file offset 0x3c804"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
errorReportingStrings
    ^#('EmErrorReporter displayTitle' 'EmImageSupport errorReporter displayTitle' 'EmErrorReporter severityCutOff')
! !

"lib.ic method 0x20001b88; bytecode file offset 0x3dbb8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
cr
    | recoveredValue0 |
    recoveredValue0 := stream.
    (recoveredValue0) cr.
    ^self
! !

"lib.ic method 0x20001b94; bytecode file offset 0x3dbb8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
tab
    | recoveredValue0 |
    recoveredValue0 := stream.
    (recoveredValue0) tab.
    ^self
! !

"lib.ic method 0x200038f8; bytecode file offset 0x3f924"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
areToolsLoaded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (recoveredValue0) classAt: ('EtTools').
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"lib.ic method 0x20005134; bytecode file offset 0x4115c"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) flush.
    ^self
! !

"lib.ic method 0x20007508; bytecode file offset 0x43534"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpHeader
    (self) cr.
    (self) nextPutAll: ('System Configuration Dump').
    (self) cr.
    (self) cr.
    ^self
! !

"lib.ic method 0x20007ba4; bytecode file offset 0x43bd4"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
configurationManagementStrings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('EmImageBuilder cancelIfMethodsCollide' 'EmImageBuilder cancelIfMethodsDoNotCompile' 'EmImageBuilder cancelIfDeclarationErrors' 'EmMethodEdition useLinker' 'EmTimeStamp showVersionTimeStamps' 'EmTimeStamp timeZonesFromGMT' 'EmTimeStamp usingGMT').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) areToolsLoaded.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := #('EtTools checkLibraryReferencesOnPurge' 'EtTools moveAllRequiredMapsToo' 'EtTools moveAllSubApplicationsToo' 'EtTools recordMethodCreation' 'EtTools recordUserPrimitivePath' 'EtTools recordVersioning').
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20008144; bytecode file offset 0x44178"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpConfigurationManagementPreferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MxEMc68.
    (self) nextPutAll: (recoveredValue0).
    (self) cr.
    (self) cr.
    recoveredValue1 := (self) configurationManagementStrings.
    (self) dumpOptions: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20008178; bytecode file offset 0x44200"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpErrorReportingPreferences
    | recoveredValue0 |
    (self) nextPutAll: ('Error Reporting Options: ').
    (self) cr.
    (self) cr.
    recoveredValue0 := (self) errorReportingStrings.
    (self) dumpOptions: (recoveredValue0).
    ^self
! !

"lib.ic method 0x20008194; bytecode file offset 0x44200"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpSystemConfigurationPreferences
    | recoveredValue0 |
    (self) nextPutAll: ('System Configuration Options:').
    (self) cr.
    (self) cr.
    recoveredValue0 := (self) systemConfigurationStrings.
    (self) dumpOptions: (recoveredValue0).
    ^self
! !

"lib.ic method 0x200081b0; bytecode file offset 0x44200"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpSystemWideBrowserPreferences
    | recoveredValue0 |
    (self) nextPutAll: ('System Wide Browser Options:').
    (self) cr.
    (self) cr.
    recoveredValue0 := (self) systemWideBrowserStrings.
    (self) dumpOptions: (recoveredValue0).
    ^self
! !

"lib.ic method 0x200081cc; bytecode file offset 0x44200"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpUserInterfacePreferences
    | recoveredValue0 |
    (self) nextPutAll: ('User Interface Options:').
    (self) cr.
    (self) cr.
    recoveredValue0 := (self) userInterfaceStrings.
    (self) dumpOptions: (recoveredValue0).
    ^self
! !

"lib.ic method 0x200088a8; bytecode file offset 0x448e4"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpCurrentUser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmUser.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) fullName.
    recoveredValue3 := ('Current user:  ') , (recoveredValue2).
    (self) nextPutAll: (recoveredValue3).
    (self) cr.
    (self) cr.
    ^self
! !

"lib.ic method 0x20009494; bytecode file offset 0x454b8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
tab: recoveredArg1
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
            recoveredPC := 12.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := stream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 8] ifFalse: [recoveredPC := 22]] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009c80; bytecode file offset 0x45cb8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpSystemCopyright
    | recoveredValue0 recoveredValue1 |
    (self) cr.
    (self) nextPutAll: ('Copyright:').
    (self) cr.
    (self) cr.
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) copyright.
    (self) nextPutAllIndented: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20009d64; bytecode file offset 0x45da4"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
browserClassWithConcreteSubclasses: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28004228Arg1 | 
    | block28004228Value0 block28004228Value1 |
    block28004228Value0 := block28004228Arg1.
    block28004228Value1 := (block28004228Value0) includesSelector: ('createWorkRegion').
    block28004228Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := Class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000ae94; bytecode file offset 0x46ed0"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpPreferences
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) dumpConfigurationManagementPreferences.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) dumpErrorReportingPreferences.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) dumpSystemConfigurationPreferences.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) areToolsLoaded.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) dumpUserInterfacePreferences.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) dumpSystemWideBrowserPreferences.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) dumpIndividualBrowserPreferences.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000d33c; bytecode file offset 0x4937c"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) , (':  ').
    recoveredBlock5Value2 := Compiler.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value2) evaluate: (recoveredBlock5Value3).
    recoveredBlock5Value5 := (recoveredBlock5Value4) printString.
    recoveredBlock5Value6 := (recoveredBlock5Value1) , (recoveredBlock5Value5).
    (self) nextPutAllIndented: (recoveredBlock5Value6).
    recoveredBlock5Value7 := (self) cr.
    recoveredBlock5Value7
].
    (recoveredValue0) do: (recoveredValue1).
    (self) cr.
    ^self
! !

"lib.ic method 0x2000dc1c; bytecode file offset 0x49c60"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpLibraryPrimitives
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EmLibraryInterface.
    recoveredValue1 := (recoveredValue0) nativeInterface.
    recoveredValue2 := (recoveredValue1) libraryName.
    recoveredValue3 := ('Native primitives library:  ') , (recoveredValue2).
    (self) nextPutAllIndented: (recoveredValue3).
    (self) cr.
    recoveredValue4 := EmLibraryInterface.
    recoveredValue5 := (recoveredValue4) serverInterface.
    recoveredValue6 := (recoveredValue5) libraryName.
    recoveredValue7 := ('Emsrv primitives library:  ') , (recoveredValue6).
    (self) nextPutAllIndented: (recoveredValue7).
    (self) cr.
    (self) cr.
    ^self
! !

"lib.ic method 0x2000fa60; bytecode file offset 0x4baa8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpDateAndTime
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    (self) cr.
    recoveredValue0 := Time.
    recoveredValue1 := (recoveredValue0) now.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := ('Time:  ') , (recoveredValue2).
    (self) nextPutAll: (recoveredValue3).
    (self) cr.
    recoveredValue4 := Date.
    recoveredValue5 := (recoveredValue4) today.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := ('Date:  ') , (recoveredValue6).
    (self) nextPutAll: (recoveredValue7).
    (self) cr.
    (self) cr.
    ^self
! !

"lib.ic method 0x20010e94; bytecode file offset 0x4cee4"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := MxEMc70.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            stream := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) dumpHeader.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) dumpSystemCopyright.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) dumpDateAndTime.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) dumpPlatform.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) dumpCurrentUser.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) dumpLibrary.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) dumpMemory.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) dumpPreferences.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) dumpLoadedApplications.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012390; bytecode file offset 0x4e3e4"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
managerVersionString
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ReadStream.
    recoveredValue1 := System.
    recoveredValue2 := (recoveredValue1) managerVersion.
    recoveredValue3 := (recoveredValue2) printStringRadix: (16) showRadix: (false).
    recoveredValue4 := (recoveredValue0) on: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := WriteStream.
    recoveredValue6 := String.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := (recoveredValue5) on: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue11) next.
    (recoveredValue10) nextPut: (recoveredValue12).
    recoveredValue13 := recoveredValue9.
    (recoveredValue13) nextPut: ($.).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (recoveredValue14) upToEnd.
    (recoveredValue9) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (recoveredValue16) contents.
    ^recoveredValue17
! !

"lib.ic method 0x200152d4; bytecode file offset 0x51318"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
nextPutAllIndented: recoveredArg1
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
            recoveredStack2 := 13.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) tab.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) nextLine.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) tab.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20015424; bytecode file offset 0x51464"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpApplicationsNotInLibrary: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := MxEMc66.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := MxEMc67.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) nextPutAllIndented: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := (recoveredBlock37Value0) signature.
    (self) nextPutAllIndented: (recoveredBlock37Value1).
    recoveredBlock37Value2 := (self) cr.
    recoveredBlock37Value2
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20018ab0; bytecode file offset 0x54b10"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpLoadedApplications
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    (self) nextPutAll: ('Loaded Applications:').
    (self) cr.
    (self) cr.
    recoveredValue2 := System.
    recoveredValue3 := (recoveredValue2) loadedSubApplications.
    recoveredValue4 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) allParents.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) size.
            recoveredBlock24PC := 36.
        ].
        recoveredBlock24Step = 36 ifTrue: [
            (recoveredBlock24Stack1) tab: (recoveredBlock24Stack2).
            recoveredBlock24Stack1 := recoveredBlock24Stack0.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) signature.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            (recoveredBlock24Stack1) nextPutAllIndented: (recoveredBlock24Stack2).
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            (recoveredBlock24Stack0) cr.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack0 := nil.
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 48.
        ].
        recoveredBlock24Step = 48 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) existsInLibrary.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 61] ifFalse: [recoveredBlock24PC := 54].
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24PC := 55.
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Stack0 := recoveredLocal1.
            recoveredBlock24PC := 58.
        ].
        recoveredBlock24Step = 58 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 59.
        ].
        recoveredBlock24Step = 59 ifTrue: [
            recoveredBlock24Stack0 := (recoveredBlock24Stack0) add: (recoveredBlock24Stack1).
            recoveredBlock24PC := 61.
        ].
        recoveredBlock24Step = 61 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack0.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) dumpApplicationsNotInLibrary: (recoveredValue5).
    ^self
! !

"lib.ic method 0x2001c2e0; bytecode file offset 0x58340"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpPlatform
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) nextPutAll: ('Platform:').
    (self) cr.
    (self) cr.
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) vmType.
    recoveredValue2 := ('Virtual machine:  ') , (recoveredValue1).
    (self) nextPutAllIndented: (recoveredValue2).
    (self) cr.
    recoveredValue3 := System.
    recoveredValue4 := (recoveredValue3) byteCodeVersion.
    recoveredValue5 := ('Bytecode version:  ') , (recoveredValue4).
    (self) nextPutAllIndented: (recoveredValue5).
    (self) cr.
    recoveredValue6 := (self) managerVersionString.
    recoveredValue7 := ('Manager version:  ') , (recoveredValue6).
    (self) nextPutAllIndented: (recoveredValue7).
    (self) cr.
    recoveredValue8 := System.
    recoveredValue9 := (recoveredValue8) configuredSubsystems.
    recoveredValue10 := [:recoveredBlock59Arg1 :recoveredBlock59Arg2 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := (recoveredBlock59Value0) printString.
    recoveredBlock59Value2 := (recoveredBlock59Value1) , (' subsystem:  ').
    recoveredBlock59Value3 := recoveredBlock59Arg2.
    recoveredBlock59Value4 := (recoveredBlock59Value3) printString.
    recoveredBlock59Value5 := (recoveredBlock59Value2) , (recoveredBlock59Value4).
    (self) nextPutAllIndented: (recoveredBlock59Value5).
    recoveredBlock59Value6 := (self) cr.
    recoveredBlock59Value6
].
    (recoveredValue9) keysAndValuesDo: (recoveredValue10).
    (self) cr.
    ^self
! !

"lib.ic method 0x2001e56c; bytecode file offset 0x5a5d8"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpIndividualBrowserPreferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) nextPutAll: ('Individual Browser Options:').
    (self) cr.
    (self) cr.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := Smalltalk.
    recoveredValue3 := (recoveredValue2) classAt: ('EtBrowser').
    recoveredValue4 := (self) browserClassWithConcreteSubclasses: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := [:recoveredBlock30Block38Arg1 | 
    | recoveredBlock30Block38Value0 recoveredBlock30Block38Value1 recoveredBlock30Block38Value2 recoveredBlock30Block38Value3 recoveredBlock30Block38Value4 recoveredBlock30Block38Value5 recoveredBlock30Block38Value6 recoveredBlock30Block38Value7 |
    recoveredBlock30Block38Value0 := recoveredLocal1.
    recoveredBlock30Block38Value1 := recoveredBlock30Arg1.
    recoveredBlock30Block38Value2 := (recoveredBlock30Block38Value1) name.
    recoveredBlock30Block38Value3 := (recoveredBlock30Block38Value2) asString.
    recoveredBlock30Block38Value4 := (recoveredBlock30Block38Value3) , (' ').
    recoveredBlock30Block38Value5 := recoveredBlock30Block38Arg1.
    recoveredBlock30Block38Value6 := (recoveredBlock30Block38Value4) , (recoveredBlock30Block38Value5).
    recoveredBlock30Block38Value7 := (recoveredBlock30Block38Value0) add: (recoveredBlock30Block38Value6).
    recoveredBlock30Block38Value7
].
    recoveredBlock30Value1 := (#('confirmDeletions' 'textPercentage' 'updateOnWindowActivation')) do: (recoveredBlock30Value0).
    recoveredBlock30Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := Smalltalk.
    recoveredValue7 := (recoveredValue6) classAt: ('EtClassBrowser').
    recoveredValue8 := (self) browserClassWithConcreteSubclasses: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 |
    recoveredBlock78Value0 := recoveredLocal1.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value1) name.
    recoveredBlock78Value3 := (recoveredBlock78Value2) asString.
    recoveredBlock78Value4 := (recoveredBlock78Value3) , (' methodListPercentage').
    recoveredBlock78Value5 := (recoveredBlock78Value0) add: (recoveredBlock78Value4).
    recoveredBlock78Value5
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    (self) dumpOptions: (recoveredValue10).
    ^self
! !

"lib.ic method 0x20021f68; bytecode file offset 0x5dfdc"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpMemory
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    (self) nextPutAll: ('Memory:').
    (self) cr.
    (self) cr.
    recoveredValue0 := NlsCatEMcsES.
    recoveredValue1 := (recoveredValue0) residentMsg: ('MxEMcsES7').
    recoveredValue2 := System.
    recoveredValue3 := (recoveredValue2) totalAllocatedMemory.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue1) bindWith: (recoveredValue4).
    recoveredValue6 := ('Total allocation:  ') , (recoveredValue5).
    (self) nextPutAllIndented: (recoveredValue6).
    (self) cr.
    recoveredValue7 := NlsCatEMcsES.
    recoveredValue8 := (recoveredValue7) residentMsg: ('MxEMcsES7').
    recoveredValue9 := System.
    recoveredValue10 := (recoveredValue9) availableMemory.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue8) bindWith: (recoveredValue11).
    recoveredValue13 := ('Available:  ') , (recoveredValue12).
    (self) nextPutAllIndented: (recoveredValue13).
    (self) cr.
    recoveredValue14 := NlsCatEMcsES.
    recoveredValue15 := (recoveredValue14) residentMsg: ('MxEMcsES7').
    recoveredValue16 := System.
    recoveredValue17 := (recoveredValue16) availableFixedSpaceMemory.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := (recoveredValue15) bindWith: (recoveredValue18).
    recoveredValue20 := ('Fixed Space:  ') , (recoveredValue19).
    (self) nextPutAllIndented: (recoveredValue20).
    (self) cr.
    recoveredValue21 := NlsCatEMcsES.
    recoveredValue22 := (recoveredValue21) residentMsg: ('MxEMcsES7').
    recoveredValue23 := System.
    recoveredValue24 := (recoveredValue23) availableNewSpaceMemory.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := (recoveredValue22) bindWith: (recoveredValue25).
    recoveredValue27 := ('New Space:  ') , (recoveredValue26).
    (self) nextPutAllIndented: (recoveredValue27).
    (self) cr.
    recoveredValue28 := NlsCatEMcsES.
    recoveredValue29 := (recoveredValue28) residentMsg: ('MxEMcsES7').
    recoveredValue30 := System.
    recoveredValue31 := (recoveredValue30) availableOldSpaceMemory.
    recoveredValue32 := (recoveredValue31) printString.
    recoveredValue33 := (recoveredValue29) bindWith: (recoveredValue32).
    recoveredValue34 := ('Old Space:  ') , (recoveredValue33).
    (self) nextPutAllIndented: (recoveredValue34).
    (self) cr.
    (self) cr.
    ^self
! !

"lib.ic method 0x20029d8c; bytecode file offset 0x65e34"
!EmSystemConfigurationDumper methodsFor: 'recovered'!
dumpLibrary
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'Connected Library:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'Pathname:  '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := EmLibrary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) default.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) fullName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'Library version:  '.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := EmLibrary.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) name.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) versionOf: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 'Size of library:  '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentEOF.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) asNumberIn: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := ' bytes'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'Has consistent EOF:  '.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) hasConsistentEOF.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := 'Acquire read locks:  '.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := (recoveredStack4) mustAquireReadLocks.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'Single user mode:  '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) inSingleUserMode.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := 'Server address:  '.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := (recoveredStack4) serverAddress.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack4 ~~ nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := 'None'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack2) nextPutAllIndented: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := 'Connected Library:  None'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := 'Library Access:'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := 'Host system name:  '.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := EmLibrary.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := (recoveredStack3) hostSystemName.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := 'None'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) nextPutAllIndented: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := 'Use release lock mode:  '.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) releaseLockMode.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) nextPutAllIndented: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) dumpLibraryPrimitives.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

