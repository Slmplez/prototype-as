"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000a58; bytecode file offset 0x8ffcfc"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
hookKeyEvents
    ^self
! !

"ASDBase.ic method 0x20031744; bytecode file offset 0x934580"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
itemHeight
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := (recoveredValue0) itemHeight.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033094; bytecode file offset 0x934580"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isEditingInProgress
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := (recoveredValue0) isEditingInProgress.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042b5c; bytecode file offset 0x9451f8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
helpText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('helpText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046bec; bytecode file offset 0x9451f8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
tableList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('tableList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004f2cc; bytecode file offset 0x94d048"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
resetModified
    (self) clearModified.
    ^self
! !

"ASDBase.ic method 0x2005104c; bytecode file offset 0x94f0e0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
highlightedCells
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := (recoveredValue0) highlightedCells.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051b00; bytecode file offset 0x94f0e0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
selectedCells
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := (recoveredValue0) selectedCells.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057798; bytecode file offset 0x956284"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
lockedColumns: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) lockedColumns: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063894; bytecode file offset 0x961970"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
refresh
    | recoveredValue0 |
    recoveredValue0 := (self) tableList.
    (recoveredValue0) refresh.
    ^self
! !

"ASDBase.ic method 0x20064504; bytecode file offset 0x961970"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
cancelEdit
    | recoveredValue0 |
    recoveredValue0 := (self) tableList.
    (recoveredValue0) cancelEdit.
    ^self
! !

"ASDBase.ic method 0x20064aa4; bytecode file offset 0x961970"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
endEdit
    | recoveredValue0 |
    recoveredValue0 := (self) tableList.
    (recoveredValue0) endEdit.
    ^self
! !

"ASDBase.ic method 0x2006e68c; bytecode file offset 0x96af48"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
items
    | recoveredValue0 |
    recoveredValue0 := items.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eeac; bytecode file offset 0x96b8a0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
columnDescription
    | recoveredValue0 |
    recoveredValue0 := columnDescription.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f288; bytecode file offset 0x96bc1c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
sortDescription
    | recoveredValue0 |
    recoveredValue0 := sortDescription.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072100; bytecode file offset 0x96ee04"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitModified
    ^1
! !

"ASDBase.ic method 0x200727a8; bytecode file offset 0x96f1c4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitNonEditableNilValues
    ^2
! !

"ASDBase.ic method 0x20072c40; bytecode file offset 0x96f6d4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitShowHelpText
    ^4
! !

"ASDBase.ic method 0x200744d4; bytecode file offset 0x970de8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitAllowSortItems
    ^8
! !

"ASDBase.ic method 0x20074e2c; bytecode file offset 0x9757c8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isTableList
    ^true
! !

"ASDBase.ic method 0x20079070; bytecode file offset 0x97594c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitSortDirectionRising
    ^16
! !

"ASDBase.ic method 0x2007fe08; bytecode file offset 0x97c764"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
bitSuppressModified
    ^32
! !

"ASDBase.ic method 0x20097644; bytecode file offset 0x995850"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
refreshCell: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) refreshCell: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200989a4; bytecode file offset 0x995850"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
itemHeight: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) itemHeight: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098d64; bytecode file offset 0x995850"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
headingFontList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) tableList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) headingFontList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5630; bytecode file offset 0x9c1f64"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
columnDescription: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columnDescription := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5b90; bytecode file offset 0x9c25bc"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
selectionPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectionPolicy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e70; bytecode file offset 0x9c2804"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
endEditCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endEditCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6034; bytecode file offset 0x9c29e8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
beginEditCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    beginEditCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6198; bytecode file offset 0x9c2bec"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
hierarchyCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchyCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c64b4; bytecode file offset 0x9c2dd0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
horizontalAlignment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    horizontalAlignment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6738; bytecode file offset 0x9c3164"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
horizontalHeaderAlignment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    horizontalHeaderAlignment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b94; bytecode file offset 0x9c3470"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
editableItemBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editableItemBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cf1a0; bytecode file offset 0x9cba64"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf1d4; bytecode file offset 0x9cba98"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf1fc; bytecode file offset 0x9cbacc"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setNonEditableNilValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf230; bytecode file offset 0x9cbaf4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isNonEditableNilValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf258; bytecode file offset 0x9cbb10"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setShowHelpText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf274; bytecode file offset 0x9cbb2c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isShowHelpText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf290; bytecode file offset 0x9cbb48"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setAllowSortItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf2ac; bytecode file offset 0x9cbb64"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isAllowSortItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf2c8; bytecode file offset 0x9cbb80"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setSortDirectionRising
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (16).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf2e4; bytecode file offset 0x9cbb9c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isSortDirectionRising
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (16).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf300; bytecode file offset 0x9cbbb8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearSuppressModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (31).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf31c; bytecode file offset 0x9cbbd4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
setSuppressModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (32).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf338; bytecode file offset 0x9cbbf0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
isSuppressModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (32).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cf354; bytecode file offset 0x9cbc0c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearSortDirectionRising
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (47).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf370; bytecode file offset 0x9cbc28"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearAllowSortItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (55).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf38c; bytecode file offset 0x9cbc44"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearShowHelpText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (59).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf3a8; bytecode file offset 0x9cbc60"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearNonEditableNilValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (61).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200cf3c4; bytecode file offset 0x9cbc7c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
clearModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (62).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d3d44; bytecode file offset 0x9d0630"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSuppressModified.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
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
            recoveredStack0 := (recoveredStack0) isModified.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011f2ec; bytecode file offset 0xa1bba8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
items: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            items := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateContents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131cdc; bytecode file offset 0xa2e6a8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
showHelpText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setShowHelpText.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearShowHelpText.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131dbc; bytecode file offset 0xa2e6a8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
modified: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setModified.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearModified.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201474cc; bytecode file offset 0xa43d88"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
description: recoveredArg1 items: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            items := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            columnDescription := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateContents.
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

"ASDBase.ic method 0x2015dae8; bytecode file offset 0xa5a3a8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
endEditCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := endEditCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) endEditCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := endEditCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015db74; bytecode file offset 0xa5a434"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
beginEditCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := beginEditCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) beginEditCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := beginEditCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015dc20; bytecode file offset 0xa5a4e0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
hierarchyCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hierarchyCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
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
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) hierarchyCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := hierarchyCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201721d0; bytecode file offset 0xa6ea9c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
highlightedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) highlightedCells.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := (self) tableList.
    recoveredBlock5Value1 := (recoveredBlock5Value0) items.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) y.
    recoveredBlock5Value4 := (recoveredBlock5Value1) at: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201907e4; bytecode file offset 0xa8d0b4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
selectedItems
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectedCells.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := (self) tableList.
    recoveredBlock5Value1 := (recoveredBlock5Value0) items.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) y.
    recoveredBlock5Value4 := [].
    recoveredBlock5Value5 := (recoveredBlock5Value1) at: (recoveredBlock5Value3) ifAbsent: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a74b0; bytecode file offset 0xaa3d9c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
fontList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) helpText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fontList: (recoveredValue1).
    recoveredValue2 := (self) tableList.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) fontList: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) fontStruct.
    recoveredValue7 := (recoveredValue6) height.
    recoveredValue8 := (recoveredValue7) + (6).
    (recoveredValue2) itemHeight: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201dd4bc; bytecode file offset 0xad9d88"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
