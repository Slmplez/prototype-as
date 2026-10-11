"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20043d9c; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
okPushButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('okPushButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004450c; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
cancelPushButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('cancelPushButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044cac; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
volumeComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('volumeComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046a0c; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
currentDirectoryLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('currentDirectoryLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046afc; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
directoryIconTree
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('directoryIconTree').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004791c; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
directoryLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('directoryLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004849c; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
newDirPushButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('newDirPushButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200488fc; bytecode file offset 0x9451f8"
!RBPathDialog methodsFor: 'recovered'!
volumeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('volumeLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a3c8; bytecode file offset 0x957a6c"
!RBPathDialog methodsFor: 'recovered'!
aCancelPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2005a464; bytecode file offset 0x957a6c"
!RBPathDialog methodsFor: 'recovered'!
anDirectoryIconTreebrowseSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) displayCurrentDirectory.
    ^self
! !

"ASDBase.ic method 0x2005a77c; bytecode file offset 0x957a6c"
!RBPathDialog methodsFor: 'recovered'!
aOkPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) ok.
    ^self
! !

"ASDBase.ic method 0x2005ae24; bytecode file offset 0x957a6c"
!RBPathDialog methodsFor: 'recovered'!
aNewDirPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) newDir.
    ^self
! !

"ASDBase.ic method 0x20063cb4; bytecode file offset 0x961970"
!RBPathDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    recoveredValue0 := (self) directoryIconTree.
    (recoveredValue0) setInputFocus.
    ^self
! !

"ASDBase.ic method 0x2006fa98; bytecode file offset 0x96c42c"
!RBPathDialog methodsFor: 'recovered'!
result
    | recoveredValue0 |
    recoveredValue0 := result.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fff0; bytecode file offset 0x96cb7c"
!RBPathDialog methodsFor: 'recovered'!
root
    | recoveredValue0 |
    recoveredValue0 := root.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070a78; bytecode file offset 0x96d3ec"
!RBPathDialog methodsFor: 'recovered'!
childrenEvaluateBlock
    | recoveredValue0 |
    recoveredValue0 := childrenEvaluateBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070bf4; bytecode file offset 0x96d580"
!RBPathDialog methodsFor: 'recovered'!
title
    | recoveredValue0 |
    recoveredValue0 := title.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070ce0; bytecode file offset 0x96d6a4"
!RBPathDialog methodsFor: 'recovered'!
markSpecialDirectoryBlock
    | recoveredValue0 |
    recoveredValue0 := markSpecialDirectoryBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070f48; bytecode file offset 0x96d87c"
!RBPathDialog methodsFor: 'recovered'!
getChildrenBlock
    | recoveredValue0 |
    recoveredValue0 := getChildrenBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200723f8; bytecode file offset 0x96ee04"
!RBPathDialog methodsFor: 'recovered'!
bitPattern
    ^1
! !

"ASDBase.ic method 0x20072860; bytecode file offset 0x96f1c4"
!RBPathDialog methodsFor: 'recovered'!
bitNewDir
    ^2
! !

"ASDBase.ic method 0x20087de4; bytecode file offset 0x9846a0"
!RBPathDialog methodsFor: 'recovered'!
items
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := root.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090ccc; bytecode file offset 0x98d690"
!RBPathDialog methodsFor: 'recovered'!
setFocusToIconTree
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) directoryIconTree.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) setFocus.
    ^self
! !

"ASDBase.ic method 0x20090cf4; bytecode file offset 0x98d690"
!RBPathDialog methodsFor: 'recovered'!
setFocusToVolumeComboBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) volumeComboBox.
    recoveredValue1 := (recoveredValue0) osWidget.
    (recoveredValue1) setFocus.
    ^self
! !

"ASDBase.ic method 0x200b44c0; bytecode file offset 0x9b0db4"
!RBPathDialog methodsFor: 'recovered'!
displayCurrentDirectory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentDirectoryLabel.
    recoveredValue1 := (self) currentPath.
    recoveredValue2 := (recoveredValue1) path.
    (recoveredValue0) labelString: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c7130; bytecode file offset 0x9c3a8c"
!RBPathDialog methodsFor: 'recovered'!
childrenEvaluateBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childrenEvaluateBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c732c; bytecode file offset 0x9c3c10"
!RBPathDialog methodsFor: 'recovered'!
title: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    title := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c73b0; bytecode file offset 0x9c3d64"
!RBPathDialog methodsFor: 'recovered'!
markSpecialDirectoryBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markSpecialDirectoryBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7594; bytecode file offset 0x9c3e48"
!RBPathDialog methodsFor: 'recovered'!
newDirTitle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newDirTitle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c75f0; bytecode file offset 0x9c3efc"
!RBPathDialog methodsFor: 'recovered'!
getChildrenBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    getChildrenBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cfb90; bytecode file offset 0x9cc454"
!RBPathDialog methodsFor: 'recovered'!
setPattern
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfb9c; bytecode file offset 0x9cc454"
!RBPathDialog methodsFor: 'recovered'!
clearNewDir
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfbb8; bytecode file offset 0x9cc470"
!RBPathDialog methodsFor: 'recovered'!
isPattern
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cfbd4; bytecode file offset 0x9cc498"
!RBPathDialog methodsFor: 'recovered'!
setNewDir
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfbe0; bytecode file offset 0x9cc498"
!RBPathDialog methodsFor: 'recovered'!
clearPattern
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cfbfc; bytecode file offset 0x9cc4b4"
!RBPathDialog methodsFor: 'recovered'!
isNewDir
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d62e8; bytecode file offset 0x9d3134"
!RBPathDialog methodsFor: 'recovered'!
postOpen
    super postOpen.
    (self) selection.
    ^self
! !

"ASDBase.ic method 0x20106850; bytecode file offset 0xa03108"
!RBPathDialog methodsFor: 'recovered'!
path
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := result.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106cf0; bytecode file offset 0xa035a8"
!RBPathDialog methodsFor: 'recovered'!
newDirTitle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := newDirTitle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Path.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := newDirTitle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20185070; bytecode file offset 0xa81930"
!RBPathDialog methodsFor: 'recovered'!
root: recoveredArg1
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := RBDirectory.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPath: (recoveredStack2) parentDirectory: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            root := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018a0a4; bytecode file offset 0xa86968"
!RBPathDialog methodsFor: 'recovered'!
currentPath
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryIconTree.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := root.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20197090; bytecode file offset 0xa93954"
!RBPathDialog methodsFor: 'recovered'!
root: recoveredArg1 pattern: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) setPattern.
    recoveredValue0 := RBDirectory.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createPath: (recoveredValue1) parentDirectory: (nil).
    root := recoveredValue2.
    recoveredValue3 := root.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) contentsPattern: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    pattern := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x201dc9b0; bytecode file offset 0xad9278"
!RBPathDialog methodsFor: 'recovered'!
anDirectoryIconTreeExpand: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFolded.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) unfold.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
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
            (recoveredStack1) fold.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) refreshItem: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eabc4; bytecode file offset 0xae7490"
!RBPathDialog methodsFor: 'recovered'!
anDirectoryIconTreeChildren: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) childrenEvaluateBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getChildrenFor: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
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

"ASDBase.ic method 0x201f414c; bytecode file offset 0xaf0b10"
!RBPathDialog methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isPattern.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isPattern: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isNewDir.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isNewDir: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x20216854; bytecode file offset 0xb13124"
!RBPathDialog methodsFor: 'recovered'!
selectKeySequence
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDictName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := detectedKeyInputString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) equalMethod: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20231a54; bytecode file offset 0xb2e32c"
!RBPathDialog methodsFor: 'recovered'!
menuOpenExplorer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryIconTree.
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
            recoveredStack0 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPath.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentPath.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) explore: (recoveredStack1).
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

