"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005110; bytecode file offset 0x90206c"
!SGFindReplaceWindow methodsFor: 'recovered'!
sortContentsTableByColumn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005efc; bytecode file offset 0x902de8"
!SGFindReplaceWindow methodsFor: 'recovered'!
findModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000619c; bytecode file offset 0x902de8"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceModify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20007730; bytecode file offset 0x908be4"
!SGFindReplaceWindow methodsFor: 'recovered'!
sortBlockForInfo
    | recoveredValue0 |
    recoveredValue0 := (self) sortBlockDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a664; bytecode file offset 0x908be4"
!SGFindReplaceWindow methodsFor: 'recovered'!
sortBlockForLabel
    | recoveredValue0 |
    recoveredValue0 := (self) sortBlockDefault.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001077c; bytecode file offset 0x90d208"
!SGFindReplaceWindow methodsFor: 'recovered'!
selectAllButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) selectAllButtonActivate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010800; bytecode file offset 0x90d208"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) replaceButtonActivate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20010890; bytecode file offset 0x90d208"
!SGFindReplaceWindow methodsFor: 'recovered'!
openResultButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) openResultButtonActivate.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016eec; bytecode file offset 0x92209c"
!SGFindReplaceWindow methodsFor: 'recovered'!
title
    ^'Find/Replace (ESDL and C-Code only)'
! !

"ASDBase.ic method 0x200276fc; bytecode file offset 0x924260"
!SGFindReplaceWindow methodsFor: 'recovered'!
openResultPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedFindResult.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033d24; bytecode file offset 0x934580"
!SGFindReplaceWindow methodsFor: 'recovered'!
isCaseSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) caseSensitive.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038dd8; bytecode file offset 0x935c54"
!SGFindReplaceWindow methodsFor: 'recovered'!
openEditorForFindResult: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) openEditorForFindResult.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042ddc; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
findNextButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('findNextButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200439ec; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceWithLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('replaceWithLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004569c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('basicItemList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045f6c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceWithString
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('replaceWithStringWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004614c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
caseSensitive
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('caseSensitive').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004716c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('basicItemLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004782c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
findWhatString
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('findWhatStringWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004885c; bytecode file offset 0x9451f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
findWhatLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('findWhatLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20051bc8; bytecode file offset 0x94f0e0"
!SGFindReplaceWindow methodsFor: 'recovered'!
selectAllPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicItemList.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052668; bytecode file offset 0x94f0e0"
!SGFindReplaceWindow methodsFor: 'recovered'!
findPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) findWhatString.
    recoveredValue1 := (recoveredValue0) getString.
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a4dc; bytecode file offset 0x957a6c"
!SGFindReplaceWindow methodsFor: 'recovered'!
findNextButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) findNextButtonActivate.
    ^self
! !

"ASDBase.ic method 0x2005a824; bytecode file offset 0x957a6c"
!SGFindReplaceWindow methodsFor: 'recovered'!
findReplaceResize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateColumnsWidth.
    ^self
! !

"ASDBase.ic method 0x2005a9f8; bytecode file offset 0x957a6c"
!SGFindReplaceWindow methodsFor: 'recovered'!
closeButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) closeDialog.
    ^self
! !

"ASDBase.ic method 0x2006fdf0; bytecode file offset 0x96c6ac"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceEnabled
    | recoveredValue0 |
    recoveredValue0 := replaceEnabled.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff2c; bytecode file offset 0x96c850"
!SGFindReplaceWindow methodsFor: 'recovered'!
browseManager
    | recoveredValue0 |
    recoveredValue0 := browseManager.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200703fc; bytecode file offset 0x96ce40"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemListSortBlocks
    | recoveredValue0 |
    recoveredValue0 := basicItemListSortBlocks.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200706e8; bytecode file offset 0x96d06c"
!SGFindReplaceWindow methodsFor: 'recovered'!
findResults
    | recoveredValue0 |
    recoveredValue0 := findResults.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008882c; bytecode file offset 0x985628"
!SGFindReplaceWindow methodsFor: 'recovered'!
iconHierarchyPolicy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) resourceManager.
    recoveredValue2 := (recoveredValue0) iconHierarchyPolicy: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008f6ac; bytecode file offset 0x98c228"
!SGFindReplaceWindow methodsFor: 'recovered'!
initLabelSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) findWhatLabel.
    recoveredValue1 := (self) replaceWithLabel.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (recoveredValue0) width: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090b30; bytecode file offset 0x98d3ec"
!SGFindReplaceWindow methodsFor: 'recovered'!
columnMainWidth
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) basicItemList.
    recoveredValue1 := (recoveredValue0) width.
    recoveredValue2 := (recoveredValue1) - (30).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0710; bytecode file offset 0x99d3ac"
!SGFindReplaceWindow methodsFor: 'recovered'!
cancel
    (self) terminateFindProcess.
    (self) setFindButtonToFind.
    ^self
! !

"ASDBase.ic method 0x200a0f20; bytecode file offset 0x99db8c"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateWindowLabelForSearching
    | recoveredValue0 |
    recoveredValue0 := (self) shell.
    (recoveredValue0) title: ('Searching...').
    ^self
! !

"ASDBase.ic method 0x200a157c; bytecode file offset 0x99dfb8"
!SGFindReplaceWindow methodsFor: 'recovered'!
setFindButtonSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) findNextButton.
    recoveredValue1 := (self) findPossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aedc0; bytecode file offset 0x9ab6a8"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) isRBDBObject.
    (recoveredValue0) hasChildren: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c6158; bytecode file offset 0x9c2bec"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceEnabled: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    replaceEnabled := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c635c; bytecode file offset 0x9c2dd0"
!SGFindReplaceWindow methodsFor: 'recovered'!
browseManager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    browseManager := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b24; bytecode file offset 0x9c3470"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemListSortBlocks: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    basicItemListSortBlocks := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6d08; bytecode file offset 0x9c36ec"
!SGFindReplaceWindow methodsFor: 'recovered'!
findResults: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    findResults := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d24e4; bytecode file offset 0x9cedf0"
!SGFindReplaceWindow methodsFor: 'recovered'!
setOpenResultButtonSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('openResultButton').
    recoveredValue1 := (self) openResultPossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d24fc; bytecode file offset 0x9cedf0"
!SGFindReplaceWindow methodsFor: 'recovered'!
setSelectAllButtonSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('selectAllButton').
    recoveredValue1 := (self) selectAllPossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d252c; bytecode file offset 0x9cedf0"
!SGFindReplaceWindow methodsFor: 'recovered'!
setReplaceButtonSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('replaceButton').
    recoveredValue1 := (self) replacePossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d3ae4; bytecode file offset 0x9d03c0"
!SGFindReplaceWindow methodsFor: 'recovered'!
setFindButtonToFind
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) findNextButton.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) recomputeSize: (false).
    recoveredValue2 := (recoveredValue0) labelString: ('&Find').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d3afc; bytecode file offset 0x9d03c0"
!SGFindReplaceWindow methodsFor: 'recovered'!
setFindButtonToCancel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) findNextButton.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) recomputeSize: (false).
    recoveredValue2 := (recoveredValue0) labelString: ('C&ancel').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d3ed0; bytecode file offset 0x9d079c"
!SGFindReplaceWindow methodsFor: 'recovered'!
cancelFind
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findProcessAlive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) finishedFind.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201079ac; bytecode file offset 0xa04264"
!SGFindReplaceWindow methodsFor: 'recovered'!
findProcessAlive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := findProcess.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := findProcess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20108fc0; bytecode file offset 0xa05880"
!SGFindReplaceWindow methodsFor: 'recovered'!
closeDialog
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findProcessAlive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) finishedFind.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012391c; bytecode file offset 0xa20240"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemListColumnHeadingSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumns.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sortContentsTableByColumn: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20128488; bytecode file offset 0xa24eb0"
!SGFindReplaceWindow methodsFor: 'recovered'!
sessionStrings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SessionStrings.
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
            SessionStrings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SessionStrings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013be38; bytecode file offset 0xa386f8"
!SGFindReplaceWindow methodsFor: 'recovered'!
postClosingActivities
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := findProcess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := findProcess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) resetInstance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013c514; bytecode file offset 0xa38de8"
!SGFindReplaceWindow methodsFor: 'recovered'!
sortBlockDefault
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb8bcArg1 :block280cb8bcArg2 | 
    | block280cb8bcValue0 block280cb8bcValue1 block280cb8bcValue2 block280cb8bcValue3 block280cb8bcValue4 block280cb8bcValue5 block280cb8bcValue6 |
    block280cb8bcValue0 := block280cb8bcArg1.
    block280cb8bcValue1 := (block280cb8bcValue0) component.
    block280cb8bcValue2 := (block280cb8bcValue1) label.
    block280cb8bcValue3 := block280cb8bcArg2.
    block280cb8bcValue4 := (block280cb8bcValue3) component.
    block280cb8bcValue5 := (block280cb8bcValue4) label.
    block280cb8bcValue6 := (block280cb8bcValue2) < (block280cb8bcValue5).
    block280cb8bcValue6
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013e49c; bytecode file offset 0xa3ad84"
!SGFindReplaceWindow methodsFor: 'recovered'!
escPressed
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findProcessAlive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) finishedFind.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) closeDialog.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20146274; bytecode file offset 0xa42b38"
!SGFindReplaceWindow methodsFor: 'recovered'!
openWithParent: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkInstance: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super openWithParent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ee44; bytecode file offset 0xa4b77c"
!SGFindReplaceWindow methodsFor: 'recovered'!
finishedFind
    (self) setFindButtonToFind.
    (self) setReplaceButtonSensitive.
    (self) setSelectAllButtonSensitive.
    (self) updateWindowTitle.
    (self) terminateFindProcess.
    ^self
! !

"ASDBase.ic method 0x201683b0; bytecode file offset 0xa64c98"
!SGFindReplaceWindow methodsFor: 'recovered'!
collectFindResultsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) findResults.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) componentKey.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016a9dc; bytecode file offset 0xa67294"
!SGFindReplaceWindow methodsFor: 'recovered'!
terminateFindProcess
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := findProcess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            findProcess := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20172f54; bytecode file offset 0xa6f824"
!SGFindReplaceWindow methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) basicItemListSortBlocks: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    (self) findResults: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201792ec; bytecode file offset 0xa75ba8"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) setReplaceButtonSensitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := lastReplaceWithString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            lastReplaceWithString := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20180f90; bytecode file offset 0xa7d85c"
!SGFindReplaceWindow methodsFor: 'recovered'!
initializeAfterOpen
    (self) initLabelSize.
    (self) setFindButtonSensitive.
    (self) setReplaceButtonSensitive.
    (self) setListSensitive.
    (self) setOpenResultButtonSensitive.
    (self) setSelectAllButtonSensitive.
    ^self
! !

"ASDBase.ic method 0x20197f90; bytecode file offset 0xa94858"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) expandCollapsePos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) openResultButtonActivate.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a9784; bytecode file offset 0xaa6048"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemListChildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredArg3.
    recoveredBlock4Value1 := recoveredArg3.
    recoveredBlock4Value2 := (recoveredBlock4Value1) item.
    recoveredBlock4Value3 := (self) collectFindResultsFor: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value0) children: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x201b01e8; bytecode file offset 0xaacb54"
!SGFindReplaceWindow methodsFor: 'recovered'!
getFindStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sessionStrings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) sessionStrings.
    recoveredBlock7Value1 := OrderedCollection.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('find') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('find') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b0268; bytecode file offset 0xaacb54"
!SGFindReplaceWindow methodsFor: 'recovered'!
getReplaceStrings
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sessionStrings.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) sessionStrings.
    recoveredBlock7Value1 := OrderedCollection.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('replace') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('replace') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b057c; bytecode file offset 0xaace60"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateWindowTitle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceEnabled.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := 'Find/Replace (ESDL and C-Code only)'.
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
            recoveredStack1 := 'Find (ESDL and C-Code only)'.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b6f04; bytecode file offset 0xab37cc"
!SGFindReplaceWindow methodsFor: 'recovered'!
itemAccessCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
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
            recoveredStack2 := (recoveredStack2) getItemAccessWithIcon.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dc810; bytecode file offset 0xad90d4"
!SGFindReplaceWindow methodsFor: 'recovered'!
findChange: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) setFindButtonSensitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := lastFindWhatString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
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
            (recoveredStack0) terminateFindProcess.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) resetFindResults.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            lastFindWhatString := recoveredStack0.
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

"ASDBase.ic method 0x201e3ab4; bytecode file offset 0xae037c"
!SGFindReplaceWindow methodsFor: 'recovered'!
selectAllButtonActivate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectAllPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 |
    recoveredBlock11Value0 := (self) basicItemList.
    recoveredBlock11Value1 := (recoveredBlock11Value0) selectAllItemsNotify: (false).
    recoveredBlock11Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setReplaceButtonSensitive.
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

"ASDBase.ic method 0x201f848c; bytecode file offset 0xaf4d88"
!SGFindReplaceWindow methodsFor: 'recovered'!
preClosingActivities
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := RBWindowConfiguration.
    recoveredValue1 := (self) determineLayoutConfiguration.
    recoveredValue2 := (recoveredValue0) createWithName: ('dbbrowser') windowClass: (nil) layoutConfiguration: (recoveredValue1) contentsConfiguration: (nil) childConfigurations: (nil) versionString: (nil).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) lastWindowConfiguration: (recoveredValue4).
    super preClosingActivities.
    ^self
! !

"ASDBase.ic method 0x20218740; bytecode file offset 0xb15024"
!SGFindReplaceWindow methodsFor: 'recovered'!
resetFindResults
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) basicItemList.
    (recoveredValue0) items: (#()).
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) findResults: (recoveredValue2).
    (self) setListSensitive.
    (self) setSelectAllButtonSensitive.
    recoveredValue3 := (self) widgetAt: ('codeLine').
    (recoveredValue3) setString: ('').
    ^self
! !

"ASDBase.ic method 0x2022aec4; bytecode file offset 0xb277a8"
!SGFindReplaceWindow methodsFor: 'recovered'!
promptNothingToReplace
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredLocal1 := 'ASDReplaceComponentNothingToReplace'.
    recoveredValue0 := EtasUserQuestion.
    recoveredValue1 := EtNothingToReplaceMessage.
    recoveredValue2 := (recoveredValue0) message: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) prompterID: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) buttonStyle: ('OK').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) type: ('info').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) nextTimeButtonText: ('DONTSHOWAGAIN').
    recoveredValue8 := (recoveredValue2) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2022ecdc; bytecode file offset 0xb2b5a8"
