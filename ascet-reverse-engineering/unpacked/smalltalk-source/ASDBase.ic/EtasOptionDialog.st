"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006b48; bytecode file offset 0x908be4"
!EtasOptionDialog methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := (self) rootNodeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200335f4; bytecode file offset 0x934580"
!EtasOptionDialog methodsFor: 'recovered'!
lastSelection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) lastSelection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20043cec; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetOptionsTree
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsTree').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043e8c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetOptionsForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('optionsForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004409c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetOptionsArea
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledOptionsArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004476c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetDescriptionText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('descriptionText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044aac; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetFilterText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('filterText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044c1c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetHorizontalSplit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('horizontalSplit').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044f9c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetOkButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004527c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetVerticalSplit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('verticalSplit').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200452dc; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetEditFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('editFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004594c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetDescriptionHTMLText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('descriptionHTMLText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045d7c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetDefaultButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('defaultButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004640c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetExportButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('exportButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004802c; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetImportButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('importButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200481bc; bytecode file offset 0x9451f8"
!EtasOptionDialog methodsFor: 'recovered'!
widgetDescriptionForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('descriptionForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20058b58; bytecode file offset 0x956284"
!EtasOptionDialog methodsFor: 'recovered'!
newStructureNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) newStructureNode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) nodeLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a3f8; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
filterButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateFilter.
    ^self
! !

"ASDBase.ic method 0x2005a7c4; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
moveSplitBar: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) resizeOptionForm.
    ^self
! !

"ASDBase.ic method 0x2005a7e8; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
exportButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuExportOptions.
    ^self
! !

"ASDBase.ic method 0x2005a8f0; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
topShellResizeCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) resizeOptionForm.
    ^self
! !

"ASDBase.ic method 0x2005a938; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
okButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005a98c; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
cancelButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cancel.
    ^self
! !

"ASDBase.ic method 0x2005aa64; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
defaultButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuSystemDefault.
    ^self
! !

"ASDBase.ic method 0x2005ade8; bytecode file offset 0x957a6c"
!EtasOptionDialog methodsFor: 'recovered'!
importButtonActivateCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuImportOptions.
    ^self
! !

"ASDBase.ic method 0x20070788; bytecode file offset 0x96d06c"
!EtasOptionDialog methodsFor: 'recovered'!
optionTree
    | recoveredValue0 |
    recoveredValue0 := optionTree.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200707cc; bytecode file offset 0x96d218"
!EtasOptionDialog methodsFor: 'recovered'!
rootNode
    | recoveredValue0 |
    recoveredValue0 := rootNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070990; bytecode file offset 0x96d3ec"
!EtasOptionDialog methodsFor: 'recovered'!
visibleForm
    | recoveredValue0 |
    recoveredValue0 := visibleForm.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070b4c; bytecode file offset 0x96d580"
!EtasOptionDialog methodsFor: 'recovered'!
actualNode
    | recoveredValue0 |
    recoveredValue0 := actualNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070d70; bytecode file offset 0x96d6a4"
!EtasOptionDialog methodsFor: 'recovered'!
firstSelection
    | recoveredValue0 |
    recoveredValue0 := firstSelection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070fb8; bytecode file offset 0x96d87c"
!EtasOptionDialog methodsFor: 'recovered'!
copy
    | recoveredValue0 |
    recoveredValue0 := copy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ed5c; bytecode file offset 0x97c330"
!EtasOptionDialog methodsFor: 'recovered'!
expandRecursive
    ^false
! !

"ASDBase.ic method 0x2009c0ac; bytecode file offset 0x998d48"
!EtasOptionDialog methodsFor: 'recovered'!
newOptionNode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasOptionItemNode.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) nodeDescriptionPath: ('').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aecf8; bytecode file offset 0x9ab6a8"
!EtasOptionDialog methodsFor: 'recovered'!
optionTreeChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) structureNodes.
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c65e0; bytecode file offset 0x9c3164"
!EtasOptionDialog methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6ebc; bytecode file offset 0x9c38d8"
!EtasOptionDialog methodsFor: 'recovered'!
rootNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c71b8; bytecode file offset 0x9c3a8c"
!EtasOptionDialog methodsFor: 'recovered'!
visibleForm: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visibleForm := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7370; bytecode file offset 0x9c3d64"
!EtasOptionDialog methodsFor: 'recovered'!
firstSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    firstSelection := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7554; bytecode file offset 0x9c3e48"
!EtasOptionDialog methodsFor: 'recovered'!
holdCopy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    holdCopy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c75e8; bytecode file offset 0x9c3efc"
!EtasOptionDialog methodsFor: 'recovered'!
copy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    copy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c76dc; bytecode file offset 0x9c3fa0"
!EtasOptionDialog methodsFor: 'recovered'!
rootNodeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rootNodeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7728; bytecode file offset 0x9c400c"
!EtasOptionDialog methodsFor: 'recovered'!
restrictedExport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restrictedExport := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7774; bytecode file offset 0x9c4068"
!EtasOptionDialog methodsFor: 'recovered'!
restrictedImport: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    restrictedImport := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c77c8; bytecode file offset 0x9c40ac"
!EtasOptionDialog methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    readOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7858; bytecode file offset 0x9c4114"
!EtasOptionDialog methodsFor: 'recovered'!
descriptionPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    descriptionPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c9208; bytecode file offset 0x9c5b2c"
!EtasOptionDialog methodsFor: 'recovered'!
newOptionNode: recoveredArg1 option: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) newOptionNode.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nodeLabel: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) option: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ca0ec; bytecode file offset 0x9c69a4"
!EtasOptionDialog methodsFor: 'recovered'!
optionTreeBrowseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) optionTreeSingleSelectionCallback: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d39f8; bytecode file offset 0x9d0380"
!EtasOptionDialog methodsFor: 'recovered'!
open
    (self) createOptionTree.
    super open.
    ^self
! !

"ASDBase.ic method 0x200e261c; bytecode file offset 0x9deef8"
!EtasOptionDialog methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) options.
    (self) removeViewDependencies: (recoveredValue0).
    recoveredValue1 := super preClosingActivities.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20104004; bytecode file offset 0xa008c4"
!EtasOptionDialog methodsFor: 'recovered'!
newTree
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) rootNodeName.
    recoveredValue1 := (self) newStructureNode: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) rootNodeName.
    (recoveredValue2) nodeDescriptionPath: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20106d0c; bytecode file offset 0xa035c0"
!EtasOptionDialog methodsFor: 'recovered'!
holdCopy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := holdCopy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            holdCopy := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := holdCopy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106dcc; bytecode file offset 0xa03680"
!EtasOptionDialog methodsFor: 'recovered'!
restrictedExport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := restrictedExport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            restrictedExport := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := restrictedExport.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106e00; bytecode file offset 0xa036b4"
!EtasOptionDialog methodsFor: 'recovered'!
restrictedImport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := restrictedImport.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            restrictedImport := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := restrictedImport.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106e64; bytecode file offset 0xa03718"
!EtasOptionDialog methodsFor: 'recovered'!
readOnly
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := readOnly.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            readOnly := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := readOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20109c2c; bytecode file offset 0xa064ec"
!EtasOptionDialog methodsFor: 'recovered'!
menuExpandOptionTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetOptionsTree.
    (recoveredValue0) expandAll.
    recoveredValue1 := (self) widgetOptionsTree.
    (recoveredValue1) selectPos: (1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x20116e58; bytecode file offset 0xa13710"
!EtasOptionDialog methodsFor: 'recovered'!
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Options'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            rootNodeName := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := rootNodeName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011729c; bytecode file offset 0xa13bd8"
!EtasOptionDialog methodsFor: 'recovered'!
treeSortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c7368Arg1 :block280c7368Arg2 | 
    | block280c7368Value0 block280c7368Value1 block280c7368Value2 block280c7368Value3 block280c7368Value4 |
    block280c7368Value0 := block280c7368Arg1.
    block280c7368Value1 := (block280c7368Value0) nodeLabel.
    block280c7368Value2 := block280c7368Arg2.
    block280c7368Value3 := (block280c7368Value2) nodeLabel.
    block280c7368Value4 := (block280c7368Value1) < (block280c7368Value3).
    block280c7368Value4
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011af68; bytecode file offset 0xa1784c"
!EtasOptionDialog methodsFor: 'recovered'!
initMenus
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mainWindow.
    recoveredValue1 := (self) createMenuBar.
    recoveredValue2 := (self) mainWindow.
    recoveredValue3 := (recoveredValue1) createMenuBarFor: (recoveredValue2) owner: (self).
    recoveredValue4 := (recoveredValue3) manageChild.
    (recoveredValue0) menuBar: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201247e0; bytecode file offset 0xa210a4"
!EtasOptionDialog methodsFor: 'recovered'!
optionsSortOrder
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('General').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2012acf4; bytecode file offset 0xa275d0"
!EtasOptionDialog methodsFor: 'recovered'!
options
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            options := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := options.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ad78; bytecode file offset 0xa27644"
!EtasOptionDialog methodsFor: 'recovered'!
notifyOptionClasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := optionClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            optionClasses := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := optionClasses.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20137610; bytecode file offset 0xa33ed4"
!EtasOptionDialog methodsFor: 'recovered'!
selectPredefinedOptionNode
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstSelection.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstSelection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectOptionNodeLabel: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20157fb8; bytecode file offset 0xa54878"
!EtasOptionDialog methodsFor: 'recovered'!
windowClose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClosingPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015c248; bytecode file offset 0xa58b10"
!EtasOptionDialog methodsFor: 'recovered'!
selectLastUsedOptionNode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LastSelection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) selectFirstOptionNode.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := LastSelection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectOptionNodeLabel: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20166e94; bytecode file offset 0xa63768"
!EtasOptionDialog methodsFor: 'recovered'!
getDescriptionFileLocationForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) descriptionPath.
    recoveredValue1 := (recoveredValue0) , ('\options\desc\').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) nodeDescriptionPath.
    recoveredValue4 := (recoveredValue3) zapBlanks.
    recoveredValue5 := (recoveredValue4) asValidFileName.
    recoveredValue6 := (recoveredValue1) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , ('.html').
    recoveredValue8 := (recoveredValue7) removeDoubleBackslashes.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20171ae0; bytecode file offset 0xa6e3a0"
!EtasOptionDialog methodsFor: 'recovered'!
selectFirstOptionNode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetOptionsTree.
    (recoveredValue0) expandPos: (1) maxChildrenNumber: (nil) levels: (0).
    recoveredValue1 := (self) widgetOptionsTree.
    (recoveredValue1) selectPos: (1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201882d4; bytecode file offset 0xa84b94"
!EtasOptionDialog methodsFor: 'recovered'!
optionTreeSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := actualNode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) createOptionWidgetsForSingleNode: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) updateDescriptionText: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189540; bytecode file offset 0xa85e08"
!EtasOptionDialog methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createFileMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) createViewMenu.
    (recoveredValue5) addMenu: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019e19c; bytecode file offset 0xa9aa68"
!EtasOptionDialog methodsFor: 'recovered'!
createOptionTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) newTree.
    (self) rootNode: (recoveredBlock6Value0).
    recoveredBlock6Value1 := (self) rootNode.
    recoveredBlock6Value2 := (self) createOptionTreeWithRootNode: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a96d8; bytecode file offset 0xaa5fac"
!EtasOptionDialog methodsFor: 'recovered'!
filterTextLosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) lightGray.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'type filter text'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b0940; bytecode file offset 0xaad204"
!EtasOptionDialog methodsFor: 'recovered'!
menuCollapseOptionTree
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetOptionsTree.
    (recoveredValue0) collapseAll.
    recoveredValue1 := (self) widgetOptionsTree.
    (recoveredValue1) expandPos: (1) maxChildrenNumber: (nil) levels: (0).
    recoveredValue2 := (self) widgetOptionsTree.
    (recoveredValue2) selectPos: (1) notify: (true).
    ^self
! !

"ASDBase.ic method 0x201c7f20; bytecode file offset 0xac47ec"
!EtasOptionDialog methodsFor: 'recovered'!
descriptionPath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := descriptionPath.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppVersion.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            descriptionPath := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := descriptionPath.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d0678; bytecode file offset 0xaccf50"
!EtasOptionDialog methodsFor: 'recovered'!
newStructureNode
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasOptionStructureNode.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nodeDescriptionPath: ('').
    recoveredValue4 := SortedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (self) treeSortBlock.
    recoveredValue7 := (recoveredValue5) sortBlock: (recoveredValue6).
    (recoveredValue2) structureNodes: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201d7560; bytecode file offset 0xad3e34"
!EtasOptionDialog methodsFor: 'recovered'!
isImportOptionsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) restrictedImport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootNode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d7574; bytecode file offset 0xad3e34"
!EtasOptionDialog methodsFor: 'recovered'!
isExportOptionsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) restrictedExport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootNode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dcccc; bytecode file offset 0xad959c"
!EtasOptionDialog methodsFor: 'recovered'!
filterTextFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) foregroundColor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) black.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) black.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) foregroundColor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e03a0; bytecode file offset 0xadcc68"
!EtasOptionDialog methodsFor: 'recovered'!
filterTextKeyReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := KeyRelease.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateFilter.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e70b4; bytecode file offset 0xae3980"
!EtasOptionDialog methodsFor: 'recovered'!
updateDescriptionText: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionNodes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280d7430Arg1 | 
    | block280d7430Stack0 block280d7430Stack1 block280d7430Stack2 block280d7430Stack3 block280d7430PC block280d7430Step block280d7430Done block280d7430Result |
    block280d7430Stack0 := self.
    block280d7430PC := 4.
    block280d7430Done := false.
    [block280d7430Done not] whileTrue: [
        block280d7430Step := block280d7430PC.
        block280d7430Step = 4 ifTrue: [
            block280d7430Stack1 := false.
            block280d7430PC := 5.
        ].
        block280d7430Step = 5 ifTrue: [
            block280d7430Stack2 := block280d7430Arg1.
            block280d7430PC := 6.
        ].
        block280d7430Step = 6 ifTrue: [
            block280d7430Stack2 := (block280d7430Stack2) option.
            block280d7430PC := 7.
        ].
        block280d7430Step = 7 ifTrue: [
            (block280d7430Stack2 == nil) ifTrue: [block280d7430PC := 14] ifFalse: [block280d7430PC := 10].
        ].
        block280d7430Step = 10 ifTrue: [
            block280d7430PC := 11.
        ].
        block280d7430Step = 11 ifTrue: [
            block280d7430Stack1 := block280d7430Arg1.
            block280d7430PC := 12.
        ].
        block280d7430Step = 12 ifTrue: [
            block280d7430Stack1 := (block280d7430Stack1) option.
            block280d7430PC := 13.
        ].
        block280d7430Step = 13 ifTrue: [
            block280d7430Stack1 := (block280d7430Stack1) forceNewDescription.
            block280d7430PC := 14.
        ].
        block280d7430Step = 14 ifTrue: [
            block280d7430Result := block280d7430Stack1.
            block280d7430Done := true.
        ].
    ].
    block280d7430Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) anySatisfy: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateDescriptionText: (recoveredStack1) forceNew: (recoveredStack2).
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

"ASDBase.ic method 0x201e7334; bytecode file offset 0xae3bf8"
!EtasOptionDialog methodsFor: 'recovered'!
notifyOptionClasses: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            optionClasses := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            optionClasses := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f81a0; bytecode file offset 0xaf4a68"
!EtasOptionDialog methodsFor: 'recovered'!
mousePressed: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetOptionsTree.
    recoveredValue1 := (self) widgetOptionsTree.
    recoveredValue2 := (recoveredValue1) getSelectedPos.
    recoveredValue3 := [
    ^self
].
    recoveredValue4 := (recoveredValue2) at: (1) ifAbsent: (recoveredValue3).
    (recoveredValue0) expandPos: (recoveredValue4) notify: (true).
    recoveredValue5 := recoveredArg2.
    (self) selectOptionNode: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202535cc; bytecode file offset 0xb4feb0"
!EtasOptionDialog methodsFor: 'recovered'!
updateFilter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) createOptionTree.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionTree.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) selectLastUsedOptionNode.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanks.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) expandAll.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025b0e8; bytecode file offset 0xb579c0"
!EtasOptionDialog methodsFor: 'recovered'!
optionDescriptionHTML: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) optionClass.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := (recoveredValue2) zapBlanks.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ('<p><b><a name="') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('">').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) optionClass.
    recoveredValue9 := (recoveredValue8) label.
    recoveredValue10 := (recoveredValue6) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , (': </a></b><ul>').
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) optionClass.
    recoveredValue14 := (recoveredValue13) description.
    recoveredValue15 := (recoveredValue11) , (recoveredValue14).
    recoveredValue16 := (recoveredValue15) , ('</ul></p>').
    ^recoveredValue16
! !

"ASDBase.ic method 0x2028e16c; bytecode file offset 0xb8aa38"
!EtasOptionDialog methodsFor: 'recovered'!
actualNode: recoveredArg1
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
            actualNode := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExportButton.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNode.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) restrictedExport.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImportButton.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) rootNode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) restrictedImport.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202abf20; bytecode file offset 0xba87e8"
!EtasOptionDialog methodsFor: 'recovered'!
optionTreeDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg3.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) itemPosition.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isExpandedPos: (recoveredBlock4Stack2).
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 34].
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack3 := true.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) collapsePos: (recoveredBlock4Stack2) notify: (recoveredBlock4Stack3).
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack3 := true.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) expandPos: (recoveredBlock4Stack2) notify: (recoveredBlock4Stack3).
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202b7698; bytecode file offset 0xbb3f5c"
!EtasOptionDialog methodsFor: 'recovered'!
selectOptionNode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemCount.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionsTree.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemAt: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetOptionsTree.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 44]] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5944; bytecode file offset 0xbc2218"
!EtasOptionDialog methodsFor: 'recovered'!
removeViewDependencies: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack1) removeDependent: (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack1) widget: (recoveredBlock5Stack2).
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := false.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            (recoveredBlock5Stack1) modified: (recoveredBlock5Stack2).
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isContainerOption.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 36] ifFalse: [recoveredBlock5PC := 44].
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) optionClass.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) options.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeViewDependencies: (recoveredBlock5Stack2).
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202d18c4; bytecode file offset 0xbce1a8"
!EtasOptionDialog methodsFor: 'recovered'!
createFileMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~File').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) isImportOptionsPossible.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('menuImportOptions') label: ('~Import ...') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock34Value0 |
    recoveredBlock34Value0 := (self) isExportOptionsPossible.
    recoveredBlock34Value0
].
    (recoveredValue6) add: ('menuExportOptions') label: ('~Export ...') enable: (recoveredValue7).
    recoveredLocal1 := recoveredValue2.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202e2e40; bytecode file offset 0xbdf720"
!EtasOptionDialog methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20300750; bytecode file offset 0xbfd02c"
!EtasOptionDialog methodsFor: 'recovered'!
optionReference: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) label.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue1) new: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) on: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) label.
    recoveredValue9 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isLetter.
            recoveredBlock24PC := 34.
        ].
        recoveredBlock24Step = 34 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 38] ifFalse: [recoveredBlock24PC := 45].
        ].
        recoveredBlock24Step = 38 ifTrue: [
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) nextPut: (recoveredBlock24Stack2).
            recoveredBlock24PC := 45.
        ].
        recoveredBlock24Step = 45 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) contents.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20320c04; bytecode file offset 0xc1d540"
!EtasOptionDialog methodsFor: 'recovered'!
exportStructure
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) optionsFromNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'File Name for Structure File'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'OptionStructure'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeOptionStructure: (recoveredStack1) toXMLFile: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20320c4c; bytecode file offset 0xc1d540"
!EtasOptionDialog methodsFor: 'recovered'!
exportDeclarations
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) optionsFromNode: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'File Name for Structure File'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'OptionDeclarations.aoc.xml'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) addOptionDeclaration: (recoveredStack1) toXMLFile: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032f1a8; bytecode file offset 0xc2ba8c"
!EtasOptionDialog methodsFor: 'recovered'!
allOptionsFromOptionCollection: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_70836'.
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:block280ecbbcArg1 | 
    | block280ecbbcValue0 block280ecbbcValue1 block280ecbbcValue2 |
    block280ecbbcValue0 := block280ecbbcArg1.
    block280ecbbcValue1 := (block280ecbbcValue0) optionClass.
    block280ecbbcValue2 := (block280ecbbcValue1) isContainerOption.
    block280ecbbcValue2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value1) optionClass.
    recoveredBlock32Value3 := (recoveredBlock32Value2) options.
    recoveredBlock32Value4 := (recoveredBlock32Value0) addAll: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20346870; bytecode file offset 0xc43148"
!EtasOptionDialog methodsFor: 'recovered'!
ok
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOnly.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'Extension'.
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
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) notifyOptionClasses.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) optionsDialogConfirmed.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            (recoveredBlock28Stack2 ~~ nil) ifTrue: [recoveredBlock28PC := 48] ifFalse: [recoveredBlock28PC := 42].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack1 := true.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034c590; bytecode file offset 0xc48e84"
!EtasOptionDialog methodsFor: 'recovered'!
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
            recoveredStack3 := 'menuExpandOptionTree'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Expand All'.
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
            recoveredStack3 := 'menuCollapseOptionTree'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := '~Collapse All'.
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
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 'menuShowDescription'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 'Show/Hide ~Description'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035da6c; bytecode file offset 0xc5a344"
!EtasOptionDialog methodsFor: 'recovered'!
optionsFromNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) optionNodes.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) option.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 24.
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack3.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            (recoveredBlock14Stack2 == nil) ifTrue: [recoveredBlock14PC := 35] ifFalse: [recoveredBlock14PC := 28].
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) add: (recoveredBlock14Stack2).
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) structureNodes.
    recoveredValue7 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := recoveredLocal1.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (self) optionsFromNode: (recoveredBlock43Value1).
    recoveredBlock43Value3 := (recoveredBlock43Value0) addAll: (recoveredBlock43Value2).
    recoveredBlock43Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2035f928; bytecode file offset 0xc5c200"
!EtasOptionDialog methodsFor: 'recovered'!
matchesFilter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFilterText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) value.
    recoveredBlock5Value2 := recoveredBlock5Value1.
    recoveredLocal2 := recoveredBlock5Value2.
    recoveredBlock5Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'type filter text'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) filterString.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) asLowercase.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20368684; bytecode file offset 0xc64f8c"
!EtasOptionDialog methodsFor: 'recovered'!
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
            recoveredStack1 := (recoveredStack1) title.
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
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 18.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) itemHeight: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionTree.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20369134; bytecode file offset 0xc65a04"
!EtasOptionDialog methodsFor: 'recovered'!
deleteEmptyChildren: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) structureNodes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionNodes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) structureNodes.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := (self) deleteEmptyChildren: (recoveredBlock21Value0).
    recoveredBlock21Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := [:block280f0fccArg1 | 
    | block280f0fccValue0 block280f0fccValue1 block280f0fccValue2 |
    block280f0fccValue0 := block280f0fccArg1.
    block280f0fccValue1 := (block280f0fccValue0) isNil.
    block280f0fccValue2 := (block280f0fccValue1) not.
    block280f0fccValue2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3) select: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) structureNodes: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := optionTree.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) structureNodes.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionNodes.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203774c8; bytecode file offset 0xc73db4"
!EtasOptionDialog methodsFor: 'recovered'!
mouseMoved: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Button1Mask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Button2Mask.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Button3Mask.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := Button4Mask.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := Button5Mask.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) anyMask: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) window.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := XCHand2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontCursorAt: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) setCursor: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037c7b4; bytecode file offset 0xc7909c"
!EtasOptionDialog methodsFor: 'recovered'!
createOptionWidgets
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) optionTree.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack0) createOptionWidgetsForSingleNode: (recoveredBlock6Stack1).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) optionTree.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) optionsFromNode: (recoveredBlock6Stack1).
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := [:block280f2508Arg1 | 
    | block280f2508Stack0 block280f2508Stack1 block280f2508Stack2 block280f2508Stack3 block280f2508PC block280f2508Step block280f2508Done block280f2508Result |
    block280f2508Stack0 := self.
    block280f2508PC := 4.
    block280f2508Done := false.
    [block280f2508Done not] whileTrue: [
        block280f2508Step := block280f2508PC.
        block280f2508Step = 4 ifTrue: [
            block280f2508Stack1 := block280f2508Arg1.
            block280f2508PC := 5.
        ].
        block280f2508Step = 5 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) optionClass.
            block280f2508PC := 7.
        ].
        block280f2508Step = 7 ifTrue: [
            block280f2508Stack2 := true.
            block280f2508PC := 8.
        ].
        block280f2508Step = 8 ifTrue: [
            (block280f2508Stack1) needsUpdate: (block280f2508Stack2).
            block280f2508PC := 10.
        ].
        block280f2508Step = 10 ifTrue: [
            block280f2508Stack1 := block280f2508Arg1.
            block280f2508PC := 11.
        ].
        block280f2508Step = 11 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) optionClass.
            block280f2508PC := 13.
        ].
        block280f2508Step = 13 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) isContainerOption.
            block280f2508PC := 15.
        ].
        block280f2508Step = 15 ifTrue: [
            (block280f2508Stack1) ifTrue: [block280f2508PC := 18] ifFalse: [block280f2508PC := 37].
        ].
        block280f2508Step = 18 ifTrue: [
            block280f2508Stack1 := block280f2508Arg1.
            block280f2508PC := 19.
        ].
        block280f2508Step = 19 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) optionClass.
            block280f2508PC := 21.
        ].
        block280f2508Step = 21 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) options.
            block280f2508PC := 23.
        ].
        block280f2508Step = 23 ifTrue: [
            block280f2508Stack2 := [:block280f252cArg1 | 
    | block280f252cValue0 block280f252cValue1 block280f252cValue2 |
    block280f252cValue0 := block280f252cArg1.
    block280f252cValue1 := (block280f252cValue0) optionClass.
    block280f252cValue2 := (block280f252cValue1) needsUpdate: (true).
    block280f252cValue2
].
            block280f2508PC := 25.
        ].
        block280f2508Step = 25 ifTrue: [
            block280f2508PC := 35.
        ].
        block280f2508Step = 35 ifTrue: [
            (block280f2508Stack1) do: (block280f2508Stack2).
            block280f2508PC := 37.
        ].
        block280f2508Step = 37 ifTrue: [
            block280f2508Stack1 := block280f2508Arg1.
            block280f2508PC := 38.
        ].
        block280f2508Step = 38 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) optionClass.
            block280f2508PC := 40.
        ].
        block280f2508Step = 40 ifTrue: [
            block280f2508Stack1 := (block280f2508Stack1) updateOptionWidget.
            block280f2508PC := 42.
        ].
        block280f2508Step = 42 ifTrue: [
            block280f2508Result := block280f2508Stack1.
            block280f2508Done := true.
        ].
    ].
    block280f2508Result
].
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 67.
        ].
        recoveredBlock6Step = 67 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2037d944; bytecode file offset 0xc7a238"
