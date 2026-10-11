"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d314; bytecode file offset 0x909e08"
!EtasCustomBuildDialog methodsFor: 'recovered'!
matchesFilter: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20026884; bytecode file offset 0x923928"
!EtasCustomBuildDialog methodsFor: 'recovered'!
dialogTitle
    ^'Custom Build'
! !

"ASDBase.ic method 0x2004388c; bytecode file offset 0x9451f8"
!EtasCustomBuildDialog methodsFor: 'recovered'!
widgetExecuteButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('executeButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004576c; bytecode file offset 0x9451f8"
!EtasCustomBuildDialog methodsFor: 'recovered'!
widgetOpenButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('openButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20049bac; bytecode file offset 0x947128"
!EtasCustomBuildDialog methodsFor: 'recovered'!
newTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rootNodeName.
    recoveredValue1 := (self) newStructureNode: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ac08; bytecode file offset 0x957a6c"
!EtasCustomBuildDialog methodsFor: 'recovered'!
openDirectoryButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuFileOpenDirectory.
    ^self
! !

"ASDBase.ic method 0x20063ce4; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuToolsStationOptions
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuToolsStationOptions.
    ^self
! !

"ASDBase.ic method 0x20064554; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuToolsCodeStorageRemove
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuToolsCodeStorageRemove.
    ^self
! !

"ASDBase.ic method 0x200647d4; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuToolsProjectOptions
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuToolsProjectOptions.
    ^self
! !

"ASDBase.ic method 0x20064c04; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuToolsCodeStorageOpen
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuToolsCodeStorageOpen.
    ^self
! !

"ASDBase.ic method 0x20064fb4; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuFileExecute
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuBuildCustomBuild.
    ^self
! !

"ASDBase.ic method 0x20064ff4; bytecode file offset 0x961970"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuToolsCodeStorageRemoveVariant
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuToolsCodeStorageRemoveVariant.
    ^self
! !

"ASDBase.ic method 0x20073b60; bytecode file offset 0x970b34"
!EtasCustomBuildDialog methodsFor: 'recovered'!
selectPredefinedOptionNode
    ^nil
! !

"ASDBase.ic method 0x2008761c; bytecode file offset 0x983f38"
!EtasCustomBuildDialog methodsFor: 'recovered'!
executeButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) parent.
    (recoveredValue0) menuBuildCustomBuild.
    ^self
! !

"ASDBase.ic method 0x2009ac34; bytecode file offset 0x9976c0"
!EtasCustomBuildDialog methodsFor: 'recovered'!
optionTreeSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    (self) updateDescriptionText: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20137b6c; bytecode file offset 0xa34430"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := super createMenuBar.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createToolsMenu.
    (recoveredValue2) addMenu: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2013c22c; bytecode file offset 0xa38aec"
!EtasCustomBuildDialog methodsFor: 'recovered'!
rootNodeName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := rootNodeName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDCustomBuildSettings.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) groupLabel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            rootNodeName := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := rootNodeName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021156c; bytecode file offset 0xb0de44"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createViewMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := '~View'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuShowDescription'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 'Show/Hide ~Description'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20224044; bytecode file offset 0xb20918"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuFileOpenDirectory
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDCustomBuildSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExportCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OSHinstance.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ASDCustomBuildSettings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionExportCodePath.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) defaultAction: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OSHinstance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := ASDPathOptions.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionCodeGenerationPath.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) defaultAction: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029b13c; bytecode file offset 0xb97a18"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createFileMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super createFileMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'menuFileExecute'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := '~Execute Custom Build'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'menuFileOpenDirectory'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := '~Open Directory'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e2e0c; bytecode file offset 0xbdf720"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createOptionTreeWithRootNode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) holdCopy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            copy := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'Call_70836'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptionsFromOptionCollection: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := copy.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value1) deepCopy.
    recoveredBlock25Value3 := (recoveredBlock25Value0) add: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) optionTree: (recoveredStack1) rootNode: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e9fbc; bytecode file offset 0xbe68b0"
!EtasCustomBuildDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'GeneralOptions'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'GeneralOptions32'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) descriptionVisible.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) menuShowDescription.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) dialogTitle.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOkButton.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) readOnly.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) initMenus.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) createOptionWidgets.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fed54; bytecode file offset 0xbfb63c"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createSubMenuCodeStorage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'menuToolsCodeStorageOpen'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := '~Open'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'menuToolsCodeStorageRemoveVariant'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := 'Remove ~Variant'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuToolsCodeStorageRemove'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 'Remove ~All'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203071b4; bytecode file offset 0xc03aa4"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createToolsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := '~Tools'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuToolsProjectOptions'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Project Options'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'menuToolsStationOptions'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := '~Station Options'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := 'createSubMenuCodeStorage'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := 'Code Storage'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) addSubMenu: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20333894; bytecode file offset 0xc30174"
!EtasCustomBuildDialog methodsFor: 'recovered'!
menuShowDescription
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionForm.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOpenButton.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExecuteButton.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOpenButton.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := XmATTACHWIDGET.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOpenButton.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHorizontalSplit.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExecuteButton.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := XmATTACHWIDGET.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExecuteButton.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHorizontalSplit.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            super menuShowDescription.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033a2ac; bytecode file offset 0xc36bb4"
!EtasCustomBuildDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) updateDescriptionText: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsArea.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280ed528Arg1 | 
    | block280ed528Value0 block280ed528Value1 block280ed528Value2 |
    block280ed528Value0 := block280ed528Arg1.
    block280ed528Value1 := block280ed528Value0.
    (block280ed528Value1) manageChild.
    block280ed528Value2 := (block280ed528Value0) setInputFocus.
    block280ed528Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHorizontalSplit.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := #[154 153 153 153 153 153 233 63].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) setPosition: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) update: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) resizeOptionForm.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setSysModal.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dc6b4; bytecode file offset 0xdd8fb8"
