"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001978; bytecode file offset 0x8ffcfc"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
newComponent
    ^self
! !

"ASDBase.ic method 0x2001089c; bytecode file offset 0x90d208"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewFolderActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) newFolder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015f98; bytecode file offset 0x92209c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
titleText
    ^'Select INCA Folder'
! !

"ASDBase.ic method 0x200173cc; bytecode file offset 0x92209c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
labelText
    ^'Select an INCA Folder'
! !

"ASDBase.ic method 0x20017bd0; bytecode file offset 0x92209c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewComponentLabel
    ^'New Component'
! !

"ASDBase.ic method 0x20038f10; bytecode file offset 0x935c54"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
canActivateButtonNewComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isFolder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056e64; bytecode file offset 0x953728"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
canActivateButtonOk: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) canActivateButtonNewFolder: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a638; bytecode file offset 0x957a6c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonCancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005adac; bytecode file offset 0x957a6c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewComponentActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) newComponent.
    ^self
! !

"ASDBase.ic method 0x20061370; bytecode file offset 0x95e838"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonOk
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetButtonOk').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200613ac; bytecode file offset 0x95e838"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewFolder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetButtonNewFolder').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200617d0; bytecode file offset 0x95e838"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetButtonNewComponent').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061e74; bytecode file offset 0x95e838"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetFolderTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetFolderTree').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070058; bytecode file offset 0x96cb7c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
incaDatabaseWrapper
    | recoveredValue0 |
    recoveredValue0 := incaDatabaseWrapper.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007048c; bytecode file offset 0x96ce40"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
incaDbItem
    | recoveredValue0 |
    recoveredValue0 := incaDbItem.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070710; bytecode file offset 0x96d06c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
defaultIncaFolder
    | recoveredValue0 |
    recoveredValue0 := defaultIncaFolder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070978; bytecode file offset 0x96d3ec"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
ascetProjectController
    | recoveredValue0 |
    recoveredValue0 := ascetProjectController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070b7c; bytecode file offset 0x96d580"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
ascetProjectName
    | recoveredValue0 |
    recoveredValue0 := ascetProjectName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007fbf0; bytecode file offset 0x97c4a4"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonNewComponentMnemonic
    ^$C
! !

"ASDBase.ic method 0x200aeca8; bytecode file offset 0x9ab6a8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
children: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) children.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200aefa8; bytecode file offset 0x9ab894"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
defaultAction: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) itemPosition.
    (recoveredValue0) expandCollapsePos: (recoveredValue2) notify: (false).
    ^self
! !

"ASDBase.ic method 0x200c65d0; bytecode file offset 0x9c3164"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
incaDatabaseWrapper: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    incaDatabaseWrapper := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b7c; bytecode file offset 0x9c3470"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
incaDbItem: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    incaDbItem := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6dc0; bytecode file offset 0x9c36ec"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
defaultIncaFolder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultIncaFolder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6fc4; bytecode file offset 0x9c38d8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
selectedItems: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedItems := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7090; bytecode file offset 0x9c3a8c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
ascetProjectController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetProjectController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c71f4; bytecode file offset 0x9c3c10"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
ascetProjectName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetProjectName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d38f8; bytecode file offset 0x9d01b8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 |
    (self) updateFonts.
    recoveredValue0 := (self) widgetFolderTree.
    (recoveredValue0) itemHeight: (nil).
    ^self
! !

"ASDBase.ic method 0x200e84c8; bytecode file offset 0x9e4df4"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
canActivateButtonNewFolder: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFolder.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncaDatabase.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fa804; bytecode file offset 0x9f70f8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    super initializeAfterOpen.
    recoveredValue0 := (self) defaultIncaFolder.
    (self) expandFolder: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2013c0b0; bytecode file offset 0xa38970"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
selectedItems
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := selectedItems.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20158a5c; bytecode file offset 0xa55324"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
getChildComponentClasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := ASDIncaApiWrapperIncaDatabase.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := ASDIncaApiWrapperIncaFolder.
    (recoveredValue1) add: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201ac240; bytecode file offset 0xaa8b08"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
getIncaDbItem: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDbItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabaseWrapper.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EtasRemoteIncaDatabaseItem.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) childComponentClasses: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) incaDbItem: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDbItem.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202399bc; bytecode file offset 0xb36290"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
widgetButtonOkActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapper.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNameWithPath.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20367cf8; bytecode file offset 0xc645e0"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
visualInfo: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpandedPos: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) expandedIcon.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) icon.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) icon: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasChildren.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) hasChildren: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) includes: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) isInUse: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d38cc; bytecode file offset 0xcd01fc"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203df3a0; bytecode file offset 0xcdbc8c"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
selection: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) selectedItems.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) selectedItems.
    recoveredValue3 := recoveredValue2.
    recoveredLocal2 := recoveredValue3.
    (self) selectedItems: (recoveredValue2).
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) asSet.
    recoveredValue8 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) refreshItem: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) selectedItems.
    recoveredValue11 := (recoveredValue10) first.
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := (self) widgetButtonNewFolder.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (self) canActivateButtonNewFolder: (recoveredValue13).
    (recoveredValue12) sensitive: (recoveredValue14).
    recoveredValue15 := (self) widgetButtonNewComponent.
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := (self) canActivateButtonNewComponent: (recoveredValue16).
    (recoveredValue15) sensitive: (recoveredValue17).
    recoveredValue18 := (self) widgetButtonOk.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (self) canActivateButtonOk: (recoveredValue19).
    (recoveredValue18) sensitive: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x205317c0; bytecode file offset 0xe2e0f8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