!EtasOptionDialog methodsFor: 'recovered'!
optionTreeVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) nodeLabel.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) structureNodes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionNodes.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasErrorRecursive: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'GeneralError'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) structureNodes.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasErrorRecursive: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := RBUserInterface.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'GeneralError'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'GeneralOverlayLevelDown'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon: (recoveredStack2) overlayedWith: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d82d4; bytecode file offset 0xcd4bd0"
!EtasOptionDialog methodsFor: 'recovered'!
menuExportOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) restrictedExport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootNode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNode.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsFromNode: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'File Name for Settings File'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualNode.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodeLabel.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := XmSAVE.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) accessType: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeOptions: (recoveredStack1) toXMLFile: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e012c; bytecode file offset 0xcdca34"
!EtasOptionDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := [
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) widgetOptionsTree.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := 1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := true.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack0) expandPos: (recoveredBlock5Stack1) notify: (recoveredBlock5Stack2).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) firstSelection.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack0 == nil) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) selectPredefinedOptionNode.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) notNil.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) selectLastUsedOptionNode.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) notNil.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 38.
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) widgetVerticalSplit.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := 200.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            (recoveredBlock5Stack0) setPosition: (recoveredBlock5Stack1).
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) widgetHorizontalSplit.
            recoveredBlock5PC := 49.
        ].
        recoveredBlock5Step = 49 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 50.
        ].
        recoveredBlock5Step = 50 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) shell.
            recoveredBlock5PC := 51.
        ].
        recoveredBlock5Step = 51 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) height.
            recoveredBlock5PC := 53.
        ].
        recoveredBlock5Step = 53 ifTrue: [
            recoveredBlock5Stack2 := #[154 153 153 153 153 153 233 63].
            recoveredBlock5PC := 55.
        ].
        recoveredBlock5Step = 55 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) * (recoveredBlock5Stack2).
            recoveredBlock5PC := 56.
        ].
        recoveredBlock5Step = 56 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) rounded.
            recoveredBlock5PC := 58.
        ].
        recoveredBlock5Step = 58 ifTrue: [
            (recoveredBlock5Stack0) setPosition: (recoveredBlock5Stack1).
            recoveredBlock5PC := 60.
        ].
        recoveredBlock5Step = 60 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 61.
        ].
        recoveredBlock5Step = 61 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 62.
        ].
        recoveredBlock5Step = 62 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) options.
            recoveredBlock5PC := 64.
        ].
        recoveredBlock5Step = 64 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) first.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) optionClass.
            recoveredBlock5PC := 68.
        ].
        recoveredBlock5Step = 68 ifTrue: [
            (recoveredBlock5Stack0) update: (recoveredBlock5Stack1).
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack0 := self.
            recoveredBlock5PC := 71.
        ].
        recoveredBlock5Step = 71 ifTrue: [
            recoveredBlock5Stack0 := (recoveredBlock5Stack0) resizeOptionForm.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack0.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) osWidget.
    (recoveredValue3) setSysModal.
    recoveredValue4 := (self) widgetOptionsTree.
    (recoveredValue4) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x20402d28; bytecode file offset 0xcff62c"
!EtasOptionDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SCOk.
    recoveredValue4 := (recoveredValue3) getHotkeyString.
    recoveredValue5 := ('Alt-') , (recoveredValue4).
    recoveredValue6 := DirectedMessageWithText.
    recoveredValue7 := SCOk.
    recoveredValue8 := (recoveredValue6) selector: ('ok') arguments: (#()) receiver: (self) text: (recoveredValue7).
    (recoveredValue2) at: (recoveredValue5) put: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := SCCancel.
    recoveredValue11 := (recoveredValue10) getHotkeyString.
    recoveredValue12 := ('Alt-') , (recoveredValue11).
    recoveredValue13 := DirectedMessageWithText.
    recoveredValue14 := SCCancel.
    recoveredValue15 := (recoveredValue13) selector: ('cancel') arguments: (#()) receiver: (self) text: (recoveredValue14).
    (recoveredValue9) at: (recoveredValue12) put: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := DirectedMessageWithText.
    recoveredValue18 := (recoveredValue17) selector: ('exportStructure') arguments: (#()) receiver: (self) text: ('Export Tree Structure as XML file').
    (recoveredValue16) at: ('Alt-X') put: (recoveredValue18).
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := DirectedMessageWithText.
    recoveredValue21 := (recoveredValue20) selector: ('exportDeclarations') arguments: (#()) receiver: (self) text: ('Export Option Declarations as XML file').
    (recoveredValue19) at: ('Alt-D') put: (recoveredValue21).
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (self) shell.
    (self) setActionDict: (recoveredValue22) forWidget: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x2041cd20; bytecode file offset 0xd19608"
!EtasOptionDialog methodsFor: 'recovered'!
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
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionForm.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHorizontalSplit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDefaultButton.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImportButton.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
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
            recoveredStack0 := (recoveredStack0) widgetExportButton.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := XmATTACHFORM.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            DescriptionVisible := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionForm.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetHorizontalSplit.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDefaultButton.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := XmATTACHWIDGET.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDefaultButton.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHorizontalSplit.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImportButton.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := XmATTACHWIDGET.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImportButton.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHorizontalSplit.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExportButton.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := XmATTACHWIDGET.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) bottomAttachment: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetExportButton.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetHorizontalSplit.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) bottomWidget: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            DescriptionVisible := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20434d74; bytecode file offset 0xd31654"
!EtasOptionDialog methodsFor: 'recovered'!
getPathToSelection: recoveredArg1 parentItems: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
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
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Local1 recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32Stack5 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
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
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) nodeLabel.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal1.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) equals: (recoveredBlock32Stack3).
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 50] ifFalse: [recoveredBlock32PC := 101].
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            (recoveredBlock32Stack1) addFirst: (recoveredBlock32Stack2).
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 58.
        ].
        recoveredBlock32Step = 58 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) structureNodes.
            recoveredBlock32PC := 60.
        ].
        recoveredBlock32Step = 60 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 61.
        ].
        recoveredBlock32Step = 61 ifTrue: [
            recoveredBlock32Local1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 62.
        ].
        recoveredBlock32Step = 62 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) isEmpty.
            recoveredBlock32PC := 63.
        ].
        recoveredBlock32Step = 63 ifTrue: [
            (recoveredBlock32Stack1) ifTrue: [recoveredBlock32PC := 66] ifFalse: [recoveredBlock32PC := 70].
        ].
        recoveredBlock32Step = 66 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 69.
        ].
        recoveredBlock32Step = 69 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 70 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 71.
        ].
        recoveredBlock32Step = 71 ifTrue: [
            recoveredBlock32Stack2 := self.
            recoveredBlock32PC := 72.
        ].
        recoveredBlock32Step = 72 ifTrue: [
            recoveredBlock32Stack3 := recoveredArg1.
            recoveredBlock32PC := 75.
        ].
        recoveredBlock32Step = 75 ifTrue: [
            recoveredBlock32Stack4 := recoveredLocal1.
            recoveredBlock32PC := 78.
        ].
        recoveredBlock32Step = 78 ifTrue: [
            recoveredBlock32Stack3 := (recoveredBlock32Stack3) copyWithout: (recoveredBlock32Stack4).
            recoveredBlock32PC := 80.
        ].
        recoveredBlock32Step = 80 ifTrue: [
            recoveredBlock32Stack4 := recoveredBlock32Local1.
            recoveredBlock32PC := 81.
        ].
        recoveredBlock32Step = 81 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) getPathToSelection: (recoveredBlock32Stack3) parentItems: (recoveredBlock32Stack4).
            recoveredBlock32PC := 83.
        ].
        recoveredBlock32Step = 83 ifTrue: [
            recoveredBlock32Stack3 := recoveredBlock32Stack2.
            recoveredBlock32PC := 84.
        ].
        recoveredBlock32Step = 84 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack3.
            recoveredBlock32PC := 87.
        ].
        recoveredBlock32Step = 87 ifTrue: [
            (recoveredBlock32Stack2 == nil) ifTrue: [recoveredBlock32PC := 101] ifFalse: [recoveredBlock32PC := 90].
        ].
        recoveredBlock32Step = 90 ifTrue: [
            recoveredBlock32PC := 91.
        ].
        recoveredBlock32Step = 91 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 94.
        ].
        recoveredBlock32Step = 94 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 95.
        ].
        recoveredBlock32Step = 95 ifTrue: [
            (recoveredBlock32Stack1) addFirst: (recoveredBlock32Stack2).
            recoveredBlock32PC := 97.
        ].
        recoveredBlock32Step = 97 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 100.
        ].
        recoveredBlock32Step = 100 ifTrue: [
            ^recoveredBlock32Stack1
        ].
        recoveredBlock32Step = 101 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2043b3d8; bytecode file offset 0xd37cc8"
!EtasOptionDialog methodsFor: 'recovered'!
resizeOptionForm
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280fe0f8Arg1 | 
    | block280fe0f8Value0 block280fe0f8Value1 block280fe0f8Value2 |
    block280fe0f8Value0 := block280fe0f8Arg1.
    block280fe0f8Value1 := (block280fe0f8Value0) maximumExtent.
    block280fe0f8Value2 := (block280fe0f8Value1) y.
    block280fe0f8Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) + (recoveredBlock30Value1).
    recoveredBlock30Value3 := (recoveredBlock30Value2) + (5).
    recoveredBlock30Value4 := recoveredBlock30Value3.
    recoveredLocal1 := recoveredBlock30Value4.
    recoveredBlock30Value3
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := visibleForm.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := visibleForm.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) parent.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) width.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 300.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) width: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := visibleForm.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) workWindow: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) updateScrollBars.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := visibleForm.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20455e4c; bytecode file offset 0xd52764"
!EtasOptionDialog methodsFor: 'recovered'!
menuSystemDefault
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'This will reset all existing settings of section '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualNode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodeLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := '!!\Are you sure?'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'SetOptionsToDefault'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNode.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsFromNode: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:block280ffb20Arg1 | 
    | block280ffb20Stack0 block280ffb20Stack1 block280ffb20Stack2 block280ffb20Stack3 block280ffb20Stack4 block280ffb20PC block280ffb20Step block280ffb20Done block280ffb20Result |
    block280ffb20Stack0 := self.
    block280ffb20PC := 4.
    block280ffb20Done := false.
    [block280ffb20Done not] whileTrue: [
        block280ffb20Step := block280ffb20PC.
        block280ffb20Step = 4 ifTrue: [
            block280ffb20Stack1 := block280ffb20Arg1.
            block280ffb20PC := 5.
        ].
        block280ffb20Step = 5 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) optionClass.
            block280ffb20PC := 7.
        ].
        block280ffb20Step = 7 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) isContainerOption.
            block280ffb20PC := 9.
        ].
        block280ffb20Step = 9 ifTrue: [
            (block280ffb20Stack1) ifTrue: [block280ffb20PC := 12] ifFalse: [block280ffb20PC := 30].
        ].
        block280ffb20Step = 12 ifTrue: [
            block280ffb20Stack1 := block280ffb20Arg1.
            block280ffb20PC := 13.
        ].
        block280ffb20Step = 13 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) optionClass.
            block280ffb20PC := 15.
        ].
        block280ffb20Step = 15 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) options.
            block280ffb20PC := 17.
        ].
        block280ffb20Step = 17 ifTrue: [
            block280ffb20Stack2 := [:block280ffb44Arg1 | 
    | block280ffb44Value0 block280ffb44Value1 block280ffb44Value2 |
    block280ffb44Value0 := block280ffb44Arg1.
    block280ffb44Value1 := (block280ffb44Value0) optionClass.
    block280ffb44Value2 := (block280ffb44Value1) setToDefault.
    block280ffb44Value2
].
            block280ffb20PC := 19.
        ].
        block280ffb20Step = 19 ifTrue: [
            block280ffb20PC := 28.
        ].
        block280ffb20Step = 28 ifTrue: [
            (block280ffb20Stack1) do: (block280ffb20Stack2).
            block280ffb20PC := 30.
        ].
        block280ffb20Step = 30 ifTrue: [
            block280ffb20Stack1 := nil.
            block280ffb20PC := 31.
        ].
        block280ffb20Step = 31 ifTrue: [
            block280ffb20Stack2 := block280ffb20Arg1.
            block280ffb20PC := 32.
        ].
        block280ffb20Step = 32 ifTrue: [
            block280ffb20Stack2 := (block280ffb20Stack2) optionClass.
            block280ffb20PC := 34.
        ].
        block280ffb20Step = 34 ifTrue: [
            block280ffb20Stack2 := (block280ffb20Stack2) value.
            block280ffb20PC := 36.
        ].
        block280ffb20Step = 36 ifTrue: [
            block280ffb20Stack3 := block280ffb20Arg1.
            block280ffb20PC := 37.
        ].
        block280ffb20Step = 37 ifTrue: [
            block280ffb20Stack3 := (block280ffb20Stack3) optionClass.
            block280ffb20PC := 39.
        ].
        block280ffb20Step = 39 ifTrue: [
            block280ffb20Stack3 := (block280ffb20Stack3) default.
            block280ffb20PC := 41.
        ].
        block280ffb20Step = 41 ifTrue: [
            block280ffb20Stack2 := (block280ffb20Stack2) ~= (block280ffb20Stack3).
            block280ffb20PC := 42.
        ].
        block280ffb20Step = 42 ifTrue: [
            (block280ffb20Stack2) ifTrue: [block280ffb20PC := 46] ifFalse: [block280ffb20PC := 52].
        ].
        block280ffb20Step = 46 ifTrue: [
            block280ffb20PC := 47.
        ].
        block280ffb20Step = 47 ifTrue: [
            block280ffb20Stack1 := block280ffb20Arg1.
            block280ffb20PC := 48.
        ].
        block280ffb20Step = 48 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) optionClass.
            block280ffb20PC := 50.
        ].
        block280ffb20Step = 50 ifTrue: [
            block280ffb20Stack1 := (block280ffb20Stack1) setToDefault.
            block280ffb20PC := 52.
        ].
        block280ffb20Step = 52 ifTrue: [
            block280ffb20Result := block280ffb20Stack1.
            block280ffb20Done := true.
        ].
    ].
    block280ffb20Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046f050; bytecode file offset 0xd6b95c"
!EtasOptionDialog methodsFor: 'recovered'!
scrollDescriptionTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EtasXMLDefinedOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'HTMLOptionDescription'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'ETASInternal'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionHTMLText.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionHTMLText.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDescriptionFileLocationForNode: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := '#'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionReference: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := currentDescriptionReference.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            currentDescriptionReference := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDescriptionHTMLText.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) oleControlWrapper.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) navigate2: (recoveredStack1) flags: (recoveredStack2) targetFrameName: (recoveredStack3) postData: (recoveredStack4) headers: (recoveredStack5).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20471074; bytecode file offset 0xd6d960"
!EtasOptionDialog methodsFor: 'recovered'!
selectOptionNodeLabel: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetOptionsTree.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPathToSelection: (recoveredStack1) parentItems: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
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
            recoveredStack0 := 1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Local1 recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30Stack5 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) widgetOptionsTree.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) visibleItemNodes.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack3 := [:recoveredBlock30Block40Arg1 | 
    | recoveredBlock30Block40Value0 recoveredBlock30Block40Value1 recoveredBlock30Block40Value2 recoveredBlock30Block40Value3 |
    recoveredBlock30Block40Value0 := recoveredBlock30Block40Arg1.
    recoveredBlock30Block40Value1 := (recoveredBlock30Block40Value0) item.
    recoveredBlock30Block40Value2 := recoveredBlock30Arg1.
    recoveredBlock30Block40Value3 := (recoveredBlock30Block40Value1) equals: (recoveredBlock30Block40Value2).
    recoveredBlock30Block40Value3
].
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30Stack4 := [].
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) detect: (recoveredBlock30Stack3) ifNone: (recoveredBlock30Stack4).
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 60.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Local1 := recoveredBlock30Stack3.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 110] ifFalse: [recoveredBlock30PC := 66].
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) widgetOptionsTree.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) visibleItemNodes.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Local1.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) indexOf: (recoveredBlock30Stack3).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack3.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 110] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) expandRecursive.
            recoveredBlock30PC := 88.
        ].
        recoveredBlock30Step = 88 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 92] ifFalse: [recoveredBlock30PC := 102].
        ].
        recoveredBlock30Step = 92 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetOptionsTree.
            recoveredBlock30PC := 94.
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) expandRecursive: (recoveredBlock30Stack2).
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            recoveredBlock30PC := 110.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 103.
        ].
        recoveredBlock30Step = 103 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetOptionsTree.
            recoveredBlock30PC := 104.
        ].
        recoveredBlock30Step = 104 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal1.
            recoveredBlock30PC := 107.
        ].
        recoveredBlock30Step = 107 ifTrue: [
            recoveredBlock30Stack3 := true.
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) expandPos: (recoveredBlock30Stack2) notify: (recoveredBlock30Stack3).
            recoveredBlock30PC := 110.
        ].
        recoveredBlock30Step = 110 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetOptionsTree.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204881a0; bytecode file offset 0xd84a88"
!EtasOptionDialog methodsFor: 'recovered'!
hasErrorRecursive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := false.
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
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isStructureNode.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 36] ifFalse: [recoveredBlock23PC := 56].
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) structureNodes.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) hasErrorRecursive: (recoveredBlock23Stack2).
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 44] ifFalse: [recoveredBlock23PC := 46].
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) optionNodes.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) hasErrorRecursive: (recoveredBlock23Stack2).
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 54] ifFalse: [recoveredBlock23PC := 56].
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack1 := true.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            ^recoveredBlock23Stack1
        ].
        recoveredBlock23Step = 56 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) isOptionNode.
            recoveredBlock23PC := 60.
        ].
        recoveredBlock23Step = 60 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 64] ifFalse: [recoveredBlock23PC := 125].
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) option.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack2 := [:recoveredBlock23Block68Arg1 | 
    | recoveredBlock23Block68Stack0 recoveredBlock23Block68Stack1 recoveredBlock23Block68Stack2 recoveredBlock23Block68Stack3 recoveredBlock23Block68PC recoveredBlock23Block68Step recoveredBlock23Block68Done recoveredBlock23Block68Result |
    recoveredBlock23Block68Stack0 := self.
    recoveredBlock23Block68PC := 74.
    recoveredBlock23Block68Done := false.
    [recoveredBlock23Block68Done not] whileTrue: [
        recoveredBlock23Block68Step := recoveredBlock23Block68PC.
        recoveredBlock23Block68Step = 74 ifTrue: [
            recoveredBlock23Block68Stack1 := recoveredBlock23Block68Arg1.
            recoveredBlock23Block68PC := 75.
        ].
        recoveredBlock23Block68Step = 75 ifTrue: [
            recoveredBlock23Block68Stack1 := (recoveredBlock23Block68Stack1) optionClass.
            recoveredBlock23Block68PC := 77.
        ].
        recoveredBlock23Block68Step = 77 ifTrue: [
            recoveredBlock23Block68Stack1 := (recoveredBlock23Block68Stack1) invalidAndSensitive.
            recoveredBlock23Block68PC := 79.
        ].
        recoveredBlock23Block68Step = 79 ifTrue: [
            (recoveredBlock23Block68Stack1) ifTrue: [recoveredBlock23Block68PC := 82] ifFalse: [recoveredBlock23Block68PC := 84].
        ].
        recoveredBlock23Block68Step = 82 ifTrue: [
            recoveredBlock23Block68Stack1 := true.
            recoveredBlock23Block68PC := 83.
        ].
        recoveredBlock23Block68Step = 83 ifTrue: [
            ^recoveredBlock23Block68Stack1
        ].
        recoveredBlock23Block68Step = 84 ifTrue: [
            recoveredBlock23Block68Stack1 := nil.
            recoveredBlock23Block68PC := 85.
        ].
        recoveredBlock23Block68Step = 85 ifTrue: [
            recoveredBlock23Block68Stack2 := recoveredBlock23Block68Arg1.
            recoveredBlock23Block68PC := 86.
        ].
        recoveredBlock23Block68Step = 86 ifTrue: [
            recoveredBlock23Block68Stack2 := (recoveredBlock23Block68Stack2) optionClass.
            recoveredBlock23Block68PC := 88.
        ].
        recoveredBlock23Block68Step = 88 ifTrue: [
            recoveredBlock23Block68Stack2 := (recoveredBlock23Block68Stack2) isContainerOption.
            recoveredBlock23Block68PC := 90.
        ].
        recoveredBlock23Block68Step = 90 ifTrue: [
            (recoveredBlock23Block68Stack2) ifTrue: [recoveredBlock23Block68PC := 94] ifFalse: [recoveredBlock23Block68PC := 122].
        ].
        recoveredBlock23Block68Step = 94 ifTrue: [
            recoveredBlock23Block68PC := 95.
        ].
        recoveredBlock23Block68Step = 95 ifTrue: [
            recoveredBlock23Block68Stack1 := recoveredBlock23Block68Arg1.
            recoveredBlock23Block68PC := 96.
        ].
        recoveredBlock23Block68Step = 96 ifTrue: [
            recoveredBlock23Block68Stack1 := (recoveredBlock23Block68Stack1) optionClass.
            recoveredBlock23Block68PC := 98.
        ].
        recoveredBlock23Block68Step = 98 ifTrue: [
            recoveredBlock23Block68Stack1 := (recoveredBlock23Block68Stack1) options.
            recoveredBlock23Block68PC := 100.
        ].
        recoveredBlock23Block68Step = 100 ifTrue: [
            recoveredBlock23Block68Stack2 := [:recoveredBlock23Block68Block100Arg1 | 
    | recoveredBlock23Block68Block100Stack0 recoveredBlock23Block68Block100Stack1 recoveredBlock23Block68Block100Stack2 recoveredBlock23Block68Block100Stack3 recoveredBlock23Block68Block100PC recoveredBlock23Block68Block100Step recoveredBlock23Block68Block100Done recoveredBlock23Block68Block100Result |
    recoveredBlock23Block68Block100Stack0 := self.
    recoveredBlock23Block68Block100PC := 106.
    recoveredBlock23Block68Block100Done := false.
    [recoveredBlock23Block68Block100Done not] whileTrue: [
        recoveredBlock23Block68Block100Step := recoveredBlock23Block68Block100PC.
        recoveredBlock23Block68Block100Step = 106 ifTrue: [
            recoveredBlock23Block68Block100Stack1 := nil.
            recoveredBlock23Block68Block100PC := 107.
        ].
        recoveredBlock23Block68Block100Step = 107 ifTrue: [
            recoveredBlock23Block68Block100Stack2 := recoveredBlock23Block68Block100Arg1.
            recoveredBlock23Block68Block100PC := 108.
        ].
        recoveredBlock23Block68Block100Step = 108 ifTrue: [
            recoveredBlock23Block68Block100Stack2 := (recoveredBlock23Block68Block100Stack2) optionClass.
            recoveredBlock23Block68Block100PC := 110.
        ].
        recoveredBlock23Block68Block100Step = 110 ifTrue: [
            recoveredBlock23Block68Block100Stack2 := (recoveredBlock23Block68Block100Stack2) invalidAndSensitive.
            recoveredBlock23Block68Block100PC := 112.
        ].
        recoveredBlock23Block68Block100Step = 112 ifTrue: [
            (recoveredBlock23Block68Block100Stack2) ifTrue: [recoveredBlock23Block68Block100PC := 116] ifFalse: [recoveredBlock23Block68Block100PC := 119].
        ].
        recoveredBlock23Block68Block100Step = 116 ifTrue: [
            recoveredBlock23Block68Block100PC := 117.
        ].
        recoveredBlock23Block68Block100Step = 117 ifTrue: [
            recoveredBlock23Block68Block100Stack1 := true.
            recoveredBlock23Block68Block100PC := 118.
        ].
        recoveredBlock23Block68Block100Step = 118 ifTrue: [
            ^recoveredBlock23Block68Block100Stack1
        ].
        recoveredBlock23Block68Block100Step = 119 ifTrue: [
            recoveredBlock23Block68Block100Result := recoveredBlock23Block68Block100Stack1.
            recoveredBlock23Block68Block100Done := true.
        ].
    ].
    recoveredBlock23Block68Block100Result
].
            recoveredBlock23Block68PC := 120.
        ].
        recoveredBlock23Block68Step = 120 ifTrue: [
            recoveredBlock23Block68Stack1 := (recoveredBlock23Block68Stack1) do: (recoveredBlock23Block68Stack2).
            recoveredBlock23Block68PC := 122.
        ].
        recoveredBlock23Block68Step = 122 ifTrue: [
            recoveredBlock23Block68Result := recoveredBlock23Block68Stack1.
            recoveredBlock23Block68Done := true.
        ].
    ].
    recoveredBlock23Block68Result
].
            recoveredBlock23PC := 123.
        ].
        recoveredBlock23Step = 123 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) ifNotNil: (recoveredBlock23Stack2).
            recoveredBlock23PC := 125.
        ].
        recoveredBlock23Step = 125 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049580c; bytecode file offset 0xd92140"