"ASDBase.ic method 0x20234754; bytecode file offset 0xb31018"
!RBPathDialog methodsFor: 'recovered'!
select: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentDirectory.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) parentDirectory.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) select: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a908; bytecode file offset 0xb371d8"
!RBPathDialog methodsFor: 'recovered'!
newDir
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := cachedChildren.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentDirectory.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDir: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202640bc; bytecode file offset 0xb60998"
!RBPathDialog methodsFor: 'recovered'!
createContextMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) owner: (self).
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := (self) directoryIconTree.
    recoveredBlock19Value1 := (recoveredBlock19Value0) selectedItems.
    recoveredBlock19Value2 := (recoveredBlock19Value1) notEmpty.
    recoveredBlock19Value2
].
    (recoveredValue5) add: ('menuOpenExplorer') label: ('~Open explorer') enable: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20299f08; bytecode file offset 0xb967e0"
!RBPathDialog methodsFor: 'recovered'!
aVolumeComboBoxSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := RBDirectory.
    recoveredBlock4Value1 := recoveredArg3.
    recoveredBlock4Value2 := (recoveredBlock4Value1) item.
    recoveredBlock4Value3 := (recoveredBlock4Value0) createPath: (recoveredBlock4Value2) parentDirectory: (nil).
    root := recoveredBlock4Value3.
    recoveredBlock4Value4 := (self) directoryIconTree.
    recoveredBlock4Value5 := recoveredBlock4Value4.
    recoveredBlock4Value6 := (self) items.
    (recoveredBlock4Value5) items: (recoveredBlock4Value6).
    recoveredBlock4Value7 := recoveredBlock4Value4.
    (recoveredBlock4Value7) expandPos: (1) notify: (true).
    recoveredBlock4Value8 := (recoveredBlock4Value4) selectPos: (1) notify: (true).
    recoveredBlock4Value8
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202c64dc; bytecode file offset 0xbc2da4"
!RBPathDialog methodsFor: 'recovered'!
getChildrenFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := cachedChildren.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) getChildrenBlock.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            (recoveredBlock9Stack0 == nil) ifTrue: [recoveredBlock9PC := 38] ifFalse: [recoveredBlock9PC := 20].
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack0 := self.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) getChildrenBlock.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack1 := recoveredArg1.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) value: (recoveredBlock9Stack1).
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 27.
        ].
        recoveredBlock9Step = 27 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local1.
            recoveredBlock9PC := 28.
        ].
        recoveredBlock9Step = 28 ifTrue: [
            (recoveredBlock9Stack0 ~~ nil) ifTrue: [recoveredBlock9PC := 35] ifFalse: [recoveredBlock9PC := 32].
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack0 := #().
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 38 ifTrue: [
            recoveredBlock9Stack0 := recoveredArg1.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) trueSubDirectories.
            recoveredBlock9PC := 42.
        ].
        recoveredBlock9Step = 42 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 43.
        ].
        recoveredBlock9Step = 43 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local1.
            recoveredBlock9PC := 44.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202e0d94; bytecode file offset 0xbdd674"
!RBPathDialog methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := root.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBDirectory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'c:\'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPath: (recoveredStack2) parentDirectory: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            root := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            pattern := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block280e6c64Arg1 | 
    | block280e6c64Value0 block280e6c64Value1 |
    block280e6c64Value0 := block280e6c64Arg1.
    block280e6c64Value1 := (block280e6c64Value0) hasSubDirectories.
    block280e6c64Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) childrenEvaluateBlock: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            cachedChildren := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            super initialize.
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

"ASDBase.ic method 0x202e2600; bytecode file offset 0xbdeed4"
!RBPathDialog methodsFor: 'recovered'!
firstSelection: recoveredArg1
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
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBDirectory.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRecursive: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            firstSelection := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := firstSelection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) root.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            root := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := firstSelection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentsList.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280e7390Arg1 | 
    | block280e7390Value0 block280e7390Value1 |
    block280e7390Value0 := block280e7390Arg1.
    block280e7390Value1 := (block280e7390Value0) unfold.
    block280e7390Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e823c; bytecode file offset 0xbe4b30"
!RBPathDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeFocusCallbacks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) initializeNlsSupport.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryIconTree.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNewDir.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'newDirPushButton'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) volumeComboBox.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootDirectories.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := root.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) volume.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) selectPos: (recoveredStack1) notify: (recoveredStack2).
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

"ASDBase.ic method 0x202fbe7c; bytecode file offset 0xbf8750"
!RBPathDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := result.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) root.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := result.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20313f88; bytecode file offset 0xc10864"
!RBPathDialog methodsFor: 'recovered'!
initializeFocusCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) directoryIconTree.
    recoveredValue1 := (recoveredValue0) focusProxy.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := XmNfocusCallback.
    recoveredValue4 := (self) directoryLabel.
    (recoveredValue2) addCallback: (recoveredValue3) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue4).
    recoveredValue5 := XmNlosingFocusCallback.
    recoveredValue6 := (self) directoryLabel.
    (recoveredValue1) addCallback: (recoveredValue5) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue6).
    recoveredValue7 := (self) volumeComboBox.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := XmNfocusCallback.
    recoveredValue10 := (self) volumeLabel.
    (recoveredValue8) addCallback: (recoveredValue9) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (recoveredValue10).
    recoveredValue11 := XmNlosingFocusCallback.
    recoveredValue12 := (self) volumeLabel.
    (recoveredValue7) addCallback: (recoveredValue11) receiver: (self) selector: ('losingFocus:clientData:callData:') clientData: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2033378c; bytecode file offset 0xc3007c"
!RBPathDialog methodsFor: 'recovered'!
initializeNlsSupport
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) title.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBPathDialogTitle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) title.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelPushButton.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := SCCancel.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) okPushButton.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) newDirPushButton.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := RBNewDirButtonLabel.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) volumeLabel.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := RBVolumeLabel.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryLabel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := RBDirectoriesLabel.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
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

"ASDBase.ic method 0x2039c490; bytecode file offset 0xc98e14"
!RBPathDialog methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setPattern.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setPattern--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setNewDir.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setNewDir--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) clearPattern.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------clearPattern--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) clearNewDir.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------clearNewDir--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) contents.
    (recoveredValue15) edit.
    ^self
! !

