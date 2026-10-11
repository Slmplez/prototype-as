"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005fd50; bytecode file offset 0x95c604"
!RBEnhancedTableList methodsFor: 'recovered'!
noEditMenu
    noEditMenu := true.
    ^self
! !

"ASDBase.ic method 0x20071440; bytecode file offset 0x96dcf4"
!RBEnhancedTableList methodsFor: 'recovered'!
characterMethod
    | recoveredValue0 |
    recoveredValue0 := characterMethod.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071480; bytecode file offset 0x96dd34"
!RBEnhancedTableList methodsFor: 'recovered'!
markedCells
    | recoveredValue0 |
    recoveredValue0 := markedCells.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200714c0; bytecode file offset 0x96dd74"
!RBEnhancedTableList methodsFor: 'recovered'!
markerLineWidth
    | recoveredValue0 |
    recoveredValue0 := markerLineWidth.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071500; bytecode file offset 0x96ddb4"
!RBEnhancedTableList methodsFor: 'recovered'!
markerColor
    | recoveredValue0 |
    recoveredValue0 := markerColor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200715b8; bytecode file offset 0x96de6c"
!RBEnhancedTableList methodsFor: 'recovered'!
hasNoEditPopupMenu
    | recoveredValue0 |
    recoveredValue0 := noEditMenu.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20091660; bytecode file offset 0x98e0cc"
!RBEnhancedTableList methodsFor: 'recovered'!
refreshEditField
    super refreshEditField.
    ^self
! !

"ASDBase.ic method 0x2009c8b8; bytecode file offset 0x999628"
!RBEnhancedTableList methodsFor: 'recovered'!
resetMarkedCells
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) markCells: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c7980; bytecode file offset 0x9c4234"
!RBEnhancedTableList methodsFor: 'recovered'!
characterMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c79b0; bytecode file offset 0x9c4264"
!RBEnhancedTableList methodsFor: 'recovered'!
markerLineWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markerLineWidth := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c79e0; bytecode file offset 0x9c4294"
!RBEnhancedTableList methodsFor: 'recovered'!
markerColor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markerColor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dc1fc; bytecode file offset 0x9d8ab0"
!RBEnhancedTableList methodsFor: 'recovered'!
editMenu: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    editPopupMenu := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    editMenuOwner := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200dc4bc; bytecode file offset 0x9d8e58"
!RBEnhancedTableList methodsFor: 'recovered'!
eraseFrameAt: recoveredArg1 lineWidth: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) backgroundColor.
    recoveredValue2 := recoveredArg2.
    (self) drawFrameAt: (recoveredValue0) color: (recoveredValue1) lineWidth: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e25ec; bytecode file offset 0x9deef8"
!RBEnhancedTableList methodsFor: 'recovered'!
positionEditWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedCell.
    (self) editCell: (recoveredValue0).
    recoveredValue1 := super positionEditWidget.
    ^recoveredValue1
! !

"ASDBase.ic method 0x201080bc; bytecode file offset 0xa04984"
!RBEnhancedTableList methodsFor: 'recovered'!
cursorHomeCell
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) lockedColumns.
    recoveredValue1 := (recoveredValue0) + (1).
    recoveredValue2 := (self) cursoredCell.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    (self) cursorCell: (recoveredValue4) forceFullyVisible: (true).
    ^self
! !

"ASDBase.ic method 0x201187d0; bytecode file offset 0xa1509c"
!RBEnhancedTableList methodsFor: 'recovered'!
cursorEndCell
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) columns.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) cursoredCell.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    (self) cursorCell: (recoveredValue4) forceFullyVisible: (true).
    ^self
! !

"ASDBase.ic method 0x20178b14; bytecode file offset 0xa753dc"
!RBEnhancedTableList methodsFor: 'recovered'!
basicEraseCursoredEmphasisAtCell: recoveredArg1 clipping: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) columns.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            super basicEraseCursoredEmphasisAtCell: (recoveredStack2) clipping: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20272bb4; bytecode file offset 0xb6f474"
!RBEnhancedTableList methodsFor: 'recovered'!
widgetKeyEventHandler: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
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
            recoveredStack0 := (recoveredStack0) getWidgetOwner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) widgetKeyEventHandler: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) widgetKeyEventHandler: (recoveredStack1) clientData: (recoveredStack2) event: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028ebc0; bytecode file offset 0xb8b484"
!RBEnhancedTableList methodsFor: 'recovered'!
refreshCell: recoveredArg1
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
            super refreshCell: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := markedCells.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := markedCells.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := markerColor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := markerLineWidth.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) drawFrameAt: (recoveredStack1) color: (recoveredStack2) lineWidth: (recoveredStack3).
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

"ASDBase.ic method 0x20295edc; bytecode file offset 0xb927b4"
!RBEnhancedTableList methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    characterMethod := 'checkFloat:'.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    markedCells := recoveredValue1.
    markerLineWidth := 2.
    recoveredValue2 := CgScreen.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := (recoveredValue3) lookupColor: ('red').
    markerColor := recoveredValue4.
    noEditMenu := false.
    super initialize.
    ^self
! !