!EtasOptionDialog methodsFor: 'recovered'!
menuImportOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) restrictedImport.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootNode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'This will overwrite all existing settings of section '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualNode.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodeLabel.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := '!!\Are you sure?'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'ImportOptions'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) actualNode.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsFromNode: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 'File Name for Settings File'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := '*.xml'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := EtasXMLBasedOptions.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) readOptions: (recoveredStack1) fromXMLFile: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:block28103a20Arg1 | 
    | block28103a20Value0 block28103a20Value1 block28103a20Value2 |
    block28103a20Value0 := block28103a20Arg1.
    block28103a20Value1 := (block28103a20Value0) optionClass.
    block28103a20Value2 := (block28103a20Value1) updateOptionWidget.
    block28103a20Value2
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205016d8; bytecode file offset 0xdfdfe0"
!EtasOptionDialog methodsFor: 'recovered'!
cancel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Call_70836'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptionsFromOptionCollection: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptionsFromOptionCollection: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Local1 recoveredBlock26Local2 recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) optionClass.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) modified.
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 145].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := 'Kli'.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredBlock26Stack2 := 'Call_70244'.
            recoveredBlock26PC := 49.
        ].
        recoveredBlock26Step = 49 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) == (recoveredBlock26Stack2).
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) optionClass.
            recoveredBlock26PC := 56.
        ].
        recoveredBlock26Step = 56 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value.
            recoveredBlock26PC := 58.
        ].
        recoveredBlock26Step = 58 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack1.
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 64.
        ].
        recoveredBlock26Step = 64 ifTrue: [
            recoveredBlock26Stack2 := [:recoveredBlock26Block64Arg1 | 
    | recoveredBlock26Block64Stack0 recoveredBlock26Block64Stack1 recoveredBlock26Block64Stack2 recoveredBlock26Block64Stack3 recoveredBlock26Block64Stack4 recoveredBlock26Block64PC recoveredBlock26Block64Step recoveredBlock26Block64Done recoveredBlock26Block64Result |
    recoveredBlock26Block64Stack0 := nil.
    recoveredBlock26Block64PC := 70.
    recoveredBlock26Block64Done := false.
    [recoveredBlock26Block64Done not] whileTrue: [
        recoveredBlock26Block64Step := recoveredBlock26Block64PC.
        recoveredBlock26Block64Step = 70 ifTrue: [
            recoveredBlock26Block64Stack1 := false.
            recoveredBlock26Block64PC := 71.
        ].
        recoveredBlock26Block64Step = 71 ifTrue: [
            recoveredBlock26Block64Stack2 := recoveredBlock26Block64Arg1.
            recoveredBlock26Block64PC := 72.
        ].
        recoveredBlock26Block64Step = 72 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) attributeName.
            recoveredBlock26Block64PC := 74.
        ].
        recoveredBlock26Block64Step = 74 ifTrue: [
            recoveredBlock26Block64Stack3 := recoveredBlock26Arg1.
            recoveredBlock26Block64PC := 77.
        ].
        recoveredBlock26Block64Step = 77 ifTrue: [
            recoveredBlock26Block64Stack3 := (recoveredBlock26Block64Stack3) attributeName.
            recoveredBlock26Block64PC := 79.
        ].
        recoveredBlock26Block64Step = 79 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) = (recoveredBlock26Block64Stack3).
            recoveredBlock26Block64PC := 80.
        ].
        recoveredBlock26Block64Step = 80 ifTrue: [
            (recoveredBlock26Block64Stack2) ifTrue: [recoveredBlock26Block64PC := 84] ifFalse: [recoveredBlock26Block64PC := 94].
        ].
        recoveredBlock26Block64Step = 84 ifTrue: [
            recoveredBlock26Block64PC := 85.
        ].
        recoveredBlock26Block64Step = 85 ifTrue: [
            recoveredBlock26Block64Stack1 := recoveredBlock26Block64Arg1.
            recoveredBlock26Block64PC := 86.
        ].
        recoveredBlock26Block64Step = 86 ifTrue: [
            recoveredBlock26Block64Stack1 := (recoveredBlock26Block64Stack1) xmlCategory.
            recoveredBlock26Block64PC := 88.
        ].
        recoveredBlock26Block64Step = 88 ifTrue: [
            recoveredBlock26Block64Stack2 := recoveredBlock26Arg1.
            recoveredBlock26Block64PC := 91.
        ].
        recoveredBlock26Block64Step = 91 ifTrue: [
            recoveredBlock26Block64Stack2 := (recoveredBlock26Block64Stack2) xmlCategory.
            recoveredBlock26Block64PC := 93.
        ].
        recoveredBlock26Block64Step = 93 ifTrue: [
            recoveredBlock26Block64Stack1 := (recoveredBlock26Block64Stack1) = (recoveredBlock26Block64Stack2).
            recoveredBlock26Block64PC := 94.
        ].
        recoveredBlock26Block64Step = 94 ifTrue: [
            recoveredBlock26Block64Result := recoveredBlock26Block64Stack1.
            recoveredBlock26Block64Done := true.
        ].
    ].
    recoveredBlock26Block64Result
].
            recoveredBlock26PC := 95.
        ].
        recoveredBlock26Step = 95 ifTrue: [
            recoveredBlock26Stack3 := [
    | recoveredBlock26Block95Value0 |
    (self) etasDevHalt.
    recoveredBlock26Block95Value0 := recoveredBlock26Arg1.
    recoveredBlock26Block95Value0
].
            recoveredBlock26PC := 108.
        ].
        recoveredBlock26Step = 108 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) detect: (recoveredBlock26Stack2) ifNone: (recoveredBlock26Stack3).
            recoveredBlock26PC := 110.
        ].
        recoveredBlock26Step = 110 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) value.
            recoveredBlock26PC := 112.
        ].
        recoveredBlock26Step = 112 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 115.
        ].
        recoveredBlock26Step = 115 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 116.
        ].
        recoveredBlock26Step = 116 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local1.
            recoveredBlock26PC := 119.
        ].
        recoveredBlock26Step = 119 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Local2.
            recoveredBlock26PC := 122.
        ].
        recoveredBlock26Step = 122 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) ~= (recoveredBlock26Stack3).
            recoveredBlock26PC := 123.
        ].
        recoveredBlock26Step = 123 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 126] ifFalse: [recoveredBlock26PC := 137].
        ].
        recoveredBlock26Step = 126 ifTrue: [
            recoveredBlock26PC := 127.
        ].
        recoveredBlock26Step = 127 ifTrue: [
            recoveredBlock26Stack1 := recoveredBlock26Arg1.
            recoveredBlock26PC := 130.
        ].
        recoveredBlock26Step = 130 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) optionClass.
            recoveredBlock26PC := 132.
        ].
        recoveredBlock26Step = 132 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Local2.
            recoveredBlock26PC := 135.
        ].
        recoveredBlock26Step = 135 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) basicValue: (recoveredBlock26Stack2).
            recoveredBlock26PC := 137.
        ].
        recoveredBlock26Step = 137 ifTrue: [
            recoveredBlock26Stack2 := nil.
            recoveredBlock26PC := 138.
        ].
        recoveredBlock26Step = 138 ifTrue: [
            recoveredBlock26Stack3 := recoveredBlock26Stack2.
            recoveredBlock26PC := 139.
        ].
        recoveredBlock26Step = 139 ifTrue: [
            recoveredBlock26Local2 := recoveredBlock26Stack3.
            recoveredBlock26PC := 142.
        ].
        recoveredBlock26Step = 142 ifTrue: [
            recoveredBlock26Local1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 145.
        ].
        recoveredBlock26Step = 145 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := 'Rnz'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'Extension'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) notifyOptionClasses.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:block2810a740Arg1 | 
    | block2810a740Value0 block2810a740Value1 |
    block2810a740Value0 := block2810a740Arg1.
    block2810a740Value1 := (block2810a740Value0) optionsDialogCancelled.
    block2810a740Value1
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052b948; bytecode file offset 0xe28248"
!EtasOptionDialog methodsFor: 'recovered'!
sortOptions
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsSortOrder.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := OrderedCollection.
    recoveredBlock17Value3 := (recoveredBlock17Value2) new.
    recoveredBlock17Value4 := (recoveredBlock17Value0) at: (recoveredBlock17Value1) put: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'alphabetic'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Local2 recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := false.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Stack1.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) optionClass.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) group.
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack2 := '\'.
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock49Stack2).
            recoveredBlock49PC := 71.
        ].
        recoveredBlock49Step = 71 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) last.
            recoveredBlock49PC := 73.
        ].
        recoveredBlock49Step = 73 ifTrue: [
            recoveredBlock49Local2 := recoveredBlock49Stack1.
            recoveredBlock49PC := 76.
        ].
        recoveredBlock49Step = 76 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) optionsSortOrder.
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            recoveredBlock49Stack1 := [:recoveredBlock49Block77Arg1 | 
    | recoveredBlock49Block77Stack0 recoveredBlock49Block77Stack1 recoveredBlock49Block77Stack2 recoveredBlock49Block77Stack3 recoveredBlock49Block77Stack4 recoveredBlock49Block77PC recoveredBlock49Block77Step recoveredBlock49Block77Done recoveredBlock49Block77Result |
    recoveredBlock49Block77Stack0 := nil.
    recoveredBlock49Block77PC := 84.
    recoveredBlock49Block77Done := false.
    [recoveredBlock49Block77Done not] whileTrue: [
        recoveredBlock49Block77Step := recoveredBlock49Block77PC.
        recoveredBlock49Block77Step = 84 ifTrue: [
            recoveredBlock49Block77Stack1 := nil.
            recoveredBlock49Block77PC := 85.
        ].
        recoveredBlock49Block77Step = 85 ifTrue: [
            recoveredBlock49Block77Stack2 := recoveredBlock49Block77Arg1.
            recoveredBlock49Block77PC := 86.
        ].
        recoveredBlock49Block77Step = 86 ifTrue: [
            recoveredBlock49Block77Stack3 := recoveredBlock49Local2.
            recoveredBlock49Block77PC := 89.
        ].
        recoveredBlock49Block77Step = 89 ifTrue: [
            recoveredBlock49Block77Stack2 := (recoveredBlock49Block77Stack2) = (recoveredBlock49Block77Stack3).
            recoveredBlock49Block77PC := 90.
        ].
        recoveredBlock49Block77Step = 90 ifTrue: [
            (recoveredBlock49Block77Stack2) ifTrue: [recoveredBlock49Block77PC := 94] ifFalse: [recoveredBlock49Block77PC := 111].
        ].
        recoveredBlock49Block77Step = 94 ifTrue: [
            recoveredBlock49Block77PC := 95.
        ].
        recoveredBlock49Block77Step = 95 ifTrue: [
            recoveredBlock49Block77Stack1 := recoveredLocal2.
            recoveredBlock49Block77PC := 98.
        ].
        recoveredBlock49Block77Step = 98 ifTrue: [
            recoveredBlock49Block77Stack2 := recoveredBlock49Block77Arg1.
            recoveredBlock49Block77PC := 99.
        ].
        recoveredBlock49Block77Step = 99 ifTrue: [
            recoveredBlock49Block77Stack1 := (recoveredBlock49Block77Stack1) at: (recoveredBlock49Block77Stack2).
            recoveredBlock49Block77PC := 101.
        ].
        recoveredBlock49Block77Step = 101 ifTrue: [
            recoveredBlock49Block77Stack2 := recoveredBlock49Arg1.
            recoveredBlock49Block77PC := 104.
        ].
        recoveredBlock49Block77Step = 104 ifTrue: [
            (recoveredBlock49Block77Stack1) add: (recoveredBlock49Block77Stack2).
            recoveredBlock49Block77PC := 106.
        ].
        recoveredBlock49Block77Step = 106 ifTrue: [
            recoveredBlock49Block77Stack1 := true.
            recoveredBlock49Block77PC := 107.
        ].
        recoveredBlock49Block77Step = 107 ifTrue: [
            recoveredBlock49Block77Stack2 := recoveredBlock49Block77Stack1.
            recoveredBlock49Block77PC := 108.
        ].
        recoveredBlock49Block77Step = 108 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Block77Stack2.
            recoveredBlock49Block77PC := 111.
        ].
        recoveredBlock49Block77Step = 111 ifTrue: [
            recoveredBlock49Block77Result := recoveredBlock49Block77Stack1.
            recoveredBlock49Block77Done := true.
        ].
    ].
    recoveredBlock49Block77Result
].
            recoveredBlock49PC := 112.
        ].
        recoveredBlock49Step = 112 ifTrue: [
            (recoveredBlock49Stack0) do: (recoveredBlock49Stack1).
            recoveredBlock49PC := 114.
        ].
        recoveredBlock49Step = 114 ifTrue: [
            recoveredBlock49Stack0 := nil.
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Local1.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 135] ifFalse: [recoveredBlock49PC := 122].
        ].
        recoveredBlock49Step = 122 ifTrue: [
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            recoveredBlock49Stack0 := recoveredLocal2.
            recoveredBlock49PC := 126.
        ].
        recoveredBlock49Step = 126 ifTrue: [
            recoveredBlock49Stack1 := 'alphabetic'.
            recoveredBlock49PC := 128.
        ].
        recoveredBlock49Step = 128 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) at: (recoveredBlock49Stack1).
            recoveredBlock49PC := 130.
        ].
        recoveredBlock49Step = 130 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 133.
        ].
        recoveredBlock49Step = 133 ifTrue: [
            recoveredBlock49Stack0 := (recoveredBlock49Stack0) add: (recoveredBlock49Stack1).
            recoveredBlock49PC := 135.
        ].
        recoveredBlock49Step = 135 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack0.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionsSortOrder.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := [:recoveredBlock140Arg1 | 
    | recoveredBlock140Value0 recoveredBlock140Value1 recoveredBlock140Value2 recoveredBlock140Value3 recoveredBlock140Value4 |
    recoveredBlock140Value0 := recoveredLocal1.
    recoveredBlock140Value1 := recoveredLocal2.
    recoveredBlock140Value2 := recoveredBlock140Arg1.
    recoveredBlock140Value3 := (recoveredBlock140Value1) at: (recoveredBlock140Value2).
    recoveredBlock140Value4 := (recoveredBlock140Value0) addAll: (recoveredBlock140Value3).
    recoveredBlock140Value4
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'alphabetic'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := [:block2810ce10Arg1 :block2810ce10Arg2 | 
    | block2810ce10Value0 block2810ce10Value1 block2810ce10Value2 block2810ce10Value3 block2810ce10Value4 block2810ce10Value5 block2810ce10Value6 |
    block2810ce10Value0 := block2810ce10Arg1.
    block2810ce10Value1 := (block2810ce10Value0) optionClass.
    block2810ce10Value2 := (block2810ce10Value1) group.
    block2810ce10Value3 := block2810ce10Arg2.
    block2810ce10Value4 := (block2810ce10Value3) optionClass.
    block2810ce10Value5 := (block2810ce10Value4) group.
    block2810ce10Value6 := (block2810ce10Value2) <= (block2810ce10Value5).
    block2810ce10Value6
].
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) options: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20557cd0; bytecode file offset 0xe545d4"
!EtasOptionDialog methodsFor: 'recovered'!
optionTree: recoveredArg1 rootNode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Local4 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) optionClass.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack1) resetOriginalValue.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) optionClass.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) group.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack2 := '\'.
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asArrayOfSubstringsSeparatedBy: (recoveredBlock13Stack2).
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            recoveredBlock13Local4 := recoveredBlock13Stack1.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) optionClass.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) group.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) notEmpty.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 56] ifFalse: [recoveredBlock13PC := 160].
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local4.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block57Arg1 | 
    | recoveredBlock13Block57Stack0 recoveredBlock13Block57Stack1 recoveredBlock13Block57Stack2 recoveredBlock13Block57Stack3 recoveredBlock13Block57Stack4 recoveredBlock13Block57PC recoveredBlock13Block57Step recoveredBlock13Block57Done recoveredBlock13Block57Result |
    recoveredBlock13Block57Stack0 := self.
    recoveredBlock13Block57PC := 64.
    recoveredBlock13Block57Done := false.
    [recoveredBlock13Block57Done not] whileTrue: [
        recoveredBlock13Block57Step := recoveredBlock13Block57PC.
        recoveredBlock13Block57Step = 64 ifTrue: [
            recoveredBlock13Block57Stack1 := nil.
            recoveredBlock13Block57PC := 65.
        ].
        recoveredBlock13Block57Step = 65 ifTrue: [
            recoveredBlock13Block57Stack2 := recoveredLocal2.
            recoveredBlock13Block57PC := 68.
        ].
        recoveredBlock13Block57Step = 68 ifTrue: [
            recoveredBlock13Block57Stack2 := (recoveredBlock13Block57Stack2) nodeLabel.
            recoveredBlock13Block57PC := 70.
        ].
        recoveredBlock13Block57Step = 70 ifTrue: [
            recoveredBlock13Block57Stack3 := recoveredBlock13Block57Arg1.
            recoveredBlock13Block57PC := 73.
        ].
        recoveredBlock13Block57Step = 73 ifTrue: [
            recoveredBlock13Block57Stack2 := (recoveredBlock13Block57Stack2) equals: (recoveredBlock13Block57Stack3).
            recoveredBlock13Block57PC := 75.
        ].
        recoveredBlock13Block57Step = 75 ifTrue: [
            (recoveredBlock13Block57Stack2) ifTrue: [recoveredBlock13Block57PC := 157] ifFalse: [recoveredBlock13Block57PC := 78].
        ].
        recoveredBlock13Block57Step = 78 ifTrue: [
            recoveredBlock13Block57PC := 79.
        ].
        recoveredBlock13Block57Step = 79 ifTrue: [
            recoveredBlock13Block57Stack1 := recoveredLocal2.
            recoveredBlock13Block57PC := 82.
        ].
        recoveredBlock13Block57Step = 82 ifTrue: [
            recoveredBlock13Block57Stack1 := (recoveredBlock13Block57Stack1) structureNodes.
            recoveredBlock13Block57PC := 84.
        ].
        recoveredBlock13Block57Step = 84 ifTrue: [
            recoveredBlock13Block57Stack2 := [:recoveredBlock13Block57Block84Arg1 | 
    | recoveredBlock13Block57Block84Value0 recoveredBlock13Block57Block84Value1 recoveredBlock13Block57Block84Value2 recoveredBlock13Block57Block84Value3 |
    recoveredBlock13Block57Block84Value0 := recoveredBlock13Block57Block84Arg1.
    recoveredBlock13Block57Block84Value1 := (recoveredBlock13Block57Block84Value0) nodeLabel.
    recoveredBlock13Block57Block84Value2 := recoveredBlock13Block57Arg1.
    recoveredBlock13Block57Block84Value3 := (recoveredBlock13Block57Block84Value1) = (recoveredBlock13Block57Block84Value2).
    recoveredBlock13Block57Block84Value3
].
            recoveredBlock13Block57PC := 98.
        ].
        recoveredBlock13Block57Step = 98 ifTrue: [
            recoveredBlock13Block57Stack3 := [
    | recoveredBlock13Block57Block98Value0 recoveredBlock13Block57Block98Value1 recoveredBlock13Block57Block98Value2 recoveredBlock13Block57Block98Value3 recoveredBlock13Block57Block98Value4 recoveredBlock13Block57Block98Value5 recoveredBlock13Block57Block98Value6 recoveredBlock13Block57Block98Value7 recoveredBlock13Block57Block98Value8 recoveredBlock13Block57Block98Value9 recoveredBlock13Block57Block98Value10 recoveredBlock13Block57Block98Value11 recoveredBlock13Block57Block98Value12 |
    recoveredBlock13Block57Block98Value0 := recoveredLocal2.
    recoveredBlock13Block57Block98Value1 := (recoveredBlock13Block57Block98Value0) structureNodes.
    recoveredBlock13Block57Block98Value2 := recoveredBlock13Block57Arg1.
    recoveredBlock13Block57Block98Value3 := (self) newStructureNode: (recoveredBlock13Block57Block98Value2).
    recoveredBlock13Block57Block98Value4 := (recoveredBlock13Block57Block98Value1) add: (recoveredBlock13Block57Block98Value3).
    recoveredLocal2 := recoveredBlock13Block57Block98Value4.
    recoveredBlock13Block57Block98Value5 := recoveredLocal2.
    recoveredBlock13Block57Block98Value6 := recoveredLocal1.
    recoveredBlock13Block57Block98Value7 := (recoveredBlock13Block57Block98Value6) nodeDescriptionPath.
    recoveredBlock13Block57Block98Value8 := (recoveredBlock13Block57Block98Value7) , ('\').
    recoveredBlock13Block57Block98Value9 := recoveredLocal2.
    recoveredBlock13Block57Block98Value10 := (recoveredBlock13Block57Block98Value9) nodeLabel.
    recoveredBlock13Block57Block98Value11 := (recoveredBlock13Block57Block98Value8) , (recoveredBlock13Block57Block98Value10).
    (recoveredBlock13Block57Block98Value5) nodeDescriptionPath: (recoveredBlock13Block57Block98Value11).
    recoveredBlock13Block57Block98Value12 := recoveredLocal2.
    recoveredBlock13Block57Block98Value12
].
            recoveredBlock13Block57PC := 145.
        ].
        recoveredBlock13Block57Step = 145 ifTrue: [
            recoveredBlock13Block57Stack1 := (recoveredBlock13Block57Stack1) detect: (recoveredBlock13Block57Stack2) ifNone: (recoveredBlock13Block57Stack3).
            recoveredBlock13Block57PC := 147.
        ].
        recoveredBlock13Block57Step = 147 ifTrue: [
            recoveredLocal2 := recoveredBlock13Block57Stack1.
            recoveredBlock13Block57PC := 150.
        ].
        recoveredBlock13Block57Step = 150 ifTrue: [
            recoveredBlock13Block57Stack1 := recoveredLocal2.
            recoveredBlock13Block57PC := 153.
        ].
        recoveredBlock13Block57Step = 153 ifTrue: [
            recoveredBlock13Block57Stack2 := recoveredBlock13Block57Stack1.
            recoveredBlock13Block57PC := 154.
        ].
        recoveredBlock13Block57Step = 154 ifTrue: [
            recoveredLocal1 := recoveredBlock13Block57Stack2.
            recoveredBlock13Block57PC := 157.
        ].
        recoveredBlock13Block57Step = 157 ifTrue: [
            recoveredBlock13Block57Result := recoveredBlock13Block57Stack1.
            recoveredBlock13Block57Done := true.
        ].
    ].
    recoveredBlock13Block57Result
].
            recoveredBlock13PC := 158.
        ].
        recoveredBlock13Step = 158 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 160.
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 161.
        ].
        recoveredBlock13Step = 161 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 162.
        ].
        recoveredBlock13Step = 162 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 164.
        ].
        recoveredBlock13Step = 164 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) optionClass.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) matchesFilter: (recoveredBlock13Stack3).
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 170] ifFalse: [recoveredBlock13PC := 211].
        ].
        recoveredBlock13Step = 170 ifTrue: [
            recoveredBlock13PC := 171.
        ].
        recoveredBlock13Step = 171 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 172.
        ].
        recoveredBlock13Step = 172 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 174.
        ].
        recoveredBlock13Step = 174 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 176.
        ].
        recoveredBlock13Step = 176 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) newOptionNode: (recoveredBlock13Stack2) option: (recoveredBlock13Stack3).
            recoveredBlock13PC := 178.
        ].
        recoveredBlock13Step = 178 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 179.
        ].
        recoveredBlock13Step = 179 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 180.
        ].
        recoveredBlock13Step = 180 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 183.
        ].
        recoveredBlock13Step = 183 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) nodeDescriptionPath.
            recoveredBlock13PC := 185.
        ].
        recoveredBlock13Step = 185 ifTrue: [
            recoveredBlock13Stack3 := '\'.
            recoveredBlock13PC := 187.
        ].
        recoveredBlock13Step = 187 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 189.
        ].
        recoveredBlock13Step = 189 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 191.
        ].
        recoveredBlock13Step = 191 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) optionClass.
            recoveredBlock13PC := 192.
        ].
        recoveredBlock13Step = 192 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) group.
            recoveredBlock13PC := 193.
        ].
        recoveredBlock13Step = 193 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 195.
        ].
        recoveredBlock13Step = 195 ifTrue: [
            (recoveredBlock13Stack1) nodeDescriptionPath: (recoveredBlock13Stack2).
            recoveredBlock13PC := 197.
        ].
        recoveredBlock13Step = 197 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 200.
        ].
        recoveredBlock13Step = 200 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) optionNodes.
            recoveredBlock13PC := 202.
        ].
        recoveredBlock13Step = 202 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 203.
        ].
        recoveredBlock13Step = 203 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 205.
        ].
        recoveredBlock13Step = 205 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 206.
        ].
        recoveredBlock13Step = 206 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 209.
        ].
        recoveredBlock13Step = 209 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 210.
        ].
        recoveredBlock13Step = 210 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 211.
        ].
        recoveredBlock13Step = 211 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal3.
    optionTree := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := (self) deleteEmptyChildren: (recoveredValue4).
    optionTree := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x205670c8; bytecode file offset 0xe639f0"