resetSortMarker
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := sortDescription.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := sortDescription.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) heading: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dfa50; bytecode file offset 0xadc320"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
triggerBeginEditCallbackFor: recoveredArg1 description: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasOptionsDialogBeginEditCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := items.
    (recoveredValue3) optionEntries: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) item: (recoveredValue6).
    recoveredValue7 := recoveredArg2.
    (recoveredValue2) description: (recoveredValue7).
    recoveredValue8 := RbOptionsDialogBeginEditCallback.
    recoveredValue9 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue8) callData: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x201fa0d8; bytecode file offset 0xaf69a0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
heightOfParentNotebookWidgetForm: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'notebookWidgetForm'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) heightOfParentNotebookWidgetForm: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020c5b8; bytecode file offset 0xb08e84"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super initialize.
    state := 0.
    (self) setAllowSortItems.
    (self) setSortDirectionRising.
    recoveredValue0 := XmCELLSINGLESELECT.
    selectionPolicy := recoveredValue0.
    recoveredValue1 := XmALIGNMENTCENTER.
    horizontalAlignment := recoveredValue1.
    recoveredValue2 := XmALIGNMENTCENTER.
    horizontalHeaderAlignment := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20215d98; bytecode file offset 0xb1266c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
triggerHierarchyCallbackFor: recoveredArg1 description: recoveredArg2 item: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := RBOptionsDialogHierarchyCallbackData.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := items.
    (recoveredValue3) optionEntries: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) hierarchyOptionEntry: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) description: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    (recoveredValue2) item: (recoveredValue9).
    recoveredValue10 := RbOptionsDialogHierarchyCallback.
    recoveredValue11 := recoveredLocal1.
    (self) callCallbacks: (recoveredValue10) callData: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2022dbb0; bytecode file offset 0xb2a47c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
optionTableListcellSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isShowHelpText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := columnDescription.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpText.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) text.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20248e14; bytecode file offset 0xb456ec"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isShowHelpText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'aScrolledText'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
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
            recoveredStack1 := 'aScrolledEnhancedTableList1'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := XmATTACHFORM.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) bottomAttachment: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) bottomOffset: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := items.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) updateContents.
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

"ASDBase.ic method 0x20328074; bytecode file offset 0xc2494c"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
tableListcellSingleSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isShowHelpText.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpText.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := columnDescription.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) columnPosition.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpText.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) helpText.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x2033eca4; bytecode file offset 0xc3b598"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
triggerEndEditCallbackFor: recoveredArg1 description: recoveredArg2 oldValue: recoveredArg3 oldValueList: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasTableColumnOptionEndEditCallbackData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) optionEntries: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) item: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) highlightedItems.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) selectedItems: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) oldValue: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) oldValueList: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) modified: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := RbOptionsDialogEndEditCallback.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) callCallbacks: (recoveredStack1) callData: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) setModified.
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

"ASDBase.ic method 0x2039e8dc; bytecode file offset 0xc9b1d0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
createColumn: recoveredArg1 selector: recoveredArg2 clientData: recoveredArg3 width: recoveredArg4 editable: recoveredArg5 alignment: recoveredArg6 headerAlignment: recoveredArg7
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) editable: (true).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) etched: (true).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) heading: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg4.
    (recoveredValue6) width: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) resizable: (true).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) showInUse: (false).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg6.
    (recoveredValue10) horizontalAlignment: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := recoveredArg7.
    (recoveredValue12) horizontalHeadingAlignment: (recoveredValue13).
    recoveredLocal1 := recoveredValue1.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    recoveredValue16 := XmNcellValueCallback.
    recoveredValue17 := recoveredArg2.
    recoveredValue18 := recoveredArg3.
    (recoveredValue15) addCallback: (recoveredValue16) receiver: (self) selector: (recoveredValue17) clientData: (recoveredValue18).
    recoveredValue19 := recoveredValue14.
    recoveredValue20 := XmNbeginEditCallback.
    recoveredValue21 := recoveredArg3.
    (recoveredValue19) addCallback: (recoveredValue20) receiver: (self) selector: ('beginEditValue:clientData:callData:') clientData: (recoveredValue21).
    recoveredValue22 := XmNendEditCallback.
    recoveredValue23 := recoveredArg3.
    (recoveredValue14) addCallback: (recoveredValue22) receiver: (self) selector: ('endEditValue:clientData:callData:') clientData: (recoveredValue23).
    recoveredValue24 := recoveredLocal1.
    ^recoveredValue24
! !

"ASDBase.ic method 0x203b36cc; bytecode file offset 0xcaffb4"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
noEditPolicyCellUpdatingOnChangedOption: recoveredArg1 widget: recoveredArg2 callData: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := columnDescription.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) tableList.
    recoveredValue4 := (recoveredValue3) selectedCells.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg2.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) items.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) y.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredLocal2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getBlock.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal2.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) value: (recoveredBlock15Stack2).
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredLocal3 := recoveredBlock15Stack1.
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack2 := recoveredLocal3.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) editable.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 56] ifFalse: [recoveredBlock15PC := 74].
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal3.
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 63.
        ].
        recoveredBlock15Step = 63 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) value.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) deepCopy.
            recoveredBlock15PC := 67.
        ].
        recoveredBlock15Step = 67 ifTrue: [
            (recoveredBlock15Stack1) setValue: (recoveredBlock15Stack2).
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) tableList.
            recoveredBlock15PC := 71.
        ].
        recoveredBlock15Step = 71 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 72 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) refreshCell: (recoveredBlock15Stack2).
            recoveredBlock15PC := 74.
        ].
        recoveredBlock15Step = 74 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x203bf5f8; bytecode file offset 0xcbbeec"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isModified.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isModified: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isNonEditableNilValues.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isNonEditableNilValues: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isShowHelpText.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isShowHelpText: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isAllowSortItems.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isAllowSortItems: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := recoveredValue20.
    recoveredValue22 := (self) isSuppressModified.
    recoveredValue23 := (recoveredValue22) printString.
    recoveredValue24 := ('isSuppressModified: ') , (recoveredValue23).
    (recoveredValue21) nextPutAll: (recoveredValue24).
    (recoveredValue20) cr.
    recoveredValue25 := recoveredArg1.
    recoveredValue26 := recoveredValue25.
    recoveredValue27 := (self) isSortDirectionRising.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := ('isSortDirectionRising: ') , (recoveredValue28).
    (recoveredValue26) nextPutAll: (recoveredValue29).
    (recoveredValue25) cr.
    ^self
! !

"ASDBase.ic method 0x20411414; bytecode file offset 0xd0dcfc"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
tableListColumnHeadingSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
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
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) index.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := columnDescription.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumns.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) index.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            (recoveredBlock45Stack0) resetSortMarker.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal1.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack1 := sortDescription.
            recoveredBlock45PC := 59.
        ].
        recoveredBlock45Step = 59 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) = (recoveredBlock45Stack1).
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 64] ifFalse: [recoveredBlock45PC := 82].
        ].
        recoveredBlock45Step = 64 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isSortDirectionRising.
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 70] ifFalse: [recoveredBlock45PC := 76].
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            (recoveredBlock45Stack0) clearSortDirectionRising.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 77.
        ].
        recoveredBlock45Step = 77 ifTrue: [
            (recoveredBlock45Stack0) setSortDirectionRising.
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 83.
        ].
        recoveredBlock45Step = 83 ifTrue: [
            (recoveredBlock45Stack0) setSortDirectionRising.
            recoveredBlock45PC := 85.
        ].
        recoveredBlock45Step = 85 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal1.
            recoveredBlock45PC := 88.
        ].
        recoveredBlock45Step = 88 ifTrue: [
            sortDescription := recoveredBlock45Stack0.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 91.
        ].
        recoveredBlock45Step = 91 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) sortItems.
            recoveredBlock45PC := 93.
        ].
        recoveredBlock45Step = 93 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) deferRedraw: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dbf58; bytecode file offset 0xdd8870"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