"ASDBase.ic method 0x202cb4fc; bytecode file offset 0xbc7dc0"
!RBEnhancedTableList methodsFor: 'recovered'!
drawRangeFrom: recoveredArg1 to: recoveredArg2 y: recoveredArg3 damagedRectangle: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := super drawRangeFrom: (recoveredStack1) to: (recoveredStack2) y: (recoveredStack3) damagedRectangle: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := markedCells.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := markedCells.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := markerColor.
    recoveredBlock26Value2 := markerLineWidth.
    recoveredBlock26Value3 := (self) drawFrameAt: (recoveredBlock26Value0) color: (recoveredBlock26Value1) lineWidth: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033aeac; bytecode file offset 0xc3778c"
!RBEnhancedTableList methodsFor: 'recovered'!
editPopupMenu
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := editPopupMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := editPopupMenu.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ButtonMenuMask.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) receiver.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack3 := CwMenu.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) defaultMenuClass.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) isKindOf: (recoveredBlock31Stack3).
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 52] ifFalse: [recoveredBlock31PC := 57].
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 54.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) receiver.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033af20; bytecode file offset 0xc37804"
!RBEnhancedTableList methodsFor: 'recovered'!
editMenuOwner
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := editMenuOwner.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := editMenuOwner.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) handlers.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ButtonMenuMask.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) receiver.
            recoveredBlock31PC := 42.
        ].
        recoveredBlock31Step = 42 ifTrue: [
            recoveredBlock31Stack3 := CwMenu.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack3 := (recoveredBlock31Stack3) defaultMenuClass.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) isKindOf: (recoveredBlock31Stack3).
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 52] ifFalse: [recoveredBlock31PC := 57].
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 54.
        ].
        recoveredBlock31Step = 54 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) clientData.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 57 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038b608; bytecode file offset 0xc87ed0"
!RBEnhancedTableList methodsFor: 'recovered'!
markCells: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := markedCells.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) includes: (recoveredBlock8Value1).
    recoveredBlock8Value3 := (recoveredBlock8Value2) not.
    recoveredBlock8Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := markerLineWidth.
    recoveredBlock28Value2 := (self) eraseFrameAt: (recoveredBlock28Value0) lineWidth: (recoveredBlock28Value1).
    recoveredBlock28Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := markerColor.
    recoveredBlock46Value2 := markerLineWidth.
    recoveredBlock46Value3 := (self) drawFrameAt: (recoveredBlock46Value0) color: (recoveredBlock46Value1) lineWidth: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    markedCells := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x203fa590; bytecode file offset 0xcf6e6c"
!RBEnhancedTableList methodsFor: 'recovered'!
basicTriggerBeginEditCallback
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCell.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleItemNodeAt: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializedBeginEditCallbackData.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) column.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) beginEditCallback.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 37.
        ].
        recoveredBlock30Step = 37 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal1.
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            (recoveredBlock30Stack1) callWith: (recoveredBlock30Stack2) callData: (recoveredBlock30Stack3).
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            (recoveredBlock30Stack1 ~~ nil) ifTrue: [recoveredBlock30PC := 58] ifFalse: [recoveredBlock30PC := 50].
        ].
        recoveredBlock30Step = 50 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) doit.
            recoveredBlock30PC := 55.
        ].
        recoveredBlock30Step = 55 ifTrue: [
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 58 ifTrue: [
            recoveredBlock30Stack1 := false.
            recoveredBlock30PC := 59.
        ].
        recoveredBlock30Step = 59 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal2.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            (recoveredBlock30Stack2) ifTrue: [recoveredBlock30PC := 66] ifFalse: [recoveredBlock30PC := 72].
        ].
        recoveredBlock30Step = 66 ifTrue: [
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) doit.
            recoveredBlock30PC := 72.
        ].
        recoveredBlock30Step = 72 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 73.
        ].
        recoveredBlock30Step = 73 ifTrue: [
            recoveredLocal2 := recoveredBlock30Stack2.
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) beginEdit.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20561500; bytecode file offset 0xe5de38"
!RBEnhancedTableList methodsFor: 'recovered'!
drawFrameAt: recoveredArg1 color: recoveredArg2 lineWidth: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCellPartiallyVisible: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) columns.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) columns.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) lockedColumns.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) horizontalScrollOffset.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) topYAt: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemHeightAt: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) rowSeparatorHeight.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalEmphasis.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftClip.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) workHeight.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) clipTo: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) foregroundColor.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := GCForeground.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := GCLineWidth.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := CgGCValues.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) rc.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) drawable.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) getPalette.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack4 := (recoveredStack4) nearestPixelValue: (recoveredStack5).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack3) foreground: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineWidth: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) changeGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawable.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) // (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := (recoveredStack5) // (recoveredStack6).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack7 := 2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack6 := (recoveredStack6) // (recoveredStack7).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := (recoveredStack5) - (recoveredStack6).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) drawRectangle: (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3) width: (recoveredStack4) height: (recoveredStack5).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) gc.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := GCForeground.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := GCLineWidth.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := CgGCValues.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := (recoveredStack4) rc.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := (recoveredStack4) drawable.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := (recoveredStack4) getPalette.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := (recoveredStack4) nearestPixelValue: (recoveredStack5).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack3) foreground: (recoveredStack4).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineWidth: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) changeGC: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) rc.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) clipTo: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

