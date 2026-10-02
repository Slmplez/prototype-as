"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200067e8; bytecode file offset 0x908be4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := (self) initializeClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200071d8; bytecode file offset 0x908be4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (self) basicExtent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009d04; bytecode file offset 0x908be4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
splitBarPosition
    | recoveredValue0 |
    recoveredValue0 := (self) verticalSplitBarPosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a0ac; bytecode file offset 0x908be4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
toolName
    | recoveredValue0 |
    recoveredValue0 := (self) registeredToolName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b234; bytecode file offset 0x908be4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
isServerMode
    | recoveredValue0 |
    recoveredValue0 := (self) isHeadlessGGMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014220; bytecode file offset 0x912098"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
editorName
    | recoveredValue0 |
    recoveredValue0 := EtDatabaseBrowser.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200175c4; bytecode file offset 0x92209c"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
registeredDevToolName
    ^''
! !

"ASDBase.ic method 0x2003a97c; bytecode file offset 0x938608"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
setServerMode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) setHeadlessGGMode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fc38; bytecode file offset 0x94d048"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
controllerClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200545c0; bytecode file offset 0x951190"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
setHeadlessGGMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    HeadlessGGMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005be54; bytecode file offset 0x958ab0"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := EpRuntimeStartUp.
    (recoveredValue0) asyncTerminate.
    ^self
! !

"ASDBase.ic method 0x2005f2fc; bytecode file offset 0x95c4f4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controllerClass.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (self) createForController: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063d54; bytecode file offset 0x961970"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
initializePaths
    | recoveredValue0 |
    recoveredValue0 := (self) resourceManager.
    (recoveredValue0) initializePath.
    ^self
! !

"ASDBase.ic method 0x20070454; bytecode file offset 0x96ce40"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
lastWindowConfiguration
    | recoveredValue0 |
    recoveredValue0 := lastWindowConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20080200; bytecode file offset 0x97cab4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
defaultHorizontalSplitbarPosition
    ^300
! !

"ASDBase.ic method 0x20081298; bytecode file offset 0x97db54"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
defaultVerticalSplitbarPosition
    ^250
! !

"ASDBase.ic method 0x20084750; bytecode file offset 0x981ca4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
splitBarPosition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) verticalSplitBarPosition: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c67f0; bytecode file offset 0x9c3164"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
buttonIDs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonIDs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6a1c; bytecode file offset 0x9c3470"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
lastWindowConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastWindowConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd024; bytecode file offset 0x9c98e8"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
createToolMutex
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSSecurityAttributes.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) mutexToolName.
    recoveredValue3 := (recoveredValue1) createMutex: (false) lpszMutexName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d4c84; bytecode file offset 0x9d1548"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
checkDBInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) library.
    (recoveredValue0) closeDataStorage.
    recoveredValue1 := DBReferenceInterface32.
    (recoveredValue1) create.
    ^self
! !

"ASDBase.ic method 0x200e2e88; bytecode file offset 0x9df740"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
basicExtent
    | recoveredValue0 |
    recoveredValue0 := (800) @ (600).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010459c; bytecode file offset 0xa00e70"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
isHeadlessGGMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := HeadlessGGMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011269c; bytecode file offset 0xa0ef68"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
isServiceMode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) commandLine.
    recoveredValue2 := (recoveredValue1) first.
    recoveredValue3 := (recoveredValue2) asLowercase.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ('*ascetservice.exe') match: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201174e0; bytecode file offset 0xa13da8"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
loadBorland45DynamicRuntimeLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_70113').
    recoveredValue1 := OSHinstance.
    (recoveredValue1) loadLibrary: ('CW3215.DLL').
    ^self
! !

"ASDBase.ic method 0x20120eb0; bytecode file offset 0xa1d78c"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
verticalSplitBarPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) max: (100).
    (recoveredValue0) at: ('verticalSplitBarPosition') put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201247b8; bytecode file offset 0xa21078"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
toolDisplayName
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProductDisplayName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ae28; bytecode file offset 0xa27704"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
uiSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uiSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            uiSettings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := uiSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013dfd4; bytecode file offset 0xa3a928"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
verticalSplitBarPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiSettings.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) defaultVerticalSplitbarPosition.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) at: ('verticalSplitBarPosition') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201533ec; bytecode file offset 0xa4fcb8"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
loadPatchAndToolboxesLogIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('Kli') == ('StartUp').
    recoveredValue1 := RBToolboxManager.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) initializeProgressDialog: (recoveredValue2).
    recoveredValue3 := RBPatchboxManager.
    (recoveredValue3) initialize.
    ^self
! !

"ASDBase.ic method 0x20198ca4; bytecode file offset 0xa955a4"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
optionMinimizeMainWindowWithoutChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'MinimizeMainWindowWithoutChildren'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019d77c; bytecode file offset 0xa9a040"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
createForController: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super create.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) uiController: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initForUI: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201adb84; bytecode file offset 0xaaa45c"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
createToolMutexForWin95
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OSHandle.
    recoveredValue1 := PlatformFunctions.
    recoveredValue2 := (recoveredValue1) at: ('CreateMutex').
    recoveredValue3 := (nil) asParameter.
    recoveredValue4 := (self) mutexToolName.
    recoveredValue5 := (recoveredValue4) asPSZ.
    recoveredValue6 := (recoveredValue2) callWith: (recoveredValue3) with: (false) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue0) immediate: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201b7e24; bytecode file offset 0xab46f0"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
initializeClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) defaultScreen.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (50) @ (50).
    minSize := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) width.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) height.
    recoveredValue8 := (recoveredValue5) @ (recoveredValue7).
    maxSize := recoveredValue8.
    ^self
! !

"ASDBase.ic method 0x201d0844; bytecode file offset 0xacd114"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
shouldrunHeadless
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) commandLine.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := '*ascetserver.exe'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) match: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := '*ascetservice.exe'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20250e54; bytecode file offset 0xb4d728"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
registeredToolName
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredDevToolName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) driverFileName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileNameOnly.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c9190; bytecode file offset 0xbc5a70"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
mutexToolName
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) toolName.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := (recoveredValue1) , (' Mutex').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := ('MultiInstance') == ('Kk').
    recoveredValue4 := ASDAscetController.
    recoveredValue5 := (recoveredValue4) instance.
    recoveredValue6 := [].
    recoveredValue7 := (recoveredValue5) getMultiInstanceSuffixIfFailed: (recoveredValue6).
    recoveredValue8 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) , (recoveredBlock26Value1).
    recoveredBlock26Value3 := recoveredBlock26Value2.
    recoveredLocal1 := recoveredBlock26Value3.
    recoveredBlock26Value2
].
    (recoveredValue7) ifNotNil: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x2042873c; bytecode file offset 0xd25054"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