updateContents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := columnDescription.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Local3 recoveredBlock23Local4 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23Stack5 recoveredBlock23Stack6 recoveredBlock23Stack7 recoveredBlock23Stack8 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 32.
        ].
        recoveredBlock23Step = 32 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) headerAlignment.
            recoveredBlock23PC := 33.
        ].
        recoveredBlock23Step = 33 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack2.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            (recoveredBlock23Stack1 ~~ nil) ifTrue: [recoveredBlock23PC := 41] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := horizontalHeaderAlignment.
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) alignment.
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 46.
        ].
        recoveredBlock23Step = 46 ifTrue: [
            recoveredBlock23Local2 := recoveredBlock23Stack2.
            recoveredBlock23PC := 47.
        ].
        recoveredBlock23Step = 47 ifTrue: [
            (recoveredBlock23Stack1 ~~ nil) ifTrue: [recoveredBlock23PC := 53] ifFalse: [recoveredBlock23PC := 50].
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := horizontalAlignment.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Local2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack1 := items.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) notEmpty.
            recoveredBlock23PC := 57.
        ].
        recoveredBlock23Step = 57 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 60] ifFalse: [recoveredBlock23PC := 71].
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 62.
        ].
        recoveredBlock23Step = 62 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) getBlock.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack2 := items.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) first.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) value: (recoveredBlock23Stack2).
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23Local3 := recoveredBlock23Stack1.
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local3.
            recoveredBlock23PC := 72.
        ].
        recoveredBlock23Step = 72 ifTrue: [
            (recoveredBlock23Stack1 == nil) ifTrue: [recoveredBlock23PC := 85] ifFalse: [recoveredBlock23PC := 76].
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local3.
            recoveredBlock23PC := 77.
        ].
        recoveredBlock23Step = 77 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isColorOption.
            recoveredBlock23PC := 79.
        ].
        recoveredBlock23Step = 79 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 82] ifFalse: [recoveredBlock23PC := 85].
        ].
        recoveredBlock23Step = 82 ifTrue: [
            recoveredBlock23Stack1 := XmALIGNMENTBEGINNING.
            recoveredBlock23PC := 84.
        ].
        recoveredBlock23Step = 84 ifTrue: [
            recoveredBlock23Local2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 85.
        ].
        recoveredBlock23Step = 85 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 87.
        ].
        recoveredBlock23Step = 87 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) text.
            recoveredBlock23PC := 89.
        ].
        recoveredBlock23Step = 89 ifTrue: [
            recoveredBlock23Stack2 := 'tableCellValue:clientData:callData:'.
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg2.
            recoveredBlock23PC := 93.
        ].
        recoveredBlock23Step = 93 ifTrue: [
            recoveredBlock23Stack4 := recoveredBlock23Arg1.
            recoveredBlock23PC := 95.
        ].
        recoveredBlock23Step = 95 ifTrue: [
            recoveredBlock23Stack4 := (recoveredBlock23Stack4) width.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Stack5 := recoveredBlock23Arg1.
            recoveredBlock23PC := 99.
        ].
        recoveredBlock23Step = 99 ifTrue: [
            recoveredBlock23Stack5 := (recoveredBlock23Stack5) editable.
            recoveredBlock23PC := 101.
        ].
        recoveredBlock23Step = 101 ifTrue: [
            recoveredBlock23Stack6 := 0.
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            recoveredBlock23Stack7 := recoveredBlock23Local1.
            recoveredBlock23PC := 104.
        ].
        recoveredBlock23Step = 104 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) createColumn: (recoveredBlock23Stack1) selector: (recoveredBlock23Stack2) clientData: (recoveredBlock23Stack3) width: (recoveredBlock23Stack4) editable: (recoveredBlock23Stack5) alignment: (recoveredBlock23Stack6) headerAlignment: (recoveredBlock23Stack7).
            recoveredBlock23PC := 107.
        ].
        recoveredBlock23Step = 107 ifTrue: [
            recoveredBlock23Local4 := recoveredBlock23Stack0.
            recoveredBlock23PC := 108.
        ].
        recoveredBlock23Step = 108 ifTrue: [
            recoveredBlock23Stack0 := recoveredBlock23Arg2.
            recoveredBlock23PC := 110.
        ].
        recoveredBlock23Step = 110 ifTrue: [
            recoveredBlock23Stack1 := self.
            recoveredBlock23PC := 111.
        ].
        recoveredBlock23Step = 111 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) tableList.
            recoveredBlock23PC := 113.
        ].
        recoveredBlock23Step = 113 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) lockedColumns.
            recoveredBlock23PC := 115.
        ].
        recoveredBlock23Step = 115 ifTrue: [
            (recoveredBlock23Stack0 ~~ recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 123] ifFalse: [recoveredBlock23PC := 118].
        ].
        recoveredBlock23Step = 118 ifTrue: [
            recoveredBlock23Stack0 := recoveredBlock23Local4.
            recoveredBlock23PC := 119.
        ].
        recoveredBlock23Step = 119 ifTrue: [
            recoveredBlock23Stack1 := 3.
            recoveredBlock23PC := 121.
        ].
        recoveredBlock23Step = 121 ifTrue: [
            (recoveredBlock23Stack0) verticalSeparatorThickness: (recoveredBlock23Stack1).
            recoveredBlock23PC := 123.
        ].
        recoveredBlock23Step = 123 ifTrue: [
            recoveredBlock23Stack0 := recoveredLocal1.
            recoveredBlock23PC := 126.
        ].
        recoveredBlock23Step = 126 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local4.
            recoveredBlock23PC := 127.
        ].
        recoveredBlock23Step = 127 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) add: (recoveredBlock23Stack1).
            recoveredBlock23PC := 129.
        ].
        recoveredBlock23Step = 129 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 |
    (self) sortItems.
    recoveredBlock134Value0 := (self) tableList.
    recoveredBlock134Value1 := recoveredLocal1.
    (recoveredBlock134Value0) columns: (recoveredBlock134Value1).
    recoveredBlock134Value2 := (self) tableList.
    recoveredBlock134Value3 := (recoveredBlock134Value2) updateDisplay.
    recoveredBlock134Value3
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