!EtasOptionDialog methodsFor: 'recovered'!
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
            recoveredStack1 := [:block28111220Arg1 | 
    | block28111220Value0 block28111220Value1 |
    block28111220Value0 := block28111220Arg1.
    block28111220Value1 := (block28111220Value0) optionClass.
    block28111220Value1
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
            recoveredStack1 := [:block28111244Arg1 | 
    | block28111244Value0 block28111244Value1 block28111244Value2 |
    block28111244Value0 := block28111244Arg1.
    block28111244Value1 := (block28111244Value0) optionClass.
    block28111244Value2 := (block28111244Value1) isContainerOption.
    block28111244Value2
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
            recoveredBlock60Stack3 := [:block28111268Arg1 | 
    | block28111268Value0 block28111268Value1 |
    block28111268Value0 := block28111268Arg1.
    block28111268Value1 := (block28111268Value0) optionClass.
    block28111268Value1
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
    | recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
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
            recoveredBlock108Stack1 := [:block2811128cArg1 | 
    | block2811128cStack0 block2811128cStack1 block2811128cStack2 block2811128cStack3 block2811128cPC block2811128cStep block2811128cDone block2811128cResult |
    block2811128cStack0 := self.
    block2811128cPC := 4.
    block2811128cDone := false.
    [block2811128cDone not] whileTrue: [
        block2811128cStep := block2811128cPC.
        block2811128cStep = 4 ifTrue: [
            block2811128cStack1 := block2811128cArg1.
            block2811128cPC := 5.
        ].
        block2811128cStep = 5 ifTrue: [
            block2811128cStack1 := (block2811128cStack1) optionClass.
            block2811128cPC := 7.
        ].
        block2811128cStep = 7 ifTrue: [
            (block2811128cStack1) updateOptionWidget.
            block2811128cPC := 9.
        ].
        block2811128cStep = 9 ifTrue: [
            block2811128cStack1 := nil.
            block2811128cPC := 10.
        ].
        block2811128cStep = 10 ifTrue: [
            block2811128cStack2 := block2811128cArg1.
            block2811128cPC := 11.
        ].
        block2811128cStep = 11 ifTrue: [
            block2811128cStack2 := (block2811128cStack2) optionClass.
            block2811128cPC := 13.
        ].
        block2811128cStep = 13 ifTrue: [
            block2811128cStack2 := (block2811128cStack2) isContainerOption.
            block2811128cPC := 15.
        ].
        block2811128cStep = 15 ifTrue: [
            (block2811128cStack2) ifTrue: [block2811128cPC := 18] ifFalse: [block2811128cPC := 36].
        ].
        block2811128cStep = 18 ifTrue: [
            block2811128cPC := 19.
        ].
        block2811128cStep = 19 ifTrue: [
            block2811128cStack1 := block2811128cArg1.
            block2811128cPC := 20.
        ].
        block2811128cStep = 20 ifTrue: [
            block2811128cStack1 := (block2811128cStack1) optionClass.
            block2811128cPC := 22.
        ].
        block2811128cStep = 22 ifTrue: [
            block2811128cStack1 := (block2811128cStack1) options.
            block2811128cPC := 23.
        ].
        block2811128cStep = 23 ifTrue: [
            block2811128cStack2 := [:block281112b0Arg1 | 
    | block281112b0Value0 block281112b0Value1 block281112b0Value2 |
    block281112b0Value0 := block281112b0Arg1.
    block281112b0Value1 := (block281112b0Value0) optionClass.
    block281112b0Value2 := (block281112b0Value1) updateOptionWidget.
    block281112b0Value2
].
            block2811128cPC := 25.
        ].
        block2811128cStep = 25 ifTrue: [
            block2811128cPC := 34.
        ].
        block2811128cStep = 34 ifTrue: [
            block2811128cStack1 := (block2811128cStack1) do: (block2811128cStack2).
            block2811128cPC := 36.
        ].
        block2811128cStep = 36 ifTrue: [
            block2811128cResult := block2811128cStack1.
            block2811128cDone := true.
        ].
    ].
    block2811128cResult
].
            recoveredBlock108PC := 117.
        ].
        recoveredBlock108Step = 117 ifTrue: [
            recoveredBlock108PC := 153.
        ].
        recoveredBlock108Step = 153 ifTrue: [
            (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Stack0 := recoveredArg1.
            recoveredBlock108PC := 158.
        ].
        recoveredBlock108Step = 158 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) optionClass.
            recoveredBlock108PC := 160.
        ].
        recoveredBlock108Step = 160 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) group.
            recoveredBlock108PC := 162.
        ].
        recoveredBlock108Step = 162 ifTrue: [
            recoveredBlock108Stack1 := '\'.
            recoveredBlock108PC := 164.
        ].
        recoveredBlock108Step = 164 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) asArrayOfSubstringsSeparatedBy: (recoveredBlock108Stack1).
            recoveredBlock108PC := 166.
        ].
        recoveredBlock108Step = 166 ifTrue: [
            recoveredBlock108Stack1 := [:recoveredBlock108Block166Arg1 | 
    | recoveredBlock108Block166Local1 recoveredBlock108Block166Local2 recoveredBlock108Block166Stack0 recoveredBlock108Block166Stack1 recoveredBlock108Block166Stack2 recoveredBlock108Block166Stack3 recoveredBlock108Block166Stack4 recoveredBlock108Block166PC recoveredBlock108Block166Step recoveredBlock108Block166Done recoveredBlock108Block166Result |
    recoveredBlock108Block166Stack0 := self.
    recoveredBlock108Block166PC := 172.
    recoveredBlock108Block166Done := false.
    [recoveredBlock108Block166Done not] whileTrue: [
        recoveredBlock108Block166Step := recoveredBlock108Block166PC.
        recoveredBlock108Block166Step = 172 ifTrue: [
            recoveredBlock108Block166Stack1 := 0.
            recoveredBlock108Block166PC := 174.
        ].
        recoveredBlock108Block166Step = 174 ifTrue: [
            recoveredBlock108Block166Local2 := recoveredBlock108Block166Stack1.
            recoveredBlock108Block166PC := 175.
        ].
        recoveredBlock108Block166Step = 175 ifTrue: [
            recoveredBlock108Block166Stack0 := (recoveredBlock108Block166Stack0) widgetOptionsTree.
            recoveredBlock108Block166PC := 177.
        ].
        recoveredBlock108Block166Step = 177 ifTrue: [
            recoveredBlock108Block166Stack0 := (recoveredBlock108Block166Stack0) itemCount.
            recoveredBlock108Block166PC := 179.
        ].
        recoveredBlock108Block166Step = 179 ifTrue: [
            recoveredBlock108Block166PC := 206.
        ].
        recoveredBlock108Block166Step = 182 ifTrue: [
            recoveredBlock108Block166Stack1 := self.
            recoveredBlock108Block166PC := 183.
        ].
        recoveredBlock108Block166Step = 183 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) widgetOptionsTree.
            recoveredBlock108Block166PC := 185.
        ].
        recoveredBlock108Block166Step = 185 ifTrue: [
            recoveredBlock108Block166Stack2 := recoveredBlock108Block166Local2.
            recoveredBlock108Block166PC := 186.
        ].
        recoveredBlock108Block166Step = 186 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) itemAt: (recoveredBlock108Block166Stack2).
            recoveredBlock108Block166PC := 188.
        ].
        recoveredBlock108Block166Step = 188 ifTrue: [
            recoveredBlock108Block166Stack2 := recoveredBlock108Block166Stack1.
            recoveredBlock108Block166PC := 189.
        ].
        recoveredBlock108Block166Step = 189 ifTrue: [
            recoveredBlock108Block166Local1 := recoveredBlock108Block166Stack2.
            recoveredBlock108Block166PC := 190.
        ].
        recoveredBlock108Block166Step = 190 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) nodeLabel.
            recoveredBlock108Block166PC := 192.
        ].
        recoveredBlock108Block166Step = 192 ifTrue: [
            recoveredBlock108Block166Stack2 := recoveredBlock108Block166Arg1.
            recoveredBlock108Block166PC := 193.
        ].
        recoveredBlock108Block166Step = 193 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) equals: (recoveredBlock108Block166Stack2).
            recoveredBlock108Block166PC := 195.
        ].
        recoveredBlock108Block166Step = 195 ifTrue: [
            (recoveredBlock108Block166Stack1) ifTrue: [recoveredBlock108Block166PC := 198] ifFalse: [recoveredBlock108Block166PC := 204].
        ].
        recoveredBlock108Block166Step = 198 ifTrue: [
            recoveredBlock108Block166Stack1 := self.
            recoveredBlock108Block166PC := 199.
        ].
        recoveredBlock108Block166Step = 199 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) widgetOptionsTree.
            recoveredBlock108Block166PC := 201.
        ].
        recoveredBlock108Block166Step = 201 ifTrue: [
            recoveredBlock108Block166Stack2 := recoveredBlock108Block166Local1.
            recoveredBlock108Block166PC := 202.
        ].
        recoveredBlock108Block166Step = 202 ifTrue: [
            (recoveredBlock108Block166Stack1) refreshItem: (recoveredBlock108Block166Stack2).
            recoveredBlock108Block166PC := 204.
        ].
        recoveredBlock108Block166Step = 204 ifTrue: [
            recoveredBlock108Block166Stack1 := nil.
            recoveredBlock108Block166PC := 205.
        ].
        recoveredBlock108Block166Step = 205 ifTrue: [
            recoveredBlock108Block166Local1 := recoveredBlock108Block166Stack1.
            recoveredBlock108Block166PC := 206.
        ].
        recoveredBlock108Block166Step = 206 ifTrue: [
            (recoveredBlock108Block166Stack0 isInteger and: [recoveredBlock108Block166Local2 isInteger]) ifTrue: [(recoveredBlock108Block166Local2 + 1 <= recoveredBlock108Block166Stack0) ifTrue: [recoveredBlock108Block166Local2 := recoveredBlock108Block166Local2 + 1. recoveredBlock108Block166PC := 182] ifFalse: [recoveredBlock108Block166Local2 := nil. recoveredBlock108Block166PC := 220]] ifFalse: [recoveredBlock108Block166PC := 210].
        ].
        recoveredBlock108Block166Step = 210 ifTrue: [
            recoveredBlock108Block166Stack1 := recoveredBlock108Block166Stack0.
            recoveredBlock108Block166PC := 211.
        ].
        recoveredBlock108Block166Step = 211 ifTrue: [
            recoveredBlock108Block166Stack2 := recoveredBlock108Block166Local2.
            recoveredBlock108Block166PC := 212.
        ].
        recoveredBlock108Block166Step = 212 ifTrue: [
            recoveredBlock108Block166Stack2 := (recoveredBlock108Block166Stack2) + (1).
            recoveredBlock108Block166PC := 213.
        ].
        recoveredBlock108Block166Step = 213 ifTrue: [
            recoveredBlock108Block166Stack3 := recoveredBlock108Block166Stack2.
            recoveredBlock108Block166PC := 214.
        ].
        recoveredBlock108Block166Step = 214 ifTrue: [
            recoveredBlock108Block166Local2 := recoveredBlock108Block166Stack3.
            recoveredBlock108Block166PC := 215.
        ].
        recoveredBlock108Block166Step = 215 ifTrue: [
            recoveredBlock108Block166Stack1 := (recoveredBlock108Block166Stack1) < (recoveredBlock108Block166Stack2).
            recoveredBlock108Block166PC := 216.
        ].
        recoveredBlock108Block166Step = 216 ifTrue: [
            (recoveredBlock108Block166Stack1) ifTrue: [recoveredBlock108Block166PC := 218] ifFalse: [recoveredBlock108Block166PC := 182].
        ].
        recoveredBlock108Block166Step = 218 ifTrue: [
            recoveredBlock108Block166Stack1 := nil.
            recoveredBlock108Block166PC := 219.
        ].
        recoveredBlock108Block166Step = 219 ifTrue: [
            recoveredBlock108Block166Local2 := recoveredBlock108Block166Stack1.
            recoveredBlock108Block166PC := 220.
        ].
        recoveredBlock108Block166Step = 220 ifTrue: [
            recoveredBlock108Block166Result := recoveredBlock108Block166Stack0.
            recoveredBlock108Block166Done := true.
        ].
    ].
    recoveredBlock108Block166Result
].
            recoveredBlock108PC := 221.
        ].
        recoveredBlock108Step = 221 ifTrue: [
            (recoveredBlock108Stack0) do: (recoveredBlock108Stack1).
            recoveredBlock108PC := 223.
        ].
        recoveredBlock108Step = 223 ifTrue: [
            recoveredBlock108Stack0 := self.
            recoveredBlock108PC := 224.
        ].
        recoveredBlock108Step = 224 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) widgetOptionsTree.
            recoveredBlock108PC := 226.
        ].
        recoveredBlock108Step = 226 ifTrue: [
            recoveredBlock108Stack1 := self.
            recoveredBlock108PC := 227.
        ].
        recoveredBlock108Step = 227 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) widgetOptionsTree.
            recoveredBlock108PC := 229.
        ].
        recoveredBlock108Step = 229 ifTrue: [
            recoveredBlock108Stack2 := 1.
            recoveredBlock108PC := 231.
        ].
        recoveredBlock108Step = 231 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) itemAt: (recoveredBlock108Stack2).
            recoveredBlock108PC := 233.
        ].
        recoveredBlock108Step = 233 ifTrue: [
            recoveredBlock108Stack0 := (recoveredBlock108Stack0) refreshItem: (recoveredBlock108Stack1).
            recoveredBlock108PC := 235.
        ].
        recoveredBlock108Step = 235 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack0.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058b310; bytecode file offset 0xe87c5c"