!SGFindReplaceWindow methodsFor: 'recovered'!
modifiedInfoCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isRBDBObject.
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
            recoveredStack2 := '---'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 33.
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
            recoveredStack1 := (recoveredStack1) component.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiedTimeStampString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023bb20; bytecode file offset 0xb383f4"
!SGFindReplaceWindow methodsFor: 'recovered'!
replacePossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) replaceWithString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) getString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicItemList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedItems.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := MainController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) isProductActivationMD.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) modifyDBAllowed.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20241474; bytecode file offset 0xb3dd4c"
!SGFindReplaceWindow methodsFor: 'recovered'!
lineInfoCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) collectFindResultsFor: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := ' times'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) printLineInfoCellValue.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20264b28; bytecode file offset 0xb61408"
!SGFindReplaceWindow methodsFor: 'recovered'!
setListSensitive
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) basicItemList.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := (recoveredValue1) notEmpty.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) basicItemLabel.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) sensitive: (recoveredValue4).
    recoveredValue5 := (self) basicItemList.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) sensitive: (recoveredValue6).
    recoveredValue7 := (self) basicItemLabel.
    recoveredValue8 := (self) basicItemList.
    recoveredValue9 := (recoveredValue8) items.
    recoveredValue10 := (recoveredValue9) size.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := ('Found items [') , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , (']').
    (recoveredValue7) labelString: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x202650c4; bytecode file offset 0xb61988"
!SGFindReplaceWindow methodsFor: 'recovered'!
openResultButtonActivate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openResultPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) selectedFindResult.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := (self) openEditorForFindResult: (recoveredBlock23Value0).
    recoveredBlock23Value1
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028b330; bytecode file offset 0xb87c60"
!SGFindReplaceWindow methodsFor: 'recovered'!
columnsContents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createTableColumnTypeInfo.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createTableColumnLineInfo.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) createTableColumnItemAccess.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) createTableColumnCodeVariantInfo.
    (recoveredValue8) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) createTableColumnImplementationInfo.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) createTableColumnModifiedInfo.
    (recoveredValue12) add: (recoveredValue13).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2029e29c; bytecode file offset 0xb9ab64"
!SGFindReplaceWindow methodsFor: 'recovered'!
checkSelectionOfChildrenForCursoredItemWidget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) cursoredItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemAt: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExpandedPos: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) checkSelectionOfChildrenForItem: (recoveredStack1) widget: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a3674; bytecode file offset 0xb9ff54"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnItemAccess
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Access').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (64).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('itemAccessCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202ba3dc; bytecode file offset 0xbb6ca8"
!SGFindReplaceWindow methodsFor: 'recovered'!
implementationInfoCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isRBDBObject.
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
            recoveredStack2 := '---'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 46.
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
            recoveredStack1 := (recoveredStack1) implementation.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := '---'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) importLabel.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c3bf8; bytecode file offset 0xbc04fc"
!SGFindReplaceWindow methodsFor: 'recovered'!
initWidgetFonts
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280e5260Arg1 | 
    | block280e5260Stack0 block280e5260Stack1 block280e5260Stack2 block280e5260Stack3 block280e5260Stack4 block280e5260PC block280e5260Step block280e5260Done block280e5260Result |
    block280e5260Stack0 := self.
    block280e5260PC := 4.
    block280e5260Done := false.
    [block280e5260Done not] whileTrue: [
        block280e5260Step := block280e5260PC.
        block280e5260Step = 4 ifTrue: [
            block280e5260Stack1 := block280e5260Arg1.
            block280e5260PC := 5.
        ].
        block280e5260Step = 5 ifTrue: [
            block280e5260Stack1 := (block280e5260Stack1) class.
            block280e5260PC := 6.
        ].
        block280e5260Step = 6 ifTrue: [
            block280e5260Stack2 := CwLabel.
            block280e5260PC := 8.
        ].
        block280e5260Step = 8 ifTrue: [
            block280e5260Stack1 := (block280e5260Stack1) = (block280e5260Stack2).
            block280e5260PC := 9.
        ].
        block280e5260Step = 9 ifTrue: [
            (block280e5260Stack1) ifTrue: [block280e5260PC := 12] ifFalse: [block280e5260PC := 19].
        ].
        block280e5260Step = 12 ifTrue: [
            block280e5260Stack1 := block280e5260Arg1.
            block280e5260PC := 13.
        ].
        block280e5260Step = 13 ifTrue: [
            block280e5260Stack2 := SGUserInterfaceSettings.
            block280e5260PC := 15.
        ].
        block280e5260Step = 15 ifTrue: [
            block280e5260Stack2 := (block280e5260Stack2) smallFontList.
            block280e5260PC := 17.
        ].
        block280e5260Step = 17 ifTrue: [
            (block280e5260Stack1) fontList: (block280e5260Stack2).
            block280e5260PC := 19.
        ].
        block280e5260Step = 19 ifTrue: [
            block280e5260Stack1 := nil.
            block280e5260PC := 20.
        ].
        block280e5260Step = 20 ifTrue: [
            block280e5260Stack2 := block280e5260Arg1.
            block280e5260PC := 21.
        ].
        block280e5260Step = 21 ifTrue: [
            block280e5260Stack2 := (block280e5260Stack2) class.
            block280e5260PC := 22.
        ].
        block280e5260Step = 22 ifTrue: [
            block280e5260Stack3 := RBEnhancedText.
            block280e5260PC := 24.
        ].
        block280e5260Step = 24 ifTrue: [
            block280e5260Stack2 := (block280e5260Stack2) = (block280e5260Stack3).
            block280e5260PC := 25.
        ].
        block280e5260Step = 25 ifTrue: [
            (block280e5260Stack2) ifTrue: [block280e5260PC := 28] ifFalse: [block280e5260PC := 36].
        ].
        block280e5260Step = 28 ifTrue: [
            block280e5260PC := 29.
        ].
        block280e5260Step = 29 ifTrue: [
            block280e5260Stack1 := block280e5260Arg1.
            block280e5260PC := 30.
        ].
        block280e5260Step = 30 ifTrue: [
            block280e5260Stack2 := SGUserInterfaceSettings.
            block280e5260PC := 32.
        ].
        block280e5260Step = 32 ifTrue: [
            block280e5260Stack2 := (block280e5260Stack2) smallFontList.
            block280e5260PC := 34.
        ].
        block280e5260Step = 34 ifTrue: [
            block280e5260Stack1 := (block280e5260Stack1) fontList: (block280e5260Stack2).
            block280e5260PC := 36.
        ].
        block280e5260Step = 36 ifTrue: [
            block280e5260Result := block280e5260Stack1.
            block280e5260Done := true.
        ].
    ].
    block280e5260Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e44e4; bytecode file offset 0xbe0dac"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemExpandCollapseCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) item.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 46] ifFalse: [recoveredBlock4PC := 20].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) isRBDBObject.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 46].
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg3.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) reason.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack3 := 107.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) = (recoveredBlock4Stack3).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            (recoveredBlock4Stack2) ifTrue: [recoveredBlock4PC := 38] ifFalse: [recoveredBlock4PC := 46].
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack3 := recoveredArg1.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) checkSelectionOfChildrenForItem: (recoveredBlock4Stack2) widget: (recoveredBlock4Stack3).
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202ea098; bytecode file offset 0xbe698c"
!SGFindReplaceWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) checkWindowConfiguration.
    (self) iconSmall: ('GeneralSearch') large: ('GeneralSearch32').
    (self) updateWindowTitle.
    (self) grayBackground.
    (self) initWidgetFonts.
    recoveredValue0 := (self) findWhatString.
    (recoveredValue0) characterMethod: ('checkNone:').
    recoveredValue1 := (self) replaceWithString.
    (recoveredValue1) characterMethod: ('checkNone:').
    (self) updateFonts.
    (self) updateFindReplaceLists.
    (self) installActionKeys.
    recoveredValue2 := (self) caseSensitive.
    (recoveredValue2) unmanageChild.
    ^self
! !

"ASDBase.ic method 0x202ee034; bytecode file offset 0xbea950"
!SGFindReplaceWindow methodsFor: 'recovered'!
checkWindowConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastWindowConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) layoutConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 18].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) layoutConfiguration.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
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

"ASDBase.ic method 0x202f6b60; bytecode file offset 0xbf354c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnModifiedInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Modified').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('modifiedInfoCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) basicItemListSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForInfo.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6ba0; bytecode file offset 0xbf354c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnImplementationInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Implementation').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('implementationInfoCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) basicItemListSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForInfo.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6be0; bytecode file offset 0xbf354c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnCodeVariantInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Code Variant').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('codeVariantInfoCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) basicItemListSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForInfo.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6c20; bytecode file offset 0xbf354c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnTypeInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Info').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('typeInfoCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) basicItemListSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForInfo.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f6c60; bytecode file offset 0xbf354c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createTableColumnLineInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Line').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (70).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('lineInfoCellValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := (self) basicItemListSortBlocks.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) sortBlockForLabel.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20302d8c; bytecode file offset 0xbff664"
!SGFindReplaceWindow methodsFor: 'recovered'!
codeVariantInfoCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isRBDBObject.
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
            recoveredStack2 := '---'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 53.
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
            recoveredStack1 := (recoveredStack1) component.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isASDLClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '---'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) codeContainer.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) variantKey.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20306020; bytecode file offset 0xc02900"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceSelection: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) component.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) modifiable.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 50].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 24.
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack2 := self.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) findWhatString.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) getString.
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            recoveredBlock8Stack3 := self.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) replaceWithString.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack3 := (recoveredBlock8Stack3) getString.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack4 := self.
            recoveredBlock8PC := 32.
        ].
        recoveredBlock8Step = 32 ifTrue: [
            recoveredBlock8Stack4 := (recoveredBlock8Stack4) isCaseSensitive.
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            (recoveredBlock8Stack1) replaceString: (recoveredBlock8Stack2) with: (recoveredBlock8Stack3) caseSensitive: (recoveredBlock8Stack4).
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) findResults.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            (recoveredBlock8Stack1) remove: (recoveredBlock8Stack2).
            recoveredBlock8PC := 45.
        ].
        recoveredBlock8Step = 45 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 46.
        ].
        recoveredBlock8Step = 46 ifTrue: [
            (recoveredBlock8Stack1) scmModified.
            recoveredBlock8PC := 48.
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack1 := true.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 50 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^false
! !

"ASDBase.ic method 0x20327fb0; bytecode file offset 0xc24888"
!SGFindReplaceWindow methodsFor: 'recovered'!
basicItemListExtendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack0) checkSelectionOfChildrenForCursoredItemWidget: (recoveredBlock4Stack1).
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            (recoveredBlock4Stack0) checkSelectionOfParentForCursoredItemWidget: (recoveredBlock4Stack1).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) selectedFindResult.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 42] ifFalse: [recoveredBlock4PC := 30].
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack1 := 'codeLine'.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetAt: (recoveredBlock4Stack1).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := ''.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) setString: (recoveredBlock4Stack1).
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 43.
        ].
        recoveredBlock4Step = 43 ifTrue: [
            recoveredBlock4Stack1 := 'codeLine'.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) widgetAt: (recoveredBlock4Stack1).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 50.
        ].
        recoveredBlock4Step = 50 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) codeLine.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) setString: (recoveredBlock4Stack1).
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2035f114; bytecode file offset 0xc5b9e4"
!SGFindReplaceWindow methodsFor: 'recovered'!
selectedFindResult
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280f0540Arg1 | 
    | block280f0540Value0 block280f0540Value1 block280f0540Value2 |
    block280f0540Value0 := block280f0540Arg1.
    block280f0540Value1 := (block280f0540Value0) isRBDBObject.
    block280f0540Value2 := (block280f0540Value1) not.
    block280f0540Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBDBObject.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20366378; bytecode file offset 0xc62c58"