newFolder
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIncaDatabase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := CwExtendedTextPrompter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'Create New INCA Folder'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Please enter an INCA folder name:'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'checkValidANSICIdentifier:'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptWithCharacterMethod: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFolder.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapper.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataBaseItem: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'Cannot create INCA folder "'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := '". An INCA database item with this name exists already.'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapper.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) addIncaSubFolder: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIncaDatabase.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapper.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIncaFolder: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 'Cannot create INCA folder "'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := '". An INCA database item with this name exists already.'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapper.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) addIncaFolder: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 'Failed to create INCA folder "'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperIncaFolder.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) updateSubfolders.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) refreshHierarchyPos: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNameWithPath.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) expandFolder: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20551560; bytecode file offset 0xe4de64"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
expandFolder: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFolderTree.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 :recoveredBlock57Arg2 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 |
    recoveredBlock57Value0 := [
    | recoveredBlock57Block64Local1 recoveredBlock57Block64Local2 recoveredBlock57Block64Stack0 recoveredBlock57Block64Stack1 recoveredBlock57Block64Stack2 recoveredBlock57Block64Stack3 recoveredBlock57Block64Stack4 recoveredBlock57Block64PC recoveredBlock57Block64Step recoveredBlock57Block64Done recoveredBlock57Block64Result |
    recoveredBlock57Block64Stack0 := self.
    recoveredBlock57Block64PC := 70.
    recoveredBlock57Block64Done := false.
    [recoveredBlock57Block64Done not] whileTrue: [
        recoveredBlock57Block64Step := recoveredBlock57Block64PC.
        recoveredBlock57Block64Step = 70 ifTrue: [
            recoveredBlock57Block64Stack1 := nil.
            recoveredBlock57Block64PC := 71.
        ].
        recoveredBlock57Block64Step = 71 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredLocal1.
            recoveredBlock57Block64PC := 74.
        ].
        recoveredBlock57Block64Step = 74 ifTrue: [
            (recoveredBlock57Block64Stack2) ifTrue: [recoveredBlock57Block64PC := 78] ifFalse: [recoveredBlock57Block64PC := 205].
        ].
        recoveredBlock57Block64Step = 78 ifTrue: [
            recoveredBlock57Block64PC := 79.
        ].
        recoveredBlock57Block64Step = 79 ifTrue: [
            recoveredBlock57Block64Stack1 := self.
            recoveredBlock57Block64PC := 80.
        ].
        recoveredBlock57Block64Step = 80 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) widgetFolderTree.
            recoveredBlock57Block64PC := 81.
        ].
        recoveredBlock57Block64Step = 81 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredLocal2.
            recoveredBlock57Block64PC := 84.
        ].
        recoveredBlock57Block64Step = 84 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) getItemPos: (recoveredBlock57Block64Stack2).
            recoveredBlock57Block64PC := 86.
        ].
        recoveredBlock57Block64Step = 86 ifTrue: [
            recoveredBlock57Block64Local2 := recoveredBlock57Block64Stack1.
            recoveredBlock57Block64PC := 87.
        ].
        recoveredBlock57Block64Step = 87 ifTrue: [
            recoveredBlock57Block64Stack1 := self.
            recoveredBlock57Block64PC := 88.
        ].
        recoveredBlock57Block64Step = 88 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) widgetFolderTree.
            recoveredBlock57Block64PC := 89.
        ].
        recoveredBlock57Block64Step = 89 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredBlock57Block64Local2.
            recoveredBlock57Block64PC := 90.
        ].
        recoveredBlock57Block64Step = 90 ifTrue: [
            recoveredBlock57Block64Stack3 := recoveredLocal2.
            recoveredBlock57Block64PC := 93.
        ].
        recoveredBlock57Block64Step = 93 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) getHasChildrenFor: (recoveredBlock57Block64Stack2) position: (recoveredBlock57Block64Stack3).
            recoveredBlock57Block64PC := 95.
        ].
        recoveredBlock57Block64Step = 95 ifTrue: [
            (recoveredBlock57Block64Stack1) ifTrue: [recoveredBlock57Block64PC := 98] ifFalse: [recoveredBlock57Block64PC := 198].
        ].
        recoveredBlock57Block64Step = 98 ifTrue: [
            recoveredBlock57Block64Stack1 := self.
            recoveredBlock57Block64PC := 99.
        ].
        recoveredBlock57Block64Step = 99 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) widgetFolderTree.
            recoveredBlock57Block64PC := 100.
        ].
        recoveredBlock57Block64Step = 100 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredBlock57Block64Local2.
            recoveredBlock57Block64PC := 101.
        ].
        recoveredBlock57Block64Step = 101 ifTrue: [
            recoveredBlock57Block64Stack3 := recoveredLocal2.
            recoveredBlock57Block64PC := 104.
        ].
        recoveredBlock57Block64Step = 104 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) getChildrenFor: (recoveredBlock57Block64Stack2) position: (recoveredBlock57Block64Stack3).
            recoveredBlock57Block64PC := 106.
        ].
        recoveredBlock57Block64Step = 106 ifTrue: [
            recoveredBlock57Block64Local1 := recoveredBlock57Block64Stack1.
            recoveredBlock57Block64PC := 107.
        ].
        recoveredBlock57Block64Step = 107 ifTrue: [
            recoveredBlock57Block64Stack1 := recoveredBlock57Block64Local1.
            recoveredBlock57Block64PC := 108.
        ].
        recoveredBlock57Block64Step = 108 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) notEmpty.
            recoveredBlock57Block64PC := 110.
        ].
        recoveredBlock57Block64Step = 110 ifTrue: [
            (recoveredBlock57Block64Stack1) ifTrue: [recoveredBlock57Block64PC := 114] ifFalse: [recoveredBlock57Block64PC := 188].
        ].
        recoveredBlock57Block64Step = 114 ifTrue: [
            recoveredBlock57Block64Stack1 := self.
            recoveredBlock57Block64PC := 115.
        ].
        recoveredBlock57Block64Step = 115 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) widgetFolderTree.
            recoveredBlock57Block64PC := 116.
        ].
        recoveredBlock57Block64Step = 116 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredLocal2.
            recoveredBlock57Block64PC := 119.
        ].
        recoveredBlock57Block64Step = 119 ifTrue: [
            recoveredBlock57Block64Stack3 := false.
            recoveredBlock57Block64PC := 120.
        ].
        recoveredBlock57Block64Step = 120 ifTrue: [
            (recoveredBlock57Block64Stack1) expandPos: (recoveredBlock57Block64Stack2) notify: (recoveredBlock57Block64Stack3).
            recoveredBlock57Block64PC := 122.
        ].
        recoveredBlock57Block64Step = 122 ifTrue: [
            recoveredBlock57Block64Stack1 := recoveredBlock57Block64Local1.
            recoveredBlock57Block64PC := 123.
        ].
        recoveredBlock57Block64Step = 123 ifTrue: [
            recoveredBlock57Block64Stack2 := [:recoveredBlock57Block64Block123Arg1 | 
    | recoveredBlock57Block64Block123Stack0 recoveredBlock57Block64Block123Stack1 recoveredBlock57Block64Block123Stack2 recoveredBlock57Block64Block123Stack3 recoveredBlock57Block64Block123Stack4 recoveredBlock57Block64Block123PC recoveredBlock57Block64Block123Step recoveredBlock57Block64Block123Done recoveredBlock57Block64Block123Result |
    recoveredBlock57Block64Block123Stack0 := self.
    recoveredBlock57Block64Block123PC := 130.
    recoveredBlock57Block64Block123Done := false.
    [recoveredBlock57Block64Block123Done not] whileTrue: [
        recoveredBlock57Block64Block123Step := recoveredBlock57Block64Block123PC.
        recoveredBlock57Block64Block123Step = 130 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := nil.
            recoveredBlock57Block64Block123PC := 131.
        ].
        recoveredBlock57Block64Block123Step = 131 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := recoveredBlock57Block64Block123Arg1.
            recoveredBlock57Block64Block123PC := 132.
        ].
        recoveredBlock57Block64Block123Step = 132 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := (recoveredBlock57Block64Block123Stack2) name.
            recoveredBlock57Block64Block123PC := 134.
        ].
        recoveredBlock57Block64Block123Step = 134 ifTrue: [
            recoveredBlock57Block64Block123Stack3 := recoveredBlock57Arg1.
            recoveredBlock57Block64Block123PC := 137.
        ].
        recoveredBlock57Block64Block123Step = 137 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := (recoveredBlock57Block64Block123Stack2) = (recoveredBlock57Block64Block123Stack3).
            recoveredBlock57Block64Block123PC := 138.
        ].
        recoveredBlock57Block64Block123Step = 138 ifTrue: [
            (recoveredBlock57Block64Block123Stack2) ifTrue: [recoveredBlock57Block64Block123PC := 142] ifFalse: [recoveredBlock57Block64Block123PC := 182].
        ].
        recoveredBlock57Block64Block123Step = 142 ifTrue: [
            recoveredBlock57Block64Block123PC := 143.
        ].
        recoveredBlock57Block64Block123Step = 143 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := self.
            recoveredBlock57Block64Block123PC := 144.
        ].
        recoveredBlock57Block64Block123Step = 144 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := (recoveredBlock57Block64Block123Stack1) widgetFolderTree.
            recoveredBlock57Block64Block123PC := 145.
        ].
        recoveredBlock57Block64Block123Step = 145 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := recoveredBlock57Block64Block123Arg1.
            recoveredBlock57Block64Block123PC := 146.
        ].
        recoveredBlock57Block64Block123Step = 146 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := (recoveredBlock57Block64Block123Stack1) getMatchPos: (recoveredBlock57Block64Block123Stack2).
            recoveredBlock57Block64Block123PC := 148.
        ].
        recoveredBlock57Block64Block123Step = 148 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := 1.
            recoveredBlock57Block64Block123PC := 150.
        ].
        recoveredBlock57Block64Block123Step = 150 ifTrue: [
            recoveredBlock57Block64Block123Stack3 := [].
            recoveredBlock57Block64Block123PC := 152.
        ].
        recoveredBlock57Block64Block123Step = 152 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := (recoveredBlock57Block64Block123Stack1) at: (recoveredBlock57Block64Block123Stack2) ifAbsent: (recoveredBlock57Block64Block123Stack3).
            recoveredBlock57Block64Block123PC := 154.
        ].
        recoveredBlock57Block64Block123Step = 154 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := recoveredBlock57Block64Block123Stack1.
            recoveredBlock57Block64Block123PC := 155.
        ].
        recoveredBlock57Block64Block123Step = 155 ifTrue: [
            recoveredLocal2 := recoveredBlock57Block64Block123Stack2.
            recoveredBlock57Block64Block123PC := 158.
        ].
        recoveredBlock57Block64Block123Step = 158 ifTrue: [
            recoveredBlock57Block64Block123Stack2 := [
    | recoveredBlock57Block64Block123Block158Value0 recoveredBlock57Block64Block123Block158Value1 recoveredBlock57Block64Block123Block158Value2 recoveredBlock57Block64Block123Block158Value3 recoveredBlock57Block64Block123Block158Value4 |
    recoveredBlock57Block64Block123Block158Value0 := (self) widgetFolderTree.
    recoveredBlock57Block64Block123Block158Value1 := recoveredLocal2.
    (recoveredBlock57Block64Block123Block158Value0) expandPos: (recoveredBlock57Block64Block123Block158Value1) notify: (false).
    recoveredBlock57Block64Block123Block158Value2 := (self) widgetFolderTree.
    recoveredBlock57Block64Block123Block158Value3 := recoveredLocal2.
    recoveredBlock57Block64Block123Block158Value4 := (recoveredBlock57Block64Block123Block158Value2) selectPos: (recoveredBlock57Block64Block123Block158Value3) notify: (true).
    recoveredBlock57Block64Block123Block158Value4
].
            recoveredBlock57Block64Block123PC := 180.
        ].
        recoveredBlock57Block64Block123Step = 180 ifTrue: [
            recoveredBlock57Block64Block123Stack1 := (recoveredBlock57Block64Block123Stack1) notNil: (recoveredBlock57Block64Block123Stack2).
            recoveredBlock57Block64Block123PC := 182.
        ].
        recoveredBlock57Block64Block123Step = 182 ifTrue: [
            recoveredBlock57Block64Block123Result := recoveredBlock57Block64Block123Stack1.
            recoveredBlock57Block64Block123Done := true.
        ].
    ].
    recoveredBlock57Block64Block123Result
].
            recoveredBlock57Block64PC := 183.
        ].
        recoveredBlock57Block64Step = 183 ifTrue: [
            recoveredBlock57Block64Stack1 := (recoveredBlock57Block64Stack1) do: (recoveredBlock57Block64Stack2).
            recoveredBlock57Block64PC := 185.
        ].
        recoveredBlock57Block64Step = 185 ifTrue: [
            recoveredBlock57Block64PC := 193.
        ].
        recoveredBlock57Block64Step = 188 ifTrue: [
            recoveredBlock57Block64Stack1 := false.
            recoveredBlock57Block64PC := 189.
        ].
        recoveredBlock57Block64Step = 189 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredBlock57Block64Stack1.
            recoveredBlock57Block64PC := 190.
        ].
        recoveredBlock57Block64Step = 190 ifTrue: [
            recoveredLocal1 := recoveredBlock57Block64Stack2.
            recoveredBlock57Block64PC := 193.
        ].
        recoveredBlock57Block64Step = 193 ifTrue: [
            recoveredBlock57Block64Stack2 := nil.
            recoveredBlock57Block64PC := 194.
        ].
        recoveredBlock57Block64Step = 194 ifTrue: [
            recoveredBlock57Block64Local1 := recoveredBlock57Block64Stack2.
            recoveredBlock57Block64PC := 195.
        ].
        recoveredBlock57Block64Step = 195 ifTrue: [
            recoveredBlock57Block64PC := 203.
        ].
        recoveredBlock57Block64Step = 198 ifTrue: [
            recoveredBlock57Block64Stack1 := false.
            recoveredBlock57Block64PC := 199.
        ].
        recoveredBlock57Block64Step = 199 ifTrue: [
            recoveredBlock57Block64Stack2 := recoveredBlock57Block64Stack1.
            recoveredBlock57Block64PC := 200.
        ].
        recoveredBlock57Block64Step = 200 ifTrue: [
            recoveredLocal1 := recoveredBlock57Block64Stack2.
            recoveredBlock57Block64PC := 203.
        ].
        recoveredBlock57Block64Step = 203 ifTrue: [
            recoveredBlock57Block64Stack2 := nil.
            recoveredBlock57Block64PC := 204.
        ].
        recoveredBlock57Block64Step = 204 ifTrue: [
            recoveredBlock57Block64Local2 := recoveredBlock57Block64Stack2.
            recoveredBlock57Block64PC := 205.
        ].
        recoveredBlock57Block64Step = 205 ifTrue: [
            recoveredBlock57Block64Result := recoveredBlock57Block64Stack1.
            recoveredBlock57Block64Done := true.
        ].
    ].
    recoveredBlock57Block64Result
].
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := ('Opening INCA folder "') , (recoveredBlock57Value1).
    recoveredBlock57Value3 := (recoveredBlock57Value2) , ('".').
    recoveredBlock57Value4 := (self) execLongOperation: (recoveredBlock57Value0) message: (recoveredBlock57Value3).
    recoveredBlock57Value4
].
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20669fa8; bytecode file offset 0xf669f8"
!EtasRemoteFolderSelectionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredBlock21Value0.
    (recoveredBlock21Value1) allowShellResize: (true).
    recoveredBlock21Value2 := recoveredBlock21Value0.
    recoveredBlock21Value3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock21Value2) mwmInputMode: (recoveredBlock21Value3).
    recoveredBlock21Value4 := recoveredBlock21Value0.
    recoveredBlock21Value5 := (self) titleText.
    (recoveredBlock21Value4) title: (recoveredBlock21Value5).
    recoveredBlock21Value6 := MWMDECORBORDER.
    recoveredBlock21Value7 := MWMDECORRESIZEH.
    recoveredBlock21Value8 := (recoveredBlock21Value6) | (recoveredBlock21Value7).
    recoveredBlock21Value9 := MWMDECORTITLE.
    recoveredBlock21Value10 := (recoveredBlock21Value8) | (recoveredBlock21Value9).
    recoveredBlock21Value11 := MWMDECORMENU.
    recoveredBlock21Value12 := (recoveredBlock21Value10) | (recoveredBlock21Value11).
    recoveredBlock21Value13 := (recoveredBlock21Value0) mwmDecorations: (recoveredBlock21Value12).
    recoveredBlock21Value13
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [:block28125c74Arg1 | 
    | block28125c74Value0 block28125c74Value1 block28125c74Value2 |
    block28125c74Value0 := block28125c74Arg1.
    block28125c74Value1 := block28125c74Value0.
    (block28125c74Value1) height: (300).
    block28125c74Value2 := (block28125c74Value0) width: (500).
    block28125c74Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := 'widgetButtonNewFolder'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := [:block28125c98Arg1 | 
    | block28125c98Value0 block28125c98Value1 block28125c98Value2 block28125c98Value3 block28125c98Value4 block28125c98Value5 |
    block28125c98Value0 := block28125c98Arg1.
    block28125c98Value1 := block28125c98Value0.
    (block28125c98Value1) labelString: ('New Folder').
    block28125c98Value2 := block28125c98Value0.
    (block28125c98Value2) mnemonic: ($F).
    block28125c98Value3 := block28125c98Value0.
    (block28125c98Value3) height: (24).
    block28125c98Value4 := block28125c98Value0.
    (block28125c98Value4) width: (120).
    block28125c98Value5 := (block28125c98Value0) sensitive: (false).
    block28125c98Value5
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := 'widgetButtonNewFolder'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'widgetButtonNewComponent'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Value0 recoveredBlock200Value1 recoveredBlock200Value2 recoveredBlock200Value3 recoveredBlock200Value4 recoveredBlock200Value5 recoveredBlock200Value6 recoveredBlock200Value7 |
    recoveredBlock200Value0 := recoveredBlock200Arg1.
    recoveredBlock200Value1 := recoveredBlock200Value0.
    recoveredBlock200Value2 := (self) widgetButtonNewComponentLabel.
    (recoveredBlock200Value1) labelString: (recoveredBlock200Value2).
    recoveredBlock200Value3 := recoveredBlock200Value0.
    recoveredBlock200Value4 := (self) widgetButtonNewComponentMnemonic.
    (recoveredBlock200Value3) mnemonic: (recoveredBlock200Value4).
    recoveredBlock200Value5 := recoveredBlock200Value0.
    (recoveredBlock200Value5) height: (24).
    recoveredBlock200Value6 := recoveredBlock200Value0.
    (recoveredBlock200Value6) width: (150).
    recoveredBlock200Value7 := (recoveredBlock200Value0) sensitive: (false).
    recoveredBlock200Value7
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := 'widgetButtonNewComponent'.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := [:block28125cbcArg1 | 
    | block28125cbcValue0 block28125cbcValue1 block28125cbcValue2 block28125cbcValue3 block28125cbcValue4 block28125cbcValue5 |
    block28125cbcValue0 := block28125cbcArg1.
    block28125cbcValue1 := block28125cbcValue0.
    (block28125cbcValue1) labelString: ('OK').
    block28125cbcValue2 := block28125cbcValue0.
    (block28125cbcValue2) mnemonic: ($O).
    block28125cbcValue3 := block28125cbcValue0.
    (block28125cbcValue3) height: (24).
    block28125cbcValue4 := block28125cbcValue0.
    (block28125cbcValue4) width: (90).
    block28125cbcValue5 := (block28125cbcValue0) sensitive: (false).
    block28125cbcValue5
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := [:block28125ce0Arg1 | 
    | block28125ce0Value0 block28125ce0Value1 block28125ce0Value2 block28125ce0Value3 block28125ce0Value4 |
    block28125ce0Value0 := block28125ce0Arg1.
    block28125ce0Value1 := block28125ce0Value0.
    (block28125ce0Value1) labelString: ('Cancel').
    block28125ce0Value2 := block28125ce0Value0.
    (block28125ce0Value2) mnemonic: ($C).
    block28125ce0Value3 := block28125ce0Value0.
    (block28125ce0Value3) height: (24).
    block28125ce0Value4 := (block28125ce0Value0) width: (90).
    block28125ce0Value4
].
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := 'widgetFolderTree'.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := [:recoveredBlock363Arg1 | 
    | recoveredBlock363Local1 recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 recoveredBlock363Value5 recoveredBlock363Value6 recoveredBlock363Value7 recoveredBlock363Value8 recoveredBlock363Value9 |
    recoveredBlock363Value0 := recoveredBlock363Arg1.
    recoveredBlock363Value1 := (self) iconHierarchyPolicy.
    (recoveredBlock363Value0) hierarchyPolicy: (recoveredBlock363Value1).
    recoveredBlock363Value2 := OrderedCollection.
    recoveredBlock363Value3 := (recoveredBlock363Value2) new.
    recoveredBlock363Value4 := recoveredBlock363Value3.
    recoveredBlock363Local1 := recoveredBlock363Value4.
    recoveredBlock363Value5 := (self) getChildComponentClasses.
    recoveredBlock363Value6 := (self) getIncaDbItem: (recoveredBlock363Value5).
    (recoveredBlock363Value3) add: (recoveredBlock363Value6).
    recoveredBlock363Value7 := recoveredBlock363Arg1.
    recoveredBlock363Value8 := recoveredBlock363Local1.
    recoveredBlock363Value9 := (recoveredBlock363Value7) items: (recoveredBlock363Value8).
    recoveredBlock363Value9
].
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := 'widgetFolderTree'.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := 'widgetLabelText'.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := [:recoveredBlock432Arg1 | 
    | recoveredBlock432Value0 recoveredBlock432Value1 recoveredBlock432Value2 recoveredBlock432Value3 recoveredBlock432Value4 recoveredBlock432Value5 |
    recoveredBlock432Value0 := recoveredBlock432Arg1.
    recoveredBlock432Value1 := recoveredBlock432Value0.
    recoveredBlock432Value2 := (self) labelText.
    (recoveredBlock432Value1) labelString: (recoveredBlock432Value2).
    recoveredBlock432Value3 := recoveredBlock432Value0.
    (recoveredBlock432Value3) height: (24).
    recoveredBlock432Value4 := XmALIGNMENTBEGINNING.
    recoveredBlock432Value5 := (recoveredBlock432Value0) alignment: (recoveredBlock432Value4).
    recoveredBlock432Value5
].
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack2 := 'widgetLabelText'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack2 := [:recoveredBlock486Arg1 | 
    | recoveredBlock486Value0 recoveredBlock486Value1 recoveredBlock486Value2 |
    recoveredBlock486Value0 := recoveredBlock486Arg1.
    recoveredBlock486Value1 := recoveredLocal8.
    recoveredBlock486Value2 := (recoveredBlock486Value0) workWindow: (recoveredBlock486Value1).
    recoveredBlock486Value2
].
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := [:block28125d04Arg1 | 
    | block28125d04Value0 block28125d04Value1 block28125d04Value2 block28125d04Value3 block28125d04Value4 block28125d04Value5 block28125d04Value6 block28125d04Value7 block28125d04Value8 block28125d04Value9 |
    block28125d04Value0 := block28125d04Arg1.
    block28125d04Value1 := block28125d04Value0.
    block28125d04Value2 := XmATTACHFORM.
    (block28125d04Value1) topAttachment: (block28125d04Value2).
    block28125d04Value3 := block28125d04Value0.
    (block28125d04Value3) topOffset: (2).
    block28125d04Value4 := block28125d04Value0.
    block28125d04Value5 := XmATTACHFORM.
    (block28125d04Value4) rightAttachment: (block28125d04Value5).
    block28125d04Value6 := block28125d04Value0.
    (block28125d04Value6) rightOffset: (2).
    block28125d04Value7 := block28125d04Value0.
    block28125d04Value8 := XmATTACHFORM.
    (block28125d04Value7) leftAttachment: (block28125d04Value8).
    block28125d04Value9 := (block28125d04Value0) leftOffset: (2).
    block28125d04Value9
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := [:recoveredBlock572Arg1 | 
    | recoveredBlock572Value0 recoveredBlock572Value1 recoveredBlock572Value2 recoveredBlock572Value3 recoveredBlock572Value4 recoveredBlock572Value5 recoveredBlock572Value6 recoveredBlock572Value7 recoveredBlock572Value8 recoveredBlock572Value9 recoveredBlock572Value10 recoveredBlock572Value11 recoveredBlock572Value12 recoveredBlock572Value13 recoveredBlock572Value14 recoveredBlock572Value15 |
    recoveredBlock572Value0 := recoveredBlock572Arg1.
    recoveredBlock572Value1 := recoveredBlock572Value0.
    recoveredBlock572Value2 := XmATTACHWIDGET.
    (recoveredBlock572Value1) topAttachment: (recoveredBlock572Value2).
    recoveredBlock572Value3 := recoveredBlock572Value0.
    recoveredBlock572Value4 := recoveredLocal3.
    (recoveredBlock572Value3) topWidget: (recoveredBlock572Value4).
    recoveredBlock572Value5 := recoveredBlock572Value0.
    recoveredBlock572Value6 := XmATTACHWIDGET.
    (recoveredBlock572Value5) bottomAttachment: (recoveredBlock572Value6).
    recoveredBlock572Value7 := recoveredBlock572Value0.
    recoveredBlock572Value8 := recoveredLocal4.
    (recoveredBlock572Value7) bottomWidget: (recoveredBlock572Value8).
    recoveredBlock572Value9 := recoveredBlock572Value0.
    (recoveredBlock572Value9) bottomOffset: (10).
    recoveredBlock572Value10 := recoveredBlock572Value0.
    recoveredBlock572Value11 := XmATTACHFORM.
    (recoveredBlock572Value10) leftAttachment: (recoveredBlock572Value11).
    recoveredBlock572Value12 := recoveredBlock572Value0.
    (recoveredBlock572Value12) leftOffset: (5).
    recoveredBlock572Value13 := recoveredBlock572Value0.
    recoveredBlock572Value14 := XmATTACHFORM.
    (recoveredBlock572Value13) rightAttachment: (recoveredBlock572Value14).
    recoveredBlock572Value15 := (recoveredBlock572Value0) rightOffset: (5).
    recoveredBlock572Value15
].
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack2 := [:block28125d28Arg1 | 
    | block28125d28Value0 block28125d28Value1 block28125d28Value2 block28125d28Value3 block28125d28Value4 block28125d28Value5 block28125d28Value6 block28125d28Value7 block28125d28Value8 block28125d28Value9 block28125d28Value10 |
    block28125d28Value0 := block28125d28Arg1.
    block28125d28Value1 := block28125d28Value0.
    block28125d28Value2 := XmATTACHNONE.
    (block28125d28Value1) leftAttachment: (block28125d28Value2).
    block28125d28Value3 := block28125d28Value0.
    block28125d28Value4 := XmATTACHNONE.
    (block28125d28Value3) topAttachment: (block28125d28Value4).
    block28125d28Value5 := block28125d28Value0.
    block28125d28Value6 := XmATTACHFORM.
    (block28125d28Value5) rightAttachment: (block28125d28Value6).
    block28125d28Value7 := block28125d28Value0.
    (block28125d28Value7) rightOffset: (7).
    block28125d28Value8 := block28125d28Value0.
    block28125d28Value9 := XmATTACHFORM.
    (block28125d28Value8) bottomAttachment: (block28125d28Value9).
    block28125d28Value10 := (block28125d28Value0) bottomOffset: (10).
    block28125d28Value10
].
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack2 := [:recoveredBlock720Arg1 | 
    | recoveredBlock720Value0 recoveredBlock720Value1 recoveredBlock720Value2 recoveredBlock720Value3 recoveredBlock720Value4 recoveredBlock720Value5 recoveredBlock720Value6 recoveredBlock720Value7 recoveredBlock720Value8 recoveredBlock720Value9 recoveredBlock720Value10 recoveredBlock720Value11 recoveredBlock720Value12 recoveredBlock720Value13 |
    recoveredBlock720Value0 := recoveredBlock720Arg1.
    recoveredBlock720Value1 := recoveredBlock720Value0.
    recoveredBlock720Value2 := XmATTACHNONE.
    (recoveredBlock720Value1) leftAttachment: (recoveredBlock720Value2).
    recoveredBlock720Value3 := recoveredBlock720Value0.
    recoveredBlock720Value4 := XmATTACHNONE.
    (recoveredBlock720Value3) topAttachment: (recoveredBlock720Value4).
    recoveredBlock720Value5 := recoveredBlock720Value0.
    recoveredBlock720Value6 := XmATTACHWIDGET.
    (recoveredBlock720Value5) rightAttachment: (recoveredBlock720Value6).
    recoveredBlock720Value7 := recoveredBlock720Value0.
    recoveredBlock720Value8 := recoveredLocal4.
    (recoveredBlock720Value7) rightWidget: (recoveredBlock720Value8).
    recoveredBlock720Value9 := recoveredBlock720Value0.
    (recoveredBlock720Value9) rightOffset: (10).
    recoveredBlock720Value10 := recoveredBlock720Value0.
    recoveredBlock720Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock720Value10) bottomAttachment: (recoveredBlock720Value11).
    recoveredBlock720Value12 := recoveredLocal4.
    recoveredBlock720Value13 := (recoveredBlock720Value0) bottomWidget: (recoveredBlock720Value12).
    recoveredBlock720Value13
].
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := [:recoveredBlock792Arg1 | 
    | recoveredBlock792Value0 recoveredBlock792Value1 recoveredBlock792Value2 recoveredBlock792Value3 recoveredBlock792Value4 recoveredBlock792Value5 recoveredBlock792Value6 recoveredBlock792Value7 recoveredBlock792Value8 recoveredBlock792Value9 recoveredBlock792Value10 recoveredBlock792Value11 recoveredBlock792Value12 recoveredBlock792Value13 |
    recoveredBlock792Value0 := recoveredBlock792Arg1.
    recoveredBlock792Value1 := recoveredBlock792Value0.
    recoveredBlock792Value2 := XmATTACHWIDGET.
    (recoveredBlock792Value1) leftAttachment: (recoveredBlock792Value2).
    recoveredBlock792Value3 := recoveredBlock792Value0.
    recoveredBlock792Value4 := recoveredLocal7.
    (recoveredBlock792Value3) leftWidget: (recoveredBlock792Value4).
    recoveredBlock792Value5 := recoveredBlock792Value0.
    (recoveredBlock792Value5) leftOffset: (10).
    recoveredBlock792Value6 := recoveredBlock792Value0.
    recoveredBlock792Value7 := XmATTACHNONE.
    (recoveredBlock792Value6) topAttachment: (recoveredBlock792Value7).
    recoveredBlock792Value8 := recoveredBlock792Value0.
    recoveredBlock792Value9 := XmATTACHNONE.
    (recoveredBlock792Value8) rightAttachment: (recoveredBlock792Value9).
    recoveredBlock792Value10 := recoveredBlock792Value0.
    recoveredBlock792Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock792Value10) bottomAttachment: (recoveredBlock792Value11).
    recoveredBlock792Value12 := recoveredLocal4.
    recoveredBlock792Value13 := (recoveredBlock792Value0) bottomWidget: (recoveredBlock792Value12).
    recoveredBlock792Value13
].
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredStack2 := [:recoveredBlock864Arg1 | 
    | recoveredBlock864Value0 recoveredBlock864Value1 recoveredBlock864Value2 recoveredBlock864Value3 recoveredBlock864Value4 recoveredBlock864Value5 recoveredBlock864Value6 recoveredBlock864Value7 recoveredBlock864Value8 recoveredBlock864Value9 recoveredBlock864Value10 recoveredBlock864Value11 |
    recoveredBlock864Value0 := recoveredBlock864Arg1.
    recoveredBlock864Value1 := recoveredBlock864Value0.
    recoveredBlock864Value2 := XmATTACHFORM.
    (recoveredBlock864Value1) leftAttachment: (recoveredBlock864Value2).
    recoveredBlock864Value3 := recoveredBlock864Value0.
    (recoveredBlock864Value3) leftOffset: (7).
    recoveredBlock864Value4 := recoveredBlock864Value0.
    recoveredBlock864Value5 := XmATTACHNONE.
    (recoveredBlock864Value4) topAttachment: (recoveredBlock864Value5).
    recoveredBlock864Value6 := recoveredBlock864Value0.
    recoveredBlock864Value7 := XmATTACHNONE.
    (recoveredBlock864Value6) rightAttachment: (recoveredBlock864Value7).
    recoveredBlock864Value8 := recoveredBlock864Value0.
    recoveredBlock864Value9 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock864Value8) bottomAttachment: (recoveredBlock864Value9).
    recoveredBlock864Value10 := recoveredLocal4.
    recoveredBlock864Value11 := (recoveredBlock864Value0) bottomWidget: (recoveredBlock864Value10).
    recoveredBlock864Value11
].
            recoveredPC := 920.
        ].
        recoveredStep = 920 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 925.
        ].
        recoveredStep = 925 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 937.
        ].
        recoveredStep = 937 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack4 := 'widgetButtonNewFolderActivate:clientData:callData:'.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 953.
        ].
        recoveredStep = 953 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 957.
        ].
        recoveredStep = 957 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 960.
        ].
        recoveredStep = 960 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredStack4 := 'widgetButtonNewComponentActivate:clientData:callData:'.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 984.
        ].
        recoveredStep = 984 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 989.
        ].
        recoveredStep = 989 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack5 := 'visualInfo:clientData:callData:'.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1005.
        ].
        recoveredStep = 1005 ifTrue: [
            recoveredStack3 := XmNchildrenCallback.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack5 := 'children:clientData:callData:'.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack3 := XmNdefaultActionCallback.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1021.
        ].
        recoveredStep = 1021 ifTrue: [
            recoveredStack5 := 'defaultAction:clientData:callData:'.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1032.
        ].
        recoveredStep = 1032 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack4 := 'selection:clientData:callData:'.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1090.
        ].
        recoveredStep = 1090 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