!EtasCustomBuildDialog methodsFor: 'recovered'!
update: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block28107da0Arg1 | 
    | block28107da0Value0 block28107da0Value1 |
    block28107da0Value0 := block28107da0Arg1.
    block28107da0Value1 := (block28107da0Value0) optionClass.
    block28107da0Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:block28107dc4Arg1 | 
    | block28107dc4Value0 block28107dc4Value1 block28107dc4Value2 |
    block28107dc4Value0 := block28107dc4Arg1.
    block28107dc4Value1 := (block28107dc4Value0) optionClass.
    block28107dc4Value2 := (block28107dc4Value1) isContainerOption.
    block28107dc4Value2
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := recoveredLocal1.
            recoveredBlock60PC := 69.
        ].
        recoveredBlock60Step = 69 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) optionClass.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) options.
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack3 := [:block28107de8Arg1 | 
    | block28107de8Value0 block28107de8Value1 |
    block28107de8Value0 := block28107de8Arg1.
    block28107de8Value1 := (block28107de8Value0) optionClass.
    block28107de8Value1
].
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) collect: (recoveredBlock60Stack3).
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) addAll: (recoveredBlock60Stack2).
            recoveredBlock60PC := 86.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) options.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack1 := [:block28107e0cArg1 | 
    | block28107e0cStack0 block28107e0cStack1 block28107e0cStack2 block28107e0cStack3 block28107e0cPC block28107e0cStep block28107e0cDone block28107e0cResult |
    block28107e0cStack0 := self.
    block28107e0cPC := 4.
    block28107e0cDone := false.
    [block28107e0cDone not] whileTrue: [
        block28107e0cStep := block28107e0cPC.
        block28107e0cStep = 4 ifTrue: [
            block28107e0cStack1 := block28107e0cArg1.
            block28107e0cPC := 5.
        ].
        block28107e0cStep = 5 ifTrue: [
            block28107e0cStack1 := (block28107e0cStack1) optionClass.
            block28107e0cPC := 7.
        ].
        block28107e0cStep = 7 ifTrue: [
            (block28107e0cStack1) updateOptionWidget.
            block28107e0cPC := 9.
        ].
        block28107e0cStep = 9 ifTrue: [
            block28107e0cStack1 := nil.
            block28107e0cPC := 10.
        ].
        block28107e0cStep = 10 ifTrue: [
            block28107e0cStack2 := block28107e0cArg1.
            block28107e0cPC := 11.
        ].
        block28107e0cStep = 11 ifTrue: [
            block28107e0cStack2 := (block28107e0cStack2) optionClass.
            block28107e0cPC := 13.
        ].
        block28107e0cStep = 13 ifTrue: [
            block28107e0cStack2 := (block28107e0cStack2) isContainerOption.
            block28107e0cPC := 15.
        ].
        block28107e0cStep = 15 ifTrue: [
            (block28107e0cStack2) ifTrue: [block28107e0cPC := 18] ifFalse: [block28107e0cPC := 36].
        ].
        block28107e0cStep = 18 ifTrue: [
            block28107e0cPC := 19.
        ].
        block28107e0cStep = 19 ifTrue: [
            block28107e0cStack1 := block28107e0cArg1.
            block28107e0cPC := 20.
        ].
        block28107e0cStep = 20 ifTrue: [
            block28107e0cStack1 := (block28107e0cStack1) optionClass.
            block28107e0cPC := 22.
        ].
        block28107e0cStep = 22 ifTrue: [
            block28107e0cStack1 := (block28107e0cStack1) options.
            block28107e0cPC := 23.
        ].
        block28107e0cStep = 23 ifTrue: [
            block28107e0cStack2 := [:block28107e30Arg1 | 
    | block28107e30Value0 block28107e30Value1 block28107e30Value2 |
    block28107e30Value0 := block28107e30Arg1.
    block28107e30Value1 := (block28107e30Value0) optionClass.
    block28107e30Value2 := (block28107e30Value1) updateOptionWidget.
    block28107e30Value2
].
            block28107e0cPC := 25.
        ].
        block28107e0cStep = 25 ifTrue: [
            block28107e0cPC := 34.
        ].
        block28107e0cStep = 34 ifTrue: [
            block28107e0cStack1 := (block28107e0cStack1) do: (block28107e0cStack2).
            block28107e0cPC := 36.
        ].
        block28107e0cStep = 36 ifTrue: [
            block28107e0cResult := block28107e0cStack1.
            block28107e0cDone := true.
        ].
    ].
    block28107e0cResult
].
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108PC := 153.
        ].
        recoveredBlock108Step = 153 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack0.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206b2c14; bytecode file offset 0xfaf73c"
!EtasCustomBuildDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredLocal26 recoveredLocal27 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal27 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := (self) dialogTitle.
    (recoveredBlock15Value1) title: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    (recoveredBlock15Value3) height: (600).
    recoveredBlock15Value4 := recoveredBlock15Value0.
    (recoveredBlock15Value4) width: (600).
    recoveredBlock15Value5 := MWMDECORALL.
    recoveredBlock15Value6 := (recoveredBlock15Value0) mwmDecorations: (recoveredBlock15Value5).
    recoveredBlock15Value6
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal26 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal26.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasOleMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal25 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal25.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'optionsForm'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'optionsForm'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'editFrame'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := [:block2813153cArg1 | 
    | block2813153cValue0 block2813153cValue1 |
    block2813153cValue0 := block2813153cArg1.
    block2813153cValue1 := block2813153cValue0.
    (block2813153cValue1) labelString: ('Build Commands').
    block2813153cValue0
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := 'editFrame'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 'descriptionForm'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := 'descriptionForm'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'horizontalSplit'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := [:block28131560Arg1 | 
    | block28131560Value0 block28131560Value1 block28131560Value2 block28131560Value3 block28131560Value4 block28131560Value5 block28131560Value6 block28131560Value7 block28131560Value8 block28131560Value9 |
    block28131560Value0 := block28131560Arg1.
    block28131560Value1 := block28131560Value0.
    (block28131560Value1) thickness: (3).
    block28131560Value2 := block28131560Value0.
    block28131560Value3 := XmHORIZONTAL.
    (block28131560Value2) orientation: (block28131560Value3).
    block28131560Value4 := block28131560Value0.
    (block28131560Value4) adjustRelPosAtResize: (true).
    block28131560Value5 := block28131560Value0.
    (block28131560Value5) minRightOrBottomOffset: (100).
    block28131560Value6 := block28131560Value0.
    (block28131560Value6) minTopOffset: (100).
    block28131560Value7 := block28131560Value0.
    (block28131560Value7) y: (400).
    block28131560Value8 := XmTABGROUP.
    block28131560Value9 := (block28131560Value0) navigationType: (block28131560Value8).
    block28131560Value9
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSplitBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'horizontalSplit'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowBackground.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 'HTMLOptionDescription'.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 336].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := ASDIEOLEWidget.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := 'descriptionHTMLText'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := 'descriptionHTMLText'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := 'descriptionText'.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := [:block28131584Arg1 | 
    | block28131584Value0 block28131584Value1 block28131584Value2 block28131584Value3 block28131584Value4 block28131584Value5 |
    block28131584Value0 := block28131584Arg1.
    block28131584Value1 := block28131584Value0.
    (block28131584Value1) tabSpacing: (2).
    block28131584Value2 := block28131584Value0.
    block28131584Value3 := XmMULTILINEEDIT.
    (block28131584Value2) editMode: (block28131584Value3).
    block28131584Value4 := block28131584Value0.
    (block28131584Value4) editable: (false).
    block28131584Value5 := (block28131584Value0) wordWrap: (true).
    block28131584Value5
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := 'descriptionTextScrolled'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'descriptionText'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack2 := 'scrolledOptionsArea'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack3 := [:block281315a8Arg1 | 
    | block281315a8Value0 block281315a8Value1 block281315a8Value2 block281315a8Value3 block281315a8Value4 |
    block281315a8Value0 := block281315a8Arg1.
    block281315a8Value1 := block281315a8Value0.
    block281315a8Value2 := XmAUTOMATIC.
    (block281315a8Value1) scrollingPolicy: (block281315a8Value2).
    block281315a8Value3 := XmASNEEDED.
    block281315a8Value4 := (block281315a8Value0) scrollBarDisplayPolicy: (block281315a8Value3).
    block281315a8Value4
].
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := 'scrolledOptionsArea'.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := 'defaultButton'.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := [:block281315ccArg1 | 
    | block281315ccValue0 block281315ccValue1 block281315ccValue2 block281315ccValue3 |
    block281315ccValue0 := block281315ccArg1.
    block281315ccValue1 := block281315ccValue0.
    (block281315ccValue1) labelString: ('System Defaults').
    block281315ccValue2 := block281315ccValue0.
    (block281315ccValue2) height: (24).
    block281315ccValue3 := (block281315ccValue0) width: (90).
    block281315ccValue3
].
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack2 := 'defaultButton'.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack2 := 'importButton'.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack3 := [:recoveredBlock538Arg1 | 
    | recoveredBlock538Value0 recoveredBlock538Value1 recoveredBlock538Value2 recoveredBlock538Value3 recoveredBlock538Value4 recoveredBlock538Value5 recoveredBlock538Value6 recoveredBlock538Value7 recoveredBlock538Value8 recoveredBlock538Value9 recoveredBlock538Value10 recoveredBlock538Value11 recoveredBlock538Value12 recoveredBlock538Value13 recoveredBlock538Value14 |
    recoveredBlock538Value0 := recoveredBlock538Arg1.
    recoveredBlock538Value1 := recoveredBlock538Value0.
    recoveredBlock538Value2 := XmICON.
    (recoveredBlock538Value1) labelType: (recoveredBlock538Value2).
    recoveredBlock538Value3 := recoveredBlock538Value0.
    recoveredBlock538Value4 := (self) resourceManager.
    recoveredBlock538Value5 := (recoveredBlock538Value4) returnIconWithName: ('GeneralImport').
    (recoveredBlock538Value3) labelIcon: (recoveredBlock538Value5).
    recoveredBlock538Value6 := recoveredBlock538Value0.
    recoveredBlock538Value7 := (self) resourceManager.
    recoveredBlock538Value8 := recoveredBlock538Arg1.
    recoveredBlock538Value9 := (recoveredBlock538Value8) labelIcon.
    recoveredBlock538Value10 := (recoveredBlock538Value9) name.
    recoveredBlock538Value11 := (recoveredBlock538Value7) returnGrayedIconWithName: (recoveredBlock538Value10).
    (recoveredBlock538Value6) labelInsensitiveIcon: (recoveredBlock538Value11).
    recoveredBlock538Value12 := recoveredBlock538Value0.
    (recoveredBlock538Value12) height: (24).
    recoveredBlock538Value13 := recoveredBlock538Value0.
    (recoveredBlock538Value13) width: (24).
    recoveredBlock538Value14 := (recoveredBlock538Value0) recomputeSize: (false).
    recoveredBlock538Value14
].
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack2 := 'importButton'.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := 'exportButton'.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := [:recoveredBlock640Arg1 | 
    | recoveredBlock640Value0 recoveredBlock640Value1 recoveredBlock640Value2 recoveredBlock640Value3 recoveredBlock640Value4 recoveredBlock640Value5 recoveredBlock640Value6 recoveredBlock640Value7 recoveredBlock640Value8 recoveredBlock640Value9 recoveredBlock640Value10 recoveredBlock640Value11 recoveredBlock640Value12 recoveredBlock640Value13 recoveredBlock640Value14 |
    recoveredBlock640Value0 := recoveredBlock640Arg1.
    recoveredBlock640Value1 := recoveredBlock640Value0.
    recoveredBlock640Value2 := XmICON.
    (recoveredBlock640Value1) labelType: (recoveredBlock640Value2).
    recoveredBlock640Value3 := recoveredBlock640Value0.
    recoveredBlock640Value4 := (self) resourceManager.
    recoveredBlock640Value5 := (recoveredBlock640Value4) returnIconWithName: ('GeneralExport').
    (recoveredBlock640Value3) labelIcon: (recoveredBlock640Value5).
    recoveredBlock640Value6 := recoveredBlock640Value0.
    recoveredBlock640Value7 := (self) resourceManager.
    recoveredBlock640Value8 := recoveredBlock640Arg1.
    recoveredBlock640Value9 := (recoveredBlock640Value8) labelIcon.
    recoveredBlock640Value10 := (recoveredBlock640Value9) name.
    recoveredBlock640Value11 := (recoveredBlock640Value7) returnGrayedIconWithName: (recoveredBlock640Value10).
    (recoveredBlock640Value6) labelInsensitiveIcon: (recoveredBlock640Value11).
    recoveredBlock640Value12 := recoveredBlock640Value0.
    (recoveredBlock640Value12) height: (24).
    recoveredBlock640Value13 := recoveredBlock640Value0.
    (recoveredBlock640Value13) width: (24).
    recoveredBlock640Value14 := (recoveredBlock640Value0) recomputeSize: (false).
    recoveredBlock640Value14
].
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack2 := 'exportButton'.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := 'openButton'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := [:block281315f0Arg1 | 
    | block281315f0Value0 block281315f0Value1 block281315f0Value2 block281315f0Value3 |
    block281315f0Value0 := block281315f0Arg1.
    block281315f0Value1 := block281315f0Value0.
    (block281315f0Value1) labelString: ('Open Directory').
    block281315f0Value2 := block281315f0Value0.
    (block281315f0Value2) height: (24).
    block281315f0Value3 := (block281315f0Value0) width: (90).
    block281315f0Value3
].
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := 'openButton'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := 'executeButton'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := [:block28131614Arg1 | 
    | block28131614Value0 block28131614Value1 block28131614Value2 block28131614Value3 |
    block28131614Value0 := block28131614Arg1.
    block28131614Value1 := block28131614Value0.
    (block28131614Value1) labelString: ('Execute').
    block28131614Value2 := block28131614Value0.
    (block28131614Value2) height: (24).
    block28131614Value3 := (block28131614Value0) width: (90).
    block28131614Value3
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack2 := 'executeButton'.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack3 := [:block28131638Arg1 | 
    | block28131638Value0 block28131638Value1 block28131638Value2 block28131638Value3 block28131638Value4 |
    block28131638Value0 := block28131638Arg1.
    block28131638Value1 := block28131638Value0.
    (block28131638Value1) labelString: ('&Cancel').
    block28131638Value2 := block28131638Value0.
    (block28131638Value2) height: (24).
    block28131638Value3 := block28131638Value0.
    (block28131638Value3) width: (90).
    block28131638Value4 := (block28131638Value0) recomputeSize: (false).
    block28131638Value4
].
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 912.
        ].
        recoveredStep = 912 ifTrue: [
            recoveredStack3 := [:block2813165cArg1 | 
    | block2813165cValue0 block2813165cValue1 block2813165cValue2 block2813165cValue3 block2813165cValue4 |
    block2813165cValue0 := block2813165cArg1.
    block2813165cValue1 := block2813165cValue0.
    (block2813165cValue1) labelString: ('&OK').
    block2813165cValue2 := block2813165cValue0.
    (block2813165cValue2) height: (24).
    block2813165cValue3 := block2813165cValue0.
    (block2813165cValue3) width: (90).
    block2813165cValue4 := (block2813165cValue0) recomputeSize: (false).
    block2813165cValue4
].
            recoveredPC := 916.
        ].
        recoveredStep = 916 ifTrue: [
            recoveredPC := 946.
        ].
        recoveredStep = 946 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 951.
        ].
        recoveredStep = 951 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 959.
        ].
        recoveredStep = 959 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 962.
        ].
        recoveredStep = 962 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack1 := recoveredLocal23.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack2 := [:recoveredBlock970Arg1 | 
    | recoveredBlock970Value0 recoveredBlock970Value1 recoveredBlock970Value2 recoveredBlock970Value3 recoveredBlock970Value4 recoveredBlock970Value5 recoveredBlock970Value6 recoveredBlock970Value7 recoveredBlock970Value8 recoveredBlock970Value9 recoveredBlock970Value10 recoveredBlock970Value11 recoveredBlock970Value12 recoveredBlock970Value13 recoveredBlock970Value14 |
    recoveredBlock970Value0 := recoveredBlock970Arg1.
    recoveredBlock970Value1 := recoveredBlock970Value0.
    recoveredBlock970Value2 := XmATTACHFORM.
    (recoveredBlock970Value1) topAttachment: (recoveredBlock970Value2).
    recoveredBlock970Value3 := recoveredBlock970Value0.
    (recoveredBlock970Value3) topOffset: (5).
    recoveredBlock970Value4 := recoveredBlock970Value0.
    recoveredBlock970Value5 := XmATTACHWIDGET.
    (recoveredBlock970Value4) bottomAttachment: (recoveredBlock970Value5).
    recoveredBlock970Value6 := recoveredBlock970Value0.
    (recoveredBlock970Value6) bottomOffset: (5).
    recoveredBlock970Value7 := recoveredBlock970Value0.
    recoveredBlock970Value8 := recoveredLocal4.
    (recoveredBlock970Value7) bottomWidget: (recoveredBlock970Value8).
    recoveredBlock970Value9 := recoveredBlock970Value0.
    recoveredBlock970Value10 := XmATTACHFORM.
    (recoveredBlock970Value9) leftAttachment: (recoveredBlock970Value10).
    recoveredBlock970Value11 := recoveredBlock970Value0.
    (recoveredBlock970Value11) leftOffset: (5).
    recoveredBlock970Value12 := recoveredBlock970Value0.
    recoveredBlock970Value13 := XmATTACHFORM.
    (recoveredBlock970Value12) rightAttachment: (recoveredBlock970Value13).
    recoveredBlock970Value14 := (recoveredBlock970Value0) rightOffset: (5).
    recoveredBlock970Value14
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack2 := [:block28131680Arg1 | 
    | block28131680Value0 block28131680Value1 block28131680Value2 block28131680Value3 block28131680Value4 block28131680Value5 block28131680Value6 block28131680Value7 block28131680Value8 block28131680Value9 block28131680Value10 block28131680Value11 block28131680Value12 block28131680Value13 block28131680Value14 |
    block28131680Value0 := block28131680Arg1.
    block28131680Value1 := block28131680Value0.
    block28131680Value2 := XmATTACHNONE.
    (block28131680Value1) topAttachment: (block28131680Value2).
    block28131680Value3 := block28131680Value0.
    (block28131680Value3) topOffset: (0).
    block28131680Value4 := block28131680Value0.
    block28131680Value5 := XmATTACHNONE.
    (block28131680Value4) bottomAttachment: (block28131680Value5).
    block28131680Value6 := block28131680Value0.
    (block28131680Value6) bottomOffset: (0).
    block28131680Value7 := block28131680Value0.
    block28131680Value8 := XmATTACHWIDGET.
    (block28131680Value7) leftAttachment: (block28131680Value8).
    block28131680Value9 := block28131680Value0.
    block28131680Value10 := XmATTACHFORM.
    (block28131680Value9) leftAttachment: (block28131680Value10).
    block28131680Value11 := block28131680Value0.
    (block28131680Value11) leftOffset: (0).
    block28131680Value12 := block28131680Value0.
    block28131680Value13 := XmATTACHFORM.
    (block28131680Value12) rightAttachment: (block28131680Value13).
    block28131680Value14 := (block28131680Value0) rightOffset: (0).
    block28131680Value14
].
            recoveredPC := 1056.
        ].
        recoveredStep = 1056 ifTrue: [
            recoveredPC := 1128.
        ].
        recoveredStep = 1128 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1133.
        ].
        recoveredStep = 1133 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1136.
        ].
        recoveredStep = 1136 ifTrue: [
            recoveredStack2 := [:recoveredBlock1136Arg1 | 
    | recoveredBlock1136Value0 recoveredBlock1136Value1 recoveredBlock1136Value2 recoveredBlock1136Value3 recoveredBlock1136Value4 recoveredBlock1136Value5 recoveredBlock1136Value6 recoveredBlock1136Value7 recoveredBlock1136Value8 recoveredBlock1136Value9 recoveredBlock1136Value10 recoveredBlock1136Value11 recoveredBlock1136Value12 recoveredBlock1136Value13 recoveredBlock1136Value14 recoveredBlock1136Value15 recoveredBlock1136Value16 |
    recoveredBlock1136Value0 := recoveredBlock1136Arg1.
    recoveredBlock1136Value1 := recoveredBlock1136Value0.
    recoveredBlock1136Value2 := XmATTACHWIDGET.
    (recoveredBlock1136Value1) topAttachment: (recoveredBlock1136Value2).
    recoveredBlock1136Value3 := recoveredBlock1136Value0.
    (recoveredBlock1136Value3) topOffset: (0).
    recoveredBlock1136Value4 := recoveredBlock1136Value0.
    recoveredBlock1136Value5 := recoveredLocal17.
    (recoveredBlock1136Value4) topWidget: (recoveredBlock1136Value5).
    recoveredBlock1136Value6 := recoveredBlock1136Value0.
    recoveredBlock1136Value7 := XmATTACHFORM.
    (recoveredBlock1136Value6) bottomAttachment: (recoveredBlock1136Value7).
    recoveredBlock1136Value8 := recoveredBlock1136Value0.
    (recoveredBlock1136Value8) bottomOffset: (0).
    recoveredBlock1136Value9 := recoveredBlock1136Value0.
    recoveredBlock1136Value10 := XmATTACHWIDGET.
    (recoveredBlock1136Value9) leftAttachment: (recoveredBlock1136Value10).
    recoveredBlock1136Value11 := recoveredBlock1136Value0.
    recoveredBlock1136Value12 := XmATTACHFORM.
    (recoveredBlock1136Value11) leftAttachment: (recoveredBlock1136Value12).
    recoveredBlock1136Value13 := recoveredBlock1136Value0.
    (recoveredBlock1136Value13) leftOffset: (0).
    recoveredBlock1136Value14 := recoveredBlock1136Value0.
    recoveredBlock1136Value15 := XmATTACHFORM.
    (recoveredBlock1136Value14) rightAttachment: (recoveredBlock1136Value15).
    recoveredBlock1136Value16 := (recoveredBlock1136Value0) rightOffset: (0).
    recoveredBlock1136Value16
].
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack2 := [:recoveredBlock1226Arg1 | 
    | recoveredBlock1226Value0 recoveredBlock1226Value1 recoveredBlock1226Value2 recoveredBlock1226Value3 recoveredBlock1226Value4 recoveredBlock1226Value5 recoveredBlock1226Value6 recoveredBlock1226Value7 recoveredBlock1226Value8 recoveredBlock1226Value9 recoveredBlock1226Value10 recoveredBlock1226Value11 recoveredBlock1226Value12 recoveredBlock1226Value13 recoveredBlock1226Value14 recoveredBlock1226Value15 recoveredBlock1226Value16 |
    recoveredBlock1226Value0 := recoveredBlock1226Arg1.
    recoveredBlock1226Value1 := recoveredBlock1226Value0.
    recoveredBlock1226Value2 := XmATTACHFORM.
    (recoveredBlock1226Value1) topAttachment: (recoveredBlock1226Value2).
    recoveredBlock1226Value3 := recoveredBlock1226Value0.
    (recoveredBlock1226Value3) topOffset: (0).
    recoveredBlock1226Value4 := recoveredBlock1226Value0.
    recoveredBlock1226Value5 := XmATTACHWIDGET.
    (recoveredBlock1226Value4) bottomAttachment: (recoveredBlock1226Value5).
    recoveredBlock1226Value6 := recoveredBlock1226Value0.
    recoveredBlock1226Value7 := recoveredLocal11.
    (recoveredBlock1226Value6) bottomWidget: (recoveredBlock1226Value7).
    recoveredBlock1226Value8 := recoveredBlock1226Value0.
    (recoveredBlock1226Value8) bottomOffset: (5).
    recoveredBlock1226Value9 := recoveredBlock1226Value0.
    recoveredBlock1226Value10 := XmATTACHWIDGET.
    (recoveredBlock1226Value9) leftAttachment: (recoveredBlock1226Value10).
    recoveredBlock1226Value11 := recoveredBlock1226Value0.
    (recoveredBlock1226Value11) leftOffset: (0).
    recoveredBlock1226Value12 := recoveredBlock1226Value0.
    recoveredBlock1226Value13 := XmATTACHFORM.
    (recoveredBlock1226Value12) leftAttachment: (recoveredBlock1226Value13).
    recoveredBlock1226Value14 := recoveredBlock1226Value0.
    recoveredBlock1226Value15 := XmATTACHFORM.
    (recoveredBlock1226Value14) rightAttachment: (recoveredBlock1226Value15).
    recoveredBlock1226Value16 := (recoveredBlock1226Value0) rightOffset: (0).
    recoveredBlock1226Value16
].
            recoveredPC := 1308.
        ].
        recoveredStep = 1308 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1313.
        ].
        recoveredStep = 1313 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1316.
        ].
        recoveredStep = 1316 ifTrue: [
            recoveredStack2 := [:recoveredBlock1316Arg1 | 
    | recoveredBlock1316Value0 recoveredBlock1316Value1 recoveredBlock1316Value2 recoveredBlock1316Value3 recoveredBlock1316Value4 recoveredBlock1316Value5 recoveredBlock1316Value6 recoveredBlock1316Value7 recoveredBlock1316Value8 recoveredBlock1316Value9 recoveredBlock1316Value10 recoveredBlock1316Value11 recoveredBlock1316Value12 recoveredBlock1316Value13 recoveredBlock1316Value14 |
    recoveredBlock1316Value0 := recoveredBlock1316Arg1.
    recoveredBlock1316Value1 := recoveredBlock1316Value0.
    recoveredBlock1316Value2 := XmATTACHNONE.
    (recoveredBlock1316Value1) topAttachment: (recoveredBlock1316Value2).
    recoveredBlock1316Value3 := recoveredBlock1316Value0.
    (recoveredBlock1316Value3) topOffset: (0).
    recoveredBlock1316Value4 := recoveredBlock1316Value0.
    recoveredBlock1316Value5 := XmATTACHWIDGET.
    (recoveredBlock1316Value4) bottomAttachment: (recoveredBlock1316Value5).
    recoveredBlock1316Value6 := recoveredBlock1316Value0.
    recoveredBlock1316Value7 := recoveredLocal17.
    (recoveredBlock1316Value6) bottomWidget: (recoveredBlock1316Value7).
    recoveredBlock1316Value8 := recoveredBlock1316Value0.
    (recoveredBlock1316Value8) bottomOffset: (0).
    recoveredBlock1316Value9 := recoveredBlock1316Value0.
    recoveredBlock1316Value10 := XmATTACHNONE.
    (recoveredBlock1316Value9) leftAttachment: (recoveredBlock1316Value10).
    recoveredBlock1316Value11 := recoveredBlock1316Value0.
    (recoveredBlock1316Value11) leftOffset: (0).
    recoveredBlock1316Value12 := recoveredBlock1316Value0.
    recoveredBlock1316Value13 := XmATTACHFORM.
    (recoveredBlock1316Value12) rightAttachment: (recoveredBlock1316Value13).
    recoveredBlock1316Value14 := (recoveredBlock1316Value0) rightOffset: (0).
    recoveredBlock1316Value14
].
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack2 := [:recoveredBlock1398Arg1 | 
    | recoveredBlock1398Value0 recoveredBlock1398Value1 recoveredBlock1398Value2 recoveredBlock1398Value3 recoveredBlock1398Value4 recoveredBlock1398Value5 recoveredBlock1398Value6 recoveredBlock1398Value7 recoveredBlock1398Value8 recoveredBlock1398Value9 recoveredBlock1398Value10 recoveredBlock1398Value11 recoveredBlock1398Value12 recoveredBlock1398Value13 recoveredBlock1398Value14 recoveredBlock1398Value15 recoveredBlock1398Value16 |
    recoveredBlock1398Value0 := recoveredBlock1398Arg1.
    recoveredBlock1398Value1 := recoveredBlock1398Value0.
    recoveredBlock1398Value2 := XmATTACHNONE.
    (recoveredBlock1398Value1) topAttachment: (recoveredBlock1398Value2).
    recoveredBlock1398Value3 := recoveredBlock1398Value0.
    (recoveredBlock1398Value3) topOffset: (0).
    recoveredBlock1398Value4 := recoveredBlock1398Value0.
    recoveredBlock1398Value5 := XmATTACHWIDGET.
    (recoveredBlock1398Value4) bottomAttachment: (recoveredBlock1398Value5).
    recoveredBlock1398Value6 := recoveredBlock1398Value0.
    recoveredBlock1398Value7 := recoveredLocal17.
    (recoveredBlock1398Value6) bottomWidget: (recoveredBlock1398Value7).
    recoveredBlock1398Value8 := recoveredBlock1398Value0.
    (recoveredBlock1398Value8) bottomOffset: (0).
    recoveredBlock1398Value9 := recoveredBlock1398Value0.
    recoveredBlock1398Value10 := XmATTACHNONE.
    (recoveredBlock1398Value9) leftAttachment: (recoveredBlock1398Value10).
    recoveredBlock1398Value11 := recoveredBlock1398Value0.
    (recoveredBlock1398Value11) leftOffset: (0).
    recoveredBlock1398Value12 := recoveredBlock1398Value0.
    recoveredBlock1398Value13 := XmATTACHWIDGET.
    (recoveredBlock1398Value12) rightAttachment: (recoveredBlock1398Value13).
    recoveredBlock1398Value14 := recoveredBlock1398Value0.
    (recoveredBlock1398Value14) rightOffset: (5).
    recoveredBlock1398Value15 := recoveredLocal11.
    recoveredBlock1398Value16 := (recoveredBlock1398Value0) rightWidget: (recoveredBlock1398Value15).
    recoveredBlock1398Value16
].
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack2 := [:recoveredBlock1488Arg1 | 
    | recoveredBlock1488Value0 recoveredBlock1488Value1 recoveredBlock1488Value2 recoveredBlock1488Value3 recoveredBlock1488Value4 recoveredBlock1488Value5 recoveredBlock1488Value6 recoveredBlock1488Value7 recoveredBlock1488Value8 recoveredBlock1488Value9 recoveredBlock1488Value10 recoveredBlock1488Value11 recoveredBlock1488Value12 recoveredBlock1488Value13 recoveredBlock1488Value14 recoveredBlock1488Value15 recoveredBlock1488Value16 |
    recoveredBlock1488Value0 := recoveredBlock1488Arg1.
    recoveredBlock1488Value1 := recoveredBlock1488Value0.
    recoveredBlock1488Value2 := XmATTACHNONE.
    (recoveredBlock1488Value1) topAttachment: (recoveredBlock1488Value2).
    recoveredBlock1488Value3 := recoveredBlock1488Value0.
    (recoveredBlock1488Value3) topOffset: (0).
    recoveredBlock1488Value4 := recoveredBlock1488Value0.
    recoveredBlock1488Value5 := XmATTACHWIDGET.
    (recoveredBlock1488Value4) bottomAttachment: (recoveredBlock1488Value5).
    recoveredBlock1488Value6 := recoveredBlock1488Value0.
    recoveredBlock1488Value7 := recoveredLocal17.
    (recoveredBlock1488Value6) bottomWidget: (recoveredBlock1488Value7).
    recoveredBlock1488Value8 := recoveredBlock1488Value0.
    (recoveredBlock1488Value8) bottomOffset: (0).
    recoveredBlock1488Value9 := recoveredBlock1488Value0.
    recoveredBlock1488Value10 := XmATTACHNONE.
    (recoveredBlock1488Value9) leftAttachment: (recoveredBlock1488Value10).
    recoveredBlock1488Value11 := recoveredBlock1488Value0.
    (recoveredBlock1488Value11) leftOffset: (0).
    recoveredBlock1488Value12 := recoveredBlock1488Value0.
    recoveredBlock1488Value13 := XmATTACHWIDGET.
    (recoveredBlock1488Value12) rightAttachment: (recoveredBlock1488Value13).
    recoveredBlock1488Value14 := recoveredBlock1488Value0.
    (recoveredBlock1488Value14) rightOffset: (5).
    recoveredBlock1488Value15 := recoveredLocal9.
    recoveredBlock1488Value16 := (recoveredBlock1488Value0) rightWidget: (recoveredBlock1488Value15).
    recoveredBlock1488Value16
].
            recoveredPC := 1570.
        ].
        recoveredStep = 1570 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1575.
        ].
        recoveredStep = 1575 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1578.
        ].
        recoveredStep = 1578 ifTrue: [
            recoveredStack2 := [:recoveredBlock1578Arg1 | 
    | recoveredBlock1578Value0 recoveredBlock1578Value1 recoveredBlock1578Value2 recoveredBlock1578Value3 recoveredBlock1578Value4 recoveredBlock1578Value5 recoveredBlock1578Value6 recoveredBlock1578Value7 recoveredBlock1578Value8 recoveredBlock1578Value9 recoveredBlock1578Value10 recoveredBlock1578Value11 recoveredBlock1578Value12 recoveredBlock1578Value13 recoveredBlock1578Value14 |
    recoveredBlock1578Value0 := recoveredBlock1578Arg1.
    recoveredBlock1578Value1 := recoveredBlock1578Value0.
    recoveredBlock1578Value2 := XmATTACHNONE.
    (recoveredBlock1578Value1) topAttachment: (recoveredBlock1578Value2).
    recoveredBlock1578Value3 := recoveredBlock1578Value0.
    (recoveredBlock1578Value3) topOffset: (0).
    recoveredBlock1578Value4 := recoveredBlock1578Value0.
    recoveredBlock1578Value5 := XmATTACHWIDGET.
    (recoveredBlock1578Value4) bottomAttachment: (recoveredBlock1578Value5).
    recoveredBlock1578Value6 := recoveredBlock1578Value0.
    recoveredBlock1578Value7 := recoveredLocal17.
    (recoveredBlock1578Value6) bottomWidget: (recoveredBlock1578Value7).
    recoveredBlock1578Value8 := recoveredBlock1578Value0.
    (recoveredBlock1578Value8) bottomOffset: (0).
    recoveredBlock1578Value9 := recoveredBlock1578Value0.
    recoveredBlock1578Value10 := XmATTACHNONE.
    (recoveredBlock1578Value9) rightAttachment: (recoveredBlock1578Value10).
    recoveredBlock1578Value11 := recoveredBlock1578Value0.
    (recoveredBlock1578Value11) rightOffset: (0).
    recoveredBlock1578Value12 := recoveredBlock1578Value0.
    recoveredBlock1578Value13 := XmATTACHFORM.
    (recoveredBlock1578Value12) leftAttachment: (recoveredBlock1578Value13).
    recoveredBlock1578Value14 := (recoveredBlock1578Value0) leftOffset: (0).
    recoveredBlock1578Value14
].
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            recoveredStack2 := [:recoveredBlock1660Arg1 | 
    | recoveredBlock1660Value0 recoveredBlock1660Value1 recoveredBlock1660Value2 recoveredBlock1660Value3 recoveredBlock1660Value4 recoveredBlock1660Value5 recoveredBlock1660Value6 recoveredBlock1660Value7 recoveredBlock1660Value8 recoveredBlock1660Value9 recoveredBlock1660Value10 recoveredBlock1660Value11 recoveredBlock1660Value12 recoveredBlock1660Value13 recoveredBlock1660Value14 recoveredBlock1660Value15 recoveredBlock1660Value16 |
    recoveredBlock1660Value0 := recoveredBlock1660Arg1.
    recoveredBlock1660Value1 := recoveredBlock1660Value0.
    recoveredBlock1660Value2 := XmATTACHNONE.
    (recoveredBlock1660Value1) topAttachment: (recoveredBlock1660Value2).
    recoveredBlock1660Value3 := recoveredBlock1660Value0.
    (recoveredBlock1660Value3) topOffset: (0).
    recoveredBlock1660Value4 := recoveredBlock1660Value0.
    recoveredBlock1660Value5 := XmATTACHWIDGET.
    (recoveredBlock1660Value4) bottomAttachment: (recoveredBlock1660Value5).
    recoveredBlock1660Value6 := recoveredBlock1660Value0.
    recoveredBlock1660Value7 := recoveredLocal17.
    (recoveredBlock1660Value6) bottomWidget: (recoveredBlock1660Value7).
    recoveredBlock1660Value8 := recoveredBlock1660Value0.
    (recoveredBlock1660Value8) bottomOffset: (0).
    recoveredBlock1660Value9 := recoveredBlock1660Value0.
    recoveredBlock1660Value10 := XmATTACHNONE.
    (recoveredBlock1660Value9) rightAttachment: (recoveredBlock1660Value10).
    recoveredBlock1660Value11 := recoveredBlock1660Value0.
    (recoveredBlock1660Value11) rightOffset: (0).
    recoveredBlock1660Value12 := recoveredBlock1660Value0.
    recoveredBlock1660Value13 := XmATTACHWIDGET.
    (recoveredBlock1660Value12) leftAttachment: (recoveredBlock1660Value13).
    recoveredBlock1660Value14 := recoveredBlock1660Value0.
    (recoveredBlock1660Value14) leftOffset: (5).
    recoveredBlock1660Value15 := recoveredLocal14.
    recoveredBlock1660Value16 := (recoveredBlock1660Value0) leftWidget: (recoveredBlock1660Value15).
    recoveredBlock1660Value16
].
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1750.
        ].
        recoveredStep = 1750 ifTrue: [
            recoveredStack2 := [:block281316a4Arg1 | 
    | block281316a4Value0 block281316a4Value1 block281316a4Value2 block281316a4Value3 block281316a4Value4 block281316a4Value5 block281316a4Value6 block281316a4Value7 block281316a4Value8 block281316a4Value9 block281316a4Value10 block281316a4Value11 block281316a4Value12 |
    block281316a4Value0 := block281316a4Arg1.
    block281316a4Value1 := block281316a4Value0.
    block281316a4Value2 := XmATTACHFORM.
    (block281316a4Value1) bottomAttachment: (block281316a4Value2).
    block281316a4Value3 := block281316a4Value0.
    (block281316a4Value3) bottomOffset: (0).
    block281316a4Value4 := block281316a4Value0.
    block281316a4Value5 := XmATTACHFORM.
    (block281316a4Value4) topAttachment: (block281316a4Value5).
    block281316a4Value6 := block281316a4Value0.
    (block281316a4Value6) topOffset: (0).
    block281316a4Value7 := block281316a4Value0.
    block281316a4Value8 := XmATTACHFORM.
    (block281316a4Value7) leftAttachment: (block281316a4Value8).
    block281316a4Value9 := block281316a4Value0.
    (block281316a4Value9) leftOffset: (0).
    block281316a4Value10 := block281316a4Value0.
    block281316a4Value11 := XmATTACHFORM.
    (block281316a4Value10) rightAttachment: (block281316a4Value11).
    block281316a4Value12 := (block281316a4Value0) rightOffset: (0).
    block281316a4Value12
].
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 1825.
        ].
        recoveredStep = 1825 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 1827.
        ].
        recoveredStep = 1827 ifTrue: [
            recoveredStack2 := 'HTMLOptionDescription'.
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 1831.
        ].
        recoveredStep = 1831 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 1833.
        ].
        recoveredStep = 1833 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 1837.
        ].
        recoveredStep = 1837 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 1846] ifFalse: [recoveredPC := 1840].
        ].
        recoveredStep = 1840 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 1846] ifFalse: [recoveredPC := 1924].
        ].
        recoveredStep = 1846 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1849.
        ].
        recoveredStep = 1849 ifTrue: [
            recoveredStack2 := [:block281316c8Arg1 | 
    | block281316c8Value0 block281316c8Value1 block281316c8Value2 block281316c8Value3 block281316c8Value4 block281316c8Value5 block281316c8Value6 block281316c8Value7 block281316c8Value8 block281316c8Value9 block281316c8Value10 block281316c8Value11 block281316c8Value12 |
    block281316c8Value0 := block281316c8Arg1.
    block281316c8Value1 := block281316c8Value0.
    block281316c8Value2 := XmATTACHFORM.
    (block281316c8Value1) bottomAttachment: (block281316c8Value2).
    block281316c8Value3 := block281316c8Value0.
    (block281316c8Value3) bottomOffset: (0).
    block281316c8Value4 := block281316c8Value0.
    block281316c8Value5 := XmATTACHFORM.
    (block281316c8Value4) topAttachment: (block281316c8Value5).
    block281316c8Value6 := block281316c8Value0.
    (block281316c8Value6) topOffset: (0).
    block281316c8Value7 := block281316c8Value0.
    block281316c8Value8 := XmATTACHFORM.
    (block281316c8Value7) leftAttachment: (block281316c8Value8).
    block281316c8Value9 := block281316c8Value0.
    (block281316c8Value9) leftOffset: (0).
    block281316c8Value10 := block281316c8Value0.
    block281316c8Value11 := XmATTACHFORM.
    (block281316c8Value10) rightAttachment: (block281316c8Value11).
    block281316c8Value12 := (block281316c8Value0) rightOffset: (0).
    block281316c8Value12
].
            recoveredPC := 1852.
        ].
        recoveredStep = 1852 ifTrue: [
            recoveredPC := 1916.
        ].
        recoveredStep = 1916 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1921.
        ].
        recoveredStep = 1921 ifTrue: [
            recoveredPC := 1999.
        ].
        recoveredStep = 1924 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1927.
        ].
        recoveredStep = 1927 ifTrue: [
            recoveredStack2 := [:block281316ecArg1 | 
    | block281316ecValue0 block281316ecValue1 block281316ecValue2 block281316ecValue3 block281316ecValue4 block281316ecValue5 block281316ecValue6 block281316ecValue7 block281316ecValue8 block281316ecValue9 block281316ecValue10 block281316ecValue11 block281316ecValue12 |
    block281316ecValue0 := block281316ecArg1.
    block281316ecValue1 := block281316ecValue0.
    block281316ecValue2 := XmATTACHFORM.
    (block281316ecValue1) bottomAttachment: (block281316ecValue2).
    block281316ecValue3 := block281316ecValue0.
    (block281316ecValue3) bottomOffset: (0).
    block281316ecValue4 := block281316ecValue0.
    block281316ecValue5 := XmATTACHFORM.
    (block281316ecValue4) topAttachment: (block281316ecValue5).
    block281316ecValue6 := block281316ecValue0.
    (block281316ecValue6) topOffset: (0).
    block281316ecValue7 := block281316ecValue0.
    block281316ecValue8 := XmATTACHFORM.
    (block281316ecValue7) leftAttachment: (block281316ecValue8).
    block281316ecValue9 := block281316ecValue0.
    (block281316ecValue9) leftOffset: (0).
    block281316ecValue10 := block281316ecValue0.
    block281316ecValue11 := XmATTACHFORM.
    (block281316ecValue10) rightAttachment: (block281316ecValue11).
    block281316ecValue12 := (block281316ecValue0) rightOffset: (0).
    block281316ecValue12
].
            recoveredPC := 1930.
        ].
        recoveredStep = 1930 ifTrue: [
            recoveredPC := 1994.
        ].
        recoveredStep = 1994 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1999.
        ].
        recoveredStep = 1999 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2002.
        ].
        recoveredStep = 2002 ifTrue: [
            recoveredStack2 := [:block28131710Arg1 | 
    | block28131710Value0 block28131710Value1 block28131710Value2 block28131710Value3 block28131710Value4 block28131710Value5 block28131710Value6 block28131710Value7 block28131710Value8 block28131710Value9 block28131710Value10 |
    block28131710Value0 := block28131710Arg1.
    block28131710Value1 := block28131710Value0.
    block28131710Value2 := XmATTACHFORM.
    (block28131710Value1) bottomAttachment: (block28131710Value2).
    block28131710Value3 := block28131710Value0.
    (block28131710Value3) bottomOffset: (5).
    block28131710Value4 := block28131710Value0.
    block28131710Value5 := XmATTACHNONE.
    (block28131710Value4) topAttachment: (block28131710Value5).
    block28131710Value6 := block28131710Value0.
    block28131710Value7 := XmATTACHNONE.
    (block28131710Value6) leftAttachment: (block28131710Value7).
    block28131710Value8 := block28131710Value0.
    block28131710Value9 := XmATTACHFORM.
    (block28131710Value8) rightAttachment: (block28131710Value9).
    block28131710Value10 := (block28131710Value0) rightOffset: (5).
    block28131710Value10
].
            recoveredPC := 2006.
        ].
        recoveredStep = 2006 ifTrue: [
            recoveredPC := 2058.
        ].
        recoveredStep = 2058 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2063.
        ].
        recoveredStep = 2063 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2066.
        ].
        recoveredStep = 2066 ifTrue: [
            recoveredStack2 := [:recoveredBlock2066Arg1 | 
    | recoveredBlock2066Value0 recoveredBlock2066Value1 recoveredBlock2066Value2 recoveredBlock2066Value3 recoveredBlock2066Value4 recoveredBlock2066Value5 recoveredBlock2066Value6 recoveredBlock2066Value7 recoveredBlock2066Value8 recoveredBlock2066Value9 recoveredBlock2066Value10 recoveredBlock2066Value11 recoveredBlock2066Value12 |
    recoveredBlock2066Value0 := recoveredBlock2066Arg1.
    recoveredBlock2066Value1 := recoveredBlock2066Value0.
    recoveredBlock2066Value2 := XmATTACHFORM.
    (recoveredBlock2066Value1) bottomAttachment: (recoveredBlock2066Value2).
    recoveredBlock2066Value3 := recoveredBlock2066Value0.
    (recoveredBlock2066Value3) bottomOffset: (5).
    recoveredBlock2066Value4 := recoveredBlock2066Value0.
    recoveredBlock2066Value5 := XmATTACHNONE.
    (recoveredBlock2066Value4) topAttachment: (recoveredBlock2066Value5).
    recoveredBlock2066Value6 := recoveredBlock2066Value0.
    recoveredBlock2066Value7 := XmATTACHNONE.
    (recoveredBlock2066Value6) leftAttachment: (recoveredBlock2066Value7).
    recoveredBlock2066Value8 := recoveredBlock2066Value0.
    recoveredBlock2066Value9 := XmATTACHWIDGET.
    (recoveredBlock2066Value8) rightAttachment: (recoveredBlock2066Value9).
    recoveredBlock2066Value10 := recoveredBlock2066Value0.
    recoveredBlock2066Value11 := recoveredLocal4.
    (recoveredBlock2066Value10) rightWidget: (recoveredBlock2066Value11).
    recoveredBlock2066Value12 := (recoveredBlock2066Value0) rightOffset: (5).
    recoveredBlock2066Value12
].
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := recoveredLocal26.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            recoveredStack4 := 'topShellResizeCallback:clientData:callData:'.
            recoveredPC := 2144.
        ].
        recoveredStep = 2144 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2145.
        ].
        recoveredStep = 2145 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2149.
        ].
        recoveredStep = 2149 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2152.
        ].
        recoveredStep = 2152 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack4 := 'okButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2160.
        ].
        recoveredStep = 2160 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2161.
        ].
        recoveredStep = 2161 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2165.
        ].
        recoveredStep = 2165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2172.
        ].
        recoveredStep = 2172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack4 := 'cancelButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2176.
        ].
        recoveredStep = 2176 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2177.
        ].
        recoveredStep = 2177 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2181.
        ].
        recoveredStep = 2181 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack4 := 'defaultButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2192.
        ].
        recoveredStep = 2192 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2193.
        ].
        recoveredStep = 2193 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2197.
        ].
        recoveredStep = 2197 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack4 := 'importButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2208.
        ].
        recoveredStep = 2208 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2209.
        ].
        recoveredStep = 2209 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2213.
        ].
        recoveredStep = 2213 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            recoveredStack4 := 'exportButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2224.
        ].
        recoveredStep = 2224 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2225.
        ].
        recoveredStep = 2225 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2229.
        ].
        recoveredStep = 2229 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2237.
        ].
        recoveredStep = 2237 ifTrue: [
            recoveredStack4 := 'openDirectoryButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2240.
        ].
        recoveredStep = 2240 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2241.
        ].
        recoveredStep = 2241 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2245.
        ].
        recoveredStep = 2245 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2248.
        ].
        recoveredStep = 2248 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2252.
        ].
        recoveredStep = 2252 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2253.
        ].
        recoveredStep = 2253 ifTrue: [
            recoveredStack4 := 'executeButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2256.
        ].
        recoveredStep = 2256 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2257.
        ].
        recoveredStep = 2257 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2261.
        ].
        recoveredStep = 2261 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2264.
        ].
        recoveredStep = 2264 ifTrue: [
            recoveredStack2 := XmCRDRAG.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack4 := 'moveSplitBar:clientData:callData:'.
            recoveredPC := 2272.
        ].
        recoveredStep = 2272 ifTrue: [
            recoveredStack5 := recoveredLocal17.
            recoveredPC := 2275.
        ].
        recoveredStep = 2275 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2279.
        ].
        recoveredStep = 2279 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2282.
        ].
        recoveredStep = 2282 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2287.
        ].
        recoveredStep = 2287 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2290.
        ].
        recoveredStep = 2290 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2295.
        ].
        recoveredStep = 2295 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2298.
        ].
        recoveredStep = 2298 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2303.
        ].
        recoveredStep = 2303 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2306.
        ].
        recoveredStep = 2306 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2311.
        ].
        recoveredStep = 2311 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2314.
        ].
        recoveredStep = 2314 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2319.
        ].
        recoveredStep = 2319 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2322.
        ].
        recoveredStep = 2322 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2327.
        ].
        recoveredStep = 2327 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2330.
        ].
        recoveredStep = 2330 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2335.
        ].
        recoveredStep = 2335 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2339.
        ].
        recoveredStep = 2339 ifTrue: [
            recoveredStack1 := 'Import Options for Selected Node from XML File'.
            recoveredPC := 2342.
        ].
        recoveredStep = 2342 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 2345.
        ].
        recoveredStep = 2345 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2349.
        ].
        recoveredStep = 2349 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2350.
        ].
        recoveredStep = 2350 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2355.
        ].
        recoveredStep = 2355 ifTrue: [
            recoveredStack1 := 'Export Options of Selected Node into XML File'.
            recoveredPC := 2358.
        ].
        recoveredStep = 2358 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 2361.
        ].
        recoveredStep = 2361 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2365.
        ].
        recoveredStep = 2365 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2366.
        ].
        recoveredStep = 2366 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2371.
        ].
        recoveredStep = 2371 ifTrue: [
            recoveredStack1 := 'Open CGEN or Export directory'.
            recoveredPC := 2374.
        ].
        recoveredStep = 2374 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 2377.
        ].
        recoveredStep = 2377 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2381.
        ].
        recoveredStep = 2381 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2382.
        ].
        recoveredStep = 2382 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2387.
        ].
        recoveredStep = 2387 ifTrue: [
            recoveredStack1 := 'Execute Custom Build'.
            recoveredPC := 2390.
        ].
        recoveredStep = 2390 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 2393.
        ].
        recoveredStep = 2393 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2397.
        ].
        recoveredStep = 2397 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2398.
        ].
        recoveredStep = 2398 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2403.
        ].
        recoveredStep = 2403 ifTrue: [
            recoveredStack1 := 'Set Options of Selected Node back to System Default'.
            recoveredPC := 2406.
        ].
        recoveredStep = 2406 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 2409.
        ].
        recoveredStep = 2409 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2413.
        ].
        recoveredStep = 2413 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 2416.
        ].
        recoveredStep = 2416 ifTrue: [
            recoveredStack1 := recoveredLocal27.
            recoveredPC := 2419.
        ].
        recoveredStep = 2419 ifTrue: [
            recoveredStack2 := recoveredLocal25.
            recoveredPC := 2422.
        ].
        recoveredStep = 2422 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 2427.
        ].
        recoveredStep = 2427 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