"ASDBase.ic method 0x2043c554; bytecode file offset 0xd38e70"
!RBPathDialog methodsFor: 'recovered'!
newDir: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwExtendedTextPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) newDirTitle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := SCInsertNewPath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) path.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) result: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'checkValidWin95Name:'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptWithCharacterMethod: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkDosPath: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDirectoryRecursive: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := SCCrationOfNewDirFailed.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) path.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) firstSelection: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) selection.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := SCOnlyMSDOSNames.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20460b20; bytecode file offset 0xd5d42c"
!RBPathDialog methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := XKReturn.
    (recoveredValue4) at: (recoveredValue5) put: ('ok').
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) widgetAt: ('okPushButton').
    recoveredValue8 := recoveredLocal1.
    (recoveredValue6) at: (recoveredValue7) put: (recoveredValue8).
    recoveredValue9 := Dictionary.
    recoveredValue10 := (recoveredValue9) new.
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := RBNewDirButtonLabel.
    recoveredValue14 := (recoveredValue13) getHotkeyString.
    recoveredValue15 := ('Alt-') , (recoveredValue14).
    (recoveredValue12) at: (recoveredValue15) put: ('newDir').
    recoveredValue16 := recoveredValue11.
    recoveredValue17 := SCOk.
    recoveredValue18 := (recoveredValue17) getHotkeyString.
    recoveredValue19 := ('Alt-') , (recoveredValue18).
    (recoveredValue16) at: (recoveredValue19) put: ('ok').
    recoveredValue20 := recoveredValue11.
    recoveredValue21 := SCCancel.
    recoveredValue22 := (recoveredValue21) getHotkeyString.
    recoveredValue23 := ('Alt-') , (recoveredValue22).
    (recoveredValue20) at: (recoveredValue23) put: ('cancel').
    recoveredValue24 := recoveredValue11.
    recoveredValue25 := RBDirectoriesLabel.
    recoveredValue26 := (recoveredValue25) getHotkeyString.
    recoveredValue27 := ('Alt-') , (recoveredValue26).
    (recoveredValue24) at: (recoveredValue27) put: ('setFocusToIconTree').
    recoveredValue28 := recoveredValue11.
    recoveredValue29 := RBVolumeLabel.
    recoveredValue30 := (recoveredValue29) getHotkeyString.
    recoveredValue31 := ('Alt-') , (recoveredValue30).
    (recoveredValue28) at: (recoveredValue31) put: ('setFocusToVolumeComboBox').
    recoveredValue32 := XKInsert.
    (recoveredValue11) at: (recoveredValue32) put: ('newDir').
    recoveredValue33 := recoveredLocal2.
    recoveredValue34 := (self) widgetAt: ('aMainWindow1').
    recoveredValue35 := recoveredLocal1.
    (recoveredValue33) at: (recoveredValue34) put: (recoveredValue35).
    recoveredValue36 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue36).
    ^self
! !

"ASDBase.ic method 0x2047df00; bytecode file offset 0xd7a7f4"
!RBPathDialog methodsFor: 'recovered'!
anDirectoryIconTreeDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredLocal4 := recoveredBlock4Stack1.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal4.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) itemAt: (recoveredBlock4Stack2).
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredLocal3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 89] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal3.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack3 := recoveredLocal4.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) getVisualInfoFor: (recoveredBlock4Stack2) position: (recoveredBlock4Stack3).
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) visualInfoCalldata.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) icon.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) name.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack2 := 'GeneralFolderClosed'.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asString.
            recoveredBlock4PC := 64.
        ].
        recoveredBlock4Step = 64 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asUppercase.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) equals: (recoveredBlock4Stack2).
            recoveredBlock4PC := 68.
        ].
        recoveredBlock4Step = 68 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 89] ifFalse: [recoveredBlock4PC := 72].
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack2 := 'GeneralFolderOpened'.
            recoveredBlock4PC := 77.
        ].
        recoveredBlock4Step = 77 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asString.
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) asUppercase.
            recoveredBlock4PC := 81.
        ].
        recoveredBlock4Step = 81 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) equals: (recoveredBlock4Stack2).
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 89] ifFalse: [recoveredBlock4PC := 86].
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            (recoveredBlock4Stack1) ok.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal4.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isExpandedPos: (recoveredBlock4Stack2).
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 100] ifFalse: [recoveredBlock4PC := 112].
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 103.
        ].
        recoveredBlock4Step = 103 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal4.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack3 := true.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) collapsePos: (recoveredBlock4Stack2) notify: (recoveredBlock4Stack3).
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 112 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal4.
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack3 := true.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) expandPos: (recoveredBlock4Stack2) notify: (recoveredBlock4Stack3).
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2049c490; bytecode file offset 0xd98d84"
!RBPathDialog methodsFor: 'recovered'!
selection
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) directoryIconTree.
    recoveredValue1 := recoveredValue0.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) items.
    (recoveredValue0) items: (recoveredValue2).
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) gc.
    recoveredValue5 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := (recoveredBlock17Value0) initializeGraphics.
    recoveredBlock17Value1
].
    (recoveredValue4) ifNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := root.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            (recoveredBlock35Stack1) fold.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack1 := firstSelection.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            (recoveredBlock35Stack1 == nil) ifTrue: [recoveredBlock35PC := 118] ifFalse: [recoveredBlock35PC := 52].
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            (recoveredBlock35Stack1) deselectAllItems.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack1 := firstSelection.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) parentsList.
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack2 := [:recoveredBlock35Block61Arg1 | 
    | recoveredBlock35Block61Stack0 recoveredBlock35Block61Stack1 recoveredBlock35Block61Stack2 recoveredBlock35Block61Stack3 recoveredBlock35Block61Stack4 recoveredBlock35Block61PC recoveredBlock35Block61Step recoveredBlock35Block61Done recoveredBlock35Block61Result |
    recoveredBlock35Block61Stack0 := nil.
    recoveredBlock35Block61PC := 68.
    recoveredBlock35Block61Done := false.
    [recoveredBlock35Block61Done not] whileTrue: [
        recoveredBlock35Block61Step := recoveredBlock35Block61PC.
        recoveredBlock35Block61Step = 68 ifTrue: [
            recoveredBlock35Block61Stack1 := nil.
            recoveredBlock35Block61PC := 69.
        ].
        recoveredBlock35Block61Step = 69 ifTrue: [
            recoveredBlock35Block61Stack2 := recoveredLocal2.
            recoveredBlock35Block61PC := 72.
        ].
        recoveredBlock35Block61Step = 72 ifTrue: [
            recoveredBlock35Block61Stack3 := recoveredBlock35Block61Arg1.
            recoveredBlock35Block61PC := 73.
        ].
        recoveredBlock35Block61Step = 73 ifTrue: [
            recoveredBlock35Block61Stack2 := (recoveredBlock35Block61Stack2) indexOf: (recoveredBlock35Block61Stack3).
            recoveredBlock35Block61PC := 75.
        ].
        recoveredBlock35Block61Step = 75 ifTrue: [
            recoveredBlock35Block61Stack3 := recoveredBlock35Block61Stack2.
            recoveredBlock35Block61PC := 76.
        ].
        recoveredBlock35Block61Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock35Block61Stack3.
            recoveredBlock35Block61PC := 79.
        ].
        recoveredBlock35Block61Step = 79 ifTrue: [
            recoveredBlock35Block61Stack3 := 0.
            recoveredBlock35Block61PC := 81.
        ].
        recoveredBlock35Block61Step = 81 ifTrue: [
            recoveredBlock35Block61Stack2 := (recoveredBlock35Block61Stack2) ~= (recoveredBlock35Block61Stack3).
            recoveredBlock35Block61PC := 82.
        ].
        recoveredBlock35Block61Step = 82 ifTrue: [
            (recoveredBlock35Block61Stack2) ifTrue: [recoveredBlock35Block61PC := 86] ifFalse: [recoveredBlock35Block61PC := 104].
        ].
        recoveredBlock35Block61Step = 86 ifTrue: [
            recoveredBlock35Block61PC := 87.
        ].
        recoveredBlock35Block61Step = 87 ifTrue: [
            recoveredBlock35Block61Stack1 := recoveredLocal2.
            recoveredBlock35Block61PC := 90.
        ].
        recoveredBlock35Block61Step = 90 ifTrue: [
            recoveredBlock35Block61Stack2 := recoveredLocal1.
            recoveredBlock35Block61PC := 93.
        ].
        recoveredBlock35Block61Step = 93 ifTrue: [
            recoveredBlock35Block61Stack3 := true.
            recoveredBlock35Block61PC := 94.
        ].
        recoveredBlock35Block61Step = 94 ifTrue: [
            (recoveredBlock35Block61Stack1) expandPos: (recoveredBlock35Block61Stack2) notify: (recoveredBlock35Block61Stack3).
            recoveredBlock35Block61PC := 96.
        ].
        recoveredBlock35Block61Step = 96 ifTrue: [
            recoveredBlock35Block61Stack1 := recoveredLocal2.
            recoveredBlock35Block61PC := 99.
        ].
        recoveredBlock35Block61Step = 99 ifTrue: [
            recoveredBlock35Block61Stack2 := recoveredLocal1.
            recoveredBlock35Block61PC := 102.
        ].
        recoveredBlock35Block61Step = 102 ifTrue: [
            recoveredBlock35Block61Stack1 := (recoveredBlock35Block61Stack1) drawFullItemAt: (recoveredBlock35Block61Stack2).
            recoveredBlock35Block61PC := 104.
        ].
        recoveredBlock35Block61Step = 104 ifTrue: [
            recoveredBlock35Block61Result := recoveredBlock35Block61Stack1.
            recoveredBlock35Block61Done := true.
        ].
    ].
    recoveredBlock35Block61Result
].
            recoveredBlock35PC := 105.
        ].
        recoveredBlock35Step = 105 ifTrue: [
            (recoveredBlock35Stack1) do: (recoveredBlock35Stack2).
            recoveredBlock35PC := 107.
        ].
        recoveredBlock35Step = 107 ifTrue: [
            recoveredBlock35Stack1 := self.
            recoveredBlock35PC := 108.
        ].
        recoveredBlock35Step = 108 ifTrue: [
            recoveredBlock35Stack2 := firstSelection.
            recoveredBlock35PC := 110.
        ].
        recoveredBlock35Step = 110 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal2.
            recoveredBlock35PC := 113.
        ].
        recoveredBlock35Step = 113 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) select: (recoveredBlock35Stack2) in: (recoveredBlock35Stack3).
            recoveredBlock35PC := 115.
        ].
        recoveredBlock35Step = 115 ifTrue: [
            recoveredBlock35PC := 131.
        ].
        recoveredBlock35Step = 118 ifTrue: [
            recoveredBlock35Stack1 := self.
            recoveredBlock35PC := 119.
        ].
        recoveredBlock35Step = 119 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) directoryIconTree.
            recoveredBlock35PC := 120.
        ].
        recoveredBlock35Step = 120 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Stack1.
            recoveredBlock35PC := 121.
        ].
        recoveredBlock35Step = 121 ifTrue: [
            recoveredBlock35Stack3 := 1.
            recoveredBlock35PC := 123.
        ].
        recoveredBlock35Step = 123 ifTrue: [
            recoveredBlock35Stack4 := true.
            recoveredBlock35PC := 124.
        ].
        recoveredBlock35Step = 124 ifTrue: [
            (recoveredBlock35Stack2) expandPos: (recoveredBlock35Stack3) notify: (recoveredBlock35Stack4).
            recoveredBlock35PC := 126.
        ].
        recoveredBlock35Step = 126 ifTrue: [
            recoveredBlock35Stack2 := 1.
            recoveredBlock35PC := 128.
        ].
        recoveredBlock35Step = 128 ifTrue: [
            recoveredBlock35Stack3 := true.
            recoveredBlock35PC := 129.
        ].
        recoveredBlock35Step = 129 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) selectPos: (recoveredBlock35Stack2) notify: (recoveredBlock35Stack3).
            recoveredBlock35PC := 131.
        ].
        recoveredBlock35Step = 131 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
    (recoveredValue6) deferRefreshWhile: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x204dd4fc; bytecode file offset 0xdd9e08"