"ASDBase.ic method 0x20522b6c; bytecode file offset 0xe1f4a0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setModified.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setModified--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setNonEditableNilValues.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setNonEditableNilValues--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) setShowHelpText.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setShowHelpText--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) setAllowSortItems.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setAllowSortItems--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    (self) setSuppressModified.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------setSuppressModified--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue16).
    (self) setSortDirectionRising.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------setSortDirectionRising--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue19).
    (self) clearModified.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('--------clearModified--------').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue22).
    (self) clearNonEditableNilValues.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('--------clearNonEditableNilValues--------').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue25).
    (self) clearShowHelpText.
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := recoveredValue26.
    (recoveredValue27) nextPutAll: ('--------clearShowHelpText--------').
    (recoveredValue26) cr.
    recoveredValue28 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue28).
    (self) clearAllowSortItems.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) nextPutAll: ('--------clearAllowSortItems--------').
    (recoveredValue29) cr.
    recoveredValue31 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue31).
    (self) clearSuppressModified.
    recoveredValue32 := recoveredLocal1.
    recoveredValue33 := recoveredValue32.
    (recoveredValue33) nextPutAll: ('--------clearSuppressModified--------').
    (recoveredValue32) cr.
    recoveredValue34 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue34).
    (self) clearSortDirectionRising.
    recoveredValue35 := recoveredLocal1.
    recoveredValue36 := recoveredValue35.
    (recoveredValue36) nextPutAll: ('--------clearSortDirectionRising--------').
    (recoveredValue35) cr.
    recoveredValue37 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue37).
    recoveredValue38 := recoveredLocal1.
    recoveredValue39 := (recoveredValue38) contents.
    (recoveredValue39) edit.
    ^self
! !