initializeHelpCoordinator
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) driverFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToLast: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'ASCET'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppOnlineHelpPath.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := '\\'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpDirectory.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := CfsDirectoryDescriptor.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) pathSeparator.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := EtasGeneralDllApi.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := (recoveredStack4) getLanguageForApp.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack5 := EtasHTMLHelp.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack5 := (recoveredStack5) fileExtension.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) installHelpCoordinatorOnPath: (recoveredStack2) productString: (recoveredStack3) languageString: (recoveredStack4) fileExtension: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044ee38; bytecode file offset 0xd4b74c"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
registerApplication
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPSZ.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModuleFileName: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpDirectoryPath.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) splitPath.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeSubstring: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkExistance.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) chdir: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) registeredToolName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) registerServerModeCompatibleApp: (recoveredStack2) appPath: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkExistance.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolName.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := EtCanNotBeStarted.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) exit.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cbb08; bytecode file offset 0xec84e0"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
runHeadless
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) saving.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            (recoveredBlock15Stack1 == nil) ifTrue: [recoveredBlock15PC := 29] ifFalse: [recoveredBlock15PC := 26].
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1) close.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack1 := System.
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isRuntime.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 36] ifFalse: [recoveredBlock15PC := 40].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack1 := System.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            (recoveredBlock15Stack1) exit.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            ^recoveredBlock15Stack1
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) splashShutDown.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := IsWin95.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) chdir: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) initializePaths.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) initializeHelpCoordinator.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpConfigTest.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [
    | block28118f48Value0 block28118f48Value1 block28118f48Value2 |
    block28118f48Value0 := RBToolboxManager.
    block28118f48Value1 := MainController.
    block28118f48Value2 := (block28118f48Value0) initializeToolboxesForTool: (block28118f48Value1) progressWnd: (nil).
    block28118f48Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) suppressDialogsFor: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := SGCodeManager.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) startup.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := EpRuntimeStartUp.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := EtasHeadlessRunTimeErrorHandling.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) etasRuntimeErrorHandling: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := ExDBUndefinedObject.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Local1 recoveredBlock158Local2 recoveredBlock158Stack0 recoveredBlock158Stack1 recoveredBlock158Stack2 recoveredBlock158Stack3 recoveredBlock158Stack4 recoveredBlock158Stack5 recoveredBlock158PC recoveredBlock158Step recoveredBlock158Done recoveredBlock158Result |
    recoveredBlock158Stack0 := self.
    recoveredBlock158PC := 164.
    recoveredBlock158Done := false.
    [recoveredBlock158Done not] whileTrue: [
        recoveredBlock158Step := recoveredBlock158PC.
        recoveredBlock158Step = 164 ifTrue: [
            recoveredBlock158Stack1 := recoveredBlock158Arg1.
            recoveredBlock158PC := 165.
        ].
        recoveredBlock158Step = 165 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) argument.
            recoveredBlock158PC := 167.
        ].
        recoveredBlock158Step = 167 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) dbObject.
            recoveredBlock158PC := 169.
        ].
        recoveredBlock158Step = 169 ifTrue: [
            recoveredBlock158Local2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 170.
        ].
        recoveredBlock158Step = 170 ifTrue: [
            recoveredBlock158Stack1 := ReadWriteStream.
            recoveredBlock158PC := 172.
        ].
        recoveredBlock158Step = 172 ifTrue: [
            recoveredBlock158Stack2 := String.
            recoveredBlock158PC := 174.
        ].
        recoveredBlock158Step = 174 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) new.
            recoveredBlock158PC := 176.
        ].
        recoveredBlock158Step = 176 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) on: (recoveredBlock158Stack2).
            recoveredBlock158PC := 178.
        ].
        recoveredBlock158Step = 178 ifTrue: [
            recoveredBlock158Local1 := recoveredBlock158Stack1.
            recoveredBlock158PC := 179.
        ].
        recoveredBlock158Step = 179 ifTrue: [
            recoveredBlock158Stack1 := recoveredBlock158Local1.
            recoveredBlock158PC := 180.
        ].
        recoveredBlock158Step = 180 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 181.
        ].
        recoveredBlock158Step = 181 ifTrue: [
            recoveredBlock158Stack3 := EtErrorFollowingDatabaseObjectMissingOrUnreadable.
            recoveredBlock158PC := 183.
        ].
        recoveredBlock158Step = 183 ifTrue: [
            (recoveredBlock158Stack2) nextPutAll: (recoveredBlock158Stack3).
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 186.
        ].
        recoveredBlock158Step = 186 ifTrue: [
            (recoveredBlock158Stack2) cr.
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 189.
        ].
        recoveredBlock158Step = 189 ifTrue: [
            recoveredBlock158Stack3 := 'Name: '.
            recoveredBlock158PC := 191.
        ].
        recoveredBlock158Step = 191 ifTrue: [
            recoveredBlock158Stack4 := recoveredBlock158Local2.
            recoveredBlock158PC := 192.
        ].
        recoveredBlock158Step = 192 ifTrue: [
            recoveredBlock158Stack4 := (recoveredBlock158Stack4) name.
            recoveredBlock158PC := 194.
        ].
        recoveredBlock158Step = 194 ifTrue: [
            recoveredBlock158Stack3 := (recoveredBlock158Stack3) , (recoveredBlock158Stack4).
            recoveredBlock158PC := 196.
        ].
        recoveredBlock158Step = 196 ifTrue: [
            (recoveredBlock158Stack2) nextPutAll: (recoveredBlock158Stack3).
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 199.
        ].
        recoveredBlock158Step = 199 ifTrue: [
            (recoveredBlock158Stack2) cr.
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 202.
        ].
        recoveredBlock158Step = 202 ifTrue: [
            recoveredBlock158Stack3 := 'Type: '.
            recoveredBlock158PC := 204.
        ].
        recoveredBlock158Step = 204 ifTrue: [
            recoveredBlock158Stack4 := recoveredBlock158Local2.
            recoveredBlock158PC := 205.
        ].
        recoveredBlock158Step = 205 ifTrue: [
            recoveredBlock158Stack4 := (recoveredBlock158Stack4) className.
            recoveredBlock158PC := 207.
        ].
        recoveredBlock158Step = 207 ifTrue: [
            recoveredBlock158Stack3 := (recoveredBlock158Stack3) , (recoveredBlock158Stack4).
            recoveredBlock158PC := 209.
        ].
        recoveredBlock158Step = 209 ifTrue: [
            (recoveredBlock158Stack2) nextPutAll: (recoveredBlock158Stack3).
            recoveredBlock158Stack2 := recoveredBlock158Stack1.
            recoveredBlock158PC := 212.
        ].
        recoveredBlock158Step = 212 ifTrue: [
            (recoveredBlock158Stack2) cr.
            recoveredBlock158PC := 214.
        ].
        recoveredBlock158Step = 214 ifTrue: [
            recoveredBlock158Stack2 := 'ObjectID: '.
            recoveredBlock158PC := 216.
        ].
        recoveredBlock158Step = 216 ifTrue: [
            (recoveredBlock158Stack1) nextPutAll: (recoveredBlock158Stack2).
            recoveredBlock158PC := 218.
        ].
        recoveredBlock158Step = 218 ifTrue: [
            recoveredBlock158Stack1 := recoveredBlock158Local2.
            recoveredBlock158PC := 219.
        ].
        recoveredBlock158Step = 219 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) oid.
            recoveredBlock158PC := 221.
        ].
        recoveredBlock158Step = 221 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Local1.
            recoveredBlock158PC := 222.
        ].
        recoveredBlock158Step = 222 ifTrue: [
            (recoveredBlock158Stack1) printOn: (recoveredBlock158Stack2).
            recoveredBlock158PC := 224.
        ].
        recoveredBlock158Step = 224 ifTrue: [
            recoveredBlock158Stack1 := CwMessagePrompter.
            recoveredBlock158PC := 226.
        ].
        recoveredBlock158Step = 226 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Local1.
            recoveredBlock158PC := 227.
        ].
        recoveredBlock158Step = 227 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) contents.
            recoveredBlock158PC := 229.
        ].
        recoveredBlock158Step = 229 ifTrue: [
            (recoveredBlock158Stack1) message: (recoveredBlock158Stack2).
            recoveredBlock158PC := 231.
        ].
        recoveredBlock158Step = 231 ifTrue: [
            recoveredBlock158Stack1 := System.
            recoveredBlock158PC := 233.
        ].
        recoveredBlock158Step = 233 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) isRuntime.
            recoveredBlock158PC := 235.
        ].
        recoveredBlock158Step = 235 ifTrue: [
            (recoveredBlock158Stack1) ifTrue: [recoveredBlock158PC := 241] ifFalse: [recoveredBlock158PC := 238].
        ].
        recoveredBlock158Step = 238 ifTrue: [
            recoveredBlock158Stack1 := self.
            recoveredBlock158PC := 239.
        ].
        recoveredBlock158Step = 239 ifTrue: [
            (recoveredBlock158Stack1) halt.
            recoveredBlock158PC := 241.
        ].
        recoveredBlock158Step = 241 ifTrue: [
            recoveredBlock158Stack1 := Processor.
            recoveredBlock158PC := 243.
        ].
        recoveredBlock158Step = 243 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) activeProcess.
            recoveredBlock158PC := 245.
        ].
        recoveredBlock158Step = 245 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) terminate.
            recoveredBlock158PC := 247.
        ].
        recoveredBlock158Step = 247 ifTrue: [
            recoveredBlock158Result := recoveredBlock158Stack1.
            recoveredBlock158Done := true.
        ].
    ].
    recoveredBlock158Result
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) defaultHandler: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := EtasAbtEwHoverHelpManager.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack0) initializeEtasHoverHelp.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := RBIconGO.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) ResourceManagerAdapter: (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := SGCodegenCompileLinkView.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorFileName.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) deleteMonitorFile: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 'What_3523'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) initializeToolMutex.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 341] ifFalse: [recoveredPC := 320].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := 'running'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) setApplicationState: (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) setLastUsedVersion.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060ba9c; bytecode file offset 0xf0843c"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
buttonIDs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := buttonIDs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 471] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            buttonIDs := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := buttonIDs.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 4001.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 'GeneralFileNew'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 4002.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'GeneralFileOpen'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 4003.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'GeneralFileSave'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 4004.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := 'GeneralCut'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 4005.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := 'GeneralCopy'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := 4006.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 'GeneralPaste'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 4007.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := 'GeneralDelete'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := 4008.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := 'GeneralExpandAll'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := 4009.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := 'GeneralCollapseAll'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 4010.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := 'GeneralFileImport'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 4011.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := 'GeneralFileExport'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := 4012.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := 'GeneralFolderNew'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := 4013.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := 'ComponentsProject'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 4014.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack4 := 'ComponentsModule'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := 4015.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := 'ComponentsClass'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := 4016.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := 'ComponentsStateMachine'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 4017.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := 'ComponentsEnumeration'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := 4018.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := 'ComponentsBooleanTable'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := 4019.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := 'ComponentsConditionalTable'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := 4020.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := 'ComponentsContainer'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := 4021.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := 'GeneralViews'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := 4022.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := 'GeneralOptions'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := 4023.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := 'GeneralHelp'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := 4024.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := 'GeneralSearch'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := 4025.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := 'ComponentsRecord'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 4026.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := 'GeneralNavigationGoTo'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := 4027.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := 'GeneralNavigationBack'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := 4028.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := 'GeneralNavigationForward'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := 9000.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := 'SCM_menu_checkout'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := 9001.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack4 := 'SCM_menu_update'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := 9002.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := 'SCM_menu_update_to_latest'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := 9003.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := 'SCM_menu_lock'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := 9004.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := 'SCM_menu_commit'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 9005.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := 'SCM_menu_add'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := 9006.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := 'SCM_menu_check_for_modifications'.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := 9007.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := 'SCM_menu_show_log'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := 9008.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack4 := 'SCM_menu_version_attributes'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := 9009.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := 'SCM_menu_remove_lock'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := 9010.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack4 := 'SCM_menu_checkout_config'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := 9011.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack4 := 'SCM_menu_update_config'.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack3 := 9012.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := 'SCM_menu_update_to_latest_config'.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := 9013.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack4 := 'SCM_menu_commit_config'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := 9014.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := 'SCM_menu_add_new_config'.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := 9015.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack4 := 'SCM_menu_show_log_config'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := 9016.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := 'SCM_menu_show_properties_config'.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := 9017.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack4 := 'SCM_menu_create_edition'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := 9018.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack4 := 'SCM_menu_save'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := 9019.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack4 := 'SCM_menu_add_config'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := 9020.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack4 := 'SCM_menu_save_config'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := 9021.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack4 := 'SCM_menu_verify_config'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := 9022.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack4 := 'SCM_menu_connect'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack3 := 9023.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack4 := 'SCM_menu_version_properties'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := 9024.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := 'SCM_menu_load_available_config'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack3 := 9025.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack4 := 'SCM_menu_load_config'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := 9026.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack4 := 'SCM_menu_reserve_config'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack3 := 9027.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack4 := 'SCM_menu_load_available'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := buttonIDs.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2062ef74; bytecode file offset 0xf2b948"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
run
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) saving.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Kk'.
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
            recoveredStack1 := System.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMultiInstanceMode.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMultiInstanceSuffix.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) exit.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) shouldrunHeadless.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) setServerMode: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) alternativeWebServicePort.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Stack0 recoveredBlock96Stack1 recoveredBlock96Stack2 recoveredBlock96Stack3 recoveredBlock96Stack4 recoveredBlock96PC recoveredBlock96Step recoveredBlock96Done recoveredBlock96Result |
    recoveredBlock96Stack0 := self.
    recoveredBlock96PC := 102.
    recoveredBlock96Done := false.
    [recoveredBlock96Done not] whileTrue: [
        recoveredBlock96Step := recoveredBlock96PC.
        recoveredBlock96Step = 102 ifTrue: [
            recoveredBlock96Stack1 := nil.
            recoveredBlock96PC := 103.
        ].
        recoveredBlock96Step = 103 ifTrue: [
            recoveredBlock96Stack2 := SciSocketAddress.
            recoveredBlock96PC := 105.
        ].
        recoveredBlock96Step = 105 ifTrue: [
            recoveredBlock96Stack3 := recoveredBlock96Arg1.
            recoveredBlock96PC := 106.
        ].
        recoveredBlock96Step = 106 ifTrue: [
            recoveredBlock96Stack3 := (recoveredBlock96Stack3) asNumber.
            recoveredBlock96PC := 108.
        ].
        recoveredBlock96Step = 108 ifTrue: [
            recoveredBlock96Stack2 := (recoveredBlock96Stack2) isPortFree: (recoveredBlock96Stack3).
            recoveredBlock96PC := 110.
        ].
        recoveredBlock96Step = 110 ifTrue: [
            (recoveredBlock96Stack2) ifTrue: [recoveredBlock96PC := 128] ifFalse: [recoveredBlock96PC := 114].
        ].
        recoveredBlock96Step = 114 ifTrue: [
            recoveredBlock96PC := 115.
        ].
        recoveredBlock96Step = 115 ifTrue: [
            recoveredBlock96Stack1 := System.
            recoveredBlock96PC := 117.
        ].
        recoveredBlock96Step = 117 ifTrue: [
            recoveredBlock96Stack1 := (recoveredBlock96Stack1) isRuntime.
            recoveredBlock96PC := 119.
        ].
        recoveredBlock96Step = 119 ifTrue: [
            (recoveredBlock96Stack1) ifTrue: [recoveredBlock96PC := 122] ifFalse: [recoveredBlock96PC := 126].
        ].
        recoveredBlock96Step = 122 ifTrue: [
            recoveredBlock96Stack1 := System.
            recoveredBlock96PC := 124.
        ].
        recoveredBlock96Step = 124 ifTrue: [
            (recoveredBlock96Stack1) exit.
            recoveredBlock96PC := 126.
        ].
        recoveredBlock96Step = 126 ifTrue: [
            recoveredBlock96Stack1 := nil.
            recoveredBlock96PC := 127.
        ].
        recoveredBlock96Step = 127 ifTrue: [
            ^recoveredBlock96Stack1
        ].
        recoveredBlock96Step = 128 ifTrue: [
            recoveredBlock96Result := recoveredBlock96Stack1.
            recoveredBlock96Done := true.
        ].
    ].
    recoveredBlock96Result
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'StartUp'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'Call_64767'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'Call_66699'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'Call_80274'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) registerApplication.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) getETASLogFilePath.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := ' cannot be started because of an invalid log path'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := ASAP2BaseObject.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) initializeClass.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := SGFindReplaceWindow.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) initializeClass.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowedToWriteIn: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := ' can not be started because of an invalid installation path (installation path is empty)'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := ' can not be started because of missing write permissions in \'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 509.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 |
    recoveredBlock292Value0 := EtasStandardDialogsInterface.
    recoveredBlock292Value1 := (recoveredBlock292Value0) ESD_Startup_create: (true) showProgress: (true).
    recoveredBlock292Value2 := recoveredBlock292Value1.
    recoveredLocal4 := recoveredBlock292Value2.
    recoveredBlock292Value1
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := [:recoveredBlock311Arg1 | 
    | recoveredBlock311Stack0 recoveredBlock311Stack1 recoveredBlock311Stack2 recoveredBlock311Stack3 recoveredBlock311Stack4 recoveredBlock311PC recoveredBlock311Step recoveredBlock311Done recoveredBlock311Result |
    recoveredBlock311Stack0 := self.
    recoveredBlock311PC := 318.
    recoveredBlock311Done := false.
    [recoveredBlock311Done not] whileTrue: [
        recoveredBlock311Step := recoveredBlock311PC.
        recoveredBlock311Step = 318 ifTrue: [
            recoveredBlock311Stack1 := System.
            recoveredBlock311PC := 320.
        ].
        recoveredBlock311Step = 320 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) isRuntime.
            recoveredBlock311PC := 322.
        ].
        recoveredBlock311Step = 322 ifTrue: [
            (recoveredBlock311Stack1) ifTrue: [recoveredBlock311PC := 326] ifFalse: [recoveredBlock311PC := 350].
        ].
        recoveredBlock311Step = 326 ifTrue: [
            recoveredBlock311Stack1 := System.
            recoveredBlock311PC := 328.
        ].
        recoveredBlock311Step = 328 ifTrue: [
            (recoveredBlock311Stack1) splashShutDown.
            recoveredBlock311PC := 330.
        ].
        recoveredBlock311Step = 330 ifTrue: [
            recoveredBlock311Stack1 := RBUserInfo.
            recoveredBlock311PC := 332.
        ].
        recoveredBlock311Step = 332 ifTrue: [
            recoveredBlock311Stack2 := self.
            recoveredBlock311PC := 333.
        ].
        recoveredBlock311Step = 333 ifTrue: [
            recoveredBlock311Stack2 := (recoveredBlock311Stack2) toolName.
            recoveredBlock311PC := 335.
        ].
        recoveredBlock311Step = 335 ifTrue: [
            recoveredBlock311Stack3 := ' can not be started because of Error initializing AscetESD.dll \'.
            recoveredBlock311PC := 337.
        ].
        recoveredBlock311Step = 337 ifTrue: [
            recoveredBlock311Stack3 := (recoveredBlock311Stack3) withCrs.
            recoveredBlock311PC := 339.
        ].
        recoveredBlock311Step = 339 ifTrue: [
            recoveredBlock311Stack2 := (recoveredBlock311Stack2) , (recoveredBlock311Stack3).
            recoveredBlock311PC := 341.
        ].
        recoveredBlock311Step = 341 ifTrue: [
            recoveredBlock311Stack3 := recoveredLocal3.
            recoveredBlock311PC := 344.
        ].
        recoveredBlock311Step = 344 ifTrue: [
            recoveredBlock311Stack2 := (recoveredBlock311Stack2) , (recoveredBlock311Stack3).
            recoveredBlock311PC := 346.
        ].
        recoveredBlock311Step = 346 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) errorMessage: (recoveredBlock311Stack2).
            recoveredBlock311PC := 348.
        ].
        recoveredBlock311Step = 348 ifTrue: [
            (recoveredBlock311Stack1) prompt.
            recoveredBlock311PC := 350.
        ].
        recoveredBlock311Step = 350 ifTrue: [
            recoveredBlock311Stack1 := nil.
            recoveredBlock311PC := 351.
        ].
        recoveredBlock311Step = 351 ifTrue: [
            recoveredBlock311Stack2 := System.
            recoveredBlock311PC := 353.
        ].
        recoveredBlock311Step = 353 ifTrue: [
            recoveredBlock311Stack2 := (recoveredBlock311Stack2) isRuntime.
            recoveredBlock311PC := 355.
        ].
        recoveredBlock311Step = 355 ifTrue: [
            (recoveredBlock311Stack2) ifTrue: [recoveredBlock311PC := 358] ifFalse: [recoveredBlock311PC := 363].
        ].
        recoveredBlock311Step = 358 ifTrue: [
            recoveredBlock311PC := 359.
        ].
        recoveredBlock311Step = 359 ifTrue: [
            recoveredBlock311Stack1 := System.
            recoveredBlock311PC := 361.
        ].
        recoveredBlock311Step = 361 ifTrue: [
            recoveredBlock311Stack1 := (recoveredBlock311Stack1) exit.
            recoveredBlock311PC := 363.
        ].
        recoveredBlock311Step = 363 ifTrue: [
            recoveredBlock311Result := recoveredBlock311Stack1.
            recoveredBlock311Done := true.
        ].
    ].
    recoveredBlock311Result
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 460] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 378] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack0 := EtasStandardDialogsInterface.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) ESD_Startup_start.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := EtStartUpTool.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolDisplayName.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack0) progressBarValue: (recoveredStack1).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredPC := 460.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 420] ifFalse: [recoveredPC := 445].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack0) splashShutDown.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolName.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := ' can not be started because of Error initializing ETAS.StandardDialogs.dll \'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 456].
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack0) splashShutDown.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 509] ifFalse: [recoveredPC := 470].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := EtasStartUpDialog.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolDisplayName.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToolName: (recoveredStack1).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) open.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := EtStartUpTool.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := (recoveredStack3) toolDisplayName.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            (recoveredStack0) splashShutDown.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 535] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := 'starting'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack0) setApplicationState: (recoveredStack1).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack0) loadPatchAndToolboxesLogIn: (recoveredStack1).
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 590] ifFalse: [recoveredPC := 550].
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 558] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack0 := 'Opening %1...'.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredPC := 570.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack0 := 'Opening %1 (Development Image)...'.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := (recoveredStack2) toolDisplayName.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := 'Call_70113'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack0) loadBorland45DynamicRuntimeLibrary.
            recoveredPC := 603.
        ].
        recoveredStep = 603 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack0) menuIDs: (recoveredStack1).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            recoveredStack0 := (recoveredStack0) runMainSplashWindow: (recoveredStack1).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2065fd10; bytecode file offset 0xf5c800"