!RBPathDialog methodsFor: 'recovered'!
anDirectoryIconTreeVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) childrenEvaluateBlock.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpandedPos: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getChildrenFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := '...'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) label: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'GeneralFolderOpened'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'GeneralFolderClosed'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'GeneralFolderClosed'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := 'GeneralOverlayDatabase'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon: (recoveredStack2) overlayedWith: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) markSpecialDirectoryBlock.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentDirectory.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := 'GeneralWorkspace'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := 'GeneralFolderClosed'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) icon: (recoveredStack1).
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

"ASDBase.ic method 0x206904b8; bytecode file offset 0xf8cf78"
!RBPathDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block2812b08cArg1 | 
    | block2812b08cValue0 block2812b08cValue1 block2812b08cValue2 block2812b08cValue3 block2812b08cValue4 block2812b08cValue5 block2812b08cValue6 block2812b08cValue7 block2812b08cValue8 block2812b08cValue9 block2812b08cValue10 block2812b08cValue11 |
    block2812b08cValue0 := block2812b08cArg1.
    block2812b08cValue1 := block2812b08cValue0.
    block2812b08cValue2 := MWMINPUTSYSTEMMODAL.
    (block2812b08cValue1) mwmInputMode: (block2812b08cValue2).
    block2812b08cValue3 := block2812b08cValue0.
    (block2812b08cValue3) title: ('Path Selection ').
    block2812b08cValue4 := block2812b08cValue0.
    block2812b08cValue5 := MWMDECORALL.
    block2812b08cValue6 := MWMDECORMINIMIZE.
    block2812b08cValue7 := (block2812b08cValue5) | (block2812b08cValue6).
    block2812b08cValue8 := MWMDECORMAXIMIZE.
    block2812b08cValue9 := (block2812b08cValue7) | (block2812b08cValue8).
    (block2812b08cValue4) mwmDecorations: (block2812b08cValue9).
    block2812b08cValue10 := block2812b08cValue0.
    (block2812b08cValue10) height: (404).
    block2812b08cValue11 := (block2812b08cValue0) width: (443).
    block2812b08cValue11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block2812b0b0Arg1 | 
    | block2812b0b0Value0 block2812b0b0Value1 block2812b0b0Value2 block2812b0b0Value3 block2812b0b0Value4 block2812b0b0Value5 |
    block2812b0b0Value0 := block2812b0b0Arg1.
    block2812b0b0Value1 := block2812b0b0Value0.
    (block2812b0b0Value1) x: (318).
    block2812b0b0Value2 := block2812b0b0Value0.
    block2812b0b0Value3 := XmVERTICAL.
    (block2812b0b0Value2) orientation: (block2812b0b0Value3).
    block2812b0b0Value4 := block2812b0b0Value0.
    (block2812b0b0Value4) height: (250).
    block2812b0b0Value5 := (block2812b0b0Value0) width: (20).
    block2812b0b0Value5
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'aSeparator1'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'okPushButton'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := [:block2812b0d4Arg1 | 
    | block2812b0d4Value0 block2812b0d4Value1 block2812b0d4Value2 block2812b0d4Value3 block2812b0d4Value4 block2812b0d4Value5 |
    block2812b0d4Value0 := block2812b0d4Arg1.
    block2812b0d4Value1 := block2812b0d4Value0.
    (block2812b0d4Value1) x: (251).
    block2812b0d4Value2 := block2812b0d4Value0.
    (block2812b0d4Value2) labelString: ('&Ok').
    block2812b0d4Value3 := block2812b0d4Value0.
    (block2812b0d4Value3) y: (10).
    block2812b0d4Value4 := block2812b0d4Value0.
    (block2812b0d4Value4) height: (25).
    block2812b0d4Value5 := (block2812b0d4Value0) width: (110).
    block2812b0d4Value5
].
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'okPushButton'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'cancelPushButton'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:block2812b0f8Arg1 | 
    | block2812b0f8Value0 block2812b0f8Value1 block2812b0f8Value2 block2812b0f8Value3 block2812b0f8Value4 block2812b0f8Value5 |
    block2812b0f8Value0 := block2812b0f8Arg1.
    block2812b0f8Value1 := block2812b0f8Value0.
    (block2812b0f8Value1) x: (251).
    block2812b0f8Value2 := block2812b0f8Value0.
    (block2812b0f8Value2) labelString: ('&Cancel').
    block2812b0f8Value3 := block2812b0f8Value0.
    (block2812b0f8Value3) y: (45).
    block2812b0f8Value4 := block2812b0f8Value0.
    (block2812b0f8Value4) height: (25).
    block2812b0f8Value5 := (block2812b0f8Value0) width: (110).
    block2812b0f8Value5
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'cancelPushButton'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := 'newDirPushButton'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := [:block2812b11cArg1 | 
    | block2812b11cValue0 block2812b11cValue1 block2812b11cValue2 block2812b11cValue3 block2812b11cValue4 block2812b11cValue5 |
    block2812b11cValue0 := block2812b11cArg1.
    block2812b11cValue1 := block2812b11cValue0.
    (block2812b11cValue1) x: (251).
    block2812b11cValue2 := block2812b11cValue0.
    (block2812b11cValue2) labelString: ('&New...').
    block2812b11cValue3 := block2812b11cValue0.
    (block2812b11cValue3) y: (283).
    block2812b11cValue4 := block2812b11cValue0.
    (block2812b11cValue4) height: (25).
    block2812b11cValue5 := (block2812b11cValue0) width: (110).
    block2812b11cValue5
].
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := 'newDirPushButton'.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 'volumeLabel'.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := [:recoveredBlock343Arg1 | 
    | recoveredBlock343Value0 recoveredBlock343Value1 recoveredBlock343Value2 recoveredBlock343Value3 recoveredBlock343Value4 recoveredBlock343Value5 recoveredBlock343Value6 recoveredBlock343Value7 recoveredBlock343Value8 recoveredBlock343Value9 |
    recoveredBlock343Value0 := recoveredBlock343Arg1.
    recoveredBlock343Value1 := recoveredBlock343Value0.
    (recoveredBlock343Value1) x: (10).
    recoveredBlock343Value2 := recoveredBlock343Value0.
    recoveredBlock343Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock343Value2) alignment: (recoveredBlock343Value3).
    recoveredBlock343Value4 := recoveredBlock343Value0.
    (recoveredBlock343Value4) labelString: ('&Volume').
    recoveredBlock343Value5 := recoveredBlock343Value0.
    (recoveredBlock343Value5) marginWidth: (0).
    recoveredBlock343Value6 := recoveredBlock343Value0.
    (recoveredBlock343Value6) marginHeight: (0).
    recoveredBlock343Value7 := recoveredBlock343Value0.
    (recoveredBlock343Value7) y: (262).
    recoveredBlock343Value8 := (self) defaultLabelBlue.
    recoveredBlock343Value9 := (recoveredBlock343Value0) foregroundColor: (recoveredBlock343Value8).
    recoveredBlock343Value9
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 'volumeLabel'.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := 'directoryIconTree'.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack3 := [:recoveredBlock412Arg1 | 
    | recoveredBlock412Value0 recoveredBlock412Value1 recoveredBlock412Value2 recoveredBlock412Value3 recoveredBlock412Value4 recoveredBlock412Value5 |
    recoveredBlock412Value0 := recoveredBlock412Arg1.
    recoveredBlock412Value1 := recoveredBlock412Value0.
    (recoveredBlock412Value1) itemWidth: (3).
    recoveredBlock412Value2 := recoveredBlock412Value0.
    (recoveredBlock412Value2) innerMargin: (1).
    recoveredBlock412Value3 := recoveredBlock412Value0.
    recoveredBlock412Value4 := (self) items.
    (recoveredBlock412Value3) items: (recoveredBlock412Value4).
    recoveredBlock412Value5 := (recoveredBlock412Value0) itemHeight: (20).
    recoveredBlock412Value5
].
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack2 := 'aScrolledIconTree1'.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := 'directoryIconTree'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack2 := 'volumeComboBox'.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := [:block2812b140Arg1 | 
    | block2812b140Stack0 block2812b140Stack1 block2812b140Stack2 block2812b140Stack3 block2812b140Stack4 block2812b140Stack5 block2812b140PC block2812b140Step block2812b140Done block2812b140Result |
    block2812b140Stack0 := self.
    block2812b140PC := 4.
    block2812b140Done := false.
    [block2812b140Done not] whileTrue: [
        block2812b140Step := block2812b140PC.
        block2812b140Step = 4 ifTrue: [
            block2812b140Stack1 := block2812b140Arg1.
            block2812b140PC := 5.
        ].
        block2812b140Step = 5 ifTrue: [
            block2812b140Stack2 := block2812b140Stack1.
            block2812b140PC := 6.
        ].
        block2812b140Step = 6 ifTrue: [
            block2812b140Stack3 := 10.
            block2812b140PC := 8.
        ].
        block2812b140Step = 8 ifTrue: [
            (block2812b140Stack2) x: (block2812b140Stack3).
            block2812b140Stack2 := block2812b140Stack1.
            block2812b140PC := 11.
        ].
        block2812b140Step = 11 ifTrue: [
            block2812b140Stack3 := 1.
            block2812b140PC := 13.
        ].
        block2812b140Step = 13 ifTrue: [
            (block2812b140Stack2) borderWidth: (block2812b140Stack3).
            block2812b140Stack2 := block2812b140Stack1.
            block2812b140PC := 17.
        ].
        block2812b140Step = 17 ifTrue: [
            block2812b140Stack3 := 229.
            block2812b140PC := 20.
        ].
        block2812b140Step = 20 ifTrue: [
            (block2812b140Stack2) y: (block2812b140Stack3).
            block2812b140Stack2 := block2812b140Stack1.
            block2812b140PC := 23.
        ].
        block2812b140Step = 23 ifTrue: [
            block2812b140Stack3 := 25.
            block2812b140PC := 25.
        ].
        block2812b140Step = 25 ifTrue: [
            (block2812b140Stack2) height: (block2812b140Stack3).
            block2812b140Stack2 := block2812b140Stack1.
            block2812b140PC := 28.
        ].
        block2812b140Step = 28 ifTrue: [
            block2812b140Stack3 := CfsDirectoryDescriptor.
            block2812b140PC := 32.
        ].
        block2812b140Step = 32 ifTrue: [
            block2812b140Stack3 := (block2812b140Stack3) rootDirectories.
            block2812b140PC := 37.
        ].
        block2812b140Step = 37 ifTrue: [
            block2812b140Stack4 := [:block2812b164Arg1 | 
    | block2812b164Stack0 block2812b164Stack1 block2812b164Stack2 block2812b164PC block2812b164Step block2812b164Done block2812b164Result |
    block2812b164Stack0 := self.
    block2812b164PC := 4.
    block2812b164Done := false.
    [block2812b164Done not] whileTrue: [
        block2812b164Step := block2812b164PC.
        block2812b164Step = 4 ifTrue: [
            block2812b164Stack1 := block2812b164Arg1.
            block2812b164PC := 5.
        ].
        block2812b164Step = 5 ifTrue: [
            block2812b164Stack1 := (block2812b164Stack1) isString.
            block2812b164PC := 9.
        ].
        block2812b164Step = 9 ifTrue: [
            (block2812b164Stack1) ifTrue: [block2812b164PC := 12] ifFalse: [block2812b164PC := 16].
        ].
        block2812b164Step = 12 ifTrue: [
            block2812b164Stack1 := block2812b164Arg1.
            block2812b164PC := 13.
        ].
        block2812b164Step = 13 ifTrue: [
            block2812b164PC := 21.
        ].
        block2812b164Step = 16 ifTrue: [
            block2812b164Stack1 := block2812b164Arg1.
            block2812b164PC := 17.
        ].
        block2812b164Step = 17 ifTrue: [
            block2812b164Stack1 := (block2812b164Stack1) printString.
            block2812b164PC := 21.
        ].
        block2812b164Step = 21 ifTrue: [
            block2812b164Result := block2812b164Stack1.
            block2812b164Done := true.
        ].
    ].
    block2812b164Result
].
            block2812b140PC := 40.
        ].
        block2812b140Step = 40 ifTrue: [
            block2812b140PC := 62.
        ].
        block2812b140Step = 62 ifTrue: [
            block2812b140Stack3 := (block2812b140Stack3) collect: (block2812b140Stack4).
            block2812b140PC := 67.
        ].
        block2812b140Step = 67 ifTrue: [
            (block2812b140Stack2) items: (block2812b140Stack3).
            block2812b140PC := 71.
        ].
        block2812b140Step = 71 ifTrue: [
            block2812b140Stack2 := 100.
            block2812b140PC := 74.
        ].
        block2812b140Step = 74 ifTrue: [
            block2812b140Stack1 := (block2812b140Stack1) width: (block2812b140Stack2).
            block2812b140PC := 76.
        ].
        block2812b140Step = 76 ifTrue: [
            block2812b140Result := block2812b140Stack1.
            block2812b140Done := true.
        ].
    ].
    block2812b140Result
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack2 := 'volumeComboBox'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := 'directoryLabel'.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := [:recoveredBlock608Arg1 | 
    | recoveredBlock608Value0 recoveredBlock608Value1 recoveredBlock608Value2 recoveredBlock608Value3 recoveredBlock608Value4 recoveredBlock608Value5 recoveredBlock608Value6 recoveredBlock608Value7 recoveredBlock608Value8 |
    recoveredBlock608Value0 := recoveredBlock608Arg1.
    recoveredBlock608Value1 := recoveredBlock608Value0.
    (recoveredBlock608Value1) x: (10).
    recoveredBlock608Value2 := recoveredBlock608Value0.
    (recoveredBlock608Value2) labelString: ('&Directories').
    recoveredBlock608Value3 := recoveredBlock608Value0.
    (recoveredBlock608Value3) marginWidth: (0).
    recoveredBlock608Value4 := recoveredBlock608Value0.
    (recoveredBlock608Value4) marginHeight: (0).
    recoveredBlock608Value5 := recoveredBlock608Value0.
    (recoveredBlock608Value5) y: (10).
    recoveredBlock608Value6 := recoveredBlock608Value0.
    (recoveredBlock608Value6) height: (20).
    recoveredBlock608Value7 := (self) defaultLabelBlue.
    recoveredBlock608Value8 := (recoveredBlock608Value0) foregroundColor: (recoveredBlock608Value7).
    recoveredBlock608Value8
].
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack2 := 'directoryLabel'.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := 'currentDirectoryLabel'.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack3 := [:block2812b188Arg1 | 
    | block2812b188Value0 block2812b188Value1 block2812b188Value2 block2812b188Value3 block2812b188Value4 block2812b188Value5 block2812b188Value6 block2812b188Value7 block2812b188Value8 |
    block2812b188Value0 := block2812b188Arg1.
    block2812b188Value1 := block2812b188Value0.
    (block2812b188Value1) x: (10).
    block2812b188Value2 := block2812b188Value0.
    block2812b188Value3 := XmALIGNMENTBEGINNING.
    (block2812b188Value2) alignment: (block2812b188Value3).
    block2812b188Value4 := block2812b188Value0.
    (block2812b188Value4) labelString: (' ').
    block2812b188Value5 := block2812b188Value0.
    (block2812b188Value5) marginHeight: (0).
    block2812b188Value6 := block2812b188Value0.
    (block2812b188Value6) y: (40).
    block2812b188Value7 := block2812b188Value0.
    (block2812b188Value7) height: (20).
    block2812b188Value8 := (block2812b188Value0) width: (100).
    block2812b188Value8
].
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack2 := 'currentDirectoryLabel'.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack2 := [:recoveredBlock746Arg1 | 
    | recoveredBlock746Value0 recoveredBlock746Value1 recoveredBlock746Value2 |
    recoveredBlock746Value0 := recoveredBlock746Arg1.
    recoveredBlock746Value1 := recoveredLocal11.
    recoveredBlock746Value2 := (recoveredBlock746Value0) workWindow: (recoveredBlock746Value1).
    recoveredBlock746Value2
].
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 767.
        ].
        recoveredStep = 767 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack2 := [:block2812b1acArg1 | 
    | block2812b1acValue0 block2812b1acValue1 block2812b1acValue2 block2812b1acValue3 block2812b1acValue4 block2812b1acValue5 block2812b1acValue6 block2812b1acValue7 |
    block2812b1acValue0 := block2812b1acArg1.
    block2812b1acValue1 := block2812b1acValue0.
    block2812b1acValue2 := XmATTACHFORM.
    (block2812b1acValue1) bottomAttachment: (block2812b1acValue2).
    block2812b1acValue3 := block2812b1acValue0.
    block2812b1acValue4 := XmATTACHFORM.
    (block2812b1acValue3) topAttachment: (block2812b1acValue4).
    block2812b1acValue5 := block2812b1acValue0.
    block2812b1acValue6 := XmATTACHFORM.
    (block2812b1acValue5) rightAttachment: (block2812b1acValue6).
    block2812b1acValue7 := (block2812b1acValue0) rightOffset: (120).
    block2812b1acValue7
].
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredStack2 := [:block2812b1d0Arg1 | 
    | block2812b1d0Value0 block2812b1d0Value1 block2812b1d0Value2 block2812b1d0Value3 block2812b1d0Value4 block2812b1d0Value5 block2812b1d0Value6 |
    block2812b1d0Value0 := block2812b1d0Arg1.
    block2812b1d0Value1 := block2812b1d0Value0.
    block2812b1d0Value2 := XmATTACHOPPOSITEFORM.
    (block2812b1d0Value1) leftAttachment: (block2812b1d0Value2).
    block2812b1d0Value3 := block2812b1d0Value0.
    (block2812b1d0Value3) leftOffset: (-120).
    block2812b1d0Value4 := block2812b1d0Value0.
    block2812b1d0Value5 := XmATTACHFORM.
    (block2812b1d0Value4) rightAttachment: (block2812b1d0Value5).
    block2812b1d0Value6 := (block2812b1d0Value0) rightOffset: (10).
    block2812b1d0Value6
].
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack2 := [:recoveredBlock872Arg1 | 
    | recoveredBlock872Value0 recoveredBlock872Value1 recoveredBlock872Value2 recoveredBlock872Value3 recoveredBlock872Value4 recoveredBlock872Value5 recoveredBlock872Value6 recoveredBlock872Value7 recoveredBlock872Value8 |
    recoveredBlock872Value0 := recoveredBlock872Arg1.
    recoveredBlock872Value1 := recoveredBlock872Value0.
    recoveredBlock872Value2 := XmATTACHWIDGET.
    (recoveredBlock872Value1) topAttachment: (recoveredBlock872Value2).
    recoveredBlock872Value3 := recoveredBlock872Value0.
    recoveredBlock872Value4 := recoveredLocal9.
    (recoveredBlock872Value3) topWidget: (recoveredBlock872Value4).
    recoveredBlock872Value5 := recoveredBlock872Value0.
    (recoveredBlock872Value5) topOffset: (10).
    recoveredBlock872Value6 := recoveredBlock872Value0.
    recoveredBlock872Value7 := XmATTACHFORM.
    (recoveredBlock872Value6) rightAttachment: (recoveredBlock872Value7).
    recoveredBlock872Value8 := (recoveredBlock872Value0) rightOffset: (10).
    recoveredBlock872Value8
].
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 923.
        ].
        recoveredStep = 923 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 926.
        ].
        recoveredStep = 926 ifTrue: [
            recoveredStack2 := [:block2812b1f4Arg1 | 
    | block2812b1f4Value0 block2812b1f4Value1 block2812b1f4Value2 block2812b1f4Value3 block2812b1f4Value4 block2812b1f4Value5 block2812b1f4Value6 block2812b1f4Value7 block2812b1f4Value8 block2812b1f4Value9 |
    block2812b1f4Value0 := block2812b1f4Arg1.
    block2812b1f4Value1 := block2812b1f4Value0.
    block2812b1f4Value2 := XmATTACHFORM.
    (block2812b1f4Value1) bottomAttachment: (block2812b1f4Value2).
    block2812b1f4Value3 := block2812b1f4Value0.
    (block2812b1f4Value3) bottomOffset: (10).
    block2812b1f4Value4 := block2812b1f4Value0.
    block2812b1f4Value5 := XmATTACHOPPOSITEFORM.
    (block2812b1f4Value4) leftAttachment: (block2812b1f4Value5).
    block2812b1f4Value6 := block2812b1f4Value0.
    (block2812b1f4Value6) leftOffset: (-120).
    block2812b1f4Value7 := block2812b1f4Value0.
    block2812b1f4Value8 := XmATTACHFORM.
    (block2812b1f4Value7) rightAttachment: (block2812b1f4Value8).
    block2812b1f4Value9 := (block2812b1f4Value0) rightOffset: (10).
    block2812b1f4Value9
].
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack2 := [:recoveredBlock990Arg1 | 
    | recoveredBlock990Value0 recoveredBlock990Value1 recoveredBlock990Value2 recoveredBlock990Value3 recoveredBlock990Value4 recoveredBlock990Value5 recoveredBlock990Value6 recoveredBlock990Value7 recoveredBlock990Value8 |
    recoveredBlock990Value0 := recoveredBlock990Arg1.
    recoveredBlock990Value1 := recoveredBlock990Value0.
    recoveredBlock990Value2 := XmATTACHWIDGET.
    (recoveredBlock990Value1) bottomAttachment: (recoveredBlock990Value2).
    recoveredBlock990Value3 := recoveredBlock990Value0.
    recoveredBlock990Value4 := recoveredLocal3.
    (recoveredBlock990Value3) bottomWidget: (recoveredBlock990Value4).
    recoveredBlock990Value5 := recoveredBlock990Value0.
    (recoveredBlock990Value5) bottomOffset: (5).
    recoveredBlock990Value6 := recoveredBlock990Value0.
    recoveredBlock990Value7 := XmATTACHFORM.
    (recoveredBlock990Value6) leftAttachment: (recoveredBlock990Value7).
    recoveredBlock990Value8 := (recoveredBlock990Value0) leftOffset: (10).
    recoveredBlock990Value8
].
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack2 := [:recoveredBlock1044Arg1 | 
    | recoveredBlock1044Value0 recoveredBlock1044Value1 recoveredBlock1044Value2 recoveredBlock1044Value3 recoveredBlock1044Value4 recoveredBlock1044Value5 recoveredBlock1044Value6 recoveredBlock1044Value7 recoveredBlock1044Value8 recoveredBlock1044Value9 recoveredBlock1044Value10 recoveredBlock1044Value11 recoveredBlock1044Value12 recoveredBlock1044Value13 recoveredBlock1044Value14 recoveredBlock1044Value15 recoveredBlock1044Value16 recoveredBlock1044Value17 recoveredBlock1044Value18 recoveredBlock1044Value19 recoveredBlock1044Value20 recoveredBlock1044Value21 recoveredBlock1044Value22 |
    recoveredBlock1044Value0 := recoveredBlock1044Arg1.
    recoveredBlock1044Value1 := recoveredBlock1044Value0.
    recoveredBlock1044Value2 := XmATTACHWIDGET.
    (recoveredBlock1044Value1) bottomAttachment: (recoveredBlock1044Value2).
    recoveredBlock1044Value3 := recoveredBlock1044Value0.
    recoveredBlock1044Value4 := recoveredLocal6.
    (recoveredBlock1044Value3) bottomWidget: (recoveredBlock1044Value4).
    recoveredBlock1044Value5 := recoveredBlock1044Value0.
    (recoveredBlock1044Value5) bottomOffset: (10).
    recoveredBlock1044Value6 := recoveredBlock1044Value0.
    recoveredBlock1044Value7 := XmATTACHFORM.
    (recoveredBlock1044Value6) topAttachment: (recoveredBlock1044Value7).
    recoveredBlock1044Value8 := recoveredBlock1044Value0.
    (recoveredBlock1044Value8) topOffset: (65).
    recoveredBlock1044Value9 := recoveredBlock1044Value0.
    recoveredBlock1044Value10 := XmATTACHFORM.
    (recoveredBlock1044Value9) leftAttachment: (recoveredBlock1044Value10).
    recoveredBlock1044Value11 := recoveredBlock1044Value0.
    (recoveredBlock1044Value11) leftOffset: (10).
    recoveredBlock1044Value12 := recoveredBlock1044Value0.
    recoveredBlock1044Value13 := XmATTACHWIDGET.
    (recoveredBlock1044Value12) rightAttachment: (recoveredBlock1044Value13).
    recoveredBlock1044Value14 := recoveredBlock1044Value0.
    recoveredBlock1044Value15 := recoveredLocal10.
    (recoveredBlock1044Value14) rightWidget: (recoveredBlock1044Value15).
    recoveredBlock1044Value16 := recoveredBlock1044Value0.
    (recoveredBlock1044Value16) rightOffset: (5).
    recoveredBlock1044Value17 := recoveredBlock1044Value0.
    (recoveredBlock1044Value17) x: (10).
    recoveredBlock1044Value18 := recoveredBlock1044Value0.
    (recoveredBlock1044Value18) y: (35).
    recoveredBlock1044Value19 := recoveredBlock1044Value0.
    recoveredBlock1044Value20 := XmASNEEDED.
    (recoveredBlock1044Value19) scrollBarDisplayPolicy: (recoveredBlock1044Value20).
    recoveredBlock1044Value21 := recoveredBlock1044Value0.
    (recoveredBlock1044Value21) height: (250).
    recoveredBlock1044Value22 := (recoveredBlock1044Value0) width: (270).
    recoveredBlock1044Value22
].
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredStack2 := [:block2812b218Arg1 | 
    | block2812b218Value0 block2812b218Value1 block2812b218Value2 block2812b218Value3 block2812b218Value4 block2812b218Value5 block2812b218Value6 |
    block2812b218Value0 := block2812b218Arg1.
    block2812b218Value1 := block2812b218Value0.
    block2812b218Value2 := XmATTACHFORM.
    (block2812b218Value1) bottomAttachment: (block2812b218Value2).
    block2812b218Value3 := block2812b218Value0.
    (block2812b218Value3) bottomOffset: (10).
    block2812b218Value4 := block2812b218Value0.
    block2812b218Value5 := XmATTACHFORM.
    (block2812b218Value4) leftAttachment: (block2812b218Value5).
    block2812b218Value6 := (block2812b218Value0) leftOffset: (10).
    block2812b218Value6
].
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            recoveredStack2 := [:block2812b23cArg1 | 
    | block2812b23cValue0 block2812b23cValue1 block2812b23cValue2 block2812b23cValue3 block2812b23cValue4 block2812b23cValue5 block2812b23cValue6 |
    block2812b23cValue0 := block2812b23cArg1.
    block2812b23cValue1 := block2812b23cValue0.
    block2812b23cValue2 := XmATTACHFORM.
    (block2812b23cValue1) topAttachment: (block2812b23cValue2).
    block2812b23cValue3 := block2812b23cValue0.
    (block2812b23cValue3) topOffset: (10).
    block2812b23cValue4 := block2812b23cValue0.
    block2812b23cValue5 := XmATTACHFORM.
    (block2812b23cValue4) leftAttachment: (block2812b23cValue5).
    block2812b23cValue6 := (block2812b23cValue0) leftOffset: (10).
    block2812b23cValue6
].
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1257.
        ].
        recoveredStep = 1257 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1260.
        ].
        recoveredStep = 1260 ifTrue: [
            recoveredStack2 := [:recoveredBlock1260Arg1 | 
    | recoveredBlock1260Value0 recoveredBlock1260Value1 recoveredBlock1260Value2 recoveredBlock1260Value3 recoveredBlock1260Value4 recoveredBlock1260Value5 recoveredBlock1260Value6 recoveredBlock1260Value7 recoveredBlock1260Value8 recoveredBlock1260Value9 recoveredBlock1260Value10 recoveredBlock1260Value11 recoveredBlock1260Value12 |
    recoveredBlock1260Value0 := recoveredBlock1260Arg1.
    recoveredBlock1260Value1 := recoveredBlock1260Value0.
    recoveredBlock1260Value2 := XmATTACHWIDGET.
    (recoveredBlock1260Value1) topAttachment: (recoveredBlock1260Value2).
    recoveredBlock1260Value3 := recoveredBlock1260Value0.
    recoveredBlock1260Value4 := recoveredLocal2.
    (recoveredBlock1260Value3) topWidget: (recoveredBlock1260Value4).
    recoveredBlock1260Value5 := recoveredBlock1260Value0.
    (recoveredBlock1260Value5) topOffset: (5).
    recoveredBlock1260Value6 := recoveredBlock1260Value0.
    recoveredBlock1260Value7 := XmATTACHFORM.
    (recoveredBlock1260Value6) leftAttachment: (recoveredBlock1260Value7).
    recoveredBlock1260Value8 := recoveredBlock1260Value0.
    (recoveredBlock1260Value8) leftOffset: (10).
    recoveredBlock1260Value9 := recoveredBlock1260Value0.
    recoveredBlock1260Value10 := XmATTACHWIDGET.
    (recoveredBlock1260Value9) rightAttachment: (recoveredBlock1260Value10).
    recoveredBlock1260Value11 := recoveredLocal10.
    recoveredBlock1260Value12 := (recoveredBlock1260Value0) rightWidget: (recoveredBlock1260Value11).
    recoveredBlock1260Value12
].
            recoveredPC := 1322.
        ].
        recoveredStep = 1322 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1327.
        ].
        recoveredStep = 1327 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1334.
        ].
        recoveredStep = 1334 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1335.
        ].
        recoveredStep = 1335 ifTrue: [
            recoveredStack4 := 'aOkPushButtonActivate:clientData:callData:'.
            recoveredPC := 1338.
        ].
        recoveredStep = 1338 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1339.
        ].
        recoveredStep = 1339 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1343.
        ].
        recoveredStep = 1343 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1346.
        ].
        recoveredStep = 1346 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1351.
        ].
        recoveredStep = 1351 ifTrue: [
            recoveredStack4 := 'aCancelPushButtonActivate:clientData:callData:'.
            recoveredPC := 1354.
        ].
        recoveredStep = 1354 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1359.
        ].
        recoveredStep = 1359 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1362.
        ].
        recoveredStep = 1362 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1366.
        ].
        recoveredStep = 1366 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1367.
        ].
        recoveredStep = 1367 ifTrue: [
            recoveredStack4 := 'aNewDirPushButtonActivate:clientData:callData:'.
            recoveredPC := 1370.
        ].
        recoveredStep = 1370 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1371.
        ].
        recoveredStep = 1371 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1375.
        ].
        recoveredStep = 1375 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1378.
        ].
        recoveredStep = 1378 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1382.
        ].
        recoveredStep = 1382 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1383.
        ].
        recoveredStep = 1383 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeDefault:clientData:callData:'.
            recoveredPC := 1386.
        ].
        recoveredStep = 1386 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1387.
        ].
        recoveredStep = 1387 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1391.
        ].
        recoveredStep = 1391 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1394.
        ].
        recoveredStep = 1394 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1399.
        ].
        recoveredStep = 1399 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeVisual:clientData:callData:'.
            recoveredPC := 1402.
        ].
        recoveredStep = 1402 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1407.
        ].
        recoveredStep = 1407 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1410.
        ].
        recoveredStep = 1410 ifTrue: [
            recoveredStack2 := XmNexpandCollapseCallback.
            recoveredPC := 1414.
        ].
        recoveredStep = 1414 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1415.
        ].
        recoveredStep = 1415 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeExpand:clientData:callData:'.
            recoveredPC := 1418.
        ].
        recoveredStep = 1418 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1419.
        ].
        recoveredStep = 1419 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1423.
        ].
        recoveredStep = 1423 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1426.
        ].
        recoveredStep = 1426 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1430.
        ].
        recoveredStep = 1430 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1431.
        ].
        recoveredStep = 1431 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreeChildren:clientData:callData:'.
            recoveredPC := 1434.
        ].
        recoveredStep = 1434 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1435.
        ].
        recoveredStep = 1435 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1439.
        ].
        recoveredStep = 1439 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1442.
        ].
        recoveredStep = 1442 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1446.
        ].
        recoveredStep = 1446 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1447.
        ].
        recoveredStep = 1447 ifTrue: [
            recoveredStack4 := 'anDirectoryIconTreebrowseSelectionCallback:clientData:callData:'.
            recoveredPC := 1450.
        ].
        recoveredStep = 1450 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1451.
        ].
        recoveredStep = 1451 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1455.
        ].
        recoveredStep = 1455 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1458.
        ].
        recoveredStep = 1458 ifTrue: [
            recoveredStack2 := XmNsingleSelectionCallback.
            recoveredPC := 1462.
        ].
        recoveredStep = 1462 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1463.
        ].
        recoveredStep = 1463 ifTrue: [
            recoveredStack4 := 'aVolumeComboBoxSingle:clientData:callData:'.
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1467.
        ].
        recoveredStep = 1467 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1479.
        ].
        recoveredStep = 1479 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1482.
        ].
        recoveredStep = 1482 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1487.
        ].
        recoveredStep = 1487 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1490.
        ].
        recoveredStep = 1490 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1495.
        ].
        recoveredStep = 1495 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1498.
        ].
        recoveredStep = 1498 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1503.
        ].
        recoveredStep = 1503 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1506.
        ].
        recoveredStep = 1506 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1511.
        ].
        recoveredStep = 1511 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1514.
        ].
        recoveredStep = 1514 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1515.
        ].
        recoveredStep = 1515 ifTrue: [
            recoveredStack2 := (recoveredStack2) createContextMenu.
            recoveredPC := 1519.
        ].
        recoveredStep = 1519 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            (recoveredStack1) menu: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 1531.
        ].
        recoveredStep = 1531 ifTrue: [
            (recoveredStack1) setDefaultButton: (recoveredStack2).
            recoveredPC := 1535.
        ].
        recoveredStep = 1535 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1538.
        ].
        recoveredStep = 1538 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