"ASDBase.ic method 0x205352c4; bytecode file offset 0xe31be0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
tableCellValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := columnDescription.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getValueString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := '?'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) white.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := CgRGBColor.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) black.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := RBFontGlobal.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) listFont.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) backgroundColor.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) foregroundColor.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) fontList.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := RBColoredStringIcon.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := CgIndexedPalette.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) etasDefault.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) nearestPixelValue: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := CgIndexedPalette.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasDefault.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineColor: (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) fontStruct.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) font: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := editableItemBlock.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := editableItemBlock.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := RBColoredStringIcon.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := CgIndexedPalette.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultBackgroundGray.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := (recoveredStack2) nearestPixelValue: (recoveredStack3).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := CgIndexedPalette.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := (recoveredStack3) nearestPixelValue: (recoveredStack4).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineColor: (recoveredStack2) backgroundColor: (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := (recoveredStack3) fontStruct.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack2) font: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205580c4; bytecode file offset 0xe549e0"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
endEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwWMShell.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) focusShell.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUserInterface.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getFocusShell.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) reason.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := XmCRCANCELEDIT.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBlock.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) highlightedItems.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 recoveredBlock63Value4 |
    recoveredBlock63Value0 := recoveredLocal4.
    recoveredBlock63Value1 := (recoveredBlock63Value0) getBlock.
    recoveredBlock63Value2 := recoveredBlock63Arg1.
    recoveredBlock63Value3 := (recoveredBlock63Value1) value: (recoveredBlock63Value2).
    recoveredBlock63Value4 := (recoveredBlock63Value3) value.
    recoveredBlock63Value4
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) highlightedCells.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Local1 recoveredBlock91Local2 recoveredBlock91Stack0 recoveredBlock91Stack1 recoveredBlock91Stack2 recoveredBlock91Stack3 recoveredBlock91Stack4 recoveredBlock91PC recoveredBlock91Step recoveredBlock91Done recoveredBlock91Result |
    recoveredBlock91Stack0 := self.
    recoveredBlock91PC := 98.
    recoveredBlock91Done := false.
    [recoveredBlock91Done not] whileTrue: [
        recoveredBlock91Step := recoveredBlock91PC.
        recoveredBlock91Step = 98 ifTrue: [
            recoveredBlock91Stack1 := recoveredArg1.
            recoveredBlock91PC := 101.
        ].
        recoveredBlock91Step = 101 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) items.
            recoveredBlock91PC := 103.
        ].
        recoveredBlock91Step = 103 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 106.
        ].
        recoveredBlock91Step = 106 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) y.
            recoveredBlock91PC := 108.
        ].
        recoveredBlock91Step = 108 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) at: (recoveredBlock91Stack2).
            recoveredBlock91PC := 110.
        ].
        recoveredBlock91Step = 110 ifTrue: [
            recoveredBlock91Local1 := recoveredBlock91Stack1.
            recoveredBlock91PC := 113.
        ].
        recoveredBlock91Step = 113 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal4.
            recoveredBlock91PC := 116.
        ].
        recoveredBlock91Step = 116 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) getBlock.
            recoveredBlock91PC := 118.
        ].
        recoveredBlock91Step = 118 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local1.
            recoveredBlock91PC := 121.
        ].
        recoveredBlock91Step = 121 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) value: (recoveredBlock91Stack2).
            recoveredBlock91PC := 123.
        ].
        recoveredBlock91Step = 123 ifTrue: [
            recoveredBlock91Local2 := recoveredBlock91Stack1.
            recoveredBlock91PC := 126.
        ].
        recoveredBlock91Step = 126 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 127.
        ].
        recoveredBlock91Step = 127 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local2.
            recoveredBlock91PC := 130.
        ].
        recoveredBlock91Step = 130 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) editable.
            recoveredBlock91PC := 132.
        ].
        recoveredBlock91Step = 132 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 136] ifFalse: [recoveredBlock91PC := 198].
        ].
        recoveredBlock91Step = 136 ifTrue: [
            recoveredBlock91PC := 137.
        ].
        recoveredBlock91Step = 137 ifTrue: [
            recoveredBlock91Stack1 := nil.
            recoveredBlock91PC := 138.
        ].
        recoveredBlock91Step = 138 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Local2.
            recoveredBlock91PC := 141.
        ].
        recoveredBlock91Step = 141 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) value.
            recoveredBlock91PC := 143.
        ].
        recoveredBlock91Step = 143 ifTrue: [
            recoveredBlock91Stack3 := recoveredArg3.
            recoveredBlock91PC := 146.
        ].
        recoveredBlock91Step = 146 ifTrue: [
            recoveredBlock91Stack3 := (recoveredBlock91Stack3) newValue.
            recoveredBlock91PC := 148.
        ].
        recoveredBlock91Step = 148 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) = (recoveredBlock91Stack3).
            recoveredBlock91PC := 149.
        ].
        recoveredBlock91Step = 149 ifTrue: [
            (recoveredBlock91Stack2) ifTrue: [recoveredBlock91PC := 198] ifFalse: [recoveredBlock91PC := 152].
        ].
        recoveredBlock91Step = 152 ifTrue: [
            recoveredBlock91PC := 153.
        ].
        recoveredBlock91Step = 153 ifTrue: [
            recoveredBlock91Stack1 := true.
            recoveredBlock91PC := 154.
        ].
        recoveredBlock91Step = 154 ifTrue: [
            recoveredLocal1 := recoveredBlock91Stack1.
            recoveredBlock91PC := 157.
        ].
        recoveredBlock91Step = 157 ifTrue: [
            recoveredBlock91Stack1 := recoveredBlock91Local2.
            recoveredBlock91PC := 160.
        ].
        recoveredBlock91Step = 160 ifTrue: [
            recoveredBlock91Stack2 := recoveredArg3.
            recoveredBlock91PC := 163.
        ].
        recoveredBlock91Step = 163 ifTrue: [
            recoveredBlock91Stack2 := (recoveredBlock91Stack2) newValue.
            recoveredBlock91PC := 165.
        ].
        recoveredBlock91Step = 165 ifTrue: [
            (recoveredBlock91Stack1) setValue: (recoveredBlock91Stack2).
            recoveredBlock91PC := 167.
        ].
        recoveredBlock91Step = 167 ifTrue: [
            recoveredBlock91Stack1 := recoveredLocal4.
            recoveredBlock91PC := 170.
        ].
        recoveredBlock91Step = 170 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) setBlock.
            recoveredBlock91PC := 172.
        ].
        recoveredBlock91Step = 172 ifTrue: [
            recoveredBlock91Stack2 := [:recoveredBlock91Block172Arg1 | 
    | recoveredBlock91Block172Value0 recoveredBlock91Block172Value1 recoveredBlock91Block172Value2 recoveredBlock91Block172Value3 |
    recoveredBlock91Block172Value0 := recoveredBlock91Block172Arg1.
    recoveredBlock91Block172Value1 := recoveredBlock91Local2.
    recoveredBlock91Block172Value2 := recoveredBlock91Local1.
    recoveredBlock91Block172Value3 := (recoveredBlock91Block172Value0) value: (recoveredBlock91Block172Value1) value: (recoveredBlock91Block172Value2).
    recoveredBlock91Block172Value3
].
            recoveredBlock91PC := 188.
        ].
        recoveredBlock91Step = 188 ifTrue: [
            (recoveredBlock91Stack1) ifNotNil: (recoveredBlock91Stack2).
            recoveredBlock91PC := 190.
        ].
        recoveredBlock91Step = 190 ifTrue: [
            recoveredBlock91Stack1 := self.
            recoveredBlock91PC := 191.
        ].
        recoveredBlock91Step = 191 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) tableList.
            recoveredBlock91PC := 193.
        ].
        recoveredBlock91Step = 193 ifTrue: [
            recoveredBlock91Stack2 := recoveredBlock91Arg1.
            recoveredBlock91PC := 196.
        ].
        recoveredBlock91Step = 196 ifTrue: [
            recoveredBlock91Stack1 := (recoveredBlock91Stack1) refreshCell: (recoveredBlock91Stack2).
            recoveredBlock91PC := 198.
        ].
        recoveredBlock91Step = 198 ifTrue: [
            recoveredBlock91Result := recoveredBlock91Stack1.
            recoveredBlock91Done := true.
        ].
    ].
    recoveredBlock91Result
].
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack0) triggerEndEditCallbackFor: (recoveredStack1) description: (recoveredStack2) oldValue: (recoveredStack3) oldValueList: (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20572b70; bytecode file offset 0xe6f478"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
beginEditValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := columnDescription.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) triggerBeginEditCallbackFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
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
            recoveredStack0 := editableItemBlock.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := editableItemBlock.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNonEditableNilValues.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Value0 recoveredBlock107Value1 recoveredBlock107Value2 recoveredBlock107Value3 recoveredBlock107Value4 |
    recoveredBlock107Value0 := recoveredLocal4.
    recoveredBlock107Value1 := (recoveredBlock107Value0) getBlock.
    recoveredBlock107Value2 := recoveredBlock107Arg1.
    recoveredBlock107Value3 := (recoveredBlock107Value1) value: (recoveredBlock107Value2).
    recoveredBlock107Value4 := (recoveredBlock107Value3) value.
    recoveredBlock107Value4
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isHierarchyOption.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) triggerHierarchyCallbackFor: (recoveredStack1) description: (recoveredStack2) item: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 167.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableList.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEditPolicyOn: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) modified.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 231].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCell.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) refreshCell: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) triggerEndEditCallbackFor: (recoveredStack1) description: (recoveredStack2) oldValue: (recoveredStack3) oldValueList: (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) noEditPolicyCellUpdatingOnChangedOption: (recoveredStack1) widget: (recoveredStack2) callData: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 246.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) editPolicy: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) doit: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d94a0; bytecode file offset 0xed5de8"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
sortItems
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) cursoredCell.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := columnDescription.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := sortDescription.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := items.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 271.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSortDirectionRising.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := items.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := [:recoveredBlock54Arg1 :recoveredBlock54Arg2 | 
    | recoveredBlock54Local1 recoveredBlock54Local2 recoveredBlock54Stack0 recoveredBlock54Stack1 recoveredBlock54Stack2 recoveredBlock54Stack3 recoveredBlock54PC recoveredBlock54Step recoveredBlock54Done recoveredBlock54Result |
    recoveredBlock54Stack0 := self.
    recoveredBlock54PC := 60.
    recoveredBlock54Done := false.
    [recoveredBlock54Done not] whileTrue: [
        recoveredBlock54Step := recoveredBlock54PC.
        recoveredBlock54Step = 60 ifTrue: [
            recoveredBlock54Stack1 := sortDescription.
            recoveredBlock54PC := 62.
        ].
        recoveredBlock54Step = 62 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) getBlock.
            recoveredBlock54PC := 64.
        ].
        recoveredBlock54Step = 64 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg1.
            recoveredBlock54PC := 65.
        ].
        recoveredBlock54Step = 65 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) value: (recoveredBlock54Stack2).
            recoveredBlock54PC := 67.
        ].
        recoveredBlock54Step = 67 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) getValueString.
            recoveredBlock54PC := 69.
        ].
        recoveredBlock54Step = 69 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asString.
            recoveredBlock54PC := 71.
        ].
        recoveredBlock54Step = 71 ifTrue: [
            recoveredBlock54Local2 := recoveredBlock54Stack1.
            recoveredBlock54PC := 72.
        ].
        recoveredBlock54Step = 72 ifTrue: [
            recoveredBlock54Stack1 := sortDescription.
            recoveredBlock54PC := 74.
        ].
        recoveredBlock54Step = 74 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) getBlock.
            recoveredBlock54PC := 76.
        ].
        recoveredBlock54Step = 76 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Arg2.
            recoveredBlock54PC := 77.
        ].
        recoveredBlock54Step = 77 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) value: (recoveredBlock54Stack2).
            recoveredBlock54PC := 79.
        ].
        recoveredBlock54Step = 79 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) getValueString.
            recoveredBlock54PC := 81.
        ].
        recoveredBlock54Step = 81 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asString.
            recoveredBlock54PC := 83.
        ].
        recoveredBlock54Step = 83 ifTrue: [
            recoveredBlock54Local1 := recoveredBlock54Stack1.
            recoveredBlock54PC := 84.
        ].
        recoveredBlock54Step = 84 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 85.
        ].
        recoveredBlock54Step = 85 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isString.
            recoveredBlock54PC := 87.
        ].
        recoveredBlock54Step = 87 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 90] ifFalse: [recoveredBlock54PC := 126].
        ].
        recoveredBlock54Step = 90 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local1.
            recoveredBlock54PC := 91.
        ].
        recoveredBlock54Step = 91 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isString.
            recoveredBlock54PC := 93.
        ].
        recoveredBlock54Step = 93 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 96] ifFalse: [recoveredBlock54PC := 126].
        ].
        recoveredBlock54Step = 96 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 97.
        ].
        recoveredBlock54Step = 97 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isNumericString.
            recoveredBlock54PC := 99.
        ].
        recoveredBlock54Step = 99 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 102] ifFalse: [recoveredBlock54PC := 118].
        ].
        recoveredBlock54Step = 102 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local1.
            recoveredBlock54PC := 103.
        ].
        recoveredBlock54Step = 103 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) isNumericString.
            recoveredBlock54PC := 105.
        ].
        recoveredBlock54Step = 105 ifTrue: [
            (recoveredBlock54Stack1) ifTrue: [recoveredBlock54PC := 108] ifFalse: [recoveredBlock54PC := 118].
        ].
        recoveredBlock54Step = 108 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 109.
        ].
        recoveredBlock54Step = 109 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) asIntegerOrFloatOrFraction.
            recoveredBlock54PC := 111.
        ].
        recoveredBlock54Step = 111 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local1.
            recoveredBlock54PC := 112.
        ].
        recoveredBlock54Step = 112 ifTrue: [
            recoveredBlock54Stack2 := (recoveredBlock54Stack2) asIntegerOrFloatOrFraction.
            recoveredBlock54PC := 114.
        ].
        recoveredBlock54Step = 114 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) < (recoveredBlock54Stack2).
            recoveredBlock54PC := 115.
        ].
        recoveredBlock54Step = 115 ifTrue: [
            recoveredBlock54PC := 122.
        ].
        recoveredBlock54Step = 118 ifTrue: [
            recoveredBlock54Stack1 := recoveredBlock54Local2.
            recoveredBlock54PC := 119.
        ].
        recoveredBlock54Step = 119 ifTrue: [
            recoveredBlock54Stack2 := recoveredBlock54Local1.
            recoveredBlock54PC := 120.
        ].
        recoveredBlock54Step = 120 ifTrue: [
            recoveredBlock54Stack1 := (recoveredBlock54Stack1) shouldAppearBefore: (recoveredBlock54Stack2).
            recoveredBlock54PC := 122.
        ].
        recoveredBlock54Step = 122 ifTrue: [
            recoveredBlock54PC := 127.
        ].
        recoveredBlock54Step = 126 ifTrue: [
            recoveredBlock54Stack1 := true.
            recoveredBlock54PC := 127.
        ].
        recoveredBlock54Step = 127 ifTrue: [
            recoveredBlock54Result := recoveredBlock54Stack1.
            recoveredBlock54Done := true.
        ].
    ].
    recoveredBlock54Result
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'GeneralArrowDown'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := items.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:recoveredBlock148Arg1 :recoveredBlock148Arg2 | 
    | recoveredBlock148Local1 recoveredBlock148Local2 recoveredBlock148Stack0 recoveredBlock148Stack1 recoveredBlock148Stack2 recoveredBlock148Stack3 recoveredBlock148PC recoveredBlock148Step recoveredBlock148Done recoveredBlock148Result |
    recoveredBlock148Stack0 := self.
    recoveredBlock148PC := 154.
    recoveredBlock148Done := false.
    [recoveredBlock148Done not] whileTrue: [
        recoveredBlock148Step := recoveredBlock148PC.
        recoveredBlock148Step = 154 ifTrue: [
            recoveredBlock148Stack1 := sortDescription.
            recoveredBlock148PC := 156.
        ].
        recoveredBlock148Step = 156 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) getBlock.
            recoveredBlock148PC := 158.
        ].
        recoveredBlock148Step = 158 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg1.
            recoveredBlock148PC := 159.
        ].
        recoveredBlock148Step = 159 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) value: (recoveredBlock148Stack2).
            recoveredBlock148PC := 161.
        ].
        recoveredBlock148Step = 161 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) getValueString.
            recoveredBlock148PC := 163.
        ].
        recoveredBlock148Step = 163 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) asString.
            recoveredBlock148PC := 165.
        ].
        recoveredBlock148Step = 165 ifTrue: [
            recoveredBlock148Local2 := recoveredBlock148Stack1.
            recoveredBlock148PC := 166.
        ].
        recoveredBlock148Step = 166 ifTrue: [
            recoveredBlock148Stack1 := sortDescription.
            recoveredBlock148PC := 168.
        ].
        recoveredBlock148Step = 168 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) getBlock.
            recoveredBlock148PC := 170.
        ].
        recoveredBlock148Step = 170 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Arg2.
            recoveredBlock148PC := 171.
        ].
        recoveredBlock148Step = 171 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) value: (recoveredBlock148Stack2).
            recoveredBlock148PC := 173.
        ].
        recoveredBlock148Step = 173 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) getValueString.
            recoveredBlock148PC := 175.
        ].
        recoveredBlock148Step = 175 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) asString.
            recoveredBlock148PC := 177.
        ].
        recoveredBlock148Step = 177 ifTrue: [
            recoveredBlock148Local1 := recoveredBlock148Stack1.
            recoveredBlock148PC := 178.
        ].
        recoveredBlock148Step = 178 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local2.
            recoveredBlock148PC := 179.
        ].
        recoveredBlock148Step = 179 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isString.
            recoveredBlock148PC := 181.
        ].
        recoveredBlock148Step = 181 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 184] ifFalse: [recoveredBlock148PC := 220].
        ].
        recoveredBlock148Step = 184 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local1.
            recoveredBlock148PC := 185.
        ].
        recoveredBlock148Step = 185 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isString.
            recoveredBlock148PC := 187.
        ].
        recoveredBlock148Step = 187 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 190] ifFalse: [recoveredBlock148PC := 220].
        ].
        recoveredBlock148Step = 190 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local2.
            recoveredBlock148PC := 191.
        ].
        recoveredBlock148Step = 191 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isNumericString.
            recoveredBlock148PC := 193.
        ].
        recoveredBlock148Step = 193 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 196] ifFalse: [recoveredBlock148PC := 212].
        ].
        recoveredBlock148Step = 196 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local1.
            recoveredBlock148PC := 197.
        ].
        recoveredBlock148Step = 197 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) isNumericString.
            recoveredBlock148PC := 199.
        ].
        recoveredBlock148Step = 199 ifTrue: [
            (recoveredBlock148Stack1) ifTrue: [recoveredBlock148PC := 202] ifFalse: [recoveredBlock148PC := 212].
        ].
        recoveredBlock148Step = 202 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local2.
            recoveredBlock148PC := 203.
        ].
        recoveredBlock148Step = 203 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) asIntegerOrFloatOrFraction.
            recoveredBlock148PC := 205.
        ].
        recoveredBlock148Step = 205 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local1.
            recoveredBlock148PC := 206.
        ].
        recoveredBlock148Step = 206 ifTrue: [
            recoveredBlock148Stack2 := (recoveredBlock148Stack2) asIntegerOrFloatOrFraction.
            recoveredBlock148PC := 208.
        ].
        recoveredBlock148Step = 208 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) >= (recoveredBlock148Stack2).
            recoveredBlock148PC := 209.
        ].
        recoveredBlock148Step = 209 ifTrue: [
            recoveredBlock148PC := 217.
        ].
        recoveredBlock148Step = 212 ifTrue: [
            recoveredBlock148Stack1 := recoveredBlock148Local2.
            recoveredBlock148PC := 213.
        ].
        recoveredBlock148Step = 213 ifTrue: [
            recoveredBlock148Stack2 := recoveredBlock148Local1.
            recoveredBlock148PC := 214.
        ].
        recoveredBlock148Step = 214 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) shouldAppearBefore: (recoveredBlock148Stack2).
            recoveredBlock148PC := 216.
        ].
        recoveredBlock148Step = 216 ifTrue: [
            recoveredBlock148Stack1 := (recoveredBlock148Stack1) not.
            recoveredBlock148PC := 217.
        ].
        recoveredBlock148Step = 217 ifTrue: [
            recoveredBlock148PC := 221.
        ].
        recoveredBlock148Step = 220 ifTrue: [
            recoveredBlock148Stack1 := true.
            recoveredBlock148PC := 221.
        ].
        recoveredBlock148Step = 221 ifTrue: [
            recoveredBlock148Result := recoveredBlock148Stack1.
            recoveredBlock148Done := true.
        ].
    ].
    recoveredBlock148Result
].
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 'GeneralArrowUp'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) returnIconWithName: (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := sortDescription.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack2 := (recoveredStack2) text.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0) heading: (recoveredStack1).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := [:recoveredBlock281Arg1 | 
    | recoveredBlock281Local1 recoveredBlock281Stack0 recoveredBlock281Stack1 recoveredBlock281Stack2 recoveredBlock281Stack3 recoveredBlock281Stack4 recoveredBlock281PC recoveredBlock281Step recoveredBlock281Done recoveredBlock281Result |
    recoveredBlock281Stack0 := self.
    recoveredBlock281PC := 288.
    recoveredBlock281Done := false.
    [recoveredBlock281Done not] whileTrue: [
        recoveredBlock281Step := recoveredBlock281PC.
        recoveredBlock281Step = 288 ifTrue: [
            recoveredBlock281Stack0 := (recoveredBlock281Stack0) tableList.
            recoveredBlock281PC := 289.
        ].
        recoveredBlock281Step = 289 ifTrue: [
            recoveredBlock281Stack1 := recoveredLocal3.
            recoveredBlock281PC := 292.
        ].
        recoveredBlock281Step = 292 ifTrue: [
            recoveredBlock281Stack0 := (recoveredBlock281Stack0) indexOfItem: (recoveredBlock281Stack1).
            recoveredBlock281PC := 294.
        ].
        recoveredBlock281Step = 294 ifTrue: [
            recoveredBlock281Local1 := recoveredBlock281Stack0.
            recoveredBlock281PC := 295.
        ].
        recoveredBlock281Step = 295 ifTrue: [
            recoveredBlock281Stack0 := nil.
            recoveredBlock281PC := 296.
        ].
        recoveredBlock281Step = 296 ifTrue: [
            recoveredBlock281Stack1 := recoveredBlock281Local1.
            recoveredBlock281PC := 297.
        ].
        recoveredBlock281Step = 297 ifTrue: [
            recoveredBlock281Stack2 := 0.
            recoveredBlock281PC := 299.
        ].
        recoveredBlock281Step = 299 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) = (recoveredBlock281Stack2).
            recoveredBlock281PC := 300.
        ].
        recoveredBlock281Step = 300 ifTrue: [
            (recoveredBlock281Stack1) ifTrue: [recoveredBlock281PC := 339] ifFalse: [recoveredBlock281PC := 304].
        ].
        recoveredBlock281Step = 304 ifTrue: [
            recoveredBlock281Stack1 := recoveredLocal2.
            recoveredBlock281PC := 307.
        ].
        recoveredBlock281Step = 307 ifTrue: [
            recoveredBlock281Stack2 := 0.
            recoveredBlock281PC := 309.
        ].
        recoveredBlock281Step = 309 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) = (recoveredBlock281Stack2).
            recoveredBlock281PC := 310.
        ].
        recoveredBlock281Step = 310 ifTrue: [
            (recoveredBlock281Stack1) ifTrue: [recoveredBlock281PC := 339] ifFalse: [recoveredBlock281PC := 314].
        ].
        recoveredBlock281Step = 314 ifTrue: [
            recoveredBlock281PC := 315.
        ].
        recoveredBlock281Step = 315 ifTrue: [
            recoveredBlock281Stack0 := self.
            recoveredBlock281PC := 316.
        ].
        recoveredBlock281Step = 316 ifTrue: [
            recoveredBlock281Stack0 := (recoveredBlock281Stack0) tableList.
            recoveredBlock281PC := 317.
        ].
        recoveredBlock281Step = 317 ifTrue: [
            recoveredBlock281Stack1 := recoveredBlock281Stack0.
            recoveredBlock281PC := 318.
        ].
        recoveredBlock281Step = 318 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal2.
            recoveredBlock281PC := 321.
        ].
        recoveredBlock281Step = 321 ifTrue: [
            recoveredBlock281Stack3 := recoveredBlock281Local1.
            recoveredBlock281PC := 322.
        ].
        recoveredBlock281Step = 322 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) @ (recoveredBlock281Stack3).
            recoveredBlock281PC := 324.
        ].
        recoveredBlock281Step = 324 ifTrue: [
            (recoveredBlock281Stack1) cursoredCell: (recoveredBlock281Stack2).
            recoveredBlock281PC := 326.
        ].
        recoveredBlock281Step = 326 ifTrue: [
            recoveredBlock281Stack1 := Array.
            recoveredBlock281PC := 328.
        ].
        recoveredBlock281Step = 328 ifTrue: [
            recoveredBlock281Stack2 := recoveredLocal2.
            recoveredBlock281PC := 331.
        ].
        recoveredBlock281Step = 331 ifTrue: [
            recoveredBlock281Stack3 := recoveredBlock281Local1.
            recoveredBlock281PC := 332.
        ].
        recoveredBlock281Step = 332 ifTrue: [
            recoveredBlock281Stack2 := (recoveredBlock281Stack2) @ (recoveredBlock281Stack3).
            recoveredBlock281PC := 334.
        ].
        recoveredBlock281Step = 334 ifTrue: [
            recoveredBlock281Stack1 := (recoveredBlock281Stack1) with: (recoveredBlock281Stack2).
            recoveredBlock281PC := 336.
        ].
        recoveredBlock281Step = 336 ifTrue: [
            recoveredBlock281Stack2 := true.
            recoveredBlock281PC := 337.
        ].
        recoveredBlock281Step = 337 ifTrue: [
            recoveredBlock281Stack0 := (recoveredBlock281Stack0) selectCells: (recoveredBlock281Stack1) notify: (recoveredBlock281Stack2).
            recoveredBlock281PC := 339.
        ].
        recoveredBlock281Step = 339 ifTrue: [
            recoveredBlock281Result := recoveredBlock281Stack0.
            recoveredBlock281Done := true.
        ].
    ].
    recoveredBlock281Result
].
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := [:recoveredBlock345Arg1 | 
    | recoveredBlock345Value0 recoveredBlock345Value1 recoveredBlock345Value2 |
    recoveredBlock345Value0 := recoveredBlock345Arg1.
    recoveredBlock345Value1 := recoveredLocal5.
    recoveredBlock345Value2 := (recoveredBlock345Value0) reactToSortingInTableWidget: (self) newItems: (recoveredBlock345Value1).
    recoveredBlock345Value2
].
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e4d7c; bytecode file offset 0xee1710"
!EtasTableColumnOptionWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'tableList'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredBlock19Value0.
    (recoveredBlock19Value1) editable: (true).
    recoveredBlock19Value2 := recoveredBlock19Value0.
    recoveredBlock19Value3 := (self) isAllowSortItems.
    (recoveredBlock19Value2) selectableColumns: (recoveredBlock19Value3).
    recoveredBlock19Value4 := recoveredBlock19Value0.
    recoveredBlock19Value5 := selectionPolicy.
    (recoveredBlock19Value4) selectionPolicy: (recoveredBlock19Value5).
    recoveredBlock19Value6 := recoveredBlock19Value0.
    (recoveredBlock19Value6) itemHeight: (nil).
    recoveredBlock19Value7 := recoveredBlock19Value0.
    (recoveredBlock19Value7) applicationDrawnBackground: (true).
    recoveredBlock19Value8 := XmETCHCELLS.
    recoveredBlock19Value9 := (recoveredBlock19Value0) headingVisualStyle: (recoveredBlock19Value8).
    recoveredBlock19Value9
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'aScrolledEnhancedTableList1'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'tableList'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := 'splitBar'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 recoveredBlock95Value5 recoveredBlock95Value6 recoveredBlock95Value7 recoveredBlock95Value8 recoveredBlock95Value9 recoveredBlock95Value10 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := recoveredBlock95Value0.
    recoveredBlock95Value2 := CgRGBColor.
    recoveredBlock95Value3 := (recoveredBlock95Value2) gray.
    (recoveredBlock95Value1) foregroundColor: (recoveredBlock95Value3).
    recoveredBlock95Value4 := recoveredBlock95Value0.
    recoveredBlock95Value5 := XmHORIZONTAL.
    (recoveredBlock95Value4) orientation: (recoveredBlock95Value5).
    recoveredBlock95Value6 := recoveredBlock95Arg1.
    recoveredBlock95Value7 := (recoveredBlock95Value6) parent.
    recoveredBlock95Value8 := (self) heightOfParentNotebookWidgetForm: (recoveredBlock95Value7).
    recoveredBlock95Value9 := (recoveredBlock95Value8) - (160).
    recoveredBlock95Value10 := (recoveredBlock95Value0) y: (recoveredBlock95Value9).
    recoveredBlock95Value10
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) createRBSplitBar: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'splitBar'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := [:block2811aab4Arg1 | 
    | block2811aab4Value0 block2811aab4Value1 block2811aab4Value2 block2811aab4Value3 block2811aab4Value4 |
    block2811aab4Value0 := block2811aab4Arg1.
    block2811aab4Value1 := block2811aab4Value0.
    (block2811aab4Value1) editable: (false).
    block2811aab4Value2 := block2811aab4Value0.
    (block2811aab4Value2) wordWrap: (true).
    block2811aab4Value3 := XmMULTILINEEDIT.
    block2811aab4Value4 := (block2811aab4Value0) editMode: (block2811aab4Value3).
    block2811aab4Value4
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := 'aScrolledText'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := 'helpText'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := [:recoveredBlock208Arg1 | 
    | recoveredBlock208Value0 recoveredBlock208Value1 recoveredBlock208Value2 recoveredBlock208Value3 recoveredBlock208Value4 recoveredBlock208Value5 recoveredBlock208Value6 recoveredBlock208Value7 recoveredBlock208Value8 recoveredBlock208Value9 recoveredBlock208Value10 recoveredBlock208Value11 recoveredBlock208Value12 recoveredBlock208Value13 recoveredBlock208Value14 recoveredBlock208Value15 |
    recoveredBlock208Value0 := recoveredBlock208Arg1.
    recoveredBlock208Value1 := recoveredBlock208Value0.
    recoveredBlock208Value2 := XmATTACHWIDGET.
    (recoveredBlock208Value1) topAttachment: (recoveredBlock208Value2).
    recoveredBlock208Value3 := recoveredBlock208Value0.
    recoveredBlock208Value4 := recoveredLocal1.
    (recoveredBlock208Value3) topWidget: (recoveredBlock208Value4).
    recoveredBlock208Value5 := recoveredBlock208Value0.
    (recoveredBlock208Value5) topOffset: (5).
    recoveredBlock208Value6 := recoveredBlock208Value0.
    recoveredBlock208Value7 := XmATTACHFORM.
    (recoveredBlock208Value6) bottomAttachment: (recoveredBlock208Value7).
    recoveredBlock208Value8 := recoveredBlock208Value0.
    (recoveredBlock208Value8) bottomOffset: (0).
    recoveredBlock208Value9 := recoveredBlock208Value0.
    recoveredBlock208Value10 := XmATTACHFORM.
    (recoveredBlock208Value9) leftAttachment: (recoveredBlock208Value10).
    recoveredBlock208Value11 := recoveredBlock208Value0.
    (recoveredBlock208Value11) leftOffset: (0).
    recoveredBlock208Value12 := recoveredBlock208Value0.
    recoveredBlock208Value13 := XmATTACHFORM.
    (recoveredBlock208Value12) rightAttachment: (recoveredBlock208Value13).
    recoveredBlock208Value14 := recoveredBlock208Value0.
    (recoveredBlock208Value14) rightOffset: (0).
    recoveredBlock208Value15 := (recoveredBlock208Value0) height: (45).
    recoveredBlock208Value15
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := [:block2811aad8Arg1 | 
    | block2811aad8Value0 block2811aad8Value1 block2811aad8Value2 block2811aad8Value3 block2811aad8Value4 block2811aad8Value5 block2811aad8Value6 |
    block2811aad8Value0 := block2811aad8Arg1.
    block2811aad8Value1 := block2811aad8Value0.
    block2811aad8Value2 := XmATTACHFORM.
    (block2811aad8Value1) leftAttachment: (block2811aad8Value2).
    block2811aad8Value3 := block2811aad8Value0.
    (block2811aad8Value3) leftOffset: (0).
    block2811aad8Value4 := block2811aad8Value0.
    block2811aad8Value5 := XmATTACHFORM.
    (block2811aad8Value4) rightAttachment: (block2811aad8Value5).
    block2811aad8Value6 := (block2811aad8Value0) rightOffset: (0).
    block2811aad8Value6
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := [:recoveredBlock302Arg1 | 
    | recoveredBlock302Value0 recoveredBlock302Value1 recoveredBlock302Value2 recoveredBlock302Value3 recoveredBlock302Value4 recoveredBlock302Value5 recoveredBlock302Value6 recoveredBlock302Value7 recoveredBlock302Value8 recoveredBlock302Value9 recoveredBlock302Value10 recoveredBlock302Value11 recoveredBlock302Value12 recoveredBlock302Value13 recoveredBlock302Value14 |
    recoveredBlock302Value0 := recoveredBlock302Arg1.
    recoveredBlock302Value1 := recoveredBlock302Value0.
    recoveredBlock302Value2 := XmATTACHWIDGET.
    (recoveredBlock302Value1) bottomAttachment: (recoveredBlock302Value2).
    recoveredBlock302Value3 := recoveredBlock302Value0.
    recoveredBlock302Value4 := recoveredLocal1.
    (recoveredBlock302Value3) bottomWidget: (recoveredBlock302Value4).
    recoveredBlock302Value5 := recoveredBlock302Value0.
    (recoveredBlock302Value5) bottomOffset: (5).
    recoveredBlock302Value6 := recoveredBlock302Value0.
    recoveredBlock302Value7 := XmATTACHFORM.
    (recoveredBlock302Value6) topAttachment: (recoveredBlock302Value7).
    recoveredBlock302Value8 := recoveredBlock302Value0.
    (recoveredBlock302Value8) topOffset: (0).
    recoveredBlock302Value9 := recoveredBlock302Value0.
    recoveredBlock302Value10 := XmATTACHFORM.
    (recoveredBlock302Value9) leftAttachment: (recoveredBlock302Value10).
    recoveredBlock302Value11 := recoveredBlock302Value0.
    (recoveredBlock302Value11) leftOffset: (0).
    recoveredBlock302Value12 := recoveredBlock302Value0.
    recoveredBlock302Value13 := XmATTACHFORM.
    (recoveredBlock302Value12) rightAttachment: (recoveredBlock302Value13).
    recoveredBlock302Value14 := (recoveredBlock302Value0) rightOffset: (0).
    recoveredBlock302Value14
].
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := XmNcellSingleSelectionCallback.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack4 := 'tableListcellSingleSelectionCallback:clientData:callData:'.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := 'tableListColumnHeadingSelectionCallback:clientData:callData:'.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