!EtasOptionDialog methodsFor: 'recovered'!
createHyperlink: recoveredArg1 inForm: recoveredArg2 topWidget: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) structureNodes.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionNodes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [:block28114334Arg1 | 
    | block28114334Value0 block28114334Value1 |
    block28114334Value0 := block28114334Arg1.
    block28114334Value1 := block28114334Value0.
    (block28114334Value1) height: (23).
    block28114334Value0
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:block28114358Arg1 | 
    | block28114358Value0 block28114358Value1 block28114358Value2 block28114358Value3 block28114358Value4 block28114358Value5 block28114358Value6 block28114358Value7 block28114358Value8 block28114358Value9 |
    block28114358Value0 := block28114358Arg1.
    block28114358Value1 := block28114358Value0.
    block28114358Value2 := XmATTACHFORM.
    (block28114358Value1) topAttachment: (block28114358Value2).
    block28114358Value3 := block28114358Value0.
    (block28114358Value3) topOffset: (5).
    block28114358Value4 := block28114358Value0.
    block28114358Value5 := XmATTACHFORM.
    (block28114358Value4) leftAttachment: (block28114358Value5).
    block28114358Value6 := block28114358Value0.
    (block28114358Value6) leftOffset: (5).
    block28114358Value7 := block28114358Value0.
    block28114358Value8 := XmATTACHFORM.
    (block28114358Value7) rightAttachment: (block28114358Value8).
    block28114358Value9 := (block28114358Value0) rightOffset: (5).
    block28114358Value9
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 recoveredBlock101Value4 recoveredBlock101Value5 recoveredBlock101Value6 recoveredBlock101Value7 recoveredBlock101Value8 recoveredBlock101Value9 recoveredBlock101Value10 recoveredBlock101Value11 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredBlock101Value0.
    recoveredBlock101Value2 := XmATTACHWIDGET.
    (recoveredBlock101Value1) topAttachment: (recoveredBlock101Value2).
    recoveredBlock101Value3 := recoveredBlock101Value0.
    recoveredBlock101Value4 := recoveredArg3.
    (recoveredBlock101Value3) topWidget: (recoveredBlock101Value4).
    recoveredBlock101Value5 := recoveredBlock101Value0.
    (recoveredBlock101Value5) topOffset: (5).
    recoveredBlock101Value6 := recoveredBlock101Value0.
    recoveredBlock101Value7 := XmATTACHFORM.
    (recoveredBlock101Value6) leftAttachment: (recoveredBlock101Value7).
    recoveredBlock101Value8 := recoveredBlock101Value0.
    (recoveredBlock101Value8) leftOffset: (5).
    recoveredBlock101Value9 := recoveredBlock101Value0.
    recoveredBlock101Value10 := XmATTACHFORM.
    (recoveredBlock101Value9) rightAttachment: (recoveredBlock101Value10).
    recoveredBlock101Value11 := (recoveredBlock101Value0) rightOffset: (5).
    recoveredBlock101Value11
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodeLabel.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := [:recoveredBlock155Arg1 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 recoveredBlock155Value4 recoveredBlock155Value5 recoveredBlock155Value6 recoveredBlock155Value7 recoveredBlock155Value8 recoveredBlock155Value9 recoveredBlock155Value10 recoveredBlock155Value11 recoveredBlock155Value12 recoveredBlock155Value13 recoveredBlock155Value14 recoveredBlock155Value15 recoveredBlock155Value16 recoveredBlock155Value17 recoveredBlock155Value18 recoveredBlock155Value19 |
    recoveredBlock155Value0 := recoveredBlock155Arg1.
    recoveredBlock155Value1 := recoveredBlock155Value0.
    recoveredBlock155Value2 := recoveredArg1.
    recoveredBlock155Value3 := (recoveredBlock155Value2) nodeLabel.
    recoveredBlock155Value4 := ('Edit options for ') , (recoveredBlock155Value3).
    (recoveredBlock155Value1) labelString: (recoveredBlock155Value4).
    recoveredBlock155Value5 := recoveredBlock155Value0.
    recoveredBlock155Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock155Value5) alignment: (recoveredBlock155Value6).
    recoveredBlock155Value7 := recoveredBlock155Value0.
    recoveredBlock155Value8 := CgRGBColor.
    recoveredBlock155Value9 := (recoveredBlock155Value8) blue.
    (recoveredBlock155Value7) foregroundColor: (recoveredBlock155Value9).
    recoveredBlock155Value10 := recoveredBlock155Value0.
    (recoveredBlock155Value10) width: (200).
    recoveredBlock155Value11 := recoveredBlock155Value0.
    (recoveredBlock155Value11) height: (24).
    recoveredBlock155Value12 := recoveredBlock155Value0.
    recoveredBlock155Value13 := XmATTACHFORM.
    (recoveredBlock155Value12) topAttachment: (recoveredBlock155Value13).
    recoveredBlock155Value14 := recoveredBlock155Value0.
    recoveredBlock155Value15 := XmATTACHFORM.
    (recoveredBlock155Value14) bottomAttachment: (recoveredBlock155Value15).
    recoveredBlock155Value16 := recoveredBlock155Value0.
    recoveredBlock155Value17 := XmATTACHFORM.
    (recoveredBlock155Value16) leftAttachment: (recoveredBlock155Value17).
    recoveredBlock155Value18 := XmATTACHFORM.
    recoveredBlock155Value19 := (recoveredBlock155Value0) rightAttachment: (recoveredBlock155Value18).
    recoveredBlock155Value19
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := 'Edit options for '.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) nodeLabel.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := PointerMotionMask.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := 'mouseMoved:clientData:callData:'.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := ButtonPressMask.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := 'mousePressed:clientData:callData:'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205aeab8; bytecode file offset 0xeab410"
!EtasOptionDialog methodsFor: 'recovered'!
createOptionWidgetsForSingleNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) shell.
    recoveredBlock6Value1 := [
    | recoveredBlock6Block13Local1 recoveredBlock6Block13Stack0 recoveredBlock6Block13Stack1 recoveredBlock6Block13Stack2 recoveredBlock6Block13Stack3 recoveredBlock6Block13Stack4 recoveredBlock6Block13PC recoveredBlock6Block13Step recoveredBlock6Block13Done recoveredBlock6Block13Result |
    recoveredBlock6Block13Stack0 := self.
    recoveredBlock6Block13PC := 20.
    recoveredBlock6Block13Done := false.
    [recoveredBlock6Block13Done not] whileTrue: [
        recoveredBlock6Block13Step := recoveredBlock6Block13PC.
        recoveredBlock6Block13Step = 20 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 23.
        ].
        recoveredBlock6Block13Step = 23 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) nodeForm.
            recoveredBlock6Block13PC := 24.
        ].
        recoveredBlock6Block13Step = 24 ifTrue: [
            recoveredBlock6Block13Stack2 := recoveredBlock6Block13Stack1.
            recoveredBlock6Block13PC := 25.
        ].
        recoveredBlock6Block13Step = 25 ifTrue: [
            recoveredLocal2 := recoveredBlock6Block13Stack2.
            recoveredBlock6Block13PC := 28.
        ].
        recoveredBlock6Block13Step = 28 ifTrue: [
            (recoveredBlock6Block13Stack1 ~~ nil) ifTrue: [recoveredBlock6Block13PC := 163] ifFalse: [recoveredBlock6Block13PC := 32].
        ].
        recoveredBlock6Block13Step = 32 ifTrue: [
            recoveredBlock6Block13Stack1 := self.
            recoveredBlock6Block13PC := 33.
        ].
        recoveredBlock6Block13Step = 33 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) widgetOptionsArea.
            recoveredBlock6Block13PC := 34.
        ].
        recoveredBlock6Block13Step = 34 ifTrue: [
            recoveredBlock6Block13Stack2 := 'optionsForm'.
            recoveredBlock6Block13PC := 36.
        ].
        recoveredBlock6Block13Step = 36 ifTrue: [
            recoveredBlock6Block13Stack3 := recoveredArg1.
            recoveredBlock6Block13PC := 39.
        ].
        recoveredBlock6Block13Step = 39 ifTrue: [
            recoveredBlock6Block13Stack3 := (recoveredBlock6Block13Stack3) nodeLabel.
            recoveredBlock6Block13PC := 41.
        ].
        recoveredBlock6Block13Step = 41 ifTrue: [
            recoveredBlock6Block13Stack2 := (recoveredBlock6Block13Stack2) , (recoveredBlock6Block13Stack3).
            recoveredBlock6Block13PC := 43.
        ].
        recoveredBlock6Block13Step = 43 ifTrue: [
            recoveredBlock6Block13Stack3 := nil.
            recoveredBlock6Block13PC := 44.
        ].
        recoveredBlock6Block13Step = 44 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) createForm: (recoveredBlock6Block13Stack2) argBlock: (recoveredBlock6Block13Stack3).
            recoveredBlock6Block13PC := 46.
        ].
        recoveredBlock6Block13Step = 46 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) unmanageChild.
            recoveredBlock6Block13PC := 48.
        ].
        recoveredBlock6Block13Step = 48 ifTrue: [
            recoveredLocal2 := recoveredBlock6Block13Stack1.
            recoveredBlock6Block13PC := 51.
        ].
        recoveredBlock6Block13Step = 51 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 54.
        ].
        recoveredBlock6Block13Step = 54 ifTrue: [
            recoveredBlock6Block13Stack2 := recoveredLocal2.
            recoveredBlock6Block13PC := 57.
        ].
        recoveredBlock6Block13Step = 57 ifTrue: [
            (recoveredBlock6Block13Stack1) nodeForm: (recoveredBlock6Block13Stack2).
            recoveredBlock6Block13PC := 59.
        ].
        recoveredBlock6Block13Step = 59 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 62.
        ].
        recoveredBlock6Block13Step = 62 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) optionNodes.
            recoveredBlock6Block13PC := 64.
        ].
        recoveredBlock6Block13Step = 64 ifTrue: [
            recoveredBlock6Block13Stack2 := [:recoveredBlock6Block13Block64Arg1 | 
    | recoveredBlock6Block13Block64Stack0 recoveredBlock6Block13Block64Stack1 recoveredBlock6Block13Block64Stack2 recoveredBlock6Block13Block64Stack3 recoveredBlock6Block13Block64Stack4 recoveredBlock6Block13Block64Stack5 recoveredBlock6Block13Block64PC recoveredBlock6Block13Block64Step recoveredBlock6Block13Block64Done recoveredBlock6Block13Block64Result |
    recoveredBlock6Block13Block64Stack0 := self.
    recoveredBlock6Block13Block64PC := 70.
    recoveredBlock6Block13Block64Done := false.
    [recoveredBlock6Block13Block64Done not] whileTrue: [
        recoveredBlock6Block13Block64Step := recoveredBlock6Block13Block64PC.
        recoveredBlock6Block13Block64Step = 70 ifTrue: [
            recoveredBlock6Block13Block64Stack1 := nil.
            recoveredBlock6Block13Block64PC := 71.
        ].
        recoveredBlock6Block13Block64Step = 71 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := recoveredBlock6Block13Block64Arg1.
            recoveredBlock6Block13Block64PC := 72.
        ].
        recoveredBlock6Block13Block64Step = 72 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) option.
            recoveredBlock6Block13Block64PC := 74.
        ].
        recoveredBlock6Block13Block64Step = 74 ifTrue: [
            (recoveredBlock6Block13Block64Stack2 == nil) ifTrue: [recoveredBlock6Block13Block64PC := 122] ifFalse: [recoveredBlock6Block13Block64PC := 78].
        ].
        recoveredBlock6Block13Block64Step = 78 ifTrue: [
            recoveredBlock6Block13Block64PC := 79.
        ].
        recoveredBlock6Block13Block64Step = 79 ifTrue: [
            recoveredBlock6Block13Block64Stack1 := nil.
            recoveredBlock6Block13Block64PC := 80.
        ].
        recoveredBlock6Block13Block64Step = 80 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := recoveredBlock6Block13Block64Arg1.
            recoveredBlock6Block13Block64PC := 81.
        ].
        recoveredBlock6Block13Block64Step = 81 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) option.
            recoveredBlock6Block13Block64PC := 83.
        ].
        recoveredBlock6Block13Block64Step = 83 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) optionClass.
            recoveredBlock6Block13Block64PC := 85.
        ].
        recoveredBlock6Block13Block64Step = 85 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) visible.
            recoveredBlock6Block13Block64PC := 87.
        ].
        recoveredBlock6Block13Block64Step = 87 ifTrue: [
            (recoveredBlock6Block13Block64Stack2) ifTrue: [recoveredBlock6Block13Block64PC := 90] ifFalse: [recoveredBlock6Block13Block64PC := 122].
        ].
        recoveredBlock6Block13Block64Step = 90 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := self.
            recoveredBlock6Block13Block64PC := 91.
        ].
        recoveredBlock6Block13Block64Step = 91 ifTrue: [
            recoveredBlock6Block13Block64Stack3 := recoveredBlock6Block13Block64Arg1.
            recoveredBlock6Block13Block64PC := 92.
        ].
        recoveredBlock6Block13Block64Step = 92 ifTrue: [
            recoveredBlock6Block13Block64Stack3 := (recoveredBlock6Block13Block64Stack3) option.
            recoveredBlock6Block13Block64PC := 94.
        ].
        recoveredBlock6Block13Block64Step = 94 ifTrue: [
            recoveredBlock6Block13Block64Stack3 := (recoveredBlock6Block13Block64Stack3) optionClass.
            recoveredBlock6Block13Block64PC := 96.
        ].
        recoveredBlock6Block13Block64Step = 96 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) matchesFilter: (recoveredBlock6Block13Block64Stack3).
            recoveredBlock6Block13Block64PC := 98.
        ].
        recoveredBlock6Block13Block64Step = 98 ifTrue: [
            (recoveredBlock6Block13Block64Stack2) ifTrue: [recoveredBlock6Block13Block64PC := 102] ifFalse: [recoveredBlock6Block13Block64PC := 122].
        ].
        recoveredBlock6Block13Block64Step = 102 ifTrue: [
            recoveredBlock6Block13Block64PC := 103.
        ].
        recoveredBlock6Block13Block64Step = 103 ifTrue: [
            recoveredBlock6Block13Block64Stack1 := self.
            recoveredBlock6Block13Block64PC := 104.
        ].
        recoveredBlock6Block13Block64Step = 104 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := recoveredBlock6Block13Block64Arg1.
            recoveredBlock6Block13Block64PC := 105.
        ].
        recoveredBlock6Block13Block64Step = 105 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) option.
            recoveredBlock6Block13Block64PC := 107.
        ].
        recoveredBlock6Block13Block64Step = 107 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := (recoveredBlock6Block13Block64Stack2) optionClass.
            recoveredBlock6Block13Block64PC := 109.
        ].
        recoveredBlock6Block13Block64Step = 109 ifTrue: [
            recoveredBlock6Block13Block64Stack3 := recoveredLocal2.
            recoveredBlock6Block13Block64PC := 112.
        ].
        recoveredBlock6Block13Block64Step = 112 ifTrue: [
            recoveredBlock6Block13Block64Stack4 := recoveredLocal1.
            recoveredBlock6Block13Block64PC := 115.
        ].
        recoveredBlock6Block13Block64Step = 115 ifTrue: [
            recoveredBlock6Block13Block64Stack1 := (recoveredBlock6Block13Block64Stack1) createOption: (recoveredBlock6Block13Block64Stack2) inForm: (recoveredBlock6Block13Block64Stack3) topWidget: (recoveredBlock6Block13Block64Stack4).
            recoveredBlock6Block13Block64PC := 118.
        ].
        recoveredBlock6Block13Block64Step = 118 ifTrue: [
            recoveredBlock6Block13Block64Stack2 := recoveredBlock6Block13Block64Stack1.
            recoveredBlock6Block13Block64PC := 119.
        ].
        recoveredBlock6Block13Block64Step = 119 ifTrue: [
            recoveredLocal1 := recoveredBlock6Block13Block64Stack2.
            recoveredBlock6Block13Block64PC := 122.
        ].
        recoveredBlock6Block13Block64Step = 122 ifTrue: [
            recoveredBlock6Block13Block64Result := recoveredBlock6Block13Block64Stack1.
            recoveredBlock6Block13Block64Done := true.
        ].
    ].
    recoveredBlock6Block13Block64Result
].
            recoveredBlock6Block13PC := 123.
        ].
        recoveredBlock6Block13Step = 123 ifTrue: [
            (recoveredBlock6Block13Stack1) do: (recoveredBlock6Block13Stack2).
            recoveredBlock6Block13PC := 125.
        ].
        recoveredBlock6Block13Step = 125 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredLocal1.
            recoveredBlock6Block13PC := 128.
        ].
        recoveredBlock6Block13Step = 128 ifTrue: [
            (recoveredBlock6Block13Stack1 ~~ nil) ifTrue: [recoveredBlock6Block13PC := 163] ifFalse: [recoveredBlock6Block13PC := 132].
        ].
        recoveredBlock6Block13Step = 132 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 135.
        ].
        recoveredBlock6Block13Step = 135 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) structureNodes.
            recoveredBlock6Block13PC := 137.
        ].
        recoveredBlock6Block13Step = 137 ifTrue: [
            recoveredBlock6Block13Stack2 := [:recoveredBlock6Block13Block137Arg1 | 
    | recoveredBlock6Block13Block137Value0 recoveredBlock6Block13Block137Value1 recoveredBlock6Block13Block137Value2 recoveredBlock6Block13Block137Value3 recoveredBlock6Block13Block137Value4 |
    recoveredBlock6Block13Block137Value0 := recoveredBlock6Block13Block137Arg1.
    recoveredBlock6Block13Block137Value1 := recoveredLocal2.
    recoveredBlock6Block13Block137Value2 := recoveredLocal1.
    recoveredBlock6Block13Block137Value3 := (self) createHyperlink: (recoveredBlock6Block13Block137Value0) inForm: (recoveredBlock6Block13Block137Value1) topWidget: (recoveredBlock6Block13Block137Value2).
    recoveredBlock6Block13Block137Value4 := recoveredBlock6Block13Block137Value3.
    recoveredLocal1 := recoveredBlock6Block13Block137Value4.
    recoveredBlock6Block13Block137Value3
].
            recoveredBlock6Block13PC := 159.
        ].
        recoveredBlock6Block13Step = 159 ifTrue: [
            (recoveredBlock6Block13Stack1) do: (recoveredBlock6Block13Stack2).
            recoveredBlock6Block13PC := 161.
        ].
        recoveredBlock6Block13Step = 161 ifTrue: [
            recoveredBlock6Block13Stack1 := nil.
            recoveredBlock6Block13PC := 162.
        ].
        recoveredBlock6Block13Step = 162 ifTrue: [
            recoveredBlock6Block13Local1 := recoveredBlock6Block13Stack1.
            recoveredBlock6Block13PC := 163.
        ].
        recoveredBlock6Block13Step = 163 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 166.
        ].
        recoveredBlock6Block13Step = 166 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) nodeForm.
            recoveredBlock6Block13PC := 167.
        ].
        recoveredBlock6Block13Step = 167 ifTrue: [
            (recoveredBlock6Block13Stack1) updateFonts.
            recoveredBlock6Block13PC := 169.
        ].
        recoveredBlock6Block13Step = 169 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 172.
        ].
        recoveredBlock6Block13Step = 172 ifTrue: [
            recoveredBlock6Block13Stack0 := (recoveredBlock6Block13Stack0) optionsFromNode: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 174.
        ].
        recoveredBlock6Block13Step = 174 ifTrue: [
            recoveredBlock6Block13Stack1 := [:block281168e4Arg1 | 
    | block281168e4Stack0 block281168e4Stack1 block281168e4Stack2 block281168e4Stack3 block281168e4PC block281168e4Step block281168e4Done block281168e4Result |
    block281168e4Stack0 := self.
    block281168e4PC := 4.
    block281168e4Done := false.
    [block281168e4Done not] whileTrue: [
        block281168e4Step := block281168e4PC.
        block281168e4Step = 4 ifTrue: [
            block281168e4Stack1 := block281168e4Arg1.
            block281168e4PC := 5.
        ].
        block281168e4Step = 5 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) optionClass.
            block281168e4PC := 7.
        ].
        block281168e4Step = 7 ifTrue: [
            block281168e4Stack2 := true.
            block281168e4PC := 8.
        ].
        block281168e4Step = 8 ifTrue: [
            (block281168e4Stack1) needsUpdate: (block281168e4Stack2).
            block281168e4PC := 10.
        ].
        block281168e4Step = 10 ifTrue: [
            block281168e4Stack1 := block281168e4Arg1.
            block281168e4PC := 11.
        ].
        block281168e4Step = 11 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) optionClass.
            block281168e4PC := 13.
        ].
        block281168e4Step = 13 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) isContainerOption.
            block281168e4PC := 15.
        ].
        block281168e4Step = 15 ifTrue: [
            (block281168e4Stack1) ifTrue: [block281168e4PC := 18] ifFalse: [block281168e4PC := 37].
        ].
        block281168e4Step = 18 ifTrue: [
            block281168e4Stack1 := block281168e4Arg1.
            block281168e4PC := 19.
        ].
        block281168e4Step = 19 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) optionClass.
            block281168e4PC := 21.
        ].
        block281168e4Step = 21 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) options.
            block281168e4PC := 23.
        ].
        block281168e4Step = 23 ifTrue: [
            block281168e4Stack2 := [:block28116908Arg1 | 
    | block28116908Value0 block28116908Value1 block28116908Value2 |
    block28116908Value0 := block28116908Arg1.
    block28116908Value1 := (block28116908Value0) optionClass.
    block28116908Value2 := (block28116908Value1) needsUpdate: (true).
    block28116908Value2
].
            block281168e4PC := 25.
        ].
        block281168e4Step = 25 ifTrue: [
            block281168e4PC := 35.
        ].
        block281168e4Step = 35 ifTrue: [
            (block281168e4Stack1) do: (block281168e4Stack2).
            block281168e4PC := 37.
        ].
        block281168e4Step = 37 ifTrue: [
            block281168e4Stack1 := block281168e4Arg1.
            block281168e4PC := 38.
        ].
        block281168e4Step = 38 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) optionClass.
            block281168e4PC := 40.
        ].
        block281168e4Step = 40 ifTrue: [
            block281168e4Stack1 := (block281168e4Stack1) updateOptionWidget.
            block281168e4PC := 42.
        ].
        block281168e4Step = 42 ifTrue: [
            block281168e4Result := block281168e4Stack1.
            block281168e4Done := true.
        ].
    ].
    block281168e4Result
].
            recoveredBlock6Block13PC := 176.
        ].
        recoveredBlock6Block13Step = 176 ifTrue: [
            recoveredBlock6Block13PC := 219.
        ].
        recoveredBlock6Block13Step = 219 ifTrue: [
            (recoveredBlock6Block13Stack0) do: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 221.
        ].
        recoveredBlock6Block13Step = 221 ifTrue: [
            recoveredBlock6Block13Stack0 := visibleForm.
            recoveredBlock6Block13PC := 223.
        ].
        recoveredBlock6Block13Step = 223 ifTrue: [
            (recoveredBlock6Block13Stack0 == nil) ifTrue: [recoveredBlock6Block13PC := 230] ifFalse: [recoveredBlock6Block13PC := 226].
        ].
        recoveredBlock6Block13Step = 226 ifTrue: [
            recoveredBlock6Block13Stack0 := visibleForm.
            recoveredBlock6Block13PC := 228.
        ].
        recoveredBlock6Block13Step = 228 ifTrue: [
            (recoveredBlock6Block13Stack0) unmanageChild.
            recoveredBlock6Block13PC := 230.
        ].
        recoveredBlock6Block13Step = 230 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 233.
        ].
        recoveredBlock6Block13Step = 233 ifTrue: [
            (recoveredBlock6Block13Stack0) manageChild.
            recoveredBlock6Block13PC := 235.
        ].
        recoveredBlock6Block13Step = 235 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 238.
        ].
        recoveredBlock6Block13Step = 238 ifTrue: [
            recoveredBlock6Block13Stack0 := (recoveredBlock6Block13Stack0) parent.
            recoveredBlock6Block13PC := 240.
        ].
        recoveredBlock6Block13Step = 240 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredLocal2.
            recoveredBlock6Block13PC := 243.
        ].
        recoveredBlock6Block13Step = 243 ifTrue: [
            (recoveredBlock6Block13Stack0) workWindow: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 245.
        ].
        recoveredBlock6Block13Step = 245 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 248.
        ].
        recoveredBlock6Block13Step = 248 ifTrue: [
            recoveredBlock6Block13Stack0 := (recoveredBlock6Block13Stack0) parent.
            recoveredBlock6Block13PC := 250.
        ].
        recoveredBlock6Block13Step = 250 ifTrue: [
            (recoveredBlock6Block13Stack0) updateScrollBars.
            recoveredBlock6Block13PC := 252.
        ].
        recoveredBlock6Block13Step = 252 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 255.
        ].
        recoveredBlock6Block13Step = 255 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredLocal2.
            recoveredBlock6Block13PC := 258.
        ].
        recoveredBlock6Block13Step = 258 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) parent.
            recoveredBlock6Block13PC := 260.
        ].
        recoveredBlock6Block13Step = 260 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) width.
            recoveredBlock6Block13PC := 262.
        ].
        recoveredBlock6Block13Step = 262 ifTrue: [
            recoveredBlock6Block13Stack2 := 300.
            recoveredBlock6Block13PC := 266.
        ].
        recoveredBlock6Block13Step = 266 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) max: (recoveredBlock6Block13Stack2).
            recoveredBlock6Block13PC := 268.
        ].
        recoveredBlock6Block13Step = 268 ifTrue: [
            (recoveredBlock6Block13Stack0) width: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 270.
        ].
        recoveredBlock6Block13Step = 270 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 273.
        ].
        recoveredBlock6Block13Step = 273 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredLocal2.
            recoveredBlock6Block13PC := 276.
        ].
        recoveredBlock6Block13Step = 276 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) parent.
            recoveredBlock6Block13PC := 278.
        ].
        recoveredBlock6Block13Step = 278 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) height.
            recoveredBlock6Block13PC := 280.
        ].
        recoveredBlock6Block13Step = 280 ifTrue: [
            (recoveredBlock6Block13Stack0) height: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 282.
        ].
        recoveredBlock6Block13Step = 282 ifTrue: [
            recoveredBlock6Block13Stack0 := recoveredLocal2.
            recoveredBlock6Block13PC := 285.
        ].
        recoveredBlock6Block13Step = 285 ifTrue: [
            visibleForm := recoveredBlock6Block13Stack0.
            recoveredBlock6Block13PC := 287.
        ].
        recoveredBlock6Block13Step = 287 ifTrue: [
            recoveredBlock6Block13Stack0 := self.
            recoveredBlock6Block13PC := 288.
        ].
        recoveredBlock6Block13Step = 288 ifTrue: [
            recoveredBlock6Block13Stack0 := (recoveredBlock6Block13Stack0) widgetEditFrame.
            recoveredBlock6Block13PC := 290.
        ].
        recoveredBlock6Block13Step = 290 ifTrue: [
            recoveredBlock6Block13Stack1 := recoveredArg1.
            recoveredBlock6Block13PC := 293.
        ].
        recoveredBlock6Block13Step = 293 ifTrue: [
            recoveredBlock6Block13Stack1 := (recoveredBlock6Block13Stack1) nodeLabel.
            recoveredBlock6Block13PC := 295.
        ].
        recoveredBlock6Block13Step = 295 ifTrue: [
            (recoveredBlock6Block13Stack0) labelString: (recoveredBlock6Block13Stack1).
            recoveredBlock6Block13PC := 297.
        ].
        recoveredBlock6Block13Step = 297 ifTrue: [
            recoveredBlock6Block13Stack0 := self.
            recoveredBlock6Block13PC := 298.
        ].
        recoveredBlock6Block13Step = 298 ifTrue: [
            recoveredBlock6Block13Stack0 := (recoveredBlock6Block13Stack0) resizeOptionForm.
            recoveredBlock6Block13PC := 300.
        ].
        recoveredBlock6Block13Step = 300 ifTrue: [
            recoveredBlock6Block13Result := recoveredBlock6Block13Stack0.
            recoveredBlock6Block13Done := true.
        ].
    ].
    recoveredBlock6Block13Result
].
    recoveredBlock6Value2 := (recoveredBlock6Value0) deferRedraw: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x205ba640; bytecode file offset 0xeb6f88"