!SGFindReplaceWindow methodsFor: 'recovered'!
getRealFindResultSelections
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicItemList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isRBDBObject.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 40] ifFalse: [recoveredBlock28PC := 52].
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 43.
        ].
        recoveredBlock28Step = 43 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) collectFindResultsFor: (recoveredBlock28Stack3).
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) addAll: (recoveredBlock28Stack2).
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036e42c; bytecode file offset 0xc6ad10"
!SGFindReplaceWindow methodsFor: 'recovered'!
typeInfoCellValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 60].
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
            recoveredStack2 := [:block280f15d8Arg1 | 
    nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '---'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) getIcon: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := RBRenderableBitmapString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) importLabel.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) printTypeInfoCellValue.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20398164; bytecode file offset 0xc94a40"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateGlobalStringLists
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFindStrings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) findWhatString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFindStrings.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFindStrings.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReplaceStrings.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceWithString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReplaceStrings.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReplaceStrings.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) updateFindReplaceLists.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a50f8; bytecode file offset 0xca19e4"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceFinishedUpdateListSelection: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280f4bd8Arg1 | 
    | block280f4bd8Value0 block280f4bd8Value1 |
    block280f4bd8Value0 := block280f4bd8Arg1.
    block280f4bd8Value1 := (block280f4bd8Value0) componentKey.
    block280f4bd8Value1
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
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) findResults.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) resetFindResults.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateForFindResults: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) basicItemList.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Arg1.
            recoveredBlock29PC := 41.
        ].
        recoveredBlock29Step = 41 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) indexOf: (recoveredBlock29Stack3).
            recoveredBlock29PC := 43.
        ].
        recoveredBlock29Step = 43 ifTrue: [
            recoveredBlock29Stack3 := recoveredBlock29Stack2.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Local1 := recoveredBlock29Stack3.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack3 := 0.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) = (recoveredBlock29Stack3).
            recoveredBlock29PC := 48.
        ].
        recoveredBlock29Step = 48 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 66] ifFalse: [recoveredBlock29PC := 52].
        ].
        recoveredBlock29Step = 52 ifTrue: [
            recoveredBlock29PC := 53.
        ].
        recoveredBlock29Step = 53 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) basicItemList.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            (recoveredBlock29Stack1) refreshHierarchyPos: (recoveredBlock29Stack2).
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) basicItemList.
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Local1.
            recoveredBlock29PC := 63.
        ].
        recoveredBlock29Step = 63 ifTrue: [
            recoveredBlock29Stack3 := true.
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) expandPos: (recoveredBlock29Stack2) notify: (recoveredBlock29Stack3).
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicItemList.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ba214; bytecode file offset 0xcb6b00"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateFindReplaceLists
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findWhatString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFindStrings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverse.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceWithString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getReplaceStrings.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverse.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFindStrings.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) findWhatString.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFindStrings.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceEnabled.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) getReplaceStrings.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceWithString.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) getReplaceStrings.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceWithLabel.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceWithString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'replaceButton'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203befc0; bytecode file offset 0xcbb8a4"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateColumnsWidth
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) columnMainWidth.
    recoveredLocal4 := recoveredValue0.
    recoveredLocal5 := 0.
    recoveredValue1 := (self) basicItemList.
    recoveredValue2 := (recoveredValue1) columns.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 |
    recoveredBlock16Value0 := recoveredLocal5.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) verticalSeparatorThickness.
    recoveredBlock16Value3 := (recoveredBlock16Value0) + (recoveredBlock16Value2).
    recoveredBlock16Value4 := recoveredBlock16Arg1.
    recoveredBlock16Value5 := (recoveredBlock16Value4) widget.
    recoveredBlock16Value6 := (recoveredBlock16Value5) totalEmphasis.
    recoveredBlock16Value7 := (recoveredBlock16Value3) + (recoveredBlock16Value6).
    recoveredBlock16Value8 := recoveredBlock16Value7.
    recoveredLocal5 := recoveredBlock16Value8.
    recoveredBlock16Value7
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) basicItemList.
    recoveredValue5 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 recoveredBlock43Value3 |
    recoveredBlock43Value0 := (self) basicItemList.
    recoveredBlock43Value1 := (recoveredBlock43Value0) columns.
    recoveredBlock43Value2 := [:recoveredBlock43Block52Arg1 :recoveredBlock43Block52Arg2 | 
    | recoveredBlock43Block52Value0 recoveredBlock43Block52Value1 recoveredBlock43Block52Value2 recoveredBlock43Block52Value3 recoveredBlock43Block52Value4 recoveredBlock43Block52Value5 recoveredBlock43Block52Value6 |
    recoveredBlock43Block52Value0 := recoveredBlock43Block52Arg1.
    recoveredBlock43Block52Value1 := recoveredLocal4.
    recoveredBlock43Block52Value2 := recoveredLocal5.
    recoveredBlock43Block52Value3 := (recoveredBlock43Block52Value1) + (recoveredBlock43Block52Value2).
    recoveredBlock43Block52Value4 := (recoveredBlock43Block52Value3) * (#[0 0 0 0 0 0 208 63]).
    recoveredBlock43Block52Value5 := (recoveredBlock43Block52Value4) asInteger.
    recoveredBlock43Block52Value6 := (recoveredBlock43Block52Value0) width: (recoveredBlock43Block52Value5).
    recoveredBlock43Block52Value6
].
    recoveredBlock43Value3 := (recoveredBlock43Value1) doWithIndex: (recoveredBlock43Value2).
    recoveredBlock43Value3
].
    (recoveredValue4) deferRedraw: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203e2fbc; bytecode file offset 0xcdf89c"
!SGFindReplaceWindow methodsFor: 'recovered'!
checkSelectionOfChildrenForItem: recoveredArg1 widget: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) collectFindResultsFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredLocal1.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := [].
    recoveredBlock48Value3 := (recoveredBlock48Value0) remove: (recoveredBlock48Value1) ifAbsent: (recoveredBlock48Value2).
    recoveredBlock48Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) setOpenResultButtonSensitive.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) setSelectAllButtonSensitive.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) setReplaceButtonSensitive.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f8320; bytecode file offset 0xcf4c2c"
!SGFindReplaceWindow methodsFor: 'recovered'!
findNextButtonActivate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) findProcessAlive.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) updateGlobalStringLists.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) resetFindResults.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) setFindButtonToCancel.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) updateWindowLabelForSearching.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 |
    recoveredBlock28Value0 := (self) browseManager.
    recoveredBlock28Value1 := (self) widgetAt: ('caseSensitive').
    recoveredBlock28Value2 := (recoveredBlock28Value1) set.
    (recoveredBlock28Value0) caseSensitive: (recoveredBlock28Value2).
    recoveredBlock28Value3 := System.
    recoveredBlock28Value4 := [
    | recoveredBlock28Block47Value0 recoveredBlock28Block47Value1 recoveredBlock28Block47Value2 recoveredBlock28Block47Value3 |
    recoveredBlock28Block47Value0 := (self) browseManager.
    recoveredBlock28Block47Value1 := (self) findWhatString.
    recoveredBlock28Block47Value2 := (recoveredBlock28Block47Value1) getString.
    recoveredBlock28Block47Value3 := (recoveredBlock28Block47Value0) findNextItems: (recoveredBlock28Block47Value2) parentWindow: (self).
    recoveredBlock28Block47Value3
].
    (recoveredBlock28Value3) showBusyCursorWhile: (recoveredBlock28Value4).
    recoveredBlock28Value5 := ('Kk') == ('Call_57428').
    recoveredBlock28Value6 := (self) finishedFind.
    recoveredBlock28Value6
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := Processor.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) userBackgroundPriority.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) forkAt: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            findProcess := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) finishedFind.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043855c; bytecode file offset 0xd34e74"
!SGFindReplaceWindow methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := XKCancel.
    (recoveredValue7) at: (recoveredValue8) put: ('escPressed').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) at: ('Alt-a') put: ('cancelFind').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) at: ('Alt-f') put: ('findNextButtonActivate').
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) at: ('Alt-r') put: ('replaceButtonActivate').
    recoveredValue12 := recoveredValue6.
    (recoveredValue12) at: ('Alt-s') put: ('selectAllButtonActivate').
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) at: ('Alt-o') put: ('openResultButtonActivate').
    recoveredValue14 := recoveredValue6.
    recoveredValue15 := HKCancel.
    (recoveredValue14) at: (recoveredValue15) put: ('closeDialog').
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := (self) shell.
    recoveredValue18 := recoveredLocal2.
    (recoveredValue16) at: (recoveredValue17) put: (recoveredValue18).
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredValue19.
    recoveredValue21 := Character.
    recoveredValue22 := (recoveredValue21) value: (13).
    recoveredValue23 := DirectedMessage.
    recoveredValue24 := (recoveredValue23) selector: ('findNextButtonActivate') arguments: (#()) receiver: (self).
    (recoveredValue20) at: (recoveredValue22) put: (recoveredValue24).
    recoveredValue25 := recoveredLocal3.
    recoveredValue26 := (self) findWhatString.
    recoveredValue27 := recoveredLocal1.
    (recoveredValue25) at: (recoveredValue26) put: (recoveredValue27).
    recoveredValue28 := recoveredLocal3.
    (self) widgetKeyActions: (recoveredValue28).
    ^self
! !

"ASDBase.ic method 0x20446aac; bytecode file offset 0xd433a8"
!SGFindReplaceWindow methodsFor: 'recovered'!
updateForFindResults: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) findResults.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicItemList.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := recoveredLocal1.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (recoveredBlock21Value1) component.
    recoveredBlock21Value3 := (recoveredBlock21Value2) dbObject.
    recoveredBlock21Value4 := (recoveredBlock21Value0) add: (recoveredBlock21Value3).
    recoveredBlock21Value4
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicItemList.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:block280feb84Arg1 :block280feb84Arg2 | 
    | block280feb84Local1 block280feb84Local2 block280feb84Stack0 block280feb84Stack1 block280feb84Stack2 block280feb84Stack3 block280feb84Stack4 block280feb84PC block280feb84Step block280feb84Done block280feb84Result |
    block280feb84Stack0 := self.
    block280feb84PC := 4.
    block280feb84Done := false.
    [block280feb84Done not] whileTrue: [
        block280feb84Step := block280feb84PC.
        block280feb84Step = 4 ifTrue: [
            block280feb84Stack1 := block280feb84Arg1.
            block280feb84PC := 5.
        ].
        block280feb84Step = 5 ifTrue: [
            block280feb84Stack2 := [:block280feba8Arg1 | 
    nil
].
            block280feb84PC := 7.
        ].
        block280feb84Step = 7 ifTrue: [
            block280feb84PC := 12.
        ].
        block280feb84Step = 12 ifTrue: [
            block280feb84Stack1 := (block280feb84Stack1) getObjectIfUndefined: (block280feb84Stack2).
            block280feb84PC := 14.
        ].
        block280feb84Step = 14 ifTrue: [
            block280feb84Stack2 := block280feb84Stack1.
            block280feb84PC := 15.
        ].
        block280feb84Step = 15 ifTrue: [
            block280feb84Local2 := block280feb84Stack2.
            block280feb84PC := 16.
        ].
        block280feb84Step = 16 ifTrue: [
            (block280feb84Stack1 == nil) ifTrue: [block280feb84PC := 26] ifFalse: [block280feb84PC := 20].
        ].
        block280feb84Step = 20 ifTrue: [
            block280feb84Stack1 := block280feb84Local2.
            block280feb84PC := 21.
        ].
        block280feb84Step = 21 ifTrue: [
            block280feb84Stack1 := (block280feb84Stack1) importLabel.
            block280feb84PC := 23.
        ].
        block280feb84Step = 23 ifTrue: [
            block280feb84PC := 28.
        ].
        block280feb84Step = 26 ifTrue: [
            block280feb84Stack1 := ''.
            block280feb84PC := 28.
        ].
        block280feb84Step = 28 ifTrue: [
            block280feb84Stack2 := block280feb84Arg2.
            block280feb84PC := 29.
        ].
        block280feb84Step = 29 ifTrue: [
            block280feb84Stack3 := [:block280febccArg1 | 
    nil
].
            block280feb84PC := 31.
        ].
        block280feb84Step = 31 ifTrue: [
            block280feb84PC := 36.
        ].
        block280feb84Step = 36 ifTrue: [
            block280feb84Stack2 := (block280feb84Stack2) getObjectIfUndefined: (block280feb84Stack3).
            block280feb84PC := 38.
        ].
        block280feb84Step = 38 ifTrue: [
            block280feb84Stack3 := block280feb84Stack2.
            block280feb84PC := 39.
        ].
        block280feb84Step = 39 ifTrue: [
            block280feb84Local1 := block280feb84Stack3.
            block280feb84PC := 40.
        ].
        block280feb84Step = 40 ifTrue: [
            (block280feb84Stack2 == nil) ifTrue: [block280feb84PC := 50] ifFalse: [block280feb84PC := 44].
        ].
        block280feb84Step = 44 ifTrue: [
            block280feb84Stack2 := block280feb84Local1.
            block280feb84PC := 45.
        ].
        block280feb84Step = 45 ifTrue: [
            block280feb84Stack2 := (block280feb84Stack2) importLabel.
            block280feb84PC := 47.
        ].
        block280feb84Step = 47 ifTrue: [
            block280feb84PC := 52.
        ].
        block280feb84Step = 50 ifTrue: [
            block280feb84Stack2 := ''.
            block280feb84PC := 52.
        ].
        block280feb84Step = 52 ifTrue: [
            block280feb84Stack1 := (block280feb84Stack1) < (block280feb84Stack2).
            block280feb84PC := 53.
        ].
        block280feb84Step = 53 ifTrue: [
            block280feb84Result := block280feb84Stack1.
            block280feb84Done := true.
        ].
    ].
    block280feb84Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) setListSensitive.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b14e0; bytecode file offset 0xdaddcc"
!SGFindReplaceWindow methodsFor: 'recovered'!
checkSelectionOfParentForCursoredItemWidget: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) cursoredItem.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemAt: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDBObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
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
            recoveredStack1 := (recoveredStack1) componentKey.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectFindResultsFor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredArg1.
    recoveredBlock48Value1 := (recoveredBlock48Value0) selectedItems.
    recoveredBlock48Value2 := recoveredBlock48Arg1.
    recoveredBlock48Value3 := (recoveredBlock48Value1) includes: (recoveredBlock48Value2).
    recoveredBlock48Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentKey.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentKey.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) componentKey.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) componentKey.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0) setOpenResultButtonSensitive.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) setSelectAllButtonSensitive.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) setReplaceButtonSensitive.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20539090; bytecode file offset 0xe35990"