!EtasMainDatabaseWindow class methodsFor: 'recovered'!
runMainSplashWindow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_95380'.
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
            recoveredStack1 := CgIndexedPalette.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := CgIndexedPalette.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) etasDefault.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) default: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Call_67666'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := DBLocalGlobalIdServer.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) initArbiterCounter.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isServerMode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) runHeadless.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'call_84624'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := EwDragAndDropManager.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := Button1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) button: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'UTC_Info_prompted'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'no'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) setUserRegKey: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'Call_74393'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) initializePaths.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) initializeHelpCoordinator.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) startUpConfigTest.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := IsWin95.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 'Cleaning up temporary directory. This may take a while...'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := 'started'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock170Stack0 recoveredBlock170Stack1 recoveredBlock170Stack2 recoveredBlock170Stack3 recoveredBlock170PC recoveredBlock170Step recoveredBlock170Done recoveredBlock170Result |
    recoveredBlock170Stack0 := self.
    recoveredBlock170PC := 176.
    recoveredBlock170Done := false.
    [recoveredBlock170Done not] whileTrue: [
        recoveredBlock170Step := recoveredBlock170PC.
        recoveredBlock170Step = 176 ifTrue: [
            recoveredBlock170Stack1 := MainController.
            recoveredBlock170PC := 178.
        ].
        recoveredBlock170Step = 178 ifTrue: [
            (recoveredBlock170Stack1) initializeRequiredPathOptions.
            recoveredBlock170PC := 180.
        ].
        recoveredBlock170Step = 180 ifTrue: [
            recoveredBlock170Stack1 := MainController.
            recoveredBlock170PC := 182.
        ].
        recoveredBlock170Step = 182 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) asdGeneralOptions.
            recoveredBlock170PC := 184.
        ].
        recoveredBlock170Step = 184 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) optionUseCustomResourceDll.
            recoveredBlock170PC := 186.
        ].
        recoveredBlock170Step = 186 ifTrue: [
            (recoveredBlock170Stack1) ifTrue: [recoveredBlock170PC := 190] ifFalse: [recoveredBlock170PC := 205].
        ].
        recoveredBlock170Step = 190 ifTrue: [
            recoveredBlock170Stack1 := self.
            recoveredBlock170PC := 191.
        ].
        recoveredBlock170Step = 191 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) resourceManager.
            recoveredBlock170PC := 193.
        ].
        recoveredBlock170Step = 193 ifTrue: [
            recoveredBlock170Stack2 := MainController.
            recoveredBlock170PC := 195.
        ].
        recoveredBlock170Step = 195 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) asdGeneralOptions.
            recoveredBlock170PC := 197.
        ].
        recoveredBlock170Step = 197 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) optionResourceDll.
            recoveredBlock170PC := 199.
        ].
        recoveredBlock170Step = 199 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) value.
            recoveredBlock170PC := 201.
        ].
        recoveredBlock170Step = 201 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) asLowercase.
            recoveredBlock170PC := 203.
        ].
        recoveredBlock170Step = 203 ifTrue: [
            (recoveredBlock170Stack1) addAsFirstDLLWithName: (recoveredBlock170Stack2).
            recoveredBlock170PC := 205.
        ].
        recoveredBlock170Step = 205 ifTrue: [
            recoveredBlock170Stack1 := ASDGeneralOptions.
            recoveredBlock170PC := 207.
        ].
        recoveredBlock170Step = 207 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) instance.
            recoveredBlock170PC := 209.
        ].
        recoveredBlock170Step = 209 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) optionCleanUpTempDirectory.
            recoveredBlock170PC := 211.
        ].
        recoveredBlock170Step = 211 ifTrue: [
            (recoveredBlock170Stack1) ifTrue: [recoveredBlock170PC := 214] ifFalse: [recoveredBlock170PC := 238].
        ].
        recoveredBlock170Step = 214 ifTrue: [
            recoveredBlock170Stack1 := CfsStat.
            recoveredBlock170PC := 216.
        ].
        recoveredBlock170Step = 216 ifTrue: [
            recoveredBlock170Stack2 := ASDPathOptions.
            recoveredBlock170PC := 218.
        ].
        recoveredBlock170Step = 218 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) instance.
            recoveredBlock170PC := 220.
        ].
        recoveredBlock170Step = 220 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) optionTempPath.
            recoveredBlock170PC := 222.
        ].
        recoveredBlock170Step = 222 ifTrue: [
            recoveredBlock170Stack1 := (recoveredBlock170Stack1) exists: (recoveredBlock170Stack2).
            recoveredBlock170PC := 224.
        ].
        recoveredBlock170Step = 224 ifTrue: [
            (recoveredBlock170Stack1) ifTrue: [recoveredBlock170PC := 228] ifFalse: [recoveredBlock170PC := 238].
        ].
        recoveredBlock170Step = 228 ifTrue: [
            recoveredBlock170Stack1 := CfsDirectoryDescriptor.
            recoveredBlock170PC := 230.
        ].
        recoveredBlock170Step = 230 ifTrue: [
            recoveredBlock170Stack2 := ASDPathOptions.
            recoveredBlock170PC := 232.
        ].
        recoveredBlock170Step = 232 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) instance.
            recoveredBlock170PC := 234.
        ].
        recoveredBlock170Step = 234 ifTrue: [
            recoveredBlock170Stack2 := (recoveredBlock170Stack2) optionTempPath.
            recoveredBlock170PC := 236.
        ].
        recoveredBlock170Step = 236 ifTrue: [
            (recoveredBlock170Stack1) deletePathRecursiveWait: (recoveredBlock170Stack2).
            recoveredBlock170PC := 238.
        ].
        recoveredBlock170Step = 238 ifTrue: [
            recoveredBlock170Stack1 := 'ready'.
            recoveredBlock170PC := 240.
        ].
        recoveredBlock170Step = 240 ifTrue: [
            recoveredBlock170Stack2 := recoveredBlock170Stack1.
            recoveredBlock170PC := 241.
        ].
        recoveredBlock170Step = 241 ifTrue: [
            recoveredLocal3 := recoveredBlock170Stack2.
            recoveredBlock170PC := 244.
        ].
        recoveredBlock170Step = 244 ifTrue: [
            recoveredBlock170Result := recoveredBlock170Stack1.
            recoveredBlock170Done := true.
        ].
    ].
    recoveredBlock170Result
].
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            (recoveredStack0) fork.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 254] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBetaVersion.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInEtasDomain.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowDisclaimer.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := EtasStandardDialogsInterface.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) ESD_Disclaimer_doAll.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) optionShowDisclaimer: (recoveredStack1).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 347.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0) optionShowDisclaimer: (recoveredStack1).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) removeInstance.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := GlobalInfoController.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) outputMediumUserWindow.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := CwAppContext.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock352Value0 recoveredBlock352Value1 |
    recoveredBlock352Value0 := recoveredLocal3.
    recoveredBlock352Value1 := (recoveredBlock352Value0) ~= ('ready').
    recoveredBlock352Value1
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) readAndDispatchAndSleepWhile: (recoveredStack1).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 384] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := 'Call_2007400659'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := RBToolboxManager.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack0) initializeToolboxesForTool: (recoveredStack1) progressWnd: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack0 := SGCodegenCompileLinkView.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) monitorFileName.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack0) deleteMonitorFile: (recoveredStack1).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack0 := 'ASCETLINKS'.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := 'PROD105089'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := SGCodeManagerView.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack0) startup.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := EtasSoftwareManager.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack0) createInstance.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowUserNameAgreementPossible.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 456] ifFalse: [recoveredPC := 491].
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInEtasDomain.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 468] ifFalse: [recoveredPC := 491].
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionShowUserNameAgreement.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 480] ifFalse: [recoveredPC := 491].
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := EtasDataCollectionAgreementDialog.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 505] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 558].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack0 := (recoveredStack0) etasStandardRunTimeErrorHandling.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 554] ifFalse: [recoveredPC := 534].
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := EtasRunTimeErrorCallLogZipAndSent.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack4 := 'logZipAndSentCallback:clientData:callData:'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack0 := ExDBUndefinedObject.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := [:recoveredBlock562Arg1 | 
    | recoveredBlock562Local1 recoveredBlock562Local2 recoveredBlock562Stack0 recoveredBlock562Stack1 recoveredBlock562Stack2 recoveredBlock562Stack3 recoveredBlock562Stack4 recoveredBlock562Stack5 recoveredBlock562PC recoveredBlock562Step recoveredBlock562Done recoveredBlock562Result |
    recoveredBlock562Stack0 := self.
    recoveredBlock562PC := 568.
    recoveredBlock562Done := false.
    [recoveredBlock562Done not] whileTrue: [
        recoveredBlock562Step := recoveredBlock562PC.
        recoveredBlock562Step = 568 ifTrue: [
            recoveredBlock562Stack1 := recoveredBlock562Arg1.
            recoveredBlock562PC := 569.
        ].
        recoveredBlock562Step = 569 ifTrue: [
            recoveredBlock562Stack1 := (recoveredBlock562Stack1) argument.
            recoveredBlock562PC := 573.
        ].
        recoveredBlock562Step = 573 ifTrue: [
            recoveredBlock562Stack1 := (recoveredBlock562Stack1) dbObject.
            recoveredBlock562PC := 577.
        ].
        recoveredBlock562Step = 577 ifTrue: [
            recoveredBlock562Local2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 578.
        ].
        recoveredBlock562Step = 578 ifTrue: [
            recoveredBlock562Stack1 := ReadWriteStream.
            recoveredBlock562PC := 582.
        ].
        recoveredBlock562Step = 582 ifTrue: [
            recoveredBlock562Stack2 := String.
            recoveredBlock562PC := 586.
        ].
        recoveredBlock562Step = 586 ifTrue: [
            recoveredBlock562Stack2 := (recoveredBlock562Stack2) new.
            recoveredBlock562PC := 591.
        ].
        recoveredBlock562Step = 591 ifTrue: [
            recoveredBlock562Stack1 := (recoveredBlock562Stack1) on: (recoveredBlock562Stack2).
            recoveredBlock562PC := 595.
        ].
        recoveredBlock562Step = 595 ifTrue: [
            recoveredBlock562Local1 := recoveredBlock562Stack1.
            recoveredBlock562PC := 596.
        ].
        recoveredBlock562Step = 596 ifTrue: [
            recoveredBlock562Stack1 := recoveredBlock562Local1.
            recoveredBlock562PC := 597.
        ].
        recoveredBlock562Step = 597 ifTrue: [
            recoveredBlock562Stack2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 598.
        ].
        recoveredBlock562Step = 598 ifTrue: [
            recoveredBlock562Stack3 := EtErrorFollowingDatabaseObjectMissingOrUnreadable.
            recoveredBlock562PC := 602.
        ].
        recoveredBlock562Step = 602 ifTrue: [
            (recoveredBlock562Stack2) nextPutAll: (recoveredBlock562Stack3).
            recoveredBlock562Stack2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 607.
        ].
        recoveredBlock562Step = 607 ifTrue: [
            (recoveredBlock562Stack2) cr.
            recoveredBlock562PC := 611.
        ].
        recoveredBlock562Step = 611 ifTrue: [
            recoveredBlock562Stack2 := 'Name: '.
            recoveredBlock562PC := 614.
        ].
        recoveredBlock562Step = 614 ifTrue: [
            recoveredBlock562Stack3 := recoveredBlock562Local2.
            recoveredBlock562PC := 615.
        ].
        recoveredBlock562Step = 615 ifTrue: [
            recoveredBlock562Stack3 := (recoveredBlock562Stack3) name.
            recoveredBlock562PC := 619.
        ].
        recoveredBlock562Step = 619 ifTrue: [
            (recoveredBlock562Stack3 ~~ nil) ifTrue: [recoveredBlock562PC := 630] ifFalse: [recoveredBlock562PC := 622].
        ].
        recoveredBlock562Step = 622 ifTrue: [
            recoveredBlock562Stack3 := '<unknown>'.
            recoveredBlock562PC := 626.
        ].
        recoveredBlock562Step = 626 ifTrue: [
            recoveredBlock562PC := 635.
        ].
        recoveredBlock562Step = 630 ifTrue: [
            recoveredBlock562Stack3 := recoveredBlock562Local2.
            recoveredBlock562PC := 631.
        ].
        recoveredBlock562Step = 631 ifTrue: [
            recoveredBlock562Stack3 := (recoveredBlock562Stack3) name.
            recoveredBlock562PC := 635.
        ].
        recoveredBlock562Step = 635 ifTrue: [
            recoveredBlock562Stack2 := (recoveredBlock562Stack2) , (recoveredBlock562Stack3).
            recoveredBlock562PC := 639.
        ].
        recoveredBlock562Step = 639 ifTrue: [
            (recoveredBlock562Stack1) nextPutAll: (recoveredBlock562Stack2).
            recoveredBlock562PC := 643.
        ].
        recoveredBlock562Step = 643 ifTrue: [
            recoveredBlock562Stack1 := 'Kk'.
            recoveredBlock562PC := 645.
        ].
        recoveredBlock562Step = 645 ifTrue: [
            recoveredBlock562Stack2 := 'Call_68731'.
            recoveredBlock562PC := 648.
        ].
        recoveredBlock562Step = 648 ifTrue: [
            recoveredBlock562Stack1 := (recoveredBlock562Stack1) == (recoveredBlock562Stack2).
            recoveredBlock562PC := 649.
        ].
        recoveredBlock562Step = 649 ifTrue: [
            recoveredBlock562PC := 650.
        ].
        recoveredBlock562Step = 650 ifTrue: [
            recoveredBlock562Stack1 := recoveredBlock562Local2.
            recoveredBlock562PC := 651.
        ].
        recoveredBlock562Step = 651 ifTrue: [
            (recoveredBlock562Stack1 == nil) ifTrue: [recoveredBlock562PC := 701] ifFalse: [recoveredBlock562PC := 654].
        ].
        recoveredBlock562Step = 654 ifTrue: [
            recoveredBlock562Stack1 := recoveredBlock562Local1.
            recoveredBlock562PC := 655.
        ].
        recoveredBlock562Step = 655 ifTrue: [
            recoveredBlock562Stack2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 656.
        ].
        recoveredBlock562Step = 656 ifTrue: [
            (recoveredBlock562Stack2) cr.
            recoveredBlock562Stack2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 661.
        ].
        recoveredBlock562Step = 661 ifTrue: [
            recoveredBlock562Stack3 := 'Type: '.
            recoveredBlock562PC := 664.
        ].
        recoveredBlock562Step = 664 ifTrue: [
            recoveredBlock562Stack4 := recoveredBlock562Local2.
            recoveredBlock562PC := 665.
        ].
        recoveredBlock562Step = 665 ifTrue: [
            recoveredBlock562Stack4 := (recoveredBlock562Stack4) className.
            recoveredBlock562PC := 669.
        ].
        recoveredBlock562Step = 669 ifTrue: [
            recoveredBlock562Stack3 := (recoveredBlock562Stack3) , (recoveredBlock562Stack4).
            recoveredBlock562PC := 673.
        ].
        recoveredBlock562Step = 673 ifTrue: [
            (recoveredBlock562Stack2) nextPutAll: (recoveredBlock562Stack3).
            recoveredBlock562Stack2 := recoveredBlock562Stack1.
            recoveredBlock562PC := 677.
        ].
        recoveredBlock562Step = 677 ifTrue: [
            (recoveredBlock562Stack2) cr.
            recoveredBlock562PC := 681.
        ].
        recoveredBlock562Step = 681 ifTrue: [
            recoveredBlock562Stack2 := 'ObjectID: '.
            recoveredBlock562PC := 684.
        ].
        recoveredBlock562Step = 684 ifTrue: [
            (recoveredBlock562Stack1) nextPutAll: (recoveredBlock562Stack2).
            recoveredBlock562PC := 689.
        ].
        recoveredBlock562Step = 689 ifTrue: [
            recoveredBlock562Stack1 := recoveredBlock562Local2.
            recoveredBlock562PC := 690.
        ].
        recoveredBlock562Step = 690 ifTrue: [
            recoveredBlock562Stack1 := (recoveredBlock562Stack1) oid.
            recoveredBlock562PC := 695.
        ].
        recoveredBlock562Step = 695 ifTrue: [
            recoveredBlock562Stack2 := recoveredBlock562Local1.
            recoveredBlock562PC := 696.
        ].
        recoveredBlock562Step = 696 ifTrue: [
            (recoveredBlock562Stack1) printOn: (recoveredBlock562Stack2).
            recoveredBlock562PC := 701.
        ].
        recoveredBlock562Step = 701 ifTrue: [
            recoveredBlock562Stack1 := CwMessagePrompter.
            recoveredBlock562PC := 704.
        ].
        recoveredBlock562Step = 704 ifTrue: [
            recoveredBlock562Stack2 := recoveredBlock562Local1.
            recoveredBlock562PC := 705.
        ].
        recoveredBlock562Step = 705 ifTrue: [
            recoveredBlock562Stack2 := (recoveredBlock562Stack2) contents.
            recoveredBlock562PC := 709.
        ].
        recoveredBlock562Step = 709 ifTrue: [
            (recoveredBlock562Stack1) message: (recoveredBlock562Stack2).
            recoveredBlock562PC := 711.
        ].
        recoveredBlock562Step = 711 ifTrue: [
            (recoveredBlock562Stack0) etasDevHalt.
            recoveredBlock562PC := 715.
        ].
        recoveredBlock562Step = 715 ifTrue: [
            recoveredBlock562Stack0 := Processor.
            recoveredBlock562PC := 718.
        ].
        recoveredBlock562Step = 718 ifTrue: [
            recoveredBlock562Stack0 := (recoveredBlock562Stack0) activeProcess.
            recoveredBlock562PC := 723.
        ].
        recoveredBlock562Step = 723 ifTrue: [
            recoveredBlock562Stack0 := (recoveredBlock562Stack0) terminate.
            recoveredBlock562PC := 727.
        ].
        recoveredBlock562Step = 727 ifTrue: [
            recoveredBlock562Result := recoveredBlock562Stack0.
            recoveredBlock562Done := true.
        ].
    ].
    recoveredBlock562Result
].
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            (recoveredStack0) defaultHandler: (recoveredStack1).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack0 := EtasAbtEwHoverHelpManager.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            (recoveredStack0) initializeEtasHoverHelp.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            (recoveredStack0) bringToFront.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := OSWidget.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack0) registerAscetWindowMessage.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack0) reactivateIdleTimer.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            (recoveredStack0) createIdleTimeStatus.
            recoveredPC := 777.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack0) addProductToETASLicenseManager.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack0 := (recoveredStack0) commandLine.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack1 := [:recoveredBlock795Arg1 | 
    | recoveredBlock795Value0 recoveredBlock795Value1 recoveredBlock795Value2 recoveredBlock795Value3 |
    recoveredBlock795Value0 := recoveredLocal5.
    recoveredBlock795Value1 := (recoveredBlock795Value0) mainController.
    recoveredBlock795Value2 := recoveredBlock795Arg1.
    recoveredBlock795Value3 := (recoveredBlock795Value1) handleCommandLineArgument: (recoveredBlock795Value2).
    recoveredBlock795Value3
].
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := SGSimServer.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldDllPathName.
            recoveredPC := 837.
        ].
        recoveredStep = 837 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 842] ifFalse: [recoveredPC := 859].
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack1 := SGSimServer.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack1 := (recoveredStack1) oldDllPathName.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 874] ifFalse: [recoveredPC := 961].
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack0 := ASDPathOptions.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionTempPath.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack0 := CfsWriteFileStream.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionTempPath.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            recoveredStack2 := 'ProcessId.txt'.
            recoveredPC := 906.
        ].
        recoveredStep = 906 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 911.
        ].
        recoveredStep = 911 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 921.
        ].
        recoveredStep = 921 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 953] ifFalse: [recoveredPC := 928].
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := OS.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack2 := (recoveredStack2) getCurrentProcessId.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 954.
        ].
        recoveredStep = 954 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