!EtasOptionDialog methodsFor: 'recovered'!
createOption: recoveredArg1 inForm: recoveredArg2 topWidget: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block2811761cArg1 | 
    | block2811761cValue0 block2811761cValue1 |
    block2811761cValue0 := block2811761cArg1.
    block2811761cValue1 := block2811761cValue0.
    (block2811761cValue1) height: (23).
    block2811761cValue0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block28117640Arg1 | 
    | block28117640Value0 block28117640Value1 block28117640Value2 block28117640Value3 block28117640Value4 block28117640Value5 block28117640Value6 block28117640Value7 block28117640Value8 block28117640Value9 |
    block28117640Value0 := block28117640Arg1.
    block28117640Value1 := block28117640Value0.
    block28117640Value2 := XmATTACHFORM.
    (block28117640Value1) topAttachment: (block28117640Value2).
    block28117640Value3 := block28117640Value0.
    (block28117640Value3) topOffset: (5).
    block28117640Value4 := block28117640Value0.
    block28117640Value5 := XmATTACHFORM.
    (block28117640Value4) leftAttachment: (block28117640Value5).
    block28117640Value6 := block28117640Value0.
    (block28117640Value6) leftOffset: (5).
    block28117640Value7 := block28117640Value0.
    block28117640Value8 := XmATTACHFORM.
    (block28117640Value7) rightAttachment: (block28117640Value8).
    block28117640Value9 := (block28117640Value0) rightOffset: (5).
    block28117640Value9
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 recoveredBlock83Value5 recoveredBlock83Value6 recoveredBlock83Value7 recoveredBlock83Value8 recoveredBlock83Value9 recoveredBlock83Value10 recoveredBlock83Value11 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredBlock83Value0.
    recoveredBlock83Value2 := XmATTACHWIDGET.
    (recoveredBlock83Value1) topAttachment: (recoveredBlock83Value2).
    recoveredBlock83Value3 := recoveredBlock83Value0.
    recoveredBlock83Value4 := recoveredArg3.
    (recoveredBlock83Value3) topWidget: (recoveredBlock83Value4).
    recoveredBlock83Value5 := recoveredBlock83Value0.
    (recoveredBlock83Value5) topOffset: (5).
    recoveredBlock83Value6 := recoveredBlock83Value0.
    recoveredBlock83Value7 := XmATTACHFORM.
    (recoveredBlock83Value6) leftAttachment: (recoveredBlock83Value7).
    recoveredBlock83Value8 := recoveredBlock83Value0.
    (recoveredBlock83Value8) leftOffset: (5).
    recoveredBlock83Value9 := recoveredBlock83Value0.
    recoveredBlock83Value10 := XmATTACHFORM.
    (recoveredBlock83Value9) rightAttachment: (recoveredBlock83Value10).
    recoveredBlock83Value11 := (recoveredBlock83Value0) rightOffset: (5).
    recoveredBlock83Value11
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEditWidgetInForm: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependents.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'dependencies'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) addDependent: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := [:recoveredBlock171Arg1 | 
    | recoveredBlock171Stack0 recoveredBlock171Stack1 recoveredBlock171Stack2 recoveredBlock171Stack3 recoveredBlock171Stack4 recoveredBlock171PC recoveredBlock171Step recoveredBlock171Done recoveredBlock171Result |
    recoveredBlock171Stack0 := self.
    recoveredBlock171PC := 178.
    recoveredBlock171Done := false.
    [recoveredBlock171Done not] whileTrue: [
        recoveredBlock171Step := recoveredBlock171PC.
        recoveredBlock171Step = 178 ifTrue: [
            recoveredBlock171Stack1 := nil.
            recoveredBlock171PC := 179.
        ].
        recoveredBlock171Step = 179 ifTrue: [
            recoveredBlock171Stack2 := recoveredArg1.
            recoveredBlock171PC := 182.
        ].
        recoveredBlock171Step = 182 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) optionClass.
            recoveredBlock171PC := 184.
        ].
        recoveredBlock171Step = 184 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isContainerOption.
            recoveredBlock171PC := 186.
        ].
        recoveredBlock171Step = 186 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 190] ifFalse: [recoveredBlock171PC := 196].
        ].
        recoveredBlock171Step = 190 ifTrue: [
            recoveredBlock171Stack2 := recoveredBlock171Arg1.
            recoveredBlock171PC := 191.
        ].
        recoveredBlock171Step = 191 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isFrame.
            recoveredBlock171PC := 193.
        ].
        recoveredBlock171Step = 193 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 220] ifFalse: [recoveredBlock171PC := 196].
        ].
        recoveredBlock171Step = 196 ifTrue: [
            recoveredBlock171Stack2 := recoveredArg1.
            recoveredBlock171PC := 199.
        ].
        recoveredBlock171Step = 199 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) optionClass.
            recoveredBlock171PC := 201.
        ].
        recoveredBlock171Step = 201 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) isSeperatorOption.
            recoveredBlock171PC := 203.
        ].
        recoveredBlock171Step = 203 ifTrue: [
            (recoveredBlock171Stack2) ifTrue: [recoveredBlock171PC := 220] ifFalse: [recoveredBlock171PC := 206].
        ].
        recoveredBlock171Step = 206 ifTrue: [
            recoveredBlock171PC := 207.
        ].
        recoveredBlock171Step = 207 ifTrue: [
            recoveredBlock171Stack1 := self.
            recoveredBlock171PC := 208.
        ].
        recoveredBlock171Step = 208 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) bubbleHelpManager.
            recoveredBlock171PC := 210.
        ].
        recoveredBlock171Step = 210 ifTrue: [
            recoveredBlock171Stack2 := recoveredArg1.
            recoveredBlock171PC := 213.
        ].
        recoveredBlock171Step = 213 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) optionClass.
            recoveredBlock171PC := 215.
        ].
        recoveredBlock171Step = 215 ifTrue: [
            recoveredBlock171Stack2 := (recoveredBlock171Stack2) toolTip.
            recoveredBlock171PC := 217.
        ].
        recoveredBlock171Step = 217 ifTrue: [
            recoveredBlock171Stack3 := recoveredBlock171Arg1.
            recoveredBlock171PC := 218.
        ].
        recoveredBlock171Step = 218 ifTrue: [
            recoveredBlock171Stack1 := (recoveredBlock171Stack1) addHelpString: (recoveredBlock171Stack2) forWidget: (recoveredBlock171Stack3).
            recoveredBlock171PC := 220.
        ].
        recoveredBlock171Step = 220 ifTrue: [
            recoveredBlock171Result := recoveredBlock171Stack1.
            recoveredBlock171Done := true.
        ].
    ].
    recoveredBlock171Result
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) isContainerOption.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Stack0 recoveredBlock239Stack1 recoveredBlock239Stack2 recoveredBlock239Stack3 recoveredBlock239Stack4 recoveredBlock239Stack5 recoveredBlock239PC recoveredBlock239Step recoveredBlock239Done recoveredBlock239Result |
    recoveredBlock239Stack0 := self.
    recoveredBlock239PC := 246.
    recoveredBlock239Done := false.
    [recoveredBlock239Done not] whileTrue: [
        recoveredBlock239Step := recoveredBlock239PC.
        recoveredBlock239Step = 246 ifTrue: [
            recoveredBlock239Stack1 := nil.
            recoveredBlock239PC := 247.
        ].
        recoveredBlock239Step = 247 ifTrue: [
            recoveredBlock239Stack2 := recoveredBlock239Arg1.
            recoveredBlock239PC := 248.
        ].
        recoveredBlock239Step = 248 ifTrue: [
            recoveredBlock239Stack2 := (recoveredBlock239Stack2) optionClass.
            recoveredBlock239PC := 250.
        ].
        recoveredBlock239Step = 250 ifTrue: [
            recoveredBlock239Stack2 := (recoveredBlock239Stack2) visible.
            recoveredBlock239PC := 252.
        ].
        recoveredBlock239Step = 252 ifTrue: [
            (recoveredBlock239Stack2) ifTrue: [recoveredBlock239PC := 256] ifFalse: [recoveredBlock239PC := 274].
        ].
        recoveredBlock239Step = 256 ifTrue: [
            recoveredBlock239PC := 257.
        ].
        recoveredBlock239Step = 257 ifTrue: [
            recoveredBlock239Stack1 := self.
            recoveredBlock239PC := 258.
        ].
        recoveredBlock239Step = 258 ifTrue: [
            recoveredBlock239Stack2 := recoveredBlock239Arg1.
            recoveredBlock239PC := 259.
        ].
        recoveredBlock239Step = 259 ifTrue: [
            recoveredBlock239Stack2 := (recoveredBlock239Stack2) optionClass.
            recoveredBlock239PC := 261.
        ].
        recoveredBlock239Step = 261 ifTrue: [
            recoveredBlock239Stack3 := recoveredLocal2.
            recoveredBlock239PC := 264.
        ].
        recoveredBlock239Step = 264 ifTrue: [
            recoveredBlock239Stack4 := recoveredLocal1.
            recoveredBlock239PC := 267.
        ].
        recoveredBlock239Step = 267 ifTrue: [
            recoveredBlock239Stack1 := (recoveredBlock239Stack1) createOption: (recoveredBlock239Stack2) inForm: (recoveredBlock239Stack3) topWidget: (recoveredBlock239Stack4).
            recoveredBlock239PC := 270.
        ].
        recoveredBlock239Step = 270 ifTrue: [
            recoveredBlock239Stack2 := recoveredBlock239Stack1.
            recoveredBlock239PC := 271.
        ].
        recoveredBlock239Step = 271 ifTrue: [
            recoveredLocal1 := recoveredBlock239Stack2.
            recoveredBlock239PC := 274.
        ].
        recoveredBlock239Step = 274 ifTrue: [
            recoveredBlock239Result := recoveredBlock239Stack1.
            recoveredBlock239Done := true.
        ].
    ].
    recoveredBlock239Result
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 291] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack1) bottomOffset: (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSizeableOption.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 306] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := (recoveredStack2) height.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack1) height: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205d2d88; bytecode file offset 0xecf6ec"
!EtasOptionDialog methodsFor: 'recovered'!
updateDescriptionText: recoveredArg1 forceNew: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodeForm.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDescriptionFileLocationForNode: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionNodes.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack2 := recoveredLocal3.
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 68] ifFalse: [recoveredBlock53PC := 190].
        ].
        recoveredBlock53Step = 68 ifTrue: [
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 70.
        ].
        recoveredBlock53Step = 70 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) option.
            recoveredBlock53PC := 73.
        ].
        recoveredBlock53Step = 73 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Stack2.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack3.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            (recoveredBlock53Stack2 == nil) ifTrue: [recoveredBlock53PC := 190] ifFalse: [recoveredBlock53PC := 78].
        ].
        recoveredBlock53Step = 78 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local1.
            recoveredBlock53PC := 79.
        ].
        recoveredBlock53Step = 79 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) optionClass.
            recoveredBlock53PC := 81.
        ].
        recoveredBlock53Step = 81 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) visible.
            recoveredBlock53PC := 83.
        ].
        recoveredBlock53Step = 83 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 86] ifFalse: [recoveredBlock53PC := 190].
        ].
        recoveredBlock53Step = 86 ifTrue: [
            recoveredBlock53PC := 87.
        ].
        recoveredBlock53Step = 87 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 88.
        ].
        recoveredBlock53Step = 88 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) optionClass.
            recoveredBlock53PC := 90.
        ].
        recoveredBlock53Step = 90 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isContainerOption.
            recoveredBlock53PC := 92.
        ].
        recoveredBlock53Step = 92 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 96] ifFalse: [recoveredBlock53PC := 166].
        ].
        recoveredBlock53Step = 96 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 97.
        ].
        recoveredBlock53Step = 97 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) optionClass.
            recoveredBlock53PC := 99.
        ].
        recoveredBlock53Step = 99 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) changeable.
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 104] ifFalse: [recoveredBlock53PC := 116].
        ].
        recoveredBlock53Step = 104 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal5.
            recoveredBlock53PC := 107.
        ].
        recoveredBlock53Step = 107 ifTrue: [
            recoveredBlock53Stack2 := self.
            recoveredBlock53PC := 108.
        ].
        recoveredBlock53Step = 108 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Local1.
            recoveredBlock53PC := 109.
        ].
        recoveredBlock53Step = 109 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) optionDescriptionHTML: (recoveredBlock53Stack3).
            recoveredBlock53PC := 111.
        ].
        recoveredBlock53Step = 111 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) , (recoveredBlock53Stack2).
            recoveredBlock53PC := 113.
        ].
        recoveredBlock53Step = 113 ifTrue: [
            recoveredLocal5 := recoveredBlock53Stack1.
            recoveredBlock53PC := 116.
        ].
        recoveredBlock53Step = 116 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 117.
        ].
        recoveredBlock53Step = 117 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) optionClass.
            recoveredBlock53PC := 119.
        ].
        recoveredBlock53Step = 119 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) options.
            recoveredBlock53PC := 121.
        ].
        recoveredBlock53Step = 121 ifTrue: [
            recoveredBlock53Stack2 := [:recoveredBlock53Block121Arg1 | 
    | recoveredBlock53Block121Stack0 recoveredBlock53Block121Stack1 recoveredBlock53Block121Stack2 recoveredBlock53Block121Stack3 recoveredBlock53Block121Stack4 recoveredBlock53Block121PC recoveredBlock53Block121Step recoveredBlock53Block121Done recoveredBlock53Block121Result |
    recoveredBlock53Block121Stack0 := self.
    recoveredBlock53Block121PC := 128.
    recoveredBlock53Block121Done := false.
    [recoveredBlock53Block121Done not] whileTrue: [
        recoveredBlock53Block121Step := recoveredBlock53Block121PC.
        recoveredBlock53Block121Step = 128 ifTrue: [
            recoveredBlock53Block121Stack1 := nil.
            recoveredBlock53Block121PC := 129.
        ].
        recoveredBlock53Block121Step = 129 ifTrue: [
            recoveredBlock53Block121Stack2 := recoveredBlock53Block121Arg1.
            recoveredBlock53Block121PC := 130.
        ].
        recoveredBlock53Block121Step = 130 ifTrue: [
            recoveredBlock53Block121Stack2 := (recoveredBlock53Block121Stack2) optionClass.
            recoveredBlock53Block121PC := 132.
        ].
        recoveredBlock53Block121Step = 132 ifTrue: [
            recoveredBlock53Block121Stack2 := (recoveredBlock53Block121Stack2) isSeperatorOption.
            recoveredBlock53Block121PC := 134.
        ].
        recoveredBlock53Block121Step = 134 ifTrue: [
            (recoveredBlock53Block121Stack2) ifTrue: [recoveredBlock53Block121PC := 160] ifFalse: [recoveredBlock53Block121PC := 138].
        ].
        recoveredBlock53Block121Step = 138 ifTrue: [
            recoveredBlock53Block121Stack2 := recoveredBlock53Block121Arg1.
            recoveredBlock53Block121PC := 139.
        ].
        recoveredBlock53Block121Step = 139 ifTrue: [
            recoveredBlock53Block121Stack2 := (recoveredBlock53Block121Stack2) optionClass.
            recoveredBlock53Block121PC := 141.
        ].
        recoveredBlock53Block121Step = 141 ifTrue: [
            recoveredBlock53Block121Stack2 := (recoveredBlock53Block121Stack2) visible.
            recoveredBlock53Block121PC := 143.
        ].
        recoveredBlock53Block121Step = 143 ifTrue: [
            (recoveredBlock53Block121Stack2) ifTrue: [recoveredBlock53Block121PC := 146] ifFalse: [recoveredBlock53Block121PC := 160].
        ].
        recoveredBlock53Block121Step = 146 ifTrue: [
            recoveredBlock53Block121PC := 147.
        ].
        recoveredBlock53Block121Step = 147 ifTrue: [
            recoveredBlock53Block121Stack1 := recoveredLocal5.
            recoveredBlock53Block121PC := 150.
        ].
        recoveredBlock53Block121Step = 150 ifTrue: [
            recoveredBlock53Block121Stack2 := self.
            recoveredBlock53Block121PC := 151.
        ].
        recoveredBlock53Block121Step = 151 ifTrue: [
            recoveredBlock53Block121Stack3 := recoveredBlock53Block121Arg1.
            recoveredBlock53Block121PC := 152.
        ].
        recoveredBlock53Block121Step = 152 ifTrue: [
            recoveredBlock53Block121Stack2 := (recoveredBlock53Block121Stack2) optionDescriptionHTML: (recoveredBlock53Block121Stack3).
            recoveredBlock53Block121PC := 154.
        ].
        recoveredBlock53Block121Step = 154 ifTrue: [
            recoveredBlock53Block121Stack1 := (recoveredBlock53Block121Stack1) , (recoveredBlock53Block121Stack2).
            recoveredBlock53Block121PC := 156.
        ].
        recoveredBlock53Block121Step = 156 ifTrue: [
            recoveredBlock53Block121Stack2 := recoveredBlock53Block121Stack1.
            recoveredBlock53Block121PC := 157.
        ].
        recoveredBlock53Block121Step = 157 ifTrue: [
            recoveredLocal5 := recoveredBlock53Block121Stack2.
            recoveredBlock53Block121PC := 160.
        ].
        recoveredBlock53Block121Step = 160 ifTrue: [
            recoveredBlock53Block121Result := recoveredBlock53Block121Stack1.
            recoveredBlock53Block121Done := true.
        ].
    ].
    recoveredBlock53Block121Result
].
            recoveredBlock53PC := 161.
        ].
        recoveredBlock53Step = 161 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) do: (recoveredBlock53Stack2).
            recoveredBlock53PC := 163.
        ].
        recoveredBlock53Step = 163 ifTrue: [
            recoveredBlock53PC := 190.
        ].
        recoveredBlock53Step = 166 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 167.
        ].
        recoveredBlock53Step = 167 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local1.
            recoveredBlock53PC := 168.
        ].
        recoveredBlock53Step = 168 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) optionClass.
            recoveredBlock53PC := 170.
        ].
        recoveredBlock53Step = 170 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) isSeperatorOption.
            recoveredBlock53PC := 172.
        ].
        recoveredBlock53Step = 172 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 190] ifFalse: [recoveredBlock53PC := 176].
        ].
        recoveredBlock53Step = 176 ifTrue: [
            recoveredBlock53PC := 177.
        ].
        recoveredBlock53Step = 177 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal5.
            recoveredBlock53PC := 180.
        ].
        recoveredBlock53Step = 180 ifTrue: [
            recoveredBlock53Stack2 := self.
            recoveredBlock53PC := 181.
        ].
        recoveredBlock53Step = 181 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Local1.
            recoveredBlock53PC := 182.
        ].
        recoveredBlock53Step = 182 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) optionDescriptionHTML: (recoveredBlock53Stack3).
            recoveredBlock53PC := 184.
        ].
        recoveredBlock53Step = 184 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) , (recoveredBlock53Stack2).
            recoveredBlock53PC := 186.
        ].
        recoveredBlock53Step = 186 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 187.
        ].
        recoveredBlock53Step = 187 ifTrue: [
            recoveredLocal5 := recoveredBlock53Stack2.
            recoveredBlock53PC := 190.
        ].
        recoveredBlock53Step = 190 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 270].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 'call_80915'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := '<font size="-1" face="Arial,Helvetica,Univers,Zurich BT">'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrs.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) withHTMLBreak.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := '</font>'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := 'HTMLOptionDescription'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 330].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDescriptionHTMLText.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 327] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDescriptionHTMLText.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 327] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDescriptionHTMLText.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) oleControlWrapper.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack5 := ''.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack6 := ''.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) navigate2: (recoveredStack2) flags: (recoveredStack3) targetFrameName: (recoveredStack4) postData: (recoveredStack5) headers: (recoveredStack6).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDescriptionText.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack0) actualNode: (recoveredStack1).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) nodeDescriptionPath.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            LastSelection := recoveredStack0.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206bfc70; bytecode file offset 0xfbc844"
!EtasOptionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredLocal23 recoveredLocal24 recoveredLocal25 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredLocal25 := recoveredStack1.
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
    recoveredBlock15Value2 := (self) rootNodeName.
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
            recoveredLocal24 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal24.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal24.
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
            recoveredLocal23 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal23.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal23.
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
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal22.
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
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'optionsForm'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 'treeForm'.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'treeForm'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'editFrame'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := [:block28132f40Arg1 | 
    | block28132f40Value0 block28132f40Value1 |
    block28132f40Value0 := block28132f40Arg1.
    block28132f40Value1 := block28132f40Value0.
    (block28132f40Value1) labelString: ('Option Group').
    block28132f40Value0
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 'editFrame'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 'editForm'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 'descriptionForm'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'descriptionForm'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := 'verticalSplit'.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := [:block28132f64Arg1 | 
    | block28132f64Value0 block28132f64Value1 block28132f64Value2 block28132f64Value3 block28132f64Value4 block28132f64Value5 block28132f64Value6 block28132f64Value7 block28132f64Value8 block28132f64Value9 |
    block28132f64Value0 := block28132f64Arg1.
    block28132f64Value1 := block28132f64Value0.
    (block28132f64Value1) thickness: (3).
    block28132f64Value2 := block28132f64Value0.
    block28132f64Value3 := XmVERTICAL.
    (block28132f64Value2) orientation: (block28132f64Value3).
    block28132f64Value4 := block28132f64Value0.
    (block28132f64Value4) adjustRelPosAtResize: (false).
    block28132f64Value5 := block28132f64Value0.
    (block28132f64Value5) minRightOrBottomOffset: (100).
    block28132f64Value6 := block28132f64Value0.
    (block28132f64Value6) minLeftOffset: (200).
    block28132f64Value7 := block28132f64Value0.
    (block28132f64Value7) x: (200).
    block28132f64Value8 := XmTABGROUP.
    block28132f64Value9 := (block28132f64Value0) navigationType: (block28132f64Value8).
    block28132f64Value9
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSplitBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := 'verticalSplit'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowBackground.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack2 := 'horizontalSplit'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := [:block28132f88Arg1 | 
    | block28132f88Value0 block28132f88Value1 block28132f88Value2 block28132f88Value3 block28132f88Value4 block28132f88Value5 block28132f88Value6 block28132f88Value7 block28132f88Value8 block28132f88Value9 |
    block28132f88Value0 := block28132f88Arg1.
    block28132f88Value1 := block28132f88Value0.
    (block28132f88Value1) thickness: (3).
    block28132f88Value2 := block28132f88Value0.
    block28132f88Value3 := XmHORIZONTAL.
    (block28132f88Value2) orientation: (block28132f88Value3).
    block28132f88Value4 := block28132f88Value0.
    (block28132f88Value4) adjustRelPosAtResize: (true).
    block28132f88Value5 := block28132f88Value0.
    (block28132f88Value5) minRightOrBottomOffset: (100).
    block28132f88Value6 := block28132f88Value0.
    (block28132f88Value6) minTopOffset: (100).
    block28132f88Value7 := block28132f88Value0.
    (block28132f88Value7) y: (400).
    block28132f88Value8 := XmTABGROUP.
    block28132f88Value9 := (block28132f88Value0) navigationType: (block28132f88Value8).
    block28132f88Value9
].
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSplitBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := 'horizontalSplit'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowBackground.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) foregroundColor: (recoveredStack2).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := 'HTMLOptionDescription'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := ASDIEOLEWidget.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := 'descriptionHTMLText'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack2 := 'descriptionHTMLText'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredPC := 535.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := 'descriptionText'.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := [:block28132facArg1 | 
    | block28132facValue0 block28132facValue1 block28132facValue2 block28132facValue3 block28132facValue4 block28132facValue5 |
    block28132facValue0 := block28132facArg1.
    block28132facValue1 := block28132facValue0.
    (block28132facValue1) tabSpacing: (2).
    block28132facValue2 := block28132facValue0.
    block28132facValue3 := XmMULTILINEEDIT.
    (block28132facValue2) editMode: (block28132facValue3).
    block28132facValue4 := block28132facValue0.
    (block28132facValue4) editable: (false).
    block28132facValue5 := (block28132facValue0) wordWrap: (true).
    block28132facValue5
].
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'descriptionTextScrolled'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := 'descriptionText'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack2 := 'filterText'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack3 := [:block28132fd0Arg1 | 
    | block28132fd0Value0 block28132fd0Value1 block28132fd0Value2 block28132fd0Value3 block28132fd0Value4 |
    block28132fd0Value0 := block28132fd0Arg1.
    block28132fd0Value1 := block28132fd0Value0.
    block28132fd0Value2 := XmALIGNMENTBEGINNING.
    (block28132fd0Value1) alignment: (block28132fd0Value2).
    block28132fd0Value3 := block28132fd0Value0.
    (block28132fd0Value3) height: (22).
    block28132fd0Value4 := (block28132fd0Value0) value: ('').
    block28132fd0Value4
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack2 := 'filterText'.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := 'filterButton'.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := [:block28132ff4Arg1 | 
    | block28132ff4Value0 block28132ff4Value1 block28132ff4Value2 block28132ff4Value3 block28132ff4Value4 block28132ff4Value5 block28132ff4Value6 block28132ff4Value7 block28132ff4Value8 block28132ff4Value9 block28132ff4Value10 block28132ff4Value11 |
    block28132ff4Value0 := block28132ff4Arg1.
    block28132ff4Value1 := block28132ff4Value0.
    (block28132ff4Value1) height: (22).
    block28132ff4Value2 := block28132ff4Value0.
    (block28132ff4Value2) width: (22).
    block28132ff4Value3 := block28132ff4Value0.
    block28132ff4Value4 := XmICON.
    (block28132ff4Value3) labelType: (block28132ff4Value4).
    block28132ff4Value5 := block28132ff4Value0.
    block28132ff4Value6 := RBUserInterface.
    block28132ff4Value7 := (block28132ff4Value6) resourceManager.
    block28132ff4Value8 := ('GeneralFilter') asString.
    block28132ff4Value9 := (block28132ff4Value7) returnIcon16WithName: (block28132ff4Value8).
    (block28132ff4Value5) labelIcon: (block28132ff4Value9).
    block28132ff4Value10 := block28132ff4Value0.
    (block28132ff4Value10) sensitive: (true).
    block28132ff4Value11 := (block28132ff4Value0) recomputeSize: (false).
    block28132ff4Value11
].
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := 'filterButton'.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack2 := 'optionsTree'.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := [:recoveredBlock696Arg1 | 
    | recoveredBlock696Value0 recoveredBlock696Value1 recoveredBlock696Value2 recoveredBlock696Value3 recoveredBlock696Value4 |
    recoveredBlock696Value0 := recoveredBlock696Arg1.
    recoveredBlock696Value1 := recoveredBlock696Value0.
    recoveredBlock696Value2 := XmBROWSESELECT.
    (recoveredBlock696Value1) selectionPolicy: (recoveredBlock696Value2).
    recoveredBlock696Value3 := recoveredBlock696Value0.
    recoveredBlock696Value4 := (self) iconHierarchyPolicy.
    (recoveredBlock696Value3) hierarchyPolicy: (recoveredBlock696Value4).
    recoveredBlock696Value0
].
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack2 := 'optionsTreeScrolled'.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack2 := 'optionsTree'.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := 'scrolledOptionsArea'.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := [:block28133018Arg1 | 
    | block28133018Value0 block28133018Value1 block28133018Value2 block28133018Value3 block28133018Value4 |
    block28133018Value0 := block28133018Arg1.
    block28133018Value1 := block28133018Value0.
    block28133018Value2 := XmAUTOMATIC.
    (block28133018Value1) scrollingPolicy: (block28133018Value2).
    block28133018Value3 := XmASNEEDED.
    block28133018Value4 := (block28133018Value0) scrollBarDisplayPolicy: (block28133018Value3).
    block28133018Value4
].
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack2 := 'scrolledOptionsArea'.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack2 := 'defaultButton'.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack3 := [:block2813303cArg1 | 
    | block2813303cValue0 block2813303cValue1 block2813303cValue2 block2813303cValue3 |
    block2813303cValue0 := block2813303cArg1.
    block2813303cValue1 := block2813303cValue0.
    (block2813303cValue1) labelString: ('System Defaults').
    block2813303cValue2 := block2813303cValue0.
    (block2813303cValue2) height: (24).
    block2813303cValue3 := (block2813303cValue0) width: (90).
    block2813303cValue3
].
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack2 := 'defaultButton'.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack2 := 'importButton'.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack3 := [:recoveredBlock884Arg1 | 
    | recoveredBlock884Value0 recoveredBlock884Value1 recoveredBlock884Value2 recoveredBlock884Value3 recoveredBlock884Value4 recoveredBlock884Value5 recoveredBlock884Value6 recoveredBlock884Value7 recoveredBlock884Value8 recoveredBlock884Value9 recoveredBlock884Value10 recoveredBlock884Value11 recoveredBlock884Value12 recoveredBlock884Value13 recoveredBlock884Value14 |
    recoveredBlock884Value0 := recoveredBlock884Arg1.
    recoveredBlock884Value1 := recoveredBlock884Value0.
    recoveredBlock884Value2 := XmICON.
    (recoveredBlock884Value1) labelType: (recoveredBlock884Value2).
    recoveredBlock884Value3 := recoveredBlock884Value0.
    recoveredBlock884Value4 := (self) resourceManager.
    recoveredBlock884Value5 := (recoveredBlock884Value4) returnIconWithName: ('GeneralImport').
    (recoveredBlock884Value3) labelIcon: (recoveredBlock884Value5).
    recoveredBlock884Value6 := recoveredBlock884Value0.
    recoveredBlock884Value7 := (self) resourceManager.
    recoveredBlock884Value8 := recoveredBlock884Arg1.
    recoveredBlock884Value9 := (recoveredBlock884Value8) labelIcon.
    recoveredBlock884Value10 := (recoveredBlock884Value9) name.
    recoveredBlock884Value11 := (recoveredBlock884Value7) returnGrayedIconWithName: (recoveredBlock884Value10).
    (recoveredBlock884Value6) labelInsensitiveIcon: (recoveredBlock884Value11).
    recoveredBlock884Value12 := recoveredBlock884Value0.
    (recoveredBlock884Value12) height: (24).
    recoveredBlock884Value13 := recoveredBlock884Value0.
    (recoveredBlock884Value13) width: (24).
    recoveredBlock884Value14 := (recoveredBlock884Value0) recomputeSize: (false).
    recoveredBlock884Value14
].
            recoveredPC := 958.
        ].
        recoveredStep = 958 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 963.
        ].
        recoveredStep = 963 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 965.
        ].
        recoveredStep = 965 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 971.
        ].
        recoveredStep = 971 ifTrue: [
            recoveredStack2 := 'importButton'.
            recoveredPC := 974.
        ].
        recoveredStep = 974 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 979.
        ].
        recoveredStep = 979 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack2 := 'exportButton'.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack3 := [:recoveredBlock986Arg1 | 
    | recoveredBlock986Value0 recoveredBlock986Value1 recoveredBlock986Value2 recoveredBlock986Value3 recoveredBlock986Value4 recoveredBlock986Value5 recoveredBlock986Value6 recoveredBlock986Value7 recoveredBlock986Value8 recoveredBlock986Value9 recoveredBlock986Value10 recoveredBlock986Value11 recoveredBlock986Value12 recoveredBlock986Value13 recoveredBlock986Value14 |
    recoveredBlock986Value0 := recoveredBlock986Arg1.
    recoveredBlock986Value1 := recoveredBlock986Value0.
    recoveredBlock986Value2 := XmICON.
    (recoveredBlock986Value1) labelType: (recoveredBlock986Value2).
    recoveredBlock986Value3 := recoveredBlock986Value0.
    recoveredBlock986Value4 := (self) resourceManager.
    recoveredBlock986Value5 := (recoveredBlock986Value4) returnIconWithName: ('GeneralExport').
    (recoveredBlock986Value3) labelIcon: (recoveredBlock986Value5).
    recoveredBlock986Value6 := recoveredBlock986Value0.
    recoveredBlock986Value7 := (self) resourceManager.
    recoveredBlock986Value8 := recoveredBlock986Arg1.
    recoveredBlock986Value9 := (recoveredBlock986Value8) labelIcon.
    recoveredBlock986Value10 := (recoveredBlock986Value9) name.
    recoveredBlock986Value11 := (recoveredBlock986Value7) returnGrayedIconWithName: (recoveredBlock986Value10).
    (recoveredBlock986Value6) labelInsensitiveIcon: (recoveredBlock986Value11).
    recoveredBlock986Value12 := recoveredBlock986Value0.
    (recoveredBlock986Value12) height: (24).
    recoveredBlock986Value13 := recoveredBlock986Value0.
    (recoveredBlock986Value13) width: (24).
    recoveredBlock986Value14 := (recoveredBlock986Value0) recomputeSize: (false).
    recoveredBlock986Value14
].
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1067.
        ].
        recoveredStep = 1067 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack2 := 'exportButton'.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1081.
        ].
        recoveredStep = 1081 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack3 := [:block28133060Arg1 | 
    | block28133060Value0 block28133060Value1 block28133060Value2 block28133060Value3 block28133060Value4 |
    block28133060Value0 := block28133060Arg1.
    block28133060Value1 := block28133060Value0.
    (block28133060Value1) labelString: ('&Cancel').
    block28133060Value2 := block28133060Value0.
    (block28133060Value2) height: (24).
    block28133060Value3 := block28133060Value0.
    (block28133060Value3) width: (90).
    block28133060Value4 := (block28133060Value0) recomputeSize: (false).
    block28133060Value4
].
            recoveredPC := 1092.
        ].
        recoveredStep = 1092 ifTrue: [
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1127.
        ].
        recoveredStep = 1127 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1129.
        ].
        recoveredStep = 1129 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1132.
        ].
        recoveredStep = 1132 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 1138.
        ].
        recoveredStep = 1138 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1141.
        ].
        recoveredStep = 1141 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1143.
        ].
        recoveredStep = 1143 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack3 := [:block28133084Arg1 | 
    | block28133084Value0 block28133084Value1 block28133084Value2 block28133084Value3 block28133084Value4 |
    block28133084Value0 := block28133084Arg1.
    block28133084Value1 := block28133084Value0.
    (block28133084Value1) labelString: ('&OK').
    block28133084Value2 := block28133084Value0.
    (block28133084Value2) height: (24).
    block28133084Value3 := block28133084Value0.
    (block28133084Value3) width: (90).
    block28133084Value4 := (block28133084Value0) recomputeSize: (false).
    block28133084Value4
].
            recoveredPC := 1154.
        ].
        recoveredStep = 1154 ifTrue: [
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1191.
        ].
        recoveredStep = 1191 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack2 := [:recoveredBlock1208Arg1 | 
    | recoveredBlock1208Value0 recoveredBlock1208Value1 recoveredBlock1208Value2 recoveredBlock1208Value3 recoveredBlock1208Value4 recoveredBlock1208Value5 recoveredBlock1208Value6 recoveredBlock1208Value7 recoveredBlock1208Value8 recoveredBlock1208Value9 recoveredBlock1208Value10 recoveredBlock1208Value11 recoveredBlock1208Value12 recoveredBlock1208Value13 recoveredBlock1208Value14 |
    recoveredBlock1208Value0 := recoveredBlock1208Arg1.
    recoveredBlock1208Value1 := recoveredBlock1208Value0.
    recoveredBlock1208Value2 := XmATTACHFORM.
    (recoveredBlock1208Value1) topAttachment: (recoveredBlock1208Value2).
    recoveredBlock1208Value3 := recoveredBlock1208Value0.
    (recoveredBlock1208Value3) topOffset: (5).
    recoveredBlock1208Value4 := recoveredBlock1208Value0.
    recoveredBlock1208Value5 := XmATTACHWIDGET.
    (recoveredBlock1208Value4) bottomAttachment: (recoveredBlock1208Value5).
    recoveredBlock1208Value6 := recoveredBlock1208Value0.
    (recoveredBlock1208Value6) bottomOffset: (5).
    recoveredBlock1208Value7 := recoveredBlock1208Value0.
    recoveredBlock1208Value8 := recoveredLocal4.
    (recoveredBlock1208Value7) bottomWidget: (recoveredBlock1208Value8).
    recoveredBlock1208Value9 := recoveredBlock1208Value0.
    recoveredBlock1208Value10 := XmATTACHFORM.
    (recoveredBlock1208Value9) leftAttachment: (recoveredBlock1208Value10).
    recoveredBlock1208Value11 := recoveredBlock1208Value0.
    (recoveredBlock1208Value11) leftOffset: (5).
    recoveredBlock1208Value12 := recoveredBlock1208Value0.
    recoveredBlock1208Value13 := XmATTACHFORM.
    (recoveredBlock1208Value12) rightAttachment: (recoveredBlock1208Value13).
    recoveredBlock1208Value14 := (recoveredBlock1208Value0) rightOffset: (5).
    recoveredBlock1208Value14
].
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1287.
        ].
        recoveredStep = 1287 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack2 := [:recoveredBlock1290Arg1 | 
    | recoveredBlock1290Value0 recoveredBlock1290Value1 recoveredBlock1290Value2 recoveredBlock1290Value3 recoveredBlock1290Value4 recoveredBlock1290Value5 recoveredBlock1290Value6 recoveredBlock1290Value7 recoveredBlock1290Value8 recoveredBlock1290Value9 recoveredBlock1290Value10 recoveredBlock1290Value11 recoveredBlock1290Value12 recoveredBlock1290Value13 recoveredBlock1290Value14 |
    recoveredBlock1290Value0 := recoveredBlock1290Arg1.
    recoveredBlock1290Value1 := recoveredBlock1290Value0.
    recoveredBlock1290Value2 := XmATTACHNONE.
    (recoveredBlock1290Value1) topAttachment: (recoveredBlock1290Value2).
    recoveredBlock1290Value3 := recoveredBlock1290Value0.
    (recoveredBlock1290Value3) topOffset: (0).
    recoveredBlock1290Value4 := recoveredBlock1290Value0.
    recoveredBlock1290Value5 := XmATTACHNONE.
    (recoveredBlock1290Value4) bottomAttachment: (recoveredBlock1290Value5).
    recoveredBlock1290Value6 := recoveredBlock1290Value0.
    (recoveredBlock1290Value6) bottomOffset: (0).
    recoveredBlock1290Value7 := recoveredBlock1290Value0.
    recoveredBlock1290Value8 := XmATTACHWIDGET.
    (recoveredBlock1290Value7) leftAttachment: (recoveredBlock1290Value8).
    recoveredBlock1290Value9 := recoveredBlock1290Value0.
    recoveredBlock1290Value10 := recoveredLocal16.
    (recoveredBlock1290Value9) leftWidget: (recoveredBlock1290Value10).
    recoveredBlock1290Value11 := recoveredBlock1290Value0.
    (recoveredBlock1290Value11) leftOffset: (0).
    recoveredBlock1290Value12 := recoveredBlock1290Value0.
    recoveredBlock1290Value13 := XmATTACHFORM.
    (recoveredBlock1290Value12) rightAttachment: (recoveredBlock1290Value13).
    recoveredBlock1290Value14 := (recoveredBlock1290Value0) rightOffset: (0).
    recoveredBlock1290Value14
].
            recoveredPC := 1364.
        ].
        recoveredStep = 1364 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1369.
        ].
        recoveredStep = 1369 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1372.
        ].
        recoveredStep = 1372 ifTrue: [
            recoveredStack2 := [:recoveredBlock1372Arg1 | 
    | recoveredBlock1372Value0 recoveredBlock1372Value1 recoveredBlock1372Value2 recoveredBlock1372Value3 recoveredBlock1372Value4 recoveredBlock1372Value5 recoveredBlock1372Value6 recoveredBlock1372Value7 recoveredBlock1372Value8 recoveredBlock1372Value9 recoveredBlock1372Value10 recoveredBlock1372Value11 recoveredBlock1372Value12 recoveredBlock1372Value13 recoveredBlock1372Value14 recoveredBlock1372Value15 recoveredBlock1372Value16 |
    recoveredBlock1372Value0 := recoveredBlock1372Arg1.
    recoveredBlock1372Value1 := recoveredBlock1372Value0.
    recoveredBlock1372Value2 := XmATTACHWIDGET.
    (recoveredBlock1372Value1) topAttachment: (recoveredBlock1372Value2).
    recoveredBlock1372Value3 := recoveredBlock1372Value0.
    (recoveredBlock1372Value3) topOffset: (0).
    recoveredBlock1372Value4 := recoveredBlock1372Value0.
    recoveredBlock1372Value5 := recoveredLocal15.
    (recoveredBlock1372Value4) topWidget: (recoveredBlock1372Value5).
    recoveredBlock1372Value6 := recoveredBlock1372Value0.
    recoveredBlock1372Value7 := XmATTACHFORM.
    (recoveredBlock1372Value6) bottomAttachment: (recoveredBlock1372Value7).
    recoveredBlock1372Value8 := recoveredBlock1372Value0.
    (recoveredBlock1372Value8) bottomOffset: (0).
    recoveredBlock1372Value9 := recoveredBlock1372Value0.
    recoveredBlock1372Value10 := XmATTACHWIDGET.
    (recoveredBlock1372Value9) leftAttachment: (recoveredBlock1372Value10).
    recoveredBlock1372Value11 := recoveredBlock1372Value0.
    recoveredBlock1372Value12 := recoveredLocal16.
    (recoveredBlock1372Value11) leftWidget: (recoveredBlock1372Value12).
    recoveredBlock1372Value13 := recoveredBlock1372Value0.
    (recoveredBlock1372Value13) leftOffset: (0).
    recoveredBlock1372Value14 := recoveredBlock1372Value0.
    recoveredBlock1372Value15 := XmATTACHFORM.
    (recoveredBlock1372Value14) rightAttachment: (recoveredBlock1372Value15).
    recoveredBlock1372Value16 := (recoveredBlock1372Value0) rightOffset: (0).
    recoveredBlock1372Value16
].
            recoveredPC := 1454.
        ].
        recoveredStep = 1454 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1459.
        ].
        recoveredStep = 1459 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack2 := [:recoveredBlock1462Arg1 | 
    | recoveredBlock1462Value0 recoveredBlock1462Value1 recoveredBlock1462Value2 recoveredBlock1462Value3 recoveredBlock1462Value4 recoveredBlock1462Value5 recoveredBlock1462Value6 recoveredBlock1462Value7 recoveredBlock1462Value8 recoveredBlock1462Value9 recoveredBlock1462Value10 recoveredBlock1462Value11 recoveredBlock1462Value12 recoveredBlock1462Value13 recoveredBlock1462Value14 |
    recoveredBlock1462Value0 := recoveredBlock1462Arg1.
    recoveredBlock1462Value1 := recoveredBlock1462Value0.
    recoveredBlock1462Value2 := XmATTACHFORM.
    (recoveredBlock1462Value1) topAttachment: (recoveredBlock1462Value2).
    recoveredBlock1462Value3 := recoveredBlock1462Value0.
    (recoveredBlock1462Value3) topOffset: (0).
    recoveredBlock1462Value4 := recoveredBlock1462Value0.
    recoveredBlock1462Value5 := XmATTACHFORM.
    (recoveredBlock1462Value4) bottomAttachment: (recoveredBlock1462Value5).
    recoveredBlock1462Value6 := recoveredBlock1462Value0.
    (recoveredBlock1462Value6) bottomOffset: (0).
    recoveredBlock1462Value7 := recoveredBlock1462Value0.
    recoveredBlock1462Value8 := XmATTACHFORM.
    (recoveredBlock1462Value7) leftAttachment: (recoveredBlock1462Value8).
    recoveredBlock1462Value9 := recoveredBlock1462Value0.
    (recoveredBlock1462Value9) leftOffset: (0).
    recoveredBlock1462Value10 := recoveredBlock1462Value0.
    recoveredBlock1462Value11 := XmATTACHWIDGET.
    (recoveredBlock1462Value10) rightAttachment: (recoveredBlock1462Value11).
    recoveredBlock1462Value12 := recoveredBlock1462Value0.
    (recoveredBlock1462Value12) rightOffset: (0).
    recoveredBlock1462Value13 := recoveredLocal16.
    recoveredBlock1462Value14 := (recoveredBlock1462Value0) rightWidget: (recoveredBlock1462Value13).
    recoveredBlock1462Value14
].
            recoveredPC := 1536.
        ].
        recoveredStep = 1536 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack2 := [:block281330a8Arg1 | 
    | block281330a8Value0 block281330a8Value1 block281330a8Value2 block281330a8Value3 block281330a8Value4 block281330a8Value5 block281330a8Value6 block281330a8Value7 block281330a8Value8 block281330a8Value9 block281330a8Value10 block281330a8Value11 block281330a8Value12 |
    block281330a8Value0 := block281330a8Arg1.
    block281330a8Value1 := block281330a8Value0.
    block281330a8Value2 := XmATTACHFORM.
    (block281330a8Value1) topAttachment: (block281330a8Value2).
    block281330a8Value3 := block281330a8Value0.
    (block281330a8Value3) topOffset: (0).
    block281330a8Value4 := block281330a8Value0.
    block281330a8Value5 := XmATTACHFORM.
    (block281330a8Value4) bottomAttachment: (block281330a8Value5).
    block281330a8Value6 := block281330a8Value0.
    (block281330a8Value6) bottomOffset: (0).
    block281330a8Value7 := block281330a8Value0.
    block281330a8Value8 := XmATTACHNONE.
    (block281330a8Value7) leftAttachment: (block281330a8Value8).
    block281330a8Value9 := block281330a8Value0.
    (block281330a8Value9) leftOffset: (0).
    block281330a8Value10 := block281330a8Value0.
    block281330a8Value11 := XmATTACHNONE.
    (block281330a8Value10) rightAttachment: (block281330a8Value11).
    block281330a8Value12 := (block281330a8Value0) rightOffset: (0).
    block281330a8Value12
].
            recoveredPC := 1548.
        ].
        recoveredStep = 1548 ifTrue: [
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack2 := [:recoveredBlock1620Arg1 | 
    | recoveredBlock1620Value0 recoveredBlock1620Value1 recoveredBlock1620Value2 recoveredBlock1620Value3 recoveredBlock1620Value4 recoveredBlock1620Value5 recoveredBlock1620Value6 recoveredBlock1620Value7 recoveredBlock1620Value8 recoveredBlock1620Value9 recoveredBlock1620Value10 recoveredBlock1620Value11 recoveredBlock1620Value12 recoveredBlock1620Value13 recoveredBlock1620Value14 recoveredBlock1620Value15 recoveredBlock1620Value16 |
    recoveredBlock1620Value0 := recoveredBlock1620Arg1.
    recoveredBlock1620Value1 := recoveredBlock1620Value0.
    recoveredBlock1620Value2 := XmATTACHFORM.
    (recoveredBlock1620Value1) topAttachment: (recoveredBlock1620Value2).
    recoveredBlock1620Value3 := recoveredBlock1620Value0.
    (recoveredBlock1620Value3) topOffset: (0).
    recoveredBlock1620Value4 := recoveredBlock1620Value0.
    recoveredBlock1620Value5 := XmATTACHWIDGET.
    (recoveredBlock1620Value4) bottomAttachment: (recoveredBlock1620Value5).
    recoveredBlock1620Value6 := recoveredBlock1620Value0.
    recoveredBlock1620Value7 := recoveredLocal11.
    (recoveredBlock1620Value6) bottomWidget: (recoveredBlock1620Value7).
    recoveredBlock1620Value8 := recoveredBlock1620Value0.
    (recoveredBlock1620Value8) bottomOffset: (5).
    recoveredBlock1620Value9 := recoveredBlock1620Value0.
    recoveredBlock1620Value10 := XmATTACHWIDGET.
    (recoveredBlock1620Value9) leftAttachment: (recoveredBlock1620Value10).
    recoveredBlock1620Value11 := recoveredBlock1620Value0.
    (recoveredBlock1620Value11) leftOffset: (0).
    recoveredBlock1620Value12 := recoveredBlock1620Value0.
    recoveredBlock1620Value13 := recoveredLocal16.
    (recoveredBlock1620Value12) leftWidget: (recoveredBlock1620Value13).
    recoveredBlock1620Value14 := recoveredBlock1620Value0.
    recoveredBlock1620Value15 := XmATTACHFORM.
    (recoveredBlock1620Value14) rightAttachment: (recoveredBlock1620Value15).
    recoveredBlock1620Value16 := (recoveredBlock1620Value0) rightOffset: (0).
    recoveredBlock1620Value16
].
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1707.
        ].
        recoveredStep = 1707 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1710.
        ].
        recoveredStep = 1710 ifTrue: [
            recoveredStack2 := [:recoveredBlock1710Arg1 | 
    | recoveredBlock1710Value0 recoveredBlock1710Value1 recoveredBlock1710Value2 recoveredBlock1710Value3 recoveredBlock1710Value4 recoveredBlock1710Value5 recoveredBlock1710Value6 recoveredBlock1710Value7 recoveredBlock1710Value8 recoveredBlock1710Value9 recoveredBlock1710Value10 recoveredBlock1710Value11 recoveredBlock1710Value12 recoveredBlock1710Value13 recoveredBlock1710Value14 |
    recoveredBlock1710Value0 := recoveredBlock1710Arg1.
    recoveredBlock1710Value1 := recoveredBlock1710Value0.
    recoveredBlock1710Value2 := XmATTACHNONE.
    (recoveredBlock1710Value1) topAttachment: (recoveredBlock1710Value2).
    recoveredBlock1710Value3 := recoveredBlock1710Value0.
    (recoveredBlock1710Value3) topOffset: (0).
    recoveredBlock1710Value4 := recoveredBlock1710Value0.
    recoveredBlock1710Value5 := XmATTACHWIDGET.
    (recoveredBlock1710Value4) bottomAttachment: (recoveredBlock1710Value5).
    recoveredBlock1710Value6 := recoveredBlock1710Value0.
    recoveredBlock1710Value7 := recoveredLocal15.
    (recoveredBlock1710Value6) bottomWidget: (recoveredBlock1710Value7).
    recoveredBlock1710Value8 := recoveredBlock1710Value0.
    (recoveredBlock1710Value8) bottomOffset: (0).
    recoveredBlock1710Value9 := recoveredBlock1710Value0.
    recoveredBlock1710Value10 := XmATTACHNONE.
    (recoveredBlock1710Value9) leftAttachment: (recoveredBlock1710Value10).
    recoveredBlock1710Value11 := recoveredBlock1710Value0.
    (recoveredBlock1710Value11) leftOffset: (0).
    recoveredBlock1710Value12 := recoveredBlock1710Value0.
    recoveredBlock1710Value13 := XmATTACHFORM.
    (recoveredBlock1710Value12) rightAttachment: (recoveredBlock1710Value13).
    recoveredBlock1710Value14 := (recoveredBlock1710Value0) rightOffset: (0).
    recoveredBlock1710Value14
].
            recoveredPC := 1784.
        ].
        recoveredStep = 1784 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1789.
        ].
        recoveredStep = 1789 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1792.
        ].
        recoveredStep = 1792 ifTrue: [
            recoveredStack2 := [:recoveredBlock1792Arg1 | 
    | recoveredBlock1792Value0 recoveredBlock1792Value1 recoveredBlock1792Value2 recoveredBlock1792Value3 recoveredBlock1792Value4 recoveredBlock1792Value5 recoveredBlock1792Value6 recoveredBlock1792Value7 recoveredBlock1792Value8 recoveredBlock1792Value9 recoveredBlock1792Value10 recoveredBlock1792Value11 recoveredBlock1792Value12 recoveredBlock1792Value13 recoveredBlock1792Value14 recoveredBlock1792Value15 recoveredBlock1792Value16 |
    recoveredBlock1792Value0 := recoveredBlock1792Arg1.
    recoveredBlock1792Value1 := recoveredBlock1792Value0.
    recoveredBlock1792Value2 := XmATTACHNONE.
    (recoveredBlock1792Value1) topAttachment: (recoveredBlock1792Value2).
    recoveredBlock1792Value3 := recoveredBlock1792Value0.
    (recoveredBlock1792Value3) topOffset: (0).
    recoveredBlock1792Value4 := recoveredBlock1792Value0.
    recoveredBlock1792Value5 := XmATTACHWIDGET.
    (recoveredBlock1792Value4) bottomAttachment: (recoveredBlock1792Value5).
    recoveredBlock1792Value6 := recoveredBlock1792Value0.
    recoveredBlock1792Value7 := recoveredLocal15.
    (recoveredBlock1792Value6) bottomWidget: (recoveredBlock1792Value7).
    recoveredBlock1792Value8 := recoveredBlock1792Value0.
    (recoveredBlock1792Value8) bottomOffset: (0).
    recoveredBlock1792Value9 := recoveredBlock1792Value0.
    recoveredBlock1792Value10 := XmATTACHNONE.
    (recoveredBlock1792Value9) leftAttachment: (recoveredBlock1792Value10).
    recoveredBlock1792Value11 := recoveredBlock1792Value0.
    (recoveredBlock1792Value11) leftOffset: (0).
    recoveredBlock1792Value12 := recoveredBlock1792Value0.
    recoveredBlock1792Value13 := XmATTACHWIDGET.
    (recoveredBlock1792Value12) rightAttachment: (recoveredBlock1792Value13).
    recoveredBlock1792Value14 := recoveredBlock1792Value0.
    (recoveredBlock1792Value14) rightOffset: (5).
    recoveredBlock1792Value15 := recoveredLocal11.
    recoveredBlock1792Value16 := (recoveredBlock1792Value0) rightWidget: (recoveredBlock1792Value15).
    recoveredBlock1792Value16
].
            recoveredPC := 1874.
        ].
        recoveredStep = 1874 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1879.
        ].
        recoveredStep = 1879 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            recoveredStack2 := [:recoveredBlock1882Arg1 | 
    | recoveredBlock1882Value0 recoveredBlock1882Value1 recoveredBlock1882Value2 recoveredBlock1882Value3 recoveredBlock1882Value4 recoveredBlock1882Value5 recoveredBlock1882Value6 recoveredBlock1882Value7 recoveredBlock1882Value8 recoveredBlock1882Value9 recoveredBlock1882Value10 recoveredBlock1882Value11 recoveredBlock1882Value12 recoveredBlock1882Value13 recoveredBlock1882Value14 recoveredBlock1882Value15 recoveredBlock1882Value16 |
    recoveredBlock1882Value0 := recoveredBlock1882Arg1.
    recoveredBlock1882Value1 := recoveredBlock1882Value0.
    recoveredBlock1882Value2 := XmATTACHNONE.
    (recoveredBlock1882Value1) topAttachment: (recoveredBlock1882Value2).
    recoveredBlock1882Value3 := recoveredBlock1882Value0.
    (recoveredBlock1882Value3) topOffset: (0).
    recoveredBlock1882Value4 := recoveredBlock1882Value0.
    recoveredBlock1882Value5 := XmATTACHWIDGET.
    (recoveredBlock1882Value4) bottomAttachment: (recoveredBlock1882Value5).
    recoveredBlock1882Value6 := recoveredBlock1882Value0.
    recoveredBlock1882Value7 := recoveredLocal15.
    (recoveredBlock1882Value6) bottomWidget: (recoveredBlock1882Value7).
    recoveredBlock1882Value8 := recoveredBlock1882Value0.
    (recoveredBlock1882Value8) bottomOffset: (0).
    recoveredBlock1882Value9 := recoveredBlock1882Value0.
    recoveredBlock1882Value10 := XmATTACHNONE.
    (recoveredBlock1882Value9) leftAttachment: (recoveredBlock1882Value10).
    recoveredBlock1882Value11 := recoveredBlock1882Value0.
    (recoveredBlock1882Value11) leftOffset: (0).
    recoveredBlock1882Value12 := recoveredBlock1882Value0.
    recoveredBlock1882Value13 := XmATTACHWIDGET.
    (recoveredBlock1882Value12) rightAttachment: (recoveredBlock1882Value13).
    recoveredBlock1882Value14 := recoveredBlock1882Value0.
    (recoveredBlock1882Value14) rightOffset: (5).
    recoveredBlock1882Value15 := recoveredLocal9.
    recoveredBlock1882Value16 := (recoveredBlock1882Value0) rightWidget: (recoveredBlock1882Value15).
    recoveredBlock1882Value16
].
            recoveredPC := 1964.
        ].
        recoveredStep = 1964 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1969.
        ].
        recoveredStep = 1969 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1972.
        ].
        recoveredStep = 1972 ifTrue: [
            recoveredStack2 := [:recoveredBlock1972Arg1 | 
    | recoveredBlock1972Value0 recoveredBlock1972Value1 recoveredBlock1972Value2 recoveredBlock1972Value3 recoveredBlock1972Value4 recoveredBlock1972Value5 recoveredBlock1972Value6 recoveredBlock1972Value7 recoveredBlock1972Value8 recoveredBlock1972Value9 recoveredBlock1972Value10 recoveredBlock1972Value11 recoveredBlock1972Value12 recoveredBlock1972Value13 |
    recoveredBlock1972Value0 := recoveredBlock1972Arg1.
    recoveredBlock1972Value1 := recoveredBlock1972Value0.
    recoveredBlock1972Value2 := XmATTACHNONE.
    (recoveredBlock1972Value1) bottomAttachment: (recoveredBlock1972Value2).
    recoveredBlock1972Value3 := recoveredBlock1972Value0.
    recoveredBlock1972Value4 := XmATTACHFORM.
    (recoveredBlock1972Value3) topAttachment: (recoveredBlock1972Value4).
    recoveredBlock1972Value5 := recoveredBlock1972Value0.
    (recoveredBlock1972Value5) topOffset: (0).
    recoveredBlock1972Value6 := recoveredBlock1972Value0.
    recoveredBlock1972Value7 := XmATTACHFORM.
    (recoveredBlock1972Value6) leftAttachment: (recoveredBlock1972Value7).
    recoveredBlock1972Value8 := recoveredBlock1972Value0.
    (recoveredBlock1972Value8) leftOffset: (0).
    recoveredBlock1972Value9 := recoveredBlock1972Value0.
    recoveredBlock1972Value10 := XmATTACHWIDGET.
    (recoveredBlock1972Value9) rightAttachment: (recoveredBlock1972Value10).
    recoveredBlock1972Value11 := recoveredBlock1972Value0.
    recoveredBlock1972Value12 := recoveredLocal2.
    (recoveredBlock1972Value11) rightWidget: (recoveredBlock1972Value12).
    recoveredBlock1972Value13 := (recoveredBlock1972Value0) rightOffset: (5).
    recoveredBlock1972Value13
].
            recoveredPC := 2040.
        ].
        recoveredStep = 2040 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2045.
        ].
        recoveredStep = 2045 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2048.
        ].
        recoveredStep = 2048 ifTrue: [
            recoveredStack2 := [:block281330ccArg1 | 
    | block281330ccValue0 block281330ccValue1 block281330ccValue2 block281330ccValue3 block281330ccValue4 block281330ccValue5 block281330ccValue6 block281330ccValue7 block281330ccValue8 block281330ccValue9 block281330ccValue10 |
    block281330ccValue0 := block281330ccArg1.
    block281330ccValue1 := block281330ccValue0.
    block281330ccValue2 := XmATTACHNONE.
    (block281330ccValue1) bottomAttachment: (block281330ccValue2).
    block281330ccValue3 := block281330ccValue0.
    block281330ccValue4 := XmATTACHFORM.
    (block281330ccValue3) topAttachment: (block281330ccValue4).
    block281330ccValue5 := block281330ccValue0.
    (block281330ccValue5) topOffset: (0).
    block281330ccValue6 := block281330ccValue0.
    block281330ccValue7 := XmATTACHNONE.
    (block281330ccValue6) leftAttachment: (block281330ccValue7).
    block281330ccValue8 := block281330ccValue0.
    block281330ccValue9 := XmATTACHFORM.
    (block281330ccValue8) rightAttachment: (block281330ccValue9).
    block281330ccValue10 := (block281330ccValue0) rightOffset: (0).
    block281330ccValue10
].
            recoveredPC := 2052.
        ].
        recoveredStep = 2052 ifTrue: [
            recoveredPC := 2104.
        ].
        recoveredStep = 2104 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2109.
        ].
        recoveredStep = 2109 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            recoveredStack2 := [:recoveredBlock2112Arg1 | 
    | recoveredBlock2112Value0 recoveredBlock2112Value1 recoveredBlock2112Value2 recoveredBlock2112Value3 recoveredBlock2112Value4 recoveredBlock2112Value5 recoveredBlock2112Value6 recoveredBlock2112Value7 recoveredBlock2112Value8 recoveredBlock2112Value9 recoveredBlock2112Value10 recoveredBlock2112Value11 recoveredBlock2112Value12 recoveredBlock2112Value13 recoveredBlock2112Value14 |
    recoveredBlock2112Value0 := recoveredBlock2112Arg1.
    recoveredBlock2112Value1 := recoveredBlock2112Value0.
    recoveredBlock2112Value2 := XmATTACHFORM.
    (recoveredBlock2112Value1) bottomAttachment: (recoveredBlock2112Value2).
    recoveredBlock2112Value3 := recoveredBlock2112Value0.
    (recoveredBlock2112Value3) bottomOffset: (0).
    recoveredBlock2112Value4 := recoveredBlock2112Value0.
    recoveredBlock2112Value5 := XmATTACHWIDGET.
    (recoveredBlock2112Value4) topAttachment: (recoveredBlock2112Value5).
    recoveredBlock2112Value6 := recoveredBlock2112Value0.
    recoveredBlock2112Value7 := recoveredLocal3.
    (recoveredBlock2112Value6) topWidget: (recoveredBlock2112Value7).
    recoveredBlock2112Value8 := recoveredBlock2112Value0.
    (recoveredBlock2112Value8) topOffset: (5).
    recoveredBlock2112Value9 := recoveredBlock2112Value0.
    recoveredBlock2112Value10 := XmATTACHFORM.
    (recoveredBlock2112Value9) leftAttachment: (recoveredBlock2112Value10).
    recoveredBlock2112Value11 := recoveredBlock2112Value0.
    (recoveredBlock2112Value11) leftOffset: (0).
    recoveredBlock2112Value12 := recoveredBlock2112Value0.
    recoveredBlock2112Value13 := XmATTACHFORM.
    (recoveredBlock2112Value12) rightAttachment: (recoveredBlock2112Value13).
    recoveredBlock2112Value14 := (recoveredBlock2112Value0) rightOffset: (0).
    recoveredBlock2112Value14
].
            recoveredPC := 2186.
        ].
        recoveredStep = 2186 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2191.
        ].
        recoveredStep = 2191 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2194.
        ].
        recoveredStep = 2194 ifTrue: [
            recoveredStack2 := [:block281330f0Arg1 | 
    | block281330f0Value0 block281330f0Value1 block281330f0Value2 block281330f0Value3 block281330f0Value4 block281330f0Value5 block281330f0Value6 block281330f0Value7 block281330f0Value8 block281330f0Value9 block281330f0Value10 block281330f0Value11 block281330f0Value12 |
    block281330f0Value0 := block281330f0Arg1.
    block281330f0Value1 := block281330f0Value0.
    block281330f0Value2 := XmATTACHFORM.
    (block281330f0Value1) bottomAttachment: (block281330f0Value2).
    block281330f0Value3 := block281330f0Value0.
    (block281330f0Value3) bottomOffset: (0).
    block281330f0Value4 := block281330f0Value0.
    block281330f0Value5 := XmATTACHFORM.
    (block281330f0Value4) topAttachment: (block281330f0Value5).
    block281330f0Value6 := block281330f0Value0.
    (block281330f0Value6) topOffset: (0).
    block281330f0Value7 := block281330f0Value0.
    block281330f0Value8 := XmATTACHFORM.
    (block281330f0Value7) leftAttachment: (block281330f0Value8).
    block281330f0Value9 := block281330f0Value0.
    (block281330f0Value9) leftOffset: (0).
    block281330f0Value10 := block281330f0Value0.
    block281330f0Value11 := XmATTACHFORM.
    (block281330f0Value10) rightAttachment: (block281330f0Value11).
    block281330f0Value12 := (block281330f0Value0) rightOffset: (0).
    block281330f0Value12
].
            recoveredPC := 2198.
        ].
        recoveredStep = 2198 ifTrue: [
            recoveredPC := 2262.
        ].
        recoveredStep = 2262 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2267.
        ].
        recoveredStep = 2267 ifTrue: [
            recoveredStack1 := EtasXMLDefinedOptions.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 2271.
        ].
        recoveredStep = 2271 ifTrue: [
            recoveredStack2 := 'HTMLOptionDescription'.
            recoveredPC := 2274.
        ].
        recoveredStep = 2274 ifTrue: [
            recoveredStack3 := 'ETASInternal'.
            recoveredPC := 2278.
        ].
        recoveredStep = 2278 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOption: (recoveredStack2) fromCategory: (recoveredStack3).
            recoveredPC := 2283.
        ].
        recoveredStep = 2283 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2284.
        ].
        recoveredStep = 2284 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 2287.
        ].
        recoveredStep = 2287 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 2296] ifFalse: [recoveredPC := 2290].
        ].
        recoveredStep = 2290 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2293.
        ].
        recoveredStep = 2293 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 2296] ifFalse: [recoveredPC := 2374].
        ].
        recoveredStep = 2296 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 2299.
        ].
        recoveredStep = 2299 ifTrue: [
            recoveredStack2 := [:block28133114Arg1 | 
    | block28133114Value0 block28133114Value1 block28133114Value2 block28133114Value3 block28133114Value4 block28133114Value5 block28133114Value6 block28133114Value7 block28133114Value8 block28133114Value9 block28133114Value10 block28133114Value11 block28133114Value12 |
    block28133114Value0 := block28133114Arg1.
    block28133114Value1 := block28133114Value0.
    block28133114Value2 := XmATTACHFORM.
    (block28133114Value1) bottomAttachment: (block28133114Value2).
    block28133114Value3 := block28133114Value0.
    (block28133114Value3) bottomOffset: (0).
    block28133114Value4 := block28133114Value0.
    block28133114Value5 := XmATTACHFORM.
    (block28133114Value4) topAttachment: (block28133114Value5).
    block28133114Value6 := block28133114Value0.
    (block28133114Value6) topOffset: (0).
    block28133114Value7 := block28133114Value0.
    block28133114Value8 := XmATTACHFORM.
    (block28133114Value7) leftAttachment: (block28133114Value8).
    block28133114Value9 := block28133114Value0.
    (block28133114Value9) leftOffset: (0).
    block28133114Value10 := block28133114Value0.
    block28133114Value11 := XmATTACHFORM.
    (block28133114Value10) rightAttachment: (block28133114Value11).
    block28133114Value12 := (block28133114Value0) rightOffset: (0).
    block28133114Value12
].
            recoveredPC := 2302.
        ].
        recoveredStep = 2302 ifTrue: [
            recoveredPC := 2366.
        ].
        recoveredStep = 2366 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2371.
        ].
        recoveredStep = 2371 ifTrue: [
            recoveredPC := 2449.
        ].
        recoveredStep = 2374 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2377.
        ].
        recoveredStep = 2377 ifTrue: [
            recoveredStack2 := [:block28133138Arg1 | 
    | block28133138Value0 block28133138Value1 block28133138Value2 block28133138Value3 block28133138Value4 block28133138Value5 block28133138Value6 block28133138Value7 block28133138Value8 block28133138Value9 block28133138Value10 block28133138Value11 block28133138Value12 |
    block28133138Value0 := block28133138Arg1.
    block28133138Value1 := block28133138Value0.
    block28133138Value2 := XmATTACHFORM.
    (block28133138Value1) bottomAttachment: (block28133138Value2).
    block28133138Value3 := block28133138Value0.
    (block28133138Value3) bottomOffset: (0).
    block28133138Value4 := block28133138Value0.
    block28133138Value5 := XmATTACHFORM.
    (block28133138Value4) topAttachment: (block28133138Value5).
    block28133138Value6 := block28133138Value0.
    (block28133138Value6) topOffset: (0).
    block28133138Value7 := block28133138Value0.
    block28133138Value8 := XmATTACHFORM.
    (block28133138Value7) leftAttachment: (block28133138Value8).
    block28133138Value9 := block28133138Value0.
    (block28133138Value9) leftOffset: (0).
    block28133138Value10 := block28133138Value0.
    block28133138Value11 := XmATTACHFORM.
    (block28133138Value10) rightAttachment: (block28133138Value11).
    block28133138Value12 := (block28133138Value0) rightOffset: (0).
    block28133138Value12
].
            recoveredPC := 2380.
        ].
        recoveredStep = 2380 ifTrue: [
            recoveredPC := 2444.
        ].
        recoveredStep = 2444 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2449.
        ].
        recoveredStep = 2449 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2452.
        ].
        recoveredStep = 2452 ifTrue: [
            recoveredStack2 := [:block2813315cArg1 | 
    | block2813315cValue0 block2813315cValue1 block2813315cValue2 block2813315cValue3 block2813315cValue4 block2813315cValue5 block2813315cValue6 block2813315cValue7 block2813315cValue8 block2813315cValue9 block2813315cValue10 |
    block2813315cValue0 := block2813315cArg1.
    block2813315cValue1 := block2813315cValue0.
    block2813315cValue2 := XmATTACHFORM.
    (block2813315cValue1) bottomAttachment: (block2813315cValue2).
    block2813315cValue3 := block2813315cValue0.
    (block2813315cValue3) bottomOffset: (5).
    block2813315cValue4 := block2813315cValue0.
    block2813315cValue5 := XmATTACHNONE.
    (block2813315cValue4) topAttachment: (block2813315cValue5).
    block2813315cValue6 := block2813315cValue0.
    block2813315cValue7 := XmATTACHNONE.
    (block2813315cValue6) leftAttachment: (block2813315cValue7).
    block2813315cValue8 := block2813315cValue0.
    block2813315cValue9 := XmATTACHFORM.
    (block2813315cValue8) rightAttachment: (block2813315cValue9).
    block2813315cValue10 := (block2813315cValue0) rightOffset: (5).
    block2813315cValue10
].
            recoveredPC := 2456.
        ].
        recoveredStep = 2456 ifTrue: [
            recoveredPC := 2508.
        ].
        recoveredStep = 2508 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2513.
        ].
        recoveredStep = 2513 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2516.
        ].
        recoveredStep = 2516 ifTrue: [
            recoveredStack2 := [:recoveredBlock2516Arg1 | 
    | recoveredBlock2516Value0 recoveredBlock2516Value1 recoveredBlock2516Value2 recoveredBlock2516Value3 recoveredBlock2516Value4 recoveredBlock2516Value5 recoveredBlock2516Value6 recoveredBlock2516Value7 recoveredBlock2516Value8 recoveredBlock2516Value9 recoveredBlock2516Value10 recoveredBlock2516Value11 recoveredBlock2516Value12 |
    recoveredBlock2516Value0 := recoveredBlock2516Arg1.
    recoveredBlock2516Value1 := recoveredBlock2516Value0.
    recoveredBlock2516Value2 := XmATTACHFORM.
    (recoveredBlock2516Value1) bottomAttachment: (recoveredBlock2516Value2).
    recoveredBlock2516Value3 := recoveredBlock2516Value0.
    (recoveredBlock2516Value3) bottomOffset: (5).
    recoveredBlock2516Value4 := recoveredBlock2516Value0.
    recoveredBlock2516Value5 := XmATTACHNONE.
    (recoveredBlock2516Value4) topAttachment: (recoveredBlock2516Value5).
    recoveredBlock2516Value6 := recoveredBlock2516Value0.
    recoveredBlock2516Value7 := XmATTACHNONE.
    (recoveredBlock2516Value6) leftAttachment: (recoveredBlock2516Value7).
    recoveredBlock2516Value8 := recoveredBlock2516Value0.
    recoveredBlock2516Value9 := XmATTACHWIDGET.
    (recoveredBlock2516Value8) rightAttachment: (recoveredBlock2516Value9).
    recoveredBlock2516Value10 := recoveredBlock2516Value0.
    recoveredBlock2516Value11 := recoveredLocal4.
    (recoveredBlock2516Value10) rightWidget: (recoveredBlock2516Value11).
    recoveredBlock2516Value12 := (recoveredBlock2516Value0) rightOffset: (5).
    recoveredBlock2516Value12
].
            recoveredPC := 2578.
        ].
        recoveredStep = 2578 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2583.
        ].
        recoveredStep = 2583 ifTrue: [
            recoveredStack1 := recoveredLocal24.
            recoveredPC := 2586.
        ].
        recoveredStep = 2586 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 2590.
        ].
        recoveredStep = 2590 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2591.
        ].
        recoveredStep = 2591 ifTrue: [
            recoveredStack4 := 'topShellResizeCallback:clientData:callData:'.
            recoveredPC := 2594.
        ].
        recoveredStep = 2594 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2595.
        ].
        recoveredStep = 2595 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2599.
        ].
        recoveredStep = 2599 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2602.
        ].
        recoveredStep = 2602 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2603.
        ].
        recoveredStep = 2603 ifTrue: [
            recoveredStack3 := XmNdefaultActionCallback.
            recoveredPC := 2606.
        ].
        recoveredStep = 2606 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2607.
        ].
        recoveredStep = 2607 ifTrue: [
            recoveredStack5 := 'optionTreeDefaultActionCallback:clientData:callData:'.
            recoveredPC := 2610.
        ].
        recoveredStep = 2610 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2611.
        ].
        recoveredStep = 2611 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2615.
        ].
        recoveredStep = 2615 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 2618.
        ].
        recoveredStep = 2618 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2619.
        ].
        recoveredStep = 2619 ifTrue: [
            recoveredStack5 := 'optionTreeVisualInfoCallback:clientData:callData:'.
            recoveredPC := 2622.
        ].
        recoveredStep = 2622 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2623.
        ].
        recoveredStep = 2623 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2627.
        ].
        recoveredStep = 2627 ifTrue: [
            recoveredStack3 := XmNchildrenCallback.
            recoveredPC := 2630.
        ].
        recoveredStep = 2630 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2631.
        ].
        recoveredStep = 2631 ifTrue: [
            recoveredStack5 := 'optionTreeChildrenCallback:clientData:callData:'.
            recoveredPC := 2634.
        ].
        recoveredStep = 2634 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2635.
        ].
        recoveredStep = 2635 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2639.
        ].
        recoveredStep = 2639 ifTrue: [
            recoveredStack3 := XmNsingleSelectionCallback.
            recoveredPC := 2642.
        ].
        recoveredStep = 2642 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2643.
        ].
        recoveredStep = 2643 ifTrue: [
            recoveredStack5 := 'optionTreeSingleSelectionCallback:clientData:callData:'.
            recoveredPC := 2646.
        ].
        recoveredStep = 2646 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2647.
        ].
        recoveredStep = 2647 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 2651.
        ].
        recoveredStep = 2651 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 2654.
        ].
        recoveredStep = 2654 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2655.
        ].
        recoveredStep = 2655 ifTrue: [
            recoveredStack4 := 'optionTreeBrowseSelectionCallback:clientData:callData:'.
            recoveredPC := 2658.
        ].
        recoveredStep = 2658 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2659.
        ].
        recoveredStep = 2659 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2663.
        ].
        recoveredStep = 2663 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2666.
        ].
        recoveredStep = 2666 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2670.
        ].
        recoveredStep = 2670 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2671.
        ].
        recoveredStep = 2671 ifTrue: [
            recoveredStack4 := 'okButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2674.
        ].
        recoveredStep = 2674 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2675.
        ].
        recoveredStep = 2675 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2679.
        ].
        recoveredStep = 2679 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2682.
        ].
        recoveredStep = 2682 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2686.
        ].
        recoveredStep = 2686 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2687.
        ].
        recoveredStep = 2687 ifTrue: [
            recoveredStack4 := 'cancelButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2690.
        ].
        recoveredStep = 2690 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2691.
        ].
        recoveredStep = 2691 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2695.
        ].
        recoveredStep = 2695 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2698.
        ].
        recoveredStep = 2698 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2702.
        ].
        recoveredStep = 2702 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2703.
        ].
        recoveredStep = 2703 ifTrue: [
            recoveredStack4 := 'defaultButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2706.
        ].
        recoveredStep = 2706 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2707.
        ].
        recoveredStep = 2707 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2711.
        ].
        recoveredStep = 2711 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2714.
        ].
        recoveredStep = 2714 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2718.
        ].
        recoveredStep = 2718 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2719.
        ].
        recoveredStep = 2719 ifTrue: [
            recoveredStack4 := 'importButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2722.
        ].
        recoveredStep = 2722 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2723.
        ].
        recoveredStep = 2723 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2727.
        ].
        recoveredStep = 2727 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2730.
        ].
        recoveredStep = 2730 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2734.
        ].
        recoveredStep = 2734 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2735.
        ].
        recoveredStep = 2735 ifTrue: [
            recoveredStack4 := 'exportButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2738.
        ].
        recoveredStep = 2738 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2739.
        ].
        recoveredStep = 2739 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2743.
        ].
        recoveredStep = 2743 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 2746.
        ].
        recoveredStep = 2746 ifTrue: [
            recoveredStack2 := XmCRDRAG.
            recoveredPC := 2750.
        ].
        recoveredStep = 2750 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2751.
        ].
        recoveredStep = 2751 ifTrue: [
            recoveredStack4 := 'moveSplitBar:clientData:callData:'.
            recoveredPC := 2754.
        ].
        recoveredStep = 2754 ifTrue: [
            recoveredStack5 := recoveredLocal16.
            recoveredPC := 2757.
        ].
        recoveredStep = 2757 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2761.
        ].
        recoveredStep = 2761 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 2764.
        ].
        recoveredStep = 2764 ifTrue: [
            recoveredStack2 := XmCRDRAG.
            recoveredPC := 2768.
        ].
        recoveredStep = 2768 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2769.
        ].
        recoveredStep = 2769 ifTrue: [
            recoveredStack4 := 'moveSplitBar:clientData:callData:'.
            recoveredPC := 2772.
        ].
        recoveredStep = 2772 ifTrue: [
            recoveredStack5 := recoveredLocal15.
            recoveredPC := 2775.
        ].
        recoveredStep = 2775 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2779.
        ].
        recoveredStep = 2779 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2782.
        ].
        recoveredStep = 2782 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2786.
        ].
        recoveredStep = 2786 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2787.
        ].
        recoveredStep = 2787 ifTrue: [
            recoveredStack4 := 'filterButtonActivateCallback:clientData:callData:'.
            recoveredPC := 2790.
        ].
        recoveredStep = 2790 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2791.
        ].
        recoveredStep = 2791 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2795.
        ].
        recoveredStep = 2795 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2798.
        ].
        recoveredStep = 2798 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2799.
        ].
        recoveredStep = 2799 ifTrue: [
            recoveredStack3 := KeyReleaseMask.
            recoveredPC := 2802.
        ].
        recoveredStep = 2802 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2803.
        ].
        recoveredStep = 2803 ifTrue: [
            recoveredStack5 := 'filterTextKeyReleased:clientData:callData:'.
            recoveredPC := 2806.
        ].
        recoveredStep = 2806 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2807.
        ].
        recoveredStep = 2807 ifTrue: [
            (recoveredStack2) addEventHandler: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2811.
        ].
        recoveredStep = 2811 ifTrue: [
            recoveredStack3 := 'type filter text'.
            recoveredPC := 2814.
        ].
        recoveredStep = 2814 ifTrue: [
            (recoveredStack2) setString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2819.
        ].
        recoveredStep = 2819 ifTrue: [
            recoveredStack3 := CgRGBColor.
            recoveredPC := 2821.
        ].
        recoveredStep = 2821 ifTrue: [
            recoveredStack3 := (recoveredStack3) lightGray.
            recoveredPC := 2825.
        ].
        recoveredStep = 2825 ifTrue: [
            (recoveredStack2) foregroundColor: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 2828.
        ].
        recoveredStep = 2828 ifTrue: [
            recoveredStack3 := XmNfocusCallback.
            recoveredPC := 2832.
        ].
        recoveredStep = 2832 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 2833.
        ].
        recoveredStep = 2833 ifTrue: [
            recoveredStack5 := 'filterTextFocus:clientData:callData:'.
            recoveredPC := 2836.
        ].
        recoveredStep = 2836 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 2837.
        ].
        recoveredStep = 2837 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 2841.
        ].
        recoveredStep = 2841 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 2844.
        ].
        recoveredStep = 2844 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2845.
        ].
        recoveredStep = 2845 ifTrue: [
            recoveredStack4 := 'filterTextLosingFocus:clientData:callData:'.
            recoveredPC := 2848.
        ].
        recoveredStep = 2848 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 2849.
        ].
        recoveredStep = 2849 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2853.
        ].
        recoveredStep = 2853 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2856.
        ].
        recoveredStep = 2856 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2861.
        ].
        recoveredStep = 2861 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2864.
        ].
        recoveredStep = 2864 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2869.
        ].
        recoveredStep = 2869 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 2872.
        ].
        recoveredStep = 2872 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2877.
        ].
        recoveredStep = 2877 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2880.
        ].
        recoveredStep = 2880 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2885.
        ].
        recoveredStep = 2885 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2888.
        ].
        recoveredStep = 2888 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2893.
        ].
        recoveredStep = 2893 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 2896.
        ].
        recoveredStep = 2896 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2901.
        ].
        recoveredStep = 2901 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2904.
        ].
        recoveredStep = 2904 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2909.
        ].
        recoveredStep = 2909 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2912.
        ].
        recoveredStep = 2912 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2917.
        ].
        recoveredStep = 2917 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2921.
        ].
        recoveredStep = 2921 ifTrue: [
            recoveredStack1 := 'Import Options for Selected Node from XML File'.
            recoveredPC := 2924.
        ].
        recoveredStep = 2924 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 2927.
        ].
        recoveredStep = 2927 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2931.
        ].
        recoveredStep = 2931 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2932.
        ].
        recoveredStep = 2932 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2937.
        ].
        recoveredStep = 2937 ifTrue: [
            recoveredStack1 := 'Export Options of Selected Node into XML File'.
            recoveredPC := 2940.
        ].
        recoveredStep = 2940 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 2943.
        ].
        recoveredStep = 2943 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2947.
        ].
        recoveredStep = 2947 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2948.
        ].
        recoveredStep = 2948 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2953.
        ].
        recoveredStep = 2953 ifTrue: [
            recoveredStack1 := 'Set Options of Selected Node back to System Default'.
            recoveredPC := 2956.
        ].
        recoveredStep = 2956 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 2959.
        ].
        recoveredStep = 2959 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2963.
        ].
        recoveredStep = 2963 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2964.
        ].
        recoveredStep = 2964 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2969.
        ].
        recoveredStep = 2969 ifTrue: [
            recoveredStack1 := 'A String to Filter Available Options'.
            recoveredPC := 2972.
        ].
        recoveredStep = 2972 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 2975.
        ].
        recoveredStep = 2975 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2979.
        ].
        recoveredStep = 2979 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 2980.
        ].
        recoveredStep = 2980 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 2985.
        ].
        recoveredStep = 2985 ifTrue: [
            recoveredStack1 := 'Apply Filter String'.
            recoveredPC := 2988.
        ].
        recoveredStep = 2988 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 2991.
        ].
        recoveredStep = 2991 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 2995.
        ].
        recoveredStep = 2995 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 2998.
        ].
        recoveredStep = 2998 ifTrue: [
            recoveredStack1 := recoveredLocal25.
            recoveredPC := 3001.
        ].
        recoveredStep = 3001 ifTrue: [
            recoveredStack2 := recoveredLocal23.
            recoveredPC := 3004.
        ].
        recoveredStep = 3004 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 3009.
        ].
        recoveredStep = 3009 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