!SGFindReplaceWindow methodsFor: 'recovered'!
replaceButtonActivate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) replacePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := [
    | recoveredBlock11Local1 recoveredBlock11Local2 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) getRealFindResultSelections.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack3.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) notEmpty.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 30] ifFalse: [recoveredBlock11PC := 203].
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack1 := Set.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) new.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := Set.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) new.
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block48Arg1 | 
    | recoveredBlock11Block48Local1 recoveredBlock11Block48Stack0 recoveredBlock11Block48Stack1 recoveredBlock11Block48Stack2 recoveredBlock11Block48Stack3 recoveredBlock11Block48PC recoveredBlock11Block48Step recoveredBlock11Block48Done recoveredBlock11Block48Result |
    recoveredBlock11Block48Stack0 := nil.
    recoveredBlock11Block48PC := 54.
    recoveredBlock11Block48Done := false.
    [recoveredBlock11Block48Done not] whileTrue: [
        recoveredBlock11Block48Step := recoveredBlock11Block48PC.
        recoveredBlock11Block48Step = 54 ifTrue: [
            recoveredBlock11Block48Stack1 := recoveredBlock11Block48Arg1.
            recoveredBlock11Block48PC := 55.
        ].
        recoveredBlock11Block48Step = 55 ifTrue: [
            recoveredBlock11Block48Stack1 := (recoveredBlock11Block48Stack1) component.
            recoveredBlock11Block48PC := 57.
        ].
        recoveredBlock11Block48Step = 57 ifTrue: [
            recoveredBlock11Block48Stack2 := recoveredBlock11Block48Stack1.
            recoveredBlock11Block48PC := 58.
        ].
        recoveredBlock11Block48Step = 58 ifTrue: [
            recoveredBlock11Block48Local1 := recoveredBlock11Block48Stack2.
            recoveredBlock11Block48PC := 59.
        ].
        recoveredBlock11Block48Step = 59 ifTrue: [
            (recoveredBlock11Block48Stack1 == nil) ifTrue: [recoveredBlock11Block48PC := 84] ifFalse: [recoveredBlock11Block48PC := 62].
        ].
        recoveredBlock11Block48Step = 62 ifTrue: [
            recoveredBlock11Block48Stack1 := recoveredBlock11Block48Local1.
            recoveredBlock11Block48PC := 63.
        ].
        recoveredBlock11Block48Step = 63 ifTrue: [
            recoveredBlock11Block48Stack1 := (recoveredBlock11Block48Stack1) modifiable.
            recoveredBlock11Block48PC := 65.
        ].
        recoveredBlock11Block48Step = 65 ifTrue: [
            (recoveredBlock11Block48Stack1) ifTrue: [recoveredBlock11Block48PC := 68] ifFalse: [recoveredBlock11Block48PC := 74].
        ].
        recoveredBlock11Block48Step = 68 ifTrue: [
            recoveredBlock11Block48Stack1 := recoveredBlock11Block48Local1.
            recoveredBlock11Block48PC := 69.
        ].
        recoveredBlock11Block48Step = 69 ifTrue: [
            recoveredBlock11Block48Stack1 := (recoveredBlock11Block48Stack1) isRead.
            recoveredBlock11Block48PC := 71.
        ].
        recoveredBlock11Block48Step = 71 ifTrue: [
            (recoveredBlock11Block48Stack1) ifTrue: [recoveredBlock11Block48PC := 84] ifFalse: [recoveredBlock11Block48PC := 74].
        ].
        recoveredBlock11Block48Step = 74 ifTrue: [
            recoveredBlock11Block48Stack1 := recoveredBlock11Local2.
            recoveredBlock11Block48PC := 77.
        ].
        recoveredBlock11Block48Step = 77 ifTrue: [
            recoveredBlock11Block48Stack2 := recoveredBlock11Block48Arg1.
            recoveredBlock11Block48PC := 78.
        ].
        recoveredBlock11Block48Step = 78 ifTrue: [
            recoveredBlock11Block48Stack1 := (recoveredBlock11Block48Stack1) add: (recoveredBlock11Block48Stack2).
            recoveredBlock11Block48PC := 80.
        ].
        recoveredBlock11Block48Step = 80 ifTrue: [
            recoveredBlock11Block48PC := 90.
        ].
        recoveredBlock11Block48Step = 84 ifTrue: [
            recoveredBlock11Block48Stack1 := recoveredBlock11Local1.
            recoveredBlock11Block48PC := 87.
        ].
        recoveredBlock11Block48Step = 87 ifTrue: [
            recoveredBlock11Block48Stack2 := recoveredBlock11Block48Arg1.
            recoveredBlock11Block48PC := 88.
        ].
        recoveredBlock11Block48Step = 88 ifTrue: [
            recoveredBlock11Block48Stack1 := (recoveredBlock11Block48Stack1) add: (recoveredBlock11Block48Stack2).
            recoveredBlock11Block48PC := 90.
        ].
        recoveredBlock11Block48Step = 90 ifTrue: [
            recoveredBlock11Block48Result := recoveredBlock11Block48Stack1.
            recoveredBlock11Block48Done := true.
        ].
    ].
    recoveredBlock11Block48Result
].
            recoveredBlock11PC := 91.
        ].
        recoveredBlock11Step = 91 ifTrue: [
            (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 93.
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack2 := self.
            recoveredBlock11PC := 95.
        ].
        recoveredBlock11Step = 95 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local2.
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) promptNotReplacedComponents: (recoveredBlock11Stack3).
            recoveredBlock11PC := 100.
        ].
        recoveredBlock11Step = 100 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 104] ifFalse: [recoveredBlock11PC := 195].
        ].
        recoveredBlock11Step = 104 ifTrue: [
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 108.
        ].
        recoveredBlock11Step = 108 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) isEmpty.
            recoveredBlock11PC := 110.
        ].
        recoveredBlock11Step = 110 ifTrue: [
            (recoveredBlock11Stack1) ifTrue: [recoveredBlock11PC := 114] ifFalse: [recoveredBlock11PC := 118].
        ].
        recoveredBlock11Step = 114 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 115.
        ].
        recoveredBlock11Step = 115 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) promptNothingToReplace.
            recoveredBlock11PC := 117.
        ].
        recoveredBlock11Step = 117 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 118 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 121.
        ].
        recoveredBlock11Step = 121 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block121Arg1 | 
    | recoveredBlock11Block121Local1 recoveredBlock11Block121Stack0 recoveredBlock11Block121Stack1 recoveredBlock11Block121Stack2 recoveredBlock11Block121Stack3 recoveredBlock11Block121PC recoveredBlock11Block121Step recoveredBlock11Block121Done recoveredBlock11Block121Result |
    recoveredBlock11Block121Stack0 := self.
    recoveredBlock11Block121PC := 128.
    recoveredBlock11Block121Done := false.
    [recoveredBlock11Block121Done not] whileTrue: [
        recoveredBlock11Block121Step := recoveredBlock11Block121PC.
        recoveredBlock11Block121Step = 128 ifTrue: [
            recoveredBlock11Block121Stack1 := recoveredBlock11Block121Arg1.
            recoveredBlock11Block121PC := 131.
        ].
        recoveredBlock11Block121Step = 131 ifTrue: [
            recoveredBlock11Block121Stack1 := (recoveredBlock11Block121Stack1) isRBDBObject.
            recoveredBlock11Block121PC := 133.
        ].
        recoveredBlock11Block121Step = 133 ifTrue: [
            (recoveredBlock11Block121Stack1) ifTrue: [recoveredBlock11Block121PC := 136] ifFalse: [recoveredBlock11Block121PC := 180].
        ].
        recoveredBlock11Block121Step = 136 ifTrue: [
            recoveredBlock11Block121Stack1 := findResults.
            recoveredBlock11Block121PC := 138.
        ].
        recoveredBlock11Block121Step = 138 ifTrue: [
            recoveredBlock11Block121Stack2 := [:recoveredBlock11Block121Block138Arg1 | 
    | recoveredBlock11Block121Block138Value0 recoveredBlock11Block121Block138Value1 recoveredBlock11Block121Block138Value2 recoveredBlock11Block121Block138Value3 |
    recoveredBlock11Block121Block138Value0 := recoveredBlock11Block121Arg1.
    recoveredBlock11Block121Block138Value1 := recoveredBlock11Block121Block138Arg1.
    recoveredBlock11Block121Block138Value2 := (recoveredBlock11Block121Block138Value1) componentKey.
    recoveredBlock11Block121Block138Value3 := (recoveredBlock11Block121Block138Value0) = (recoveredBlock11Block121Block138Value2).
    recoveredBlock11Block121Block138Value3
].
            recoveredBlock11Block121PC := 152.
        ].
        recoveredBlock11Block121Step = 152 ifTrue: [
            recoveredBlock11Block121Stack1 := (recoveredBlock11Block121Stack1) select: (recoveredBlock11Block121Stack2).
            recoveredBlock11Block121PC := 154.
        ].
        recoveredBlock11Block121Step = 154 ifTrue: [
            recoveredBlock11Block121Local1 := recoveredBlock11Block121Stack1.
            recoveredBlock11Block121PC := 157.
        ].
        recoveredBlock11Block121Step = 157 ifTrue: [
            recoveredBlock11Block121Stack1 := recoveredBlock11Block121Local1.
            recoveredBlock11Block121PC := 160.
        ].
        recoveredBlock11Block121Step = 160 ifTrue: [
            recoveredBlock11Block121Stack2 := [:recoveredBlock11Block121Block160Arg1 | 
    | recoveredBlock11Block121Block160Value0 recoveredBlock11Block121Block160Value1 |
    recoveredBlock11Block121Block160Value0 := recoveredBlock11Block121Block160Arg1.
    recoveredBlock11Block121Block160Value1 := (self) replaceSelection: (recoveredBlock11Block121Block160Value0).
    recoveredBlock11Block121Block160Value1
].
            recoveredBlock11Block121PC := 170.
        ].
        recoveredBlock11Block121Step = 170 ifTrue: [
            recoveredBlock11Block121Stack1 := (recoveredBlock11Block121Stack1) do: (recoveredBlock11Block121Stack2).
            recoveredBlock11Block121PC := 172.
        ].
        recoveredBlock11Block121Step = 172 ifTrue: [
            recoveredBlock11Block121Stack2 := nil.
            recoveredBlock11Block121PC := 173.
        ].
        recoveredBlock11Block121Step = 173 ifTrue: [
            recoveredBlock11Block121Local1 := recoveredBlock11Block121Stack2.
            recoveredBlock11Block121PC := 176.
        ].
        recoveredBlock11Block121Step = 176 ifTrue: [
            recoveredBlock11Block121PC := 186.
        ].
        recoveredBlock11Block121Step = 180 ifTrue: [
            recoveredBlock11Block121Stack1 := self.
            recoveredBlock11Block121PC := 181.
        ].
        recoveredBlock11Block121Step = 181 ifTrue: [
            recoveredBlock11Block121Stack2 := recoveredBlock11Block121Arg1.
            recoveredBlock11Block121PC := 184.
        ].
        recoveredBlock11Block121Step = 184 ifTrue: [
            recoveredBlock11Block121Stack1 := (recoveredBlock11Block121Stack1) replaceSelection: (recoveredBlock11Block121Stack2).
            recoveredBlock11Block121PC := 186.
        ].
        recoveredBlock11Block121Step = 186 ifTrue: [
            recoveredBlock11Block121Result := recoveredBlock11Block121Stack1.
            recoveredBlock11Block121Done := true.
        ].
    ].
    recoveredBlock11Block121Result
].
            recoveredBlock11PC := 187.
        ].
        recoveredBlock11Step = 187 ifTrue: [
            (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 189.
        ].
        recoveredBlock11Step = 189 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 190.
        ].
        recoveredBlock11Step = 190 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 193.
        ].
        recoveredBlock11Step = 193 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) replaceFinishedUpdateListSelection: (recoveredBlock11Stack2).
            recoveredBlock11PC := 195.
        ].
        recoveredBlock11Step = 195 ifTrue: [
            recoveredBlock11Stack2 := nil.
            recoveredBlock11PC := 196.
        ].
        recoveredBlock11Step = 196 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Stack2.
            recoveredBlock11PC := 197.
        ].
        recoveredBlock11Step = 197 ifTrue: [
            recoveredBlock11Local2 := recoveredBlock11Stack3.
            recoveredBlock11PC := 200.
        ].
        recoveredBlock11Step = 200 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 203.
        ].
        recoveredBlock11Step = 203 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20547780; bytecode file offset 0xe440cc"
!SGFindReplaceWindow methodsFor: 'recovered'!
promptNotReplacedComponents: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'ASDReplaceComponentNotPossible'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ASDDialogOptions.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDialogDisabled: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ASDDialogOptions.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDialogDecision: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := EtNoReplaceSingleMessage.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) someElement.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) component.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) completeLibraryPath.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := EtNoReplaceMultiMessage.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'call_86934'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := [:block2810ec28Arg1 :block2810ec28Arg2 | 
    | block2810ec28Value0 block2810ec28Value1 block2810ec28Value2 block2810ec28Value3 block2810ec28Value4 block2810ec28Value5 block2810ec28Value6 |
    block2810ec28Value0 := block2810ec28Arg1.
    block2810ec28Value1 := (block2810ec28Value0) component.
    block2810ec28Value2 := (block2810ec28Value1) label.
    block2810ec28Value3 := block2810ec28Arg2.
    block2810ec28Value4 := (block2810ec28Value3) component.
    block2810ec28Value5 := (block2810ec28Value4) label.
    block2810ec28Value6 := (block2810ec28Value2) < (block2810ec28Value5).
    block2810ec28Value6
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := [:recoveredBlock124Arg1 :recoveredBlock124Arg2 | 
    | recoveredBlock124Stack0 recoveredBlock124Stack1 recoveredBlock124Stack2 recoveredBlock124Stack3 recoveredBlock124Stack4 recoveredBlock124PC recoveredBlock124Step recoveredBlock124Done recoveredBlock124Result |
    recoveredBlock124Stack0 := self.
    recoveredBlock124PC := 130.
    recoveredBlock124Done := false.
    [recoveredBlock124Done not] whileTrue: [
        recoveredBlock124Step := recoveredBlock124PC.
        recoveredBlock124Step = 130 ifTrue: [
            recoveredBlock124Stack1 := recoveredBlock124Arg2.
            recoveredBlock124PC := 131.
        ].
        recoveredBlock124Step = 131 ifTrue: [
            recoveredBlock124Stack2 := 25.
            recoveredBlock124PC := 133.
        ].
        recoveredBlock124Step = 133 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) < (recoveredBlock124Stack2).
            recoveredBlock124PC := 134.
        ].
        recoveredBlock124Step = 134 ifTrue: [
            (recoveredBlock124Stack1) ifTrue: [recoveredBlock124PC := 138] ifFalse: [recoveredBlock124PC := 154].
        ].
        recoveredBlock124Step = 138 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal4.
            recoveredBlock124PC := 141.
        ].
        recoveredBlock124Step = 141 ifTrue: [
            recoveredBlock124Stack2 := recoveredBlock124Stack1.
            recoveredBlock124PC := 142.
        ].
        recoveredBlock124Step = 142 ifTrue: [
            (recoveredBlock124Stack2) cr.
            recoveredBlock124PC := 144.
        ].
        recoveredBlock124Step = 144 ifTrue: [
            recoveredBlock124Stack2 := recoveredBlock124Arg1.
            recoveredBlock124PC := 145.
        ].
        recoveredBlock124Step = 145 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) component.
            recoveredBlock124PC := 147.
        ].
        recoveredBlock124Step = 147 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) completeLibraryPath.
            recoveredBlock124PC := 149.
        ].
        recoveredBlock124Step = 149 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) nextPutAll: (recoveredBlock124Stack2).
            recoveredBlock124PC := 151.
        ].
        recoveredBlock124Step = 151 ifTrue: [
            recoveredBlock124PC := 173.
        ].
        recoveredBlock124Step = 154 ifTrue: [
            recoveredBlock124Stack1 := nil.
            recoveredBlock124PC := 155.
        ].
        recoveredBlock124Step = 155 ifTrue: [
            recoveredBlock124Stack2 := recoveredBlock124Arg2.
            recoveredBlock124PC := 156.
        ].
        recoveredBlock124Step = 156 ifTrue: [
            recoveredBlock124Stack3 := 25.
            recoveredBlock124PC := 158.
        ].
        recoveredBlock124Step = 158 ifTrue: [
            recoveredBlock124Stack2 := (recoveredBlock124Stack2) = (recoveredBlock124Stack3).
            recoveredBlock124PC := 159.
        ].
        recoveredBlock124Step = 159 ifTrue: [
            (recoveredBlock124Stack2) ifTrue: [recoveredBlock124PC := 162] ifFalse: [recoveredBlock124PC := 173].
        ].
        recoveredBlock124Step = 162 ifTrue: [
            recoveredBlock124PC := 163.
        ].
        recoveredBlock124Step = 163 ifTrue: [
            recoveredBlock124Stack1 := recoveredLocal4.
            recoveredBlock124PC := 166.
        ].
        recoveredBlock124Step = 166 ifTrue: [
            recoveredBlock124Stack2 := recoveredBlock124Stack1.
            recoveredBlock124PC := 167.
        ].
        recoveredBlock124Step = 167 ifTrue: [
            (recoveredBlock124Stack2) cr.
            recoveredBlock124PC := 169.
        ].
        recoveredBlock124Step = 169 ifTrue: [
            recoveredBlock124Stack2 := '...'.
            recoveredBlock124PC := 171.
        ].
        recoveredBlock124Step = 171 ifTrue: [
            recoveredBlock124Stack1 := (recoveredBlock124Stack1) nextPutAll: (recoveredBlock124Stack2).
            recoveredBlock124PC := 173.
        ].
        recoveredBlock124Step = 173 ifTrue: [
            recoveredBlock124Result := recoveredBlock124Stack1.
            recoveredBlock124Done := true.
        ].
    ].
    recoveredBlock124Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := EtContinueWithModifiable.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := EtasUserQuestion.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 'YESNO'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := 'question'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x206b43f8; bytecode file offset 0xfb0f0c"
!SGFindReplaceWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredLocal22 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := MWMDECORALL.
    recoveredBlock24Value4 := MWMDECORBORDER.
    recoveredBlock24Value5 := (recoveredBlock24Value3) | (recoveredBlock24Value4).
    recoveredBlock24Value6 := MWMDECORMENU.
    recoveredBlock24Value7 := (recoveredBlock24Value5) | (recoveredBlock24Value6).
    (recoveredBlock24Value2) mwmDecorations: (recoveredBlock24Value7).
    recoveredBlock24Value8 := recoveredBlock24Value0.
    recoveredBlock24Value9 := recoveredLocal14.
    recoveredBlock24Value10 := (300) * (recoveredBlock24Value9).
    recoveredBlock24Value11 := (recoveredBlock24Value10) rounded.
    (recoveredBlock24Value8) height: (recoveredBlock24Value11).
    recoveredBlock24Value12 := recoveredLocal15.
    recoveredBlock24Value13 := (330) * (recoveredBlock24Value12).
    recoveredBlock24Value14 := (recoveredBlock24Value13) rounded.
    recoveredBlock24Value15 := (recoveredBlock24Value0) width: (recoveredBlock24Value14).
    recoveredBlock24Value15
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := [:block28131ab8Arg1 | 
    | block28131ab8Value0 block28131ab8Value1 block28131ab8Value2 block28131ab8Value3 block28131ab8Value4 |
    block28131ab8Value0 := block28131ab8Arg1.
    block28131ab8Value1 := block28131ab8Value0.
    block28131ab8Value2 := XmSINGLELINE.
    (block28131ab8Value1) separatorType: (block28131ab8Value2).
    block28131ab8Value3 := XmVERTICAL.
    block28131ab8Value4 := (block28131ab8Value0) orientation: (block28131ab8Value3).
    block28131ab8Value4
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := 'findWhatLabel'.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 recoveredBlock179Value4 recoveredBlock179Value5 |
    recoveredBlock179Value0 := recoveredBlock179Arg1.
    recoveredBlock179Value1 := recoveredBlock179Value0.
    recoveredBlock179Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock179Value1) alignment: (recoveredBlock179Value2).
    recoveredBlock179Value3 := recoveredBlock179Value0.
    (recoveredBlock179Value3) labelString: ('Find what:').
    recoveredBlock179Value4 := recoveredBlock179Value0.
    recoveredBlock179Value5 := (self) defaultLabelBlue.
    (recoveredBlock179Value4) foregroundColor: (recoveredBlock179Value5).
    recoveredBlock179Value0
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 'findWhatLabel'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := 'caseSensitive'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := [:recoveredBlock226Arg1 | 
    | recoveredBlock226Value0 recoveredBlock226Value1 recoveredBlock226Value2 recoveredBlock226Value3 recoveredBlock226Value4 recoveredBlock226Value5 |
    recoveredBlock226Value0 := recoveredBlock226Arg1.
    recoveredBlock226Value1 := recoveredBlock226Value0.
    recoveredBlock226Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock226Value1) alignment: (recoveredBlock226Value2).
    recoveredBlock226Value3 := recoveredBlock226Value0.
    (recoveredBlock226Value3) labelString: ('Case sensitive').
    recoveredBlock226Value4 := recoveredBlock226Value0.
    recoveredBlock226Value5 := (self) defaultLabelBlue.
    (recoveredBlock226Value4) foregroundColor: (recoveredBlock226Value5).
    recoveredBlock226Value0
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) createToggleButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'caseSensitive'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 'findWhatStringWidget'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 recoveredBlock272Value3 recoveredBlock272Value4 recoveredBlock272Value5 |
    recoveredBlock272Value0 := recoveredBlock272Arg1.
    recoveredBlock272Value1 := recoveredBlock272Value0.
    (recoveredBlock272Value1) editable: (true).
    recoveredBlock272Value2 := (self) getFindStrings.
    recoveredBlock272Value3 := (recoveredBlock272Value2) size.
    recoveredBlock272Value4 := (recoveredBlock272Value3) max: (1).
    recoveredBlock272Value5 := (recoveredBlock272Value0) visibleItemCount: (recoveredBlock272Value4).
    recoveredBlock272Value5
].
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := 'findWhatStringWidget'.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'replaceWithLabel'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := [:recoveredBlock317Arg1 | 
    | recoveredBlock317Value0 recoveredBlock317Value1 recoveredBlock317Value2 recoveredBlock317Value3 recoveredBlock317Value4 recoveredBlock317Value5 |
    recoveredBlock317Value0 := recoveredBlock317Arg1.
    recoveredBlock317Value1 := recoveredBlock317Value0.
    recoveredBlock317Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock317Value1) alignment: (recoveredBlock317Value2).
    recoveredBlock317Value3 := recoveredBlock317Value0.
    (recoveredBlock317Value3) labelString: ('Replace with:').
    recoveredBlock317Value4 := recoveredBlock317Value0.
    recoveredBlock317Value5 := (self) defaultLabelBlue.
    (recoveredBlock317Value4) foregroundColor: (recoveredBlock317Value5).
    recoveredBlock317Value0
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := 'replaceWithLabel'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := 'replaceWithStringWidget'.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := [:recoveredBlock364Arg1 | 
    | recoveredBlock364Value0 recoveredBlock364Value1 recoveredBlock364Value2 recoveredBlock364Value3 recoveredBlock364Value4 recoveredBlock364Value5 |
    recoveredBlock364Value0 := recoveredBlock364Arg1.
    recoveredBlock364Value1 := recoveredBlock364Value0.
    (recoveredBlock364Value1) editable: (true).
    recoveredBlock364Value2 := (self) getReplaceStrings.
    recoveredBlock364Value3 := (recoveredBlock364Value2) size.
    recoveredBlock364Value4 := (recoveredBlock364Value3) max: (1).
    recoveredBlock364Value5 := (recoveredBlock364Value0) visibleItemCount: (recoveredBlock364Value4).
    recoveredBlock364Value5
].
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack2 := 'replaceWithStringWidget'.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack2 := 'findNextButton'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := [:recoveredBlock416Arg1 | 
    | recoveredBlock416Value0 recoveredBlock416Value1 recoveredBlock416Value2 recoveredBlock416Value3 recoveredBlock416Value4 recoveredBlock416Value5 recoveredBlock416Value6 recoveredBlock416Value7 recoveredBlock416Value8 recoveredBlock416Value9 recoveredBlock416Value10 recoveredBlock416Value11 recoveredBlock416Value12 recoveredBlock416Value13 recoveredBlock416Value14 recoveredBlock416Value15 recoveredBlock416Value16 recoveredBlock416Value17 recoveredBlock416Value18 recoveredBlock416Value19 recoveredBlock416Value20 recoveredBlock416Value21 |
    recoveredBlock416Value0 := recoveredBlock416Arg1.
    recoveredBlock416Value1 := recoveredBlock416Value0.
    recoveredBlock416Value2 := recoveredLocal15.
    recoveredBlock416Value3 := (498) * (recoveredBlock416Value2).
    recoveredBlock416Value4 := (recoveredBlock416Value3) rounded.
    (recoveredBlock416Value1) x: (recoveredBlock416Value4).
    recoveredBlock416Value5 := recoveredBlock416Value0.
    (recoveredBlock416Value5) marginRight: (10).
    recoveredBlock416Value6 := recoveredBlock416Value0.
    (recoveredBlock416Value6) labelString: ('&Find').
    recoveredBlock416Value7 := recoveredBlock416Value0.
    (recoveredBlock416Value7) marginWidth: (0).
    recoveredBlock416Value8 := recoveredBlock416Value0.
    (recoveredBlock416Value8) marginHeight: (0).
    recoveredBlock416Value9 := recoveredBlock416Value0.
    recoveredBlock416Value10 := recoveredLocal14.
    recoveredBlock416Value11 := (46) * (recoveredBlock416Value10).
    recoveredBlock416Value12 := (recoveredBlock416Value11) rounded.
    (recoveredBlock416Value9) y: (recoveredBlock416Value12).
    recoveredBlock416Value13 := recoveredBlock416Value0.
    recoveredBlock416Value14 := recoveredLocal14.
    recoveredBlock416Value15 := (25) * (recoveredBlock416Value14).
    recoveredBlock416Value16 := (recoveredBlock416Value15) rounded.
    (recoveredBlock416Value13) height: (recoveredBlock416Value16).
    recoveredBlock416Value17 := recoveredBlock416Value0.
    (recoveredBlock416Value17) marginBottom: (10).
    recoveredBlock416Value18 := recoveredLocal15.
    recoveredBlock416Value19 := (100) * (recoveredBlock416Value18).
    recoveredBlock416Value20 := (recoveredBlock416Value19) rounded.
    recoveredBlock416Value21 := (recoveredBlock416Value0) width: (recoveredBlock416Value20).
    recoveredBlock416Value21
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredLocal22 := recoveredStack1.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack2 := 'findNextButton'.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack3 := recoveredLocal22.
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack2 := 'selectAllButton'.
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack3 := [:recoveredBlock532Arg1 | 
    | recoveredBlock532Value0 recoveredBlock532Value1 recoveredBlock532Value2 recoveredBlock532Value3 recoveredBlock532Value4 recoveredBlock532Value5 recoveredBlock532Value6 recoveredBlock532Value7 recoveredBlock532Value8 recoveredBlock532Value9 recoveredBlock532Value10 recoveredBlock532Value11 recoveredBlock532Value12 recoveredBlock532Value13 recoveredBlock532Value14 recoveredBlock532Value15 recoveredBlock532Value16 recoveredBlock532Value17 recoveredBlock532Value18 recoveredBlock532Value19 recoveredBlock532Value20 recoveredBlock532Value21 |
    recoveredBlock532Value0 := recoveredBlock532Arg1.
    recoveredBlock532Value1 := recoveredBlock532Value0.
    recoveredBlock532Value2 := recoveredLocal15.
    recoveredBlock532Value3 := (183) * (recoveredBlock532Value2).
    recoveredBlock532Value4 := (recoveredBlock532Value3) rounded.
    (recoveredBlock532Value1) x: (recoveredBlock532Value4).
    recoveredBlock532Value5 := recoveredBlock532Value0.
    (recoveredBlock532Value5) marginRight: (10).
    recoveredBlock532Value6 := recoveredBlock532Value0.
    (recoveredBlock532Value6) labelString: ('&Select All').
    recoveredBlock532Value7 := recoveredBlock532Value0.
    (recoveredBlock532Value7) marginWidth: (0).
    recoveredBlock532Value8 := recoveredBlock532Value0.
    (recoveredBlock532Value8) marginHeight: (0).
    recoveredBlock532Value9 := recoveredBlock532Value0.
    recoveredBlock532Value10 := recoveredLocal14.
    recoveredBlock532Value11 := (50) * (recoveredBlock532Value10).
    recoveredBlock532Value12 := (recoveredBlock532Value11) rounded.
    (recoveredBlock532Value9) y: (recoveredBlock532Value12).
    recoveredBlock532Value13 := recoveredBlock532Value0.
    recoveredBlock532Value14 := recoveredLocal14.
    recoveredBlock532Value15 := (25) * (recoveredBlock532Value14).
    recoveredBlock532Value16 := (recoveredBlock532Value15) rounded.
    (recoveredBlock532Value13) height: (recoveredBlock532Value16).
    recoveredBlock532Value17 := recoveredBlock532Value0.
    (recoveredBlock532Value17) marginBottom: (10).
    recoveredBlock532Value18 := recoveredLocal15.
    recoveredBlock532Value19 := (100) * (recoveredBlock532Value18).
    recoveredBlock532Value20 := (recoveredBlock532Value19) rounded.
    recoveredBlock532Value21 := (recoveredBlock532Value0) width: (recoveredBlock532Value20).
    recoveredBlock532Value21
].
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack2 := 'selectAllButton'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := 'replaceButton'.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack3 := [:recoveredBlock648Arg1 | 
    | recoveredBlock648Value0 recoveredBlock648Value1 recoveredBlock648Value2 recoveredBlock648Value3 recoveredBlock648Value4 recoveredBlock648Value5 recoveredBlock648Value6 recoveredBlock648Value7 recoveredBlock648Value8 recoveredBlock648Value9 recoveredBlock648Value10 recoveredBlock648Value11 recoveredBlock648Value12 recoveredBlock648Value13 recoveredBlock648Value14 recoveredBlock648Value15 recoveredBlock648Value16 recoveredBlock648Value17 recoveredBlock648Value18 recoveredBlock648Value19 recoveredBlock648Value20 recoveredBlock648Value21 |
    recoveredBlock648Value0 := recoveredBlock648Arg1.
    recoveredBlock648Value1 := recoveredBlock648Value0.
    recoveredBlock648Value2 := recoveredLocal15.
    recoveredBlock648Value3 := (183) * (recoveredBlock648Value2).
    recoveredBlock648Value4 := (recoveredBlock648Value3) rounded.
    (recoveredBlock648Value1) x: (recoveredBlock648Value4).
    recoveredBlock648Value5 := recoveredBlock648Value0.
    (recoveredBlock648Value5) marginRight: (10).
    recoveredBlock648Value6 := recoveredBlock648Value0.
    (recoveredBlock648Value6) labelString: ('&Replace').
    recoveredBlock648Value7 := recoveredBlock648Value0.
    (recoveredBlock648Value7) marginWidth: (0).
    recoveredBlock648Value8 := recoveredBlock648Value0.
    (recoveredBlock648Value8) marginHeight: (0).
    recoveredBlock648Value9 := recoveredBlock648Value0.
    recoveredBlock648Value10 := recoveredLocal14.
    recoveredBlock648Value11 := (50) * (recoveredBlock648Value10).
    recoveredBlock648Value12 := (recoveredBlock648Value11) rounded.
    (recoveredBlock648Value9) y: (recoveredBlock648Value12).
    recoveredBlock648Value13 := recoveredBlock648Value0.
    recoveredBlock648Value14 := recoveredLocal14.
    recoveredBlock648Value15 := (25) * (recoveredBlock648Value14).
    recoveredBlock648Value16 := (recoveredBlock648Value15) rounded.
    (recoveredBlock648Value13) height: (recoveredBlock648Value16).
    recoveredBlock648Value17 := recoveredBlock648Value0.
    (recoveredBlock648Value17) marginBottom: (10).
    recoveredBlock648Value18 := recoveredLocal15.
    recoveredBlock648Value19 := (100) * (recoveredBlock648Value18).
    recoveredBlock648Value20 := (recoveredBlock648Value19) rounded.
    recoveredBlock648Value21 := (recoveredBlock648Value0) width: (recoveredBlock648Value20).
    recoveredBlock648Value21
].
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack2 := 'replaceButton'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack3 := [:recoveredBlock764Arg1 | 
    | recoveredBlock764Value0 recoveredBlock764Value1 recoveredBlock764Value2 recoveredBlock764Value3 recoveredBlock764Value4 recoveredBlock764Value5 recoveredBlock764Value6 recoveredBlock764Value7 recoveredBlock764Value8 recoveredBlock764Value9 recoveredBlock764Value10 recoveredBlock764Value11 recoveredBlock764Value12 recoveredBlock764Value13 recoveredBlock764Value14 recoveredBlock764Value15 recoveredBlock764Value16 recoveredBlock764Value17 recoveredBlock764Value18 recoveredBlock764Value19 recoveredBlock764Value20 recoveredBlock764Value21 |
    recoveredBlock764Value0 := recoveredBlock764Arg1.
    recoveredBlock764Value1 := recoveredBlock764Value0.
    recoveredBlock764Value2 := recoveredLocal15.
    recoveredBlock764Value3 := (183) * (recoveredBlock764Value2).
    recoveredBlock764Value4 := (recoveredBlock764Value3) rounded.
    (recoveredBlock764Value1) x: (recoveredBlock764Value4).
    recoveredBlock764Value5 := recoveredBlock764Value0.
    (recoveredBlock764Value5) marginRight: (10).
    recoveredBlock764Value6 := recoveredBlock764Value0.
    (recoveredBlock764Value6) labelString: ('&Close').
    recoveredBlock764Value7 := recoveredBlock764Value0.
    (recoveredBlock764Value7) marginWidth: (0).
    recoveredBlock764Value8 := recoveredBlock764Value0.
    (recoveredBlock764Value8) marginHeight: (0).
    recoveredBlock764Value9 := recoveredBlock764Value0.
    recoveredBlock764Value10 := recoveredLocal14.
    recoveredBlock764Value11 := (50) * (recoveredBlock764Value10).
    recoveredBlock764Value12 := (recoveredBlock764Value11) rounded.
    (recoveredBlock764Value9) y: (recoveredBlock764Value12).
    recoveredBlock764Value13 := recoveredBlock764Value0.
    recoveredBlock764Value14 := recoveredLocal14.
    recoveredBlock764Value15 := (25) * (recoveredBlock764Value14).
    recoveredBlock764Value16 := (recoveredBlock764Value15) rounded.
    (recoveredBlock764Value13) height: (recoveredBlock764Value16).
    recoveredBlock764Value17 := recoveredBlock764Value0.
    (recoveredBlock764Value17) marginBottom: (10).
    recoveredBlock764Value18 := recoveredLocal15.
    recoveredBlock764Value19 := (100) * (recoveredBlock764Value18).
    recoveredBlock764Value20 := (recoveredBlock764Value19) rounded.
    recoveredBlock764Value21 := (recoveredBlock764Value0) width: (recoveredBlock764Value20).
    recoveredBlock764Value21
].
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 862.
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack2 := 'closeButton'.
            recoveredPC := 868.
        ].
        recoveredStep = 868 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack2 := 'basicItemLabel'.
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack3 := [:recoveredBlock880Arg1 | 
    | recoveredBlock880Value0 recoveredBlock880Value1 recoveredBlock880Value2 recoveredBlock880Value3 recoveredBlock880Value4 recoveredBlock880Value5 recoveredBlock880Value6 recoveredBlock880Value7 recoveredBlock880Value8 recoveredBlock880Value9 recoveredBlock880Value10 recoveredBlock880Value11 recoveredBlock880Value12 recoveredBlock880Value13 |
    recoveredBlock880Value0 := recoveredBlock880Arg1.
    recoveredBlock880Value1 := recoveredBlock880Value0.
    recoveredBlock880Value2 := recoveredLocal15.
    recoveredBlock880Value3 := (10) * (recoveredBlock880Value2).
    recoveredBlock880Value4 := (recoveredBlock880Value3) rounded.
    (recoveredBlock880Value1) x: (recoveredBlock880Value4).
    recoveredBlock880Value5 := recoveredBlock880Value0.
    recoveredBlock880Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock880Value5) alignment: (recoveredBlock880Value6).
    recoveredBlock880Value7 := recoveredBlock880Value0.
    (recoveredBlock880Value7) labelString: ('Found items').
    recoveredBlock880Value8 := recoveredBlock880Value0.
    recoveredBlock880Value9 := recoveredLocal14.
    recoveredBlock880Value10 := (10) * (recoveredBlock880Value9).
    recoveredBlock880Value11 := (recoveredBlock880Value10) rounded.
    (recoveredBlock880Value8) y: (recoveredBlock880Value11).
    recoveredBlock880Value12 := recoveredBlock880Value0.
    recoveredBlock880Value13 := (self) defaultLabelBlue.
    (recoveredBlock880Value12) foregroundColor: (recoveredBlock880Value13).
    recoveredBlock880Value0
].
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 933.
        ].
        recoveredStep = 933 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack2 := 'basicItemLabel'.
            recoveredPC := 944.
        ].
        recoveredStep = 944 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 949.
        ].
        recoveredStep = 949 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 952.
        ].
        recoveredStep = 952 ifTrue: [
            recoveredStack2 := 'basicItemList'.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack3 := [:recoveredBlock956Arg1 | 
    | recoveredBlock956Value0 recoveredBlock956Value1 recoveredBlock956Value2 recoveredBlock956Value3 recoveredBlock956Value4 recoveredBlock956Value5 recoveredBlock956Value6 recoveredBlock956Value7 recoveredBlock956Value8 recoveredBlock956Value9 recoveredBlock956Value10 recoveredBlock956Value11 |
    recoveredBlock956Value0 := recoveredBlock956Arg1.
    recoveredBlock956Value1 := recoveredBlock956Value0.
    recoveredBlock956Value2 := (self) columnsContents.
    (recoveredBlock956Value1) columns: (recoveredBlock956Value2).
    recoveredBlock956Value3 := recoveredBlock956Value0.
    (recoveredBlock956Value3) editable: (false).
    recoveredBlock956Value4 := recoveredBlock956Value0.
    (recoveredBlock956Value4) selectableColumns: (true).
    recoveredBlock956Value5 := recoveredBlock956Value0.
    recoveredBlock956Value6 := (self) iconHierarchyPolicy.
    (recoveredBlock956Value5) hierarchyPolicy: (recoveredBlock956Value6).
    recoveredBlock956Value7 := recoveredBlock956Value0.
    (recoveredBlock956Value7) lockedColumns: (1).
    recoveredBlock956Value8 := recoveredBlock956Value0.
    (recoveredBlock956Value8) headingSeparatorThickness: (3).
    recoveredBlock956Value9 := recoveredBlock956Value0.
    (recoveredBlock956Value9) itemHeight: (nil).
    recoveredBlock956Value10 := XmEXTENDEDSELECT.
    recoveredBlock956Value11 := (recoveredBlock956Value0) selectionPolicy: (recoveredBlock956Value10).
    recoveredBlock956Value11
].
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledTableTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1027.
        ].
        recoveredStep = 1027 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 1030.
        ].
        recoveredStep = 1030 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 1037.
        ].
        recoveredStep = 1037 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1043.
        ].
        recoveredStep = 1043 ifTrue: [
            recoveredStack2 := 'basicItemListScrolled'.
            recoveredPC := 1046.
        ].
        recoveredStep = 1046 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1051.
        ].
        recoveredStep = 1051 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1054.
        ].
        recoveredStep = 1054 ifTrue: [
            recoveredStack2 := 'basicItemList'.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 1061.
        ].
        recoveredStep = 1061 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1063.
        ].
        recoveredStep = 1063 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1066.
        ].
        recoveredStep = 1066 ifTrue: [
            recoveredStack2 := 'codeLine'.
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            recoveredStack3 := [:block28131adcArg1 | 
    | block28131adcValue0 block28131adcValue1 block28131adcValue2 |
    block28131adcValue0 := block28131adcArg1.
    block28131adcValue1 := block28131adcValue0.
    (block28131adcValue1) sensitive: (true).
    block28131adcValue2 := (block28131adcValue0) editable: (false).
    block28131adcValue2
].
            recoveredPC := 1074.
        ].
        recoveredStep = 1074 ifTrue: [
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1095.
        ].
        recoveredStep = 1095 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack2 := 'codeLine'.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack2 := 'openResultButton'.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack3 := [:recoveredBlock1116Arg1 | 
    | recoveredBlock1116Value0 recoveredBlock1116Value1 recoveredBlock1116Value2 recoveredBlock1116Value3 recoveredBlock1116Value4 recoveredBlock1116Value5 recoveredBlock1116Value6 recoveredBlock1116Value7 recoveredBlock1116Value8 recoveredBlock1116Value9 recoveredBlock1116Value10 recoveredBlock1116Value11 recoveredBlock1116Value12 recoveredBlock1116Value13 recoveredBlock1116Value14 recoveredBlock1116Value15 recoveredBlock1116Value16 recoveredBlock1116Value17 recoveredBlock1116Value18 recoveredBlock1116Value19 recoveredBlock1116Value20 recoveredBlock1116Value21 |
    recoveredBlock1116Value0 := recoveredBlock1116Arg1.
    recoveredBlock1116Value1 := recoveredBlock1116Value0.
    recoveredBlock1116Value2 := recoveredLocal15.
    recoveredBlock1116Value3 := (498) * (recoveredBlock1116Value2).
    recoveredBlock1116Value4 := (recoveredBlock1116Value3) rounded.
    (recoveredBlock1116Value1) x: (recoveredBlock1116Value4).
    recoveredBlock1116Value5 := recoveredBlock1116Value0.
    (recoveredBlock1116Value5) marginRight: (10).
    recoveredBlock1116Value6 := recoveredBlock1116Value0.
    (recoveredBlock1116Value6) labelString: ('&Open Comp.').
    recoveredBlock1116Value7 := recoveredBlock1116Value0.
    (recoveredBlock1116Value7) marginWidth: (0).
    recoveredBlock1116Value8 := recoveredBlock1116Value0.
    (recoveredBlock1116Value8) marginHeight: (0).
    recoveredBlock1116Value9 := recoveredBlock1116Value0.
    recoveredBlock1116Value10 := recoveredLocal14.
    recoveredBlock1116Value11 := (46) * (recoveredBlock1116Value10).
    recoveredBlock1116Value12 := (recoveredBlock1116Value11) rounded.
    (recoveredBlock1116Value9) y: (recoveredBlock1116Value12).
    recoveredBlock1116Value13 := recoveredBlock1116Value0.
    recoveredBlock1116Value14 := recoveredLocal14.
    recoveredBlock1116Value15 := (25) * (recoveredBlock1116Value14).
    recoveredBlock1116Value16 := (recoveredBlock1116Value15) rounded.
    (recoveredBlock1116Value13) height: (recoveredBlock1116Value16).
    recoveredBlock1116Value17 := recoveredBlock1116Value0.
    (recoveredBlock1116Value17) marginBottom: (10).
    recoveredBlock1116Value18 := recoveredLocal15.
    recoveredBlock1116Value19 := (100) * (recoveredBlock1116Value18).
    recoveredBlock1116Value20 := (recoveredBlock1116Value19) rounded.
    recoveredBlock1116Value21 := (recoveredBlock1116Value0) width: (recoveredBlock1116Value20).
    recoveredBlock1116Value21
].
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack2 := 'openResultButton'.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1228.
        ].
        recoveredStep = 1228 ifTrue: [
            recoveredStack2 := [:recoveredBlock1228Arg1 | 
    | recoveredBlock1228Value0 recoveredBlock1228Value1 recoveredBlock1228Value2 |
    recoveredBlock1228Value0 := recoveredBlock1228Arg1.
    recoveredBlock1228Value1 := recoveredLocal10.
    recoveredBlock1228Value2 := (recoveredBlock1228Value0) workWindow: (recoveredBlock1228Value1).
    recoveredBlock1228Value2
].
            recoveredPC := 1244.
        ].
        recoveredStep = 1244 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1249.
        ].
        recoveredStep = 1249 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1252.
        ].
        recoveredStep = 1252 ifTrue: [
            recoveredStack2 := [:recoveredBlock1252Arg1 | 
    | recoveredBlock1252Value0 recoveredBlock1252Value1 recoveredBlock1252Value2 recoveredBlock1252Value3 recoveredBlock1252Value4 recoveredBlock1252Value5 recoveredBlock1252Value6 recoveredBlock1252Value7 recoveredBlock1252Value8 recoveredBlock1252Value9 recoveredBlock1252Value10 recoveredBlock1252Value11 |
    recoveredBlock1252Value0 := recoveredBlock1252Arg1.
    recoveredBlock1252Value1 := recoveredBlock1252Value0.
    recoveredBlock1252Value2 := XmATTACHFORM.
    (recoveredBlock1252Value1) bottomAttachment: (recoveredBlock1252Value2).
    recoveredBlock1252Value3 := recoveredBlock1252Value0.
    (recoveredBlock1252Value3) bottomOffset: (5).
    recoveredBlock1252Value4 := recoveredBlock1252Value0.
    recoveredBlock1252Value5 := XmATTACHFORM.
    (recoveredBlock1252Value4) topAttachment: (recoveredBlock1252Value5).
    recoveredBlock1252Value6 := recoveredBlock1252Value0.
    (recoveredBlock1252Value6) topOffset: (5).
    recoveredBlock1252Value7 := recoveredBlock1252Value0.
    recoveredBlock1252Value8 := XmATTACHWIDGET.
    (recoveredBlock1252Value7) rightAttachment: (recoveredBlock1252Value8).
    recoveredBlock1252Value9 := recoveredBlock1252Value0.
    recoveredBlock1252Value10 := recoveredLocal22.
    (recoveredBlock1252Value9) rightWidget: (recoveredBlock1252Value10).
    recoveredBlock1252Value11 := (recoveredBlock1252Value0) rightOffset: (0).
    recoveredBlock1252Value11
].
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1317.
        ].
        recoveredStep = 1317 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            recoveredStack2 := [:block28131b00Arg1 | 
    | block28131b00Value0 block28131b00Value1 block28131b00Value2 block28131b00Value3 block28131b00Value4 block28131b00Value5 block28131b00Value6 |
    block28131b00Value0 := block28131b00Arg1.
    block28131b00Value1 := block28131b00Value0.
    block28131b00Value2 := XmATTACHFORM.
    (block28131b00Value1) topAttachment: (block28131b00Value2).
    block28131b00Value3 := block28131b00Value0.
    (block28131b00Value3) topOffset: (5).
    block28131b00Value4 := block28131b00Value0.
    block28131b00Value5 := XmATTACHFORM.
    (block28131b00Value4) leftAttachment: (block28131b00Value5).
    block28131b00Value6 := (block28131b00Value0) leftOffset: (5).
    block28131b00Value6
].
            recoveredPC := 1324.
        ].
        recoveredStep = 1324 ifTrue: [
            recoveredPC := 1360.
        ].
        recoveredStep = 1360 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1365.
        ].
        recoveredStep = 1365 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1368.
        ].
        recoveredStep = 1368 ifTrue: [
            recoveredStack2 := [:recoveredBlock1368Arg1 | 
    | recoveredBlock1368Value0 recoveredBlock1368Value1 recoveredBlock1368Value2 recoveredBlock1368Value3 recoveredBlock1368Value4 recoveredBlock1368Value5 recoveredBlock1368Value6 recoveredBlock1368Value7 recoveredBlock1368Value8 recoveredBlock1368Value9 recoveredBlock1368Value10 recoveredBlock1368Value11 |
    recoveredBlock1368Value0 := recoveredBlock1368Arg1.
    recoveredBlock1368Value1 := recoveredBlock1368Value0.
    recoveredBlock1368Value2 := XmATTACHFORM.
    (recoveredBlock1368Value1) bottomAttachment: (recoveredBlock1368Value2).
    recoveredBlock1368Value3 := recoveredBlock1368Value0.
    (recoveredBlock1368Value3) bottomOffset: (5).
    recoveredBlock1368Value4 := recoveredBlock1368Value0.
    recoveredBlock1368Value5 := XmATTACHFORM.
    (recoveredBlock1368Value4) leftAttachment: (recoveredBlock1368Value5).
    recoveredBlock1368Value6 := recoveredBlock1368Value0.
    (recoveredBlock1368Value6) leftOffset: (5).
    recoveredBlock1368Value7 := recoveredBlock1368Value0.
    recoveredBlock1368Value8 := XmATTACHWIDGET.
    (recoveredBlock1368Value7) rightAttachment: (recoveredBlock1368Value8).
    recoveredBlock1368Value9 := recoveredBlock1368Value0.
    recoveredBlock1368Value10 := recoveredLocal9.
    (recoveredBlock1368Value9) rightWidget: (recoveredBlock1368Value10).
    recoveredBlock1368Value11 := (recoveredBlock1368Value0) rightOffset: (0).
    recoveredBlock1368Value11
].
            recoveredPC := 1428.
        ].
        recoveredStep = 1428 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack2 := [:recoveredBlock1436Arg1 | 
    | recoveredBlock1436Value0 recoveredBlock1436Value1 recoveredBlock1436Value2 recoveredBlock1436Value3 recoveredBlock1436Value4 recoveredBlock1436Value5 recoveredBlock1436Value6 recoveredBlock1436Value7 recoveredBlock1436Value8 recoveredBlock1436Value9 recoveredBlock1436Value10 recoveredBlock1436Value11 recoveredBlock1436Value12 recoveredBlock1436Value13 |
    recoveredBlock1436Value0 := recoveredBlock1436Arg1.
    recoveredBlock1436Value1 := recoveredBlock1436Value0.
    recoveredBlock1436Value2 := XmATTACHWIDGET.
    (recoveredBlock1436Value1) topAttachment: (recoveredBlock1436Value2).
    recoveredBlock1436Value3 := recoveredBlock1436Value0.
    recoveredBlock1436Value4 := recoveredLocal8.
    (recoveredBlock1436Value3) topWidget: (recoveredBlock1436Value4).
    recoveredBlock1436Value5 := recoveredBlock1436Value0.
    (recoveredBlock1436Value5) topOffset: (0).
    recoveredBlock1436Value6 := recoveredBlock1436Value0.
    recoveredBlock1436Value7 := XmATTACHFORM.
    (recoveredBlock1436Value6) leftAttachment: (recoveredBlock1436Value7).
    recoveredBlock1436Value8 := recoveredBlock1436Value0.
    (recoveredBlock1436Value8) leftOffset: (5).
    recoveredBlock1436Value9 := recoveredBlock1436Value0.
    recoveredBlock1436Value10 := XmATTACHWIDGET.
    (recoveredBlock1436Value9) rightAttachment: (recoveredBlock1436Value10).
    recoveredBlock1436Value11 := recoveredBlock1436Value0.
    recoveredBlock1436Value12 := recoveredLocal9.
    (recoveredBlock1436Value11) rightWidget: (recoveredBlock1436Value12).
    recoveredBlock1436Value13 := (recoveredBlock1436Value0) rightOffset: (0).
    recoveredBlock1436Value13
].
            recoveredPC := 1504.
        ].
        recoveredStep = 1504 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 1512.
        ].
        recoveredStep = 1512 ifTrue: [
            recoveredStack2 := [:recoveredBlock1512Arg1 | 
    | recoveredBlock1512Value0 recoveredBlock1512Value1 recoveredBlock1512Value2 recoveredBlock1512Value3 recoveredBlock1512Value4 recoveredBlock1512Value5 recoveredBlock1512Value6 recoveredBlock1512Value7 recoveredBlock1512Value8 |
    recoveredBlock1512Value0 := recoveredBlock1512Arg1.
    recoveredBlock1512Value1 := recoveredBlock1512Value0.
    recoveredBlock1512Value2 := XmATTACHWIDGET.
    (recoveredBlock1512Value1) topAttachment: (recoveredBlock1512Value2).
    recoveredBlock1512Value3 := recoveredBlock1512Value0.
    recoveredBlock1512Value4 := recoveredLocal7.
    (recoveredBlock1512Value3) topWidget: (recoveredBlock1512Value4).
    recoveredBlock1512Value5 := recoveredBlock1512Value0.
    (recoveredBlock1512Value5) topOffset: (5).
    recoveredBlock1512Value6 := recoveredBlock1512Value0.
    recoveredBlock1512Value7 := XmATTACHFORM.
    (recoveredBlock1512Value6) leftAttachment: (recoveredBlock1512Value7).
    recoveredBlock1512Value8 := (recoveredBlock1512Value0) leftOffset: (5).
    recoveredBlock1512Value8
].
            recoveredPC := 1558.
        ].
        recoveredStep = 1558 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1563.
        ].
        recoveredStep = 1563 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 1566.
        ].
        recoveredStep = 1566 ifTrue: [
            recoveredStack2 := [:recoveredBlock1566Arg1 | 
    | recoveredBlock1566Value0 recoveredBlock1566Value1 recoveredBlock1566Value2 recoveredBlock1566Value3 recoveredBlock1566Value4 recoveredBlock1566Value5 recoveredBlock1566Value6 recoveredBlock1566Value7 recoveredBlock1566Value8 recoveredBlock1566Value9 recoveredBlock1566Value10 recoveredBlock1566Value11 recoveredBlock1566Value12 recoveredBlock1566Value13 |
    recoveredBlock1566Value0 := recoveredBlock1566Arg1.
    recoveredBlock1566Value1 := recoveredBlock1566Value0.
    recoveredBlock1566Value2 := XmATTACHWIDGET.
    (recoveredBlock1566Value1) topAttachment: (recoveredBlock1566Value2).
    recoveredBlock1566Value3 := recoveredBlock1566Value0.
    recoveredBlock1566Value4 := recoveredLocal18.
    (recoveredBlock1566Value3) topWidget: (recoveredBlock1566Value4).
    recoveredBlock1566Value5 := recoveredBlock1566Value0.
    (recoveredBlock1566Value5) topOffset: (0).
    recoveredBlock1566Value6 := recoveredBlock1566Value0.
    recoveredBlock1566Value7 := XmATTACHFORM.
    (recoveredBlock1566Value6) leftAttachment: (recoveredBlock1566Value7).
    recoveredBlock1566Value8 := recoveredBlock1566Value0.
    (recoveredBlock1566Value8) leftOffset: (5).
    recoveredBlock1566Value9 := recoveredBlock1566Value0.
    recoveredBlock1566Value10 := XmATTACHWIDGET.
    (recoveredBlock1566Value9) rightAttachment: (recoveredBlock1566Value10).
    recoveredBlock1566Value11 := recoveredBlock1566Value0.
    recoveredBlock1566Value12 := recoveredLocal9.
    (recoveredBlock1566Value11) rightWidget: (recoveredBlock1566Value12).
    recoveredBlock1566Value13 := (recoveredBlock1566Value0) rightOffset: (0).
    recoveredBlock1566Value13
].
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 1642.
        ].
        recoveredStep = 1642 ifTrue: [
            recoveredStack2 := [:block28131b24Arg1 | 
    | block28131b24Value0 block28131b24Value1 block28131b24Value2 block28131b24Value3 block28131b24Value4 block28131b24Value5 block28131b24Value6 |
    block28131b24Value0 := block28131b24Arg1.
    block28131b24Value1 := block28131b24Value0.
    block28131b24Value2 := XmATTACHFORM.
    (block28131b24Value1) topAttachment: (block28131b24Value2).
    block28131b24Value3 := block28131b24Value0.
    (block28131b24Value3) topOffset: (5).
    block28131b24Value4 := block28131b24Value0.
    block28131b24Value5 := XmATTACHFORM.
    (block28131b24Value4) rightAttachment: (block28131b24Value5).
    block28131b24Value6 := (block28131b24Value0) rightOffset: (5).
    block28131b24Value6
].
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack2 := [:recoveredBlock1690Arg1 | 
    | recoveredBlock1690Value0 recoveredBlock1690Value1 recoveredBlock1690Value2 recoveredBlock1690Value3 recoveredBlock1690Value4 recoveredBlock1690Value5 recoveredBlock1690Value6 recoveredBlock1690Value7 recoveredBlock1690Value8 |
    recoveredBlock1690Value0 := recoveredBlock1690Arg1.
    recoveredBlock1690Value1 := recoveredBlock1690Value0.
    recoveredBlock1690Value2 := XmATTACHWIDGET.
    (recoveredBlock1690Value1) topAttachment: (recoveredBlock1690Value2).
    recoveredBlock1690Value3 := recoveredBlock1690Value0.
    recoveredBlock1690Value4 := recoveredLocal22.
    (recoveredBlock1690Value3) topWidget: (recoveredBlock1690Value4).
    recoveredBlock1690Value5 := recoveredBlock1690Value0.
    (recoveredBlock1690Value5) topOffset: (5).
    recoveredBlock1690Value6 := recoveredBlock1690Value0.
    recoveredBlock1690Value7 := XmATTACHFORM.
    (recoveredBlock1690Value6) rightAttachment: (recoveredBlock1690Value7).
    recoveredBlock1690Value8 := (recoveredBlock1690Value0) rightOffset: (5).
    recoveredBlock1690Value8
].
            recoveredPC := 1736.
        ].
        recoveredStep = 1736 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1741.
        ].
        recoveredStep = 1741 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 1744.
        ].
        recoveredStep = 1744 ifTrue: [
            recoveredStack2 := [:recoveredBlock1744Arg1 | 
    | recoveredBlock1744Value0 recoveredBlock1744Value1 recoveredBlock1744Value2 recoveredBlock1744Value3 recoveredBlock1744Value4 recoveredBlock1744Value5 recoveredBlock1744Value6 recoveredBlock1744Value7 recoveredBlock1744Value8 |
    recoveredBlock1744Value0 := recoveredBlock1744Arg1.
    recoveredBlock1744Value1 := recoveredBlock1744Value0.
    recoveredBlock1744Value2 := XmATTACHWIDGET.
    (recoveredBlock1744Value1) topAttachment: (recoveredBlock1744Value2).
    recoveredBlock1744Value3 := recoveredBlock1744Value0.
    recoveredBlock1744Value4 := recoveredLocal20.
    (recoveredBlock1744Value3) topWidget: (recoveredBlock1744Value4).
    recoveredBlock1744Value5 := recoveredBlock1744Value0.
    (recoveredBlock1744Value5) topOffset: (5).
    recoveredBlock1744Value6 := recoveredBlock1744Value0.
    recoveredBlock1744Value7 := XmATTACHFORM.
    (recoveredBlock1744Value6) rightAttachment: (recoveredBlock1744Value7).
    recoveredBlock1744Value8 := (recoveredBlock1744Value0) rightOffset: (5).
    recoveredBlock1744Value8
].
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1795.
        ].
        recoveredStep = 1795 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 1798.
        ].
        recoveredStep = 1798 ifTrue: [
            recoveredStack2 := [:recoveredBlock1798Arg1 | 
    | recoveredBlock1798Value0 recoveredBlock1798Value1 recoveredBlock1798Value2 recoveredBlock1798Value3 recoveredBlock1798Value4 recoveredBlock1798Value5 recoveredBlock1798Value6 recoveredBlock1798Value7 recoveredBlock1798Value8 |
    recoveredBlock1798Value0 := recoveredBlock1798Arg1.
    recoveredBlock1798Value1 := recoveredBlock1798Value0.
    recoveredBlock1798Value2 := XmATTACHWIDGET.
    (recoveredBlock1798Value1) topAttachment: (recoveredBlock1798Value2).
    recoveredBlock1798Value3 := recoveredBlock1798Value0.
    recoveredBlock1798Value4 := recoveredLocal21.
    (recoveredBlock1798Value3) topWidget: (recoveredBlock1798Value4).
    recoveredBlock1798Value5 := recoveredBlock1798Value0.
    (recoveredBlock1798Value5) topOffset: (5).
    recoveredBlock1798Value6 := recoveredBlock1798Value0.
    recoveredBlock1798Value7 := XmATTACHFORM.
    (recoveredBlock1798Value6) rightAttachment: (recoveredBlock1798Value7).
    recoveredBlock1798Value8 := (recoveredBlock1798Value0) rightOffset: (5).
    recoveredBlock1798Value8
].
            recoveredPC := 1844.
        ].
        recoveredStep = 1844 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1849.
        ].
        recoveredStep = 1849 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1852.
        ].
        recoveredStep = 1852 ifTrue: [
            recoveredStack2 := [:recoveredBlock1852Arg1 | 
    | recoveredBlock1852Value0 recoveredBlock1852Value1 recoveredBlock1852Value2 recoveredBlock1852Value3 recoveredBlock1852Value4 recoveredBlock1852Value5 recoveredBlock1852Value6 recoveredBlock1852Value7 recoveredBlock1852Value8 |
    recoveredBlock1852Value0 := recoveredBlock1852Arg1.
    recoveredBlock1852Value1 := recoveredBlock1852Value0.
    recoveredBlock1852Value2 := XmATTACHWIDGET.
    (recoveredBlock1852Value1) topAttachment: (recoveredBlock1852Value2).
    recoveredBlock1852Value3 := recoveredBlock1852Value0.
    recoveredBlock1852Value4 := recoveredLocal17.
    (recoveredBlock1852Value3) topWidget: (recoveredBlock1852Value4).
    recoveredBlock1852Value5 := recoveredBlock1852Value0.
    (recoveredBlock1852Value5) topOffset: (5).
    recoveredBlock1852Value6 := recoveredBlock1852Value0.
    recoveredBlock1852Value7 := XmATTACHFORM.
    (recoveredBlock1852Value6) leftAttachment: (recoveredBlock1852Value7).
    recoveredBlock1852Value8 := (recoveredBlock1852Value0) leftOffset: (5).
    recoveredBlock1852Value8
].
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack2 := [:recoveredBlock1906Arg1 | 
    | recoveredBlock1906Value0 recoveredBlock1906Value1 recoveredBlock1906Value2 recoveredBlock1906Value3 recoveredBlock1906Value4 recoveredBlock1906Value5 recoveredBlock1906Value6 recoveredBlock1906Value7 recoveredBlock1906Value8 recoveredBlock1906Value9 recoveredBlock1906Value10 recoveredBlock1906Value11 recoveredBlock1906Value12 recoveredBlock1906Value13 recoveredBlock1906Value14 recoveredBlock1906Value15 recoveredBlock1906Value16 recoveredBlock1906Value17 recoveredBlock1906Value18 |
    recoveredBlock1906Value0 := recoveredBlock1906Arg1.
    recoveredBlock1906Value1 := recoveredBlock1906Value0.
    recoveredBlock1906Value2 := XmATTACHWIDGET.
    (recoveredBlock1906Value1) topAttachment: (recoveredBlock1906Value2).
    recoveredBlock1906Value3 := recoveredBlock1906Value0.
    recoveredBlock1906Value4 := recoveredLocal6.
    (recoveredBlock1906Value3) topWidget: (recoveredBlock1906Value4).
    recoveredBlock1906Value5 := recoveredBlock1906Value0.
    (recoveredBlock1906Value5) topOffset: (0).
    recoveredBlock1906Value6 := recoveredBlock1906Value0.
    recoveredBlock1906Value7 := XmATTACHFORM.
    (recoveredBlock1906Value6) leftAttachment: (recoveredBlock1906Value7).
    recoveredBlock1906Value8 := recoveredBlock1906Value0.
    (recoveredBlock1906Value8) leftOffset: (5).
    recoveredBlock1906Value9 := recoveredBlock1906Value0.
    recoveredBlock1906Value10 := XmATTACHWIDGET.
    (recoveredBlock1906Value9) rightAttachment: (recoveredBlock1906Value10).
    recoveredBlock1906Value11 := recoveredBlock1906Value0.
    recoveredBlock1906Value12 := recoveredLocal9.
    (recoveredBlock1906Value11) rightWidget: (recoveredBlock1906Value12).
    recoveredBlock1906Value13 := recoveredBlock1906Value0.
    (recoveredBlock1906Value13) rightOffset: (0).
    recoveredBlock1906Value14 := recoveredBlock1906Value0.
    recoveredBlock1906Value15 := XmATTACHWIDGET.
    (recoveredBlock1906Value14) bottomAttachment: (recoveredBlock1906Value15).
    recoveredBlock1906Value16 := recoveredBlock1906Value0.
    recoveredBlock1906Value17 := recoveredLocal3.
    (recoveredBlock1906Value16) bottomWidget: (recoveredBlock1906Value17).
    recoveredBlock1906Value18 := (recoveredBlock1906Value0) bottomOffset: (5).
    recoveredBlock1906Value18
].
            recoveredPC := 1996.
        ].
        recoveredStep = 1996 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2001.
        ].
        recoveredStep = 2001 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2004.
        ].
        recoveredStep = 2004 ifTrue: [
            recoveredStack2 := [:recoveredBlock2004Arg1 | 
    | recoveredBlock2004Value0 recoveredBlock2004Value1 recoveredBlock2004Value2 recoveredBlock2004Value3 recoveredBlock2004Value4 recoveredBlock2004Value5 recoveredBlock2004Value6 recoveredBlock2004Value7 recoveredBlock2004Value8 recoveredBlock2004Value9 recoveredBlock2004Value10 recoveredBlock2004Value11 |
    recoveredBlock2004Value0 := recoveredBlock2004Arg1.
    recoveredBlock2004Value1 := recoveredBlock2004Value0.
    recoveredBlock2004Value2 := XmATTACHFORM.
    (recoveredBlock2004Value1) leftAttachment: (recoveredBlock2004Value2).
    recoveredBlock2004Value3 := recoveredBlock2004Value0.
    (recoveredBlock2004Value3) leftOffset: (5).
    recoveredBlock2004Value4 := recoveredBlock2004Value0.
    recoveredBlock2004Value5 := XmATTACHWIDGET.
    (recoveredBlock2004Value4) rightAttachment: (recoveredBlock2004Value5).
    recoveredBlock2004Value6 := recoveredBlock2004Value0.
    recoveredBlock2004Value7 := recoveredLocal9.
    (recoveredBlock2004Value6) rightWidget: (recoveredBlock2004Value7).
    recoveredBlock2004Value8 := recoveredBlock2004Value0.
    (recoveredBlock2004Value8) rightOffset: (0).
    recoveredBlock2004Value9 := recoveredBlock2004Value0.
    recoveredBlock2004Value10 := XmATTACHFORM.
    (recoveredBlock2004Value9) bottomAttachment: (recoveredBlock2004Value10).
    recoveredBlock2004Value11 := (recoveredBlock2004Value0) bottomOffset: (5).
    recoveredBlock2004Value11
].
            recoveredPC := 2064.
        ].
        recoveredStep = 2064 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2069.
        ].
        recoveredStep = 2069 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2072.
        ].
        recoveredStep = 2072 ifTrue: [
            recoveredStack2 := [:block28131b48Arg1 | 
    | block28131b48Value0 block28131b48Value1 block28131b48Value2 block28131b48Value3 block28131b48Value4 block28131b48Value5 block28131b48Value6 |
    block28131b48Value0 := block28131b48Arg1.
    block28131b48Value1 := block28131b48Value0.
    block28131b48Value2 := XmATTACHFORM.
    (block28131b48Value1) bottomAttachment: (block28131b48Value2).
    block28131b48Value3 := block28131b48Value0.
    (block28131b48Value3) bottomOffset: (5).
    block28131b48Value4 := block28131b48Value0.
    block28131b48Value5 := XmATTACHFORM.
    (block28131b48Value4) rightAttachment: (block28131b48Value5).
    block28131b48Value6 := (block28131b48Value0) rightOffset: (5).
    block28131b48Value6
].
            recoveredPC := 2076.
        ].
        recoveredStep = 2076 ifTrue: [
            recoveredPC := 2112.
        ].
        recoveredStep = 2112 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 2117.
        ].
        recoveredStep = 2117 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2120.
        ].
        recoveredStep = 2120 ifTrue: [
            recoveredStack2 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 2124.
        ].
        recoveredStep = 2124 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2125.
        ].
        recoveredStep = 2125 ifTrue: [
            recoveredStack4 := 'basicItemListColumnHeadingSelectionCallback:clientData:callData:'.
            recoveredPC := 2128.
        ].
        recoveredStep = 2128 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2129.
        ].
        recoveredStep = 2129 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2133.
        ].
        recoveredStep = 2133 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2136.
        ].
        recoveredStep = 2136 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 2140.
        ].
        recoveredStep = 2140 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2141.
        ].
        recoveredStep = 2141 ifTrue: [
            recoveredStack4 := 'basicItemListChildrenCallback:clientData:callData:'.
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
            recoveredStack2 := XmNextendedSelectionCallback.
            recoveredPC := 2156.
        ].
        recoveredStep = 2156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2157.
        ].
        recoveredStep = 2157 ifTrue: [
            recoveredStack4 := 'basicItemListExtendedSelectionCallback:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2168.
        ].
        recoveredStep = 2168 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 2172.
        ].
        recoveredStep = 2172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2173.
        ].
        recoveredStep = 2173 ifTrue: [
            recoveredStack4 := 'basicItemDefaultActionCallback:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2184.
        ].
        recoveredStep = 2184 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 2188.
        ].
        recoveredStep = 2188 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2189.
        ].
        recoveredStep = 2189 ifTrue: [
            recoveredStack4 := 'basicItemVisualInfoCallback:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 2200.
        ].
        recoveredStep = 2200 ifTrue: [
            recoveredStack2 := XmNexpandCollapseCallback.
            recoveredPC := 2204.
        ].
        recoveredStep = 2204 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2205.
        ].
        recoveredStep = 2205 ifTrue: [
            recoveredStack4 := 'basicItemExpandCollapseCallback:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2216.
        ].
        recoveredStep = 2216 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2220.
        ].
        recoveredStep = 2220 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2221.
        ].
        recoveredStep = 2221 ifTrue: [
            recoveredStack4 := 'findChange:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2232.
        ].
        recoveredStep = 2232 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2236.
        ].
        recoveredStep = 2236 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2237.
        ].
        recoveredStep = 2237 ifTrue: [
            recoveredStack4 := 'findModify:clientData:callData:'.
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
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2248.
        ].
        recoveredStep = 2248 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 2252.
        ].
        recoveredStep = 2252 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2253.
        ].
        recoveredStep = 2253 ifTrue: [
            recoveredStack4 := 'replaceChange:clientData:callData:'.
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
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 2268.
        ].
        recoveredStep = 2268 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2269.
        ].
        recoveredStep = 2269 ifTrue: [
            recoveredStack4 := 'replaceModify:clientData:callData:'.
            recoveredPC := 2272.
        ].
        recoveredStep = 2272 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2273.
        ].
        recoveredStep = 2273 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2277.
        ].
        recoveredStep = 2277 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2280.
        ].
        recoveredStep = 2280 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2284.
        ].
        recoveredStep = 2284 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2285.
        ].
        recoveredStep = 2285 ifTrue: [
            recoveredStack4 := 'findNextButtonActivate:clientData:callData:'.
            recoveredPC := 2288.
        ].
        recoveredStep = 2288 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2289.
        ].
        recoveredStep = 2289 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2293.
        ].
        recoveredStep = 2293 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2296.
        ].
        recoveredStep = 2296 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2300.
        ].
        recoveredStep = 2300 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2301.
        ].
        recoveredStep = 2301 ifTrue: [
            recoveredStack4 := 'replaceButtonActivate:clientData:callData:'.
            recoveredPC := 2304.
        ].
        recoveredStep = 2304 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2305.
        ].
        recoveredStep = 2305 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2309.
        ].
        recoveredStep = 2309 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2312.
        ].
        recoveredStep = 2312 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2316.
        ].
        recoveredStep = 2316 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2317.
        ].
        recoveredStep = 2317 ifTrue: [
            recoveredStack4 := 'selectAllButtonActivate:clientData:callData:'.
            recoveredPC := 2320.
        ].
        recoveredStep = 2320 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2321.
        ].
        recoveredStep = 2321 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2325.
        ].
        recoveredStep = 2325 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2328.
        ].
        recoveredStep = 2328 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2332.
        ].
        recoveredStep = 2332 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2333.
        ].
        recoveredStep = 2333 ifTrue: [
            recoveredStack4 := 'closeButtonActivate:clientData:callData:'.
            recoveredPC := 2336.
        ].
        recoveredStep = 2336 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2337.
        ].
        recoveredStep = 2337 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2341.
        ].
        recoveredStep = 2341 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2344.
        ].
        recoveredStep = 2344 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 2348.
        ].
        recoveredStep = 2348 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2349.
        ].
        recoveredStep = 2349 ifTrue: [
            recoveredStack4 := 'openResultButtonActivate:clientData:callData:'.
            recoveredPC := 2352.
        ].
        recoveredStep = 2352 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2353.
        ].
        recoveredStep = 2353 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2357.
        ].
        recoveredStep = 2357 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2360.
        ].
        recoveredStep = 2360 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 2364.
        ].
        recoveredStep = 2364 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 2365.
        ].
        recoveredStep = 2365 ifTrue: [
            recoveredStack4 := 'findReplaceResize:clientData:callData:'.
            recoveredPC := 2368.
        ].
        recoveredStep = 2368 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 2369.
        ].
        recoveredStep = 2369 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 2373.
        ].
        recoveredStep = 2373 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 2376.
        ].
        recoveredStep = 2376 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2381.
        ].
        recoveredStep = 2381 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2384.
        ].
        recoveredStep = 2384 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2389.
        ].
        recoveredStep = 2389 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 2392.
        ].
        recoveredStep = 2392 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2397.
        ].
        recoveredStep = 2397 ifTrue: [
            recoveredStack1 := recoveredLocal22.
            recoveredPC := 2400.
        ].
        recoveredStep = 2400 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2405.
        ].
        recoveredStep = 2405 ifTrue: [
            recoveredStack1 := recoveredLocal21.
            recoveredPC := 2408.
        ].
        recoveredStep = 2408 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2413.
        ].
        recoveredStep = 2413 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 2416.
        ].
        recoveredStep = 2416 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2421.
        ].
        recoveredStep = 2421 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 2424.
        ].
        recoveredStep = 2424 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2429.
        ].
        recoveredStep = 2429 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 2432.
        ].
        recoveredStep = 2432 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2437.
        ].
        recoveredStep = 2437 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2440.
        ].
        recoveredStep = 2440 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 2443.
        ].
        recoveredStep = 2443 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 2446.
        ].
        recoveredStep = 2446 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2451.
        ].
        recoveredStep = 2451 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

