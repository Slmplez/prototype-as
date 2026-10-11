"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042fbc; bytecode file offset 0x9451f8"
!SGListReferencesWindow methodsFor: 'recovered'!
widgetRefItems
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('refItems').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200aee68; bytecode file offset 0x9ab73c"
!SGListReferencesWindow methodsFor: 'recovered'!
refItemsDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) masterItem.
    (self) openComponent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d63ec; bytecode file offset 0x9d3134"
!SGListReferencesWindow methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x200fe968; bytecode file offset 0x9fb278"
!SGListReferencesWindow methodsFor: 'recovered'!
refItemSelected: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    super refItemSelected: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) updateReferenceListFor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201405fc; bytecode file offset 0xa3cec8"
!SGListReferencesWindow methodsFor: 'recovered'!
initWidgetFonts
    | recoveredValue0 recoveredValue1 |
    super initWidgetFonts.
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := (self) widgetAt: ('refItems').
    (recoveredValue0) updateListFontAndItemHeight: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201dc900; bytecode file offset 0xad91c8"
!SGListReferencesWindow methodsFor: 'recovered'!
refItemButtonPress: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
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
            recoveredStack2 := ControlMask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := ControlMask.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keycode.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 114.
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
            (recoveredStack1) menuReferencedItems.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237a6c; bytecode file offset 0xb34334"
!SGListReferencesWindow methodsFor: 'recovered'!
getRefItemsSelected
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRefItems.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280dd7e4Arg1 | 
    true
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRefItems.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemAt: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20270424; bytecode file offset 0xb6ccf4"
!SGListReferencesWindow methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'resultList'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := (self) widgetAt: ('resultList').
    recoveredBlock17Value1 := recoveredLocal1.
    recoveredBlock17Value2 := (recoveredBlock17Value1) first.
    recoveredBlock17Value3 := (recoveredBlock17Value0) selectItem: (recoveredBlock17Value2) notify: (true).
    recoveredBlock17Value3
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) execShortOperation: (recoveredStack1).
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

"ASDBase.ic method 0x2027c774; bytecode file offset 0xb79044"
!SGListReferencesWindow methodsFor: 'recovered'!
refItemsSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) close.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            super refItemSelected: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202912bc; bytecode file offset 0xb8db9c"
!SGListReferencesWindow methodsFor: 'recovered'!
createMenuReferencedItems
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredStack2 := '~Edit'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'menuReferencedItems'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Show ~References...'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack9 := 'Ctrl+R'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) icon: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202a75dc; bytecode file offset 0xba3eb8"
!SGListReferencesWindow methodsFor: 'recovered'!
updateReferenceListFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) referencedBy.
    recoveredBlock4Value2 := (self) sortBlock.
    recoveredBlock4Value3 := (recoveredBlock4Value1) asSortedCollection: (recoveredBlock4Value2).
    recoveredBlock4Value4 := recoveredBlock4Value3.
    recoveredBlock4Local2 := recoveredBlock4Value4.
    recoveredBlock4Value5 := (recoveredBlock4Value3) notEmpty.
    recoveredBlock4Local1 := recoveredBlock4Value5.
    recoveredBlock4Value6 := (self) widgetAt: ('refLabel').
    recoveredBlock4Value7 := recoveredBlock4Local1.
    (recoveredBlock4Value6) sensitive: (recoveredBlock4Value7).
    recoveredBlock4Value8 := (self) widgetAt: ('refItems').
    recoveredBlock4Value9 := recoveredBlock4Value8.
    recoveredBlock4Value10 := recoveredBlock4Local2.
    (recoveredBlock4Value9) items: (recoveredBlock4Value10).
    recoveredBlock4Value11 := recoveredBlock4Local1.
    recoveredBlock4Value12 := (recoveredBlock4Value8) sensitive: (recoveredBlock4Value11).
    recoveredBlock4Value12
].
    (self) execShortOperation: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2034a8ec; bytecode file offset 0xc471dc"
!SGListReferencesWindow methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super updateContents.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'refLabel'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'refItems'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'refLabel'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) refLabel.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'refLabel'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20384e80; bytecode file offset 0xc81774"
!SGListReferencesWindow methodsFor: 'recovered'!
openComponent: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isDefaultProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) owner.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectItemInVarList: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) isNil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'The element can not be found.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMainView.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetController.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditPossible.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEditorFor: (recoveredStack1) view: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) isElement.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) selectAndExpandItem: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20396c2c; bytecode file offset 0xc9351c"
!SGListReferencesWindow methodsFor: 'recovered'!
menuReferencedItems
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getRefItemsSelected.
    recoveredValue1 := recoveredValue0.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    ^nil
].
    (recoveredValue0) isNil: (recoveredValue2).
    recoveredValue3 := [
    | recoveredBlock21Local1 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 |
    recoveredBlock21Value0 := (self) class.
    recoveredBlock21Value1 := (self) owner.
    recoveredBlock21Value2 := (self) title.
    recoveredBlock21Value3 := Array.
    recoveredBlock21Value4 := recoveredLocal1.
    recoveredBlock21Value5 := (recoveredBlock21Value3) with: (recoveredBlock21Value4).
    recoveredBlock21Value6 := (recoveredBlock21Value0) createForOwner: (recoveredBlock21Value1) title: (recoveredBlock21Value2) items: (recoveredBlock21Value5).
    recoveredBlock21Local1 := recoveredBlock21Value6.
    recoveredBlock21Value7 := recoveredBlock21Local1.
    recoveredBlock21Value8 := (self) position.
    recoveredBlock21Value9 := (recoveredBlock21Value8) x.
    recoveredBlock21Value10 := (recoveredBlock21Value9) + (30).
    recoveredBlock21Value11 := (self) position.
    recoveredBlock21Value12 := (recoveredBlock21Value11) y.
    recoveredBlock21Value13 := (recoveredBlock21Value12) + (30).
    recoveredBlock21Value14 := (recoveredBlock21Value10) @ (recoveredBlock21Value13).
    (recoveredBlock21Value7) position: (recoveredBlock21Value14).
    recoveredBlock21Value15 := recoveredBlock21Local1.
    recoveredBlock21Value16 := (recoveredBlock21Value15) openWithParent: (self).
    recoveredBlock21Value16
].
    (self) execShortOperation: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x203e5720; bytecode file offset 0xce2010"
!SGListReferencesWindow methodsFor: 'recovered'!
updateActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_89333'.
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
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOpen.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 recoveredBlock17Value11 |
    recoveredBlock17Value0 := recoveredArg1.
    (recoveredBlock17Value0) sensitive: (false).
    recoveredBlock17Value1 := (self) widgetAt: ('resultList').
    recoveredBlock17Value2 := (recoveredBlock17Value1) returnCurrentListState.
    recoveredBlock17Local2 := recoveredBlock17Value2.
    recoveredBlock17Value3 := (self) widgetAt: ('refItems').
    recoveredBlock17Value4 := (recoveredBlock17Value3) returnCurrentListState.
    recoveredBlock17Local1 := recoveredBlock17Value4.
    recoveredBlock17Value5 := (self) library.
    recoveredBlock17Value6 := recoveredBlock17Arg1.
    (recoveredBlock17Value5) updateDataStorageReferencesProgressWindow: (recoveredBlock17Value6).
    recoveredBlock17Value7 := (self) widgetAt: ('resultList').
    recoveredBlock17Value8 := recoveredBlock17Local2.
    (recoveredBlock17Value7) updateFromListState: (recoveredBlock17Value8) notify: (true).
    recoveredBlock17Value9 := (self) widgetAt: ('refItems').
    recoveredBlock17Value10 := recoveredBlock17Local1.
    recoveredBlock17Value11 := (recoveredBlock17Value9) updateFromListState: (recoveredBlock17Value10) notify: (true).
    recoveredBlock17Value11
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Update references in database...'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := SCEtas.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack6 := (recoveredStack6) defaultExecLongOperationPriority.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2) allowCancel: (recoveredStack3) showProgress: (recoveredStack4) title: (recoveredStack5) priority: (recoveredStack6).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206789b8; bytecode file offset 0xf75404"
!SGListReferencesWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack1 := 24.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 recoveredBlock29Value9 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    (recoveredBlock29Value1) title: ('Codegeneration Errors').
    recoveredBlock29Value2 := recoveredBlock29Value0.
    recoveredBlock29Value3 := recoveredLocal14.
    recoveredBlock29Value4 := (366) * (recoveredBlock29Value3).
    recoveredBlock29Value5 := (recoveredBlock29Value4) rounded.
    (recoveredBlock29Value2) height: (recoveredBlock29Value5).
    recoveredBlock29Value6 := recoveredLocal15.
    recoveredBlock29Value7 := (392) * (recoveredBlock29Value6).
    recoveredBlock29Value8 := (recoveredBlock29Value7) rounded.
    recoveredBlock29Value9 := (recoveredBlock29Value0) width: (recoveredBlock29Value8).
    recoveredBlock29Value9
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 'update'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 recoveredBlock133Value4 recoveredBlock133Value5 recoveredBlock133Value6 recoveredBlock133Value7 recoveredBlock133Value8 recoveredBlock133Value9 recoveredBlock133Value10 recoveredBlock133Value11 recoveredBlock133Value12 recoveredBlock133Value13 recoveredBlock133Value14 recoveredBlock133Value15 recoveredBlock133Value16 recoveredBlock133Value17 recoveredBlock133Value18 recoveredBlock133Value19 recoveredBlock133Value20 recoveredBlock133Value21 recoveredBlock133Value22 |
    recoveredBlock133Value0 := recoveredBlock133Arg1.
    recoveredBlock133Value1 := recoveredBlock133Value0.
    recoveredBlock133Value2 := recoveredLocal15.
    recoveredBlock133Value3 := (320) * (recoveredBlock133Value2).
    recoveredBlock133Value4 := (recoveredBlock133Value3) rounded.
    (recoveredBlock133Value1) x: (recoveredBlock133Value4).
    recoveredBlock133Value5 := recoveredBlock133Value0.
    (recoveredBlock133Value5) marginRight: (10).
    recoveredBlock133Value6 := recoveredBlock133Value0.
    (recoveredBlock133Value6) labelString: ('&Update').
    recoveredBlock133Value7 := recoveredBlock133Value0.
    (recoveredBlock133Value7) marginWidth: (0).
    recoveredBlock133Value8 := recoveredBlock133Value0.
    (recoveredBlock133Value8) marginHeight: (0).
    recoveredBlock133Value9 := recoveredBlock133Value0.
    recoveredBlock133Value10 := recoveredLocal14.
    recoveredBlock133Value11 := (310) * (recoveredBlock133Value10).
    recoveredBlock133Value12 := (recoveredBlock133Value11) rounded.
    (recoveredBlock133Value9) y: (recoveredBlock133Value12).
    recoveredBlock133Value13 := recoveredBlock133Value0.
    recoveredBlock133Value14 := recoveredLocal13.
    recoveredBlock133Value15 := recoveredLocal14.
    recoveredBlock133Value16 := (recoveredBlock133Value14) * (recoveredBlock133Value15).
    recoveredBlock133Value17 := (recoveredBlock133Value16) rounded.
    (recoveredBlock133Value13) height: (recoveredBlock133Value17).
    recoveredBlock133Value18 := recoveredBlock133Value0.
    (recoveredBlock133Value18) marginBottom: (10).
    recoveredBlock133Value19 := recoveredLocal15.
    recoveredBlock133Value20 := (110) * (recoveredBlock133Value19).
    recoveredBlock133Value21 := (recoveredBlock133Value20) rounded.
    recoveredBlock133Value22 := (recoveredBlock133Value0) width: (recoveredBlock133Value21).
    recoveredBlock133Value22
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 'update'.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'refItems'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMenuReferencedItems.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) menu: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := 'scroledRefItems'.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := 'refItems'.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := 'refLabel'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := [:recoveredBlock287Arg1 | 
    | recoveredBlock287Value0 recoveredBlock287Value1 recoveredBlock287Value2 recoveredBlock287Value3 recoveredBlock287Value4 recoveredBlock287Value5 recoveredBlock287Value6 recoveredBlock287Value7 recoveredBlock287Value8 recoveredBlock287Value9 recoveredBlock287Value10 recoveredBlock287Value11 recoveredBlock287Value12 recoveredBlock287Value13 recoveredBlock287Value14 recoveredBlock287Value15 recoveredBlock287Value16 recoveredBlock287Value17 |
    recoveredBlock287Value0 := recoveredBlock287Arg1.
    recoveredBlock287Value1 := recoveredBlock287Value0.
    recoveredBlock287Value2 := recoveredLocal15.
    recoveredBlock287Value3 := (201) * (recoveredBlock287Value2).
    recoveredBlock287Value4 := (recoveredBlock287Value3) rounded.
    (recoveredBlock287Value1) x: (recoveredBlock287Value4).
    recoveredBlock287Value5 := recoveredBlock287Value0.
    recoveredBlock287Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock287Value5) alignment: (recoveredBlock287Value6).
    recoveredBlock287Value7 := recoveredBlock287Value0.
    (recoveredBlock287Value7) labelString: ('xxx').
    recoveredBlock287Value8 := recoveredBlock287Value0.
    recoveredBlock287Value9 := recoveredLocal14.
    recoveredBlock287Value10 := (5) * (recoveredBlock287Value9).
    recoveredBlock287Value11 := (recoveredBlock287Value10) rounded.
    (recoveredBlock287Value8) y: (recoveredBlock287Value11).
    recoveredBlock287Value12 := recoveredBlock287Value0.
    recoveredBlock287Value13 := recoveredLocal15.
    recoveredBlock287Value14 := (174) * (recoveredBlock287Value13).
    recoveredBlock287Value15 := (recoveredBlock287Value14) rounded.
    (recoveredBlock287Value12) width: (recoveredBlock287Value15).
    recoveredBlock287Value16 := recoveredBlock287Value0.
    recoveredBlock287Value17 := (self) defaultLabelBlue.
    (recoveredBlock287Value16) foregroundColor: (recoveredBlock287Value17).
    recoveredBlock287Value0
].
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := 'refLabel'.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'resultLabel'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := [:recoveredBlock371Arg1 | 
    | recoveredBlock371Value0 recoveredBlock371Value1 recoveredBlock371Value2 recoveredBlock371Value3 recoveredBlock371Value4 recoveredBlock371Value5 recoveredBlock371Value6 recoveredBlock371Value7 recoveredBlock371Value8 recoveredBlock371Value9 recoveredBlock371Value10 recoveredBlock371Value11 recoveredBlock371Value12 recoveredBlock371Value13 recoveredBlock371Value14 recoveredBlock371Value15 recoveredBlock371Value16 recoveredBlock371Value17 recoveredBlock371Value18 recoveredBlock371Value19 recoveredBlock371Value20 recoveredBlock371Value21 |
    recoveredBlock371Value0 := recoveredBlock371Arg1.
    recoveredBlock371Value1 := recoveredBlock371Value0.
    recoveredBlock371Value2 := recoveredLocal15.
    recoveredBlock371Value3 := (9) * (recoveredBlock371Value2).
    recoveredBlock371Value4 := (recoveredBlock371Value3) rounded.
    (recoveredBlock371Value1) x: (recoveredBlock371Value4).
    recoveredBlock371Value5 := recoveredBlock371Value0.
    recoveredBlock371Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock371Value5) alignment: (recoveredBlock371Value6).
    recoveredBlock371Value7 := recoveredBlock371Value0.
    (recoveredBlock371Value7) labelString: ('Results').
    recoveredBlock371Value8 := recoveredBlock371Value0.
    recoveredBlock371Value9 := recoveredLocal14.
    recoveredBlock371Value10 := (10) * (recoveredBlock371Value9).
    recoveredBlock371Value11 := (recoveredBlock371Value10) rounded.
    (recoveredBlock371Value8) y: (recoveredBlock371Value11).
    recoveredBlock371Value12 := recoveredBlock371Value0.
    recoveredBlock371Value13 := recoveredLocal14.
    recoveredBlock371Value14 := (20) * (recoveredBlock371Value13).
    recoveredBlock371Value15 := (recoveredBlock371Value14) rounded.
    (recoveredBlock371Value12) height: (recoveredBlock371Value15).
    recoveredBlock371Value16 := recoveredBlock371Value0.
    recoveredBlock371Value17 := recoveredLocal15.
    recoveredBlock371Value18 := (73) * (recoveredBlock371Value17).
    recoveredBlock371Value19 := (recoveredBlock371Value18) rounded.
    (recoveredBlock371Value16) width: (recoveredBlock371Value19).
    recoveredBlock371Value20 := recoveredBlock371Value0.
    recoveredBlock371Value21 := (self) defaultLabelBlue.
    (recoveredBlock371Value20) foregroundColor: (recoveredBlock371Value21).
    recoveredBlock371Value0
].
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := 'resultLabel'.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := 'resultList'.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := 'scrolledResultList'.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := 'resultList'.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := 'infoIcon'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack3 := [:recoveredBlock504Arg1 | 
    | recoveredBlock504Value0 recoveredBlock504Value1 recoveredBlock504Value2 recoveredBlock504Value3 recoveredBlock504Value4 recoveredBlock504Value5 recoveredBlock504Value6 recoveredBlock504Value7 recoveredBlock504Value8 recoveredBlock504Value9 recoveredBlock504Value10 |
    recoveredBlock504Value0 := recoveredBlock504Arg1.
    recoveredBlock504Value1 := recoveredBlock504Value0.
    recoveredBlock504Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock504Value1) alignment: (recoveredBlock504Value2).
    recoveredBlock504Value3 := recoveredBlock504Value0.
    recoveredBlock504Value4 := XmICON.
    (recoveredBlock504Value3) labelType: (recoveredBlock504Value4).
    recoveredBlock504Value5 := recoveredBlock504Value0.
    recoveredBlock504Value6 := (self) resourceManager.
    recoveredBlock504Value7 := (recoveredBlock504Value6) returnIconWithName: ('GeneralInformation24').
    (recoveredBlock504Value5) labelIcon: (recoveredBlock504Value7).
    recoveredBlock504Value8 := recoveredBlock504Value0.
    (recoveredBlock504Value8) recomputeSize: (false).
    recoveredBlock504Value9 := recoveredBlock504Value0.
    (recoveredBlock504Value9) width: (26).
    recoveredBlock504Value10 := (recoveredBlock504Value0) height: (24).
    recoveredBlock504Value10
].
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredLocal10.
    recoveredBlock558Value2 := (recoveredBlock558Value0) workWindow: (recoveredBlock558Value1).
    recoveredBlock558Value2
].
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack2 := [:block28127e7cArg1 | 
    | block28127e7cValue0 block28127e7cValue1 block28127e7cValue2 block28127e7cValue3 block28127e7cValue4 block28127e7cValue5 block28127e7cValue6 |
    block28127e7cValue0 := block28127e7cArg1.
    block28127e7cValue1 := block28127e7cValue0.
    block28127e7cValue2 := XmATTACHFORM.
    (block28127e7cValue1) bottomAttachment: (block28127e7cValue2).
    block28127e7cValue3 := block28127e7cValue0.
    (block28127e7cValue3) bottomOffset: (5).
    block28127e7cValue4 := block28127e7cValue0.
    block28127e7cValue5 := XmATTACHFORM.
    (block28127e7cValue4) rightAttachment: (block28127e7cValue5).
    block28127e7cValue6 := (block28127e7cValue0) rightOffset: (5).
    block28127e7cValue6
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack2 := [:recoveredBlock630Arg1 | 
    | recoveredBlock630Value0 recoveredBlock630Value1 recoveredBlock630Value2 recoveredBlock630Value3 recoveredBlock630Value4 recoveredBlock630Value5 recoveredBlock630Value6 recoveredBlock630Value7 recoveredBlock630Value8 |
    recoveredBlock630Value0 := recoveredBlock630Arg1.
    recoveredBlock630Value1 := recoveredBlock630Value0.
    recoveredBlock630Value2 := XmATTACHFORM.
    (recoveredBlock630Value1) bottomAttachment: (recoveredBlock630Value2).
    recoveredBlock630Value3 := recoveredBlock630Value0.
    (recoveredBlock630Value3) bottomOffset: (5).
    recoveredBlock630Value4 := recoveredBlock630Value0.
    recoveredBlock630Value5 := XmATTACHWIDGET.
    (recoveredBlock630Value4) rightAttachment: (recoveredBlock630Value5).
    recoveredBlock630Value6 := recoveredBlock630Value0.
    recoveredBlock630Value7 := recoveredLocal8.
    (recoveredBlock630Value6) rightWidget: (recoveredBlock630Value7).
    recoveredBlock630Value8 := (recoveredBlock630Value0) rightOffset: (5).
    recoveredBlock630Value8
].
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack2 := [:recoveredBlock684Arg1 | 
    | recoveredBlock684Value0 recoveredBlock684Value1 recoveredBlock684Value2 recoveredBlock684Value3 recoveredBlock684Value4 recoveredBlock684Value5 recoveredBlock684Value6 recoveredBlock684Value7 recoveredBlock684Value8 recoveredBlock684Value9 recoveredBlock684Value10 recoveredBlock684Value11 recoveredBlock684Value12 recoveredBlock684Value13 recoveredBlock684Value14 recoveredBlock684Value15 recoveredBlock684Value16 recoveredBlock684Value17 recoveredBlock684Value18 recoveredBlock684Value19 recoveredBlock684Value20 recoveredBlock684Value21 recoveredBlock684Value22 recoveredBlock684Value23 recoveredBlock684Value24 recoveredBlock684Value25 recoveredBlock684Value26 recoveredBlock684Value27 recoveredBlock684Value28 recoveredBlock684Value29 recoveredBlock684Value30 recoveredBlock684Value31 recoveredBlock684Value32 recoveredBlock684Value33 |
    recoveredBlock684Value0 := recoveredBlock684Arg1.
    recoveredBlock684Value1 := recoveredBlock684Value0.
    recoveredBlock684Value2 := XmATTACHWIDGET.
    (recoveredBlock684Value1) bottomAttachment: (recoveredBlock684Value2).
    recoveredBlock684Value3 := recoveredBlock684Value0.
    recoveredBlock684Value4 := recoveredLocal8.
    (recoveredBlock684Value3) bottomWidget: (recoveredBlock684Value4).
    recoveredBlock684Value5 := recoveredBlock684Value0.
    (recoveredBlock684Value5) bottomOffset: (5).
    recoveredBlock684Value6 := recoveredBlock684Value0.
    recoveredBlock684Value7 := XmATTACHWIDGET.
    (recoveredBlock684Value6) topAttachment: (recoveredBlock684Value7).
    recoveredBlock684Value8 := recoveredBlock684Value0.
    recoveredBlock684Value9 := recoveredLocal4.
    (recoveredBlock684Value8) topWidget: (recoveredBlock684Value9).
    recoveredBlock684Value10 := recoveredBlock684Value0.
    recoveredBlock684Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock684Value10) leftAttachment: (recoveredBlock684Value11).
    recoveredBlock684Value12 := recoveredBlock684Value0.
    recoveredBlock684Value13 := recoveredLocal5.
    (recoveredBlock684Value12) leftWidget: (recoveredBlock684Value13).
    recoveredBlock684Value14 := recoveredBlock684Value0.
    recoveredBlock684Value15 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock684Value14) rightAttachment: (recoveredBlock684Value15).
    recoveredBlock684Value16 := recoveredBlock684Value0.
    recoveredBlock684Value17 := recoveredLocal5.
    (recoveredBlock684Value16) rightWidget: (recoveredBlock684Value17).
    recoveredBlock684Value18 := recoveredBlock684Value0.
    recoveredBlock684Value19 := recoveredLocal15.
    recoveredBlock684Value20 := (201) * (recoveredBlock684Value19).
    recoveredBlock684Value21 := (recoveredBlock684Value20) rounded.
    (recoveredBlock684Value18) x: (recoveredBlock684Value21).
    recoveredBlock684Value22 := recoveredBlock684Value0.
    recoveredBlock684Value23 := recoveredLocal14.
    recoveredBlock684Value24 := (25) * (recoveredBlock684Value23).
    recoveredBlock684Value25 := (recoveredBlock684Value24) rounded.
    (recoveredBlock684Value22) y: (recoveredBlock684Value25).
    recoveredBlock684Value26 := recoveredBlock684Value0.
    recoveredBlock684Value27 := recoveredLocal14.
    recoveredBlock684Value28 := (219) * (recoveredBlock684Value27).
    recoveredBlock684Value29 := (recoveredBlock684Value28) rounded.
    (recoveredBlock684Value26) height: (recoveredBlock684Value29).
    recoveredBlock684Value30 := recoveredLocal15.
    recoveredBlock684Value31 := (186) * (recoveredBlock684Value30).
    recoveredBlock684Value32 := (recoveredBlock684Value31) rounded.
    recoveredBlock684Value33 := (recoveredBlock684Value0) width: (recoveredBlock684Value32).
    recoveredBlock684Value33
].
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack2 := [:recoveredBlock818Arg1 | 
    | recoveredBlock818Value0 recoveredBlock818Value1 recoveredBlock818Value2 recoveredBlock818Value3 recoveredBlock818Value4 recoveredBlock818Value5 recoveredBlock818Value6 recoveredBlock818Value7 recoveredBlock818Value8 recoveredBlock818Value9 recoveredBlock818Value10 recoveredBlock818Value11 |
    recoveredBlock818Value0 := recoveredBlock818Arg1.
    recoveredBlock818Value1 := recoveredBlock818Value0.
    recoveredBlock818Value2 := XmATTACHFORM.
    (recoveredBlock818Value1) topAttachment: (recoveredBlock818Value2).
    recoveredBlock818Value3 := recoveredBlock818Value0.
    (recoveredBlock818Value3) topOffset: (5).
    recoveredBlock818Value4 := recoveredBlock818Value0.
    recoveredBlock818Value5 := XmATTACHWIDGET.
    (recoveredBlock818Value4) leftAttachment: (recoveredBlock818Value5).
    recoveredBlock818Value6 := recoveredBlock818Value0.
    recoveredBlock818Value7 := recoveredLocal4.
    (recoveredBlock818Value6) leftWidget: (recoveredBlock818Value7).
    recoveredBlock818Value8 := recoveredBlock818Value0.
    (recoveredBlock818Value8) leftOffset: (5).
    recoveredBlock818Value9 := recoveredBlock818Value0.
    recoveredBlock818Value10 := XmATTACHFORM.
    (recoveredBlock818Value9) rightAttachment: (recoveredBlock818Value10).
    recoveredBlock818Value11 := (recoveredBlock818Value0) rightOffset: (5).
    recoveredBlock818Value11
].
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            recoveredStack2 := [:block28127ea0Arg1 | 
    | block28127ea0Value0 block28127ea0Value1 block28127ea0Value2 block28127ea0Value3 block28127ea0Value4 block28127ea0Value5 block28127ea0Value6 block28127ea0Value7 block28127ea0Value8 block28127ea0Value9 |
    block28127ea0Value0 := block28127ea0Arg1.
    block28127ea0Value1 := block28127ea0Value0.
    block28127ea0Value2 := XmATTACHFORM.
    (block28127ea0Value1) topAttachment: (block28127ea0Value2).
    block28127ea0Value3 := block28127ea0Value0.
    (block28127ea0Value3) topOffset: (5).
    block28127ea0Value4 := block28127ea0Value0.
    block28127ea0Value5 := XmATTACHFORM.
    (block28127ea0Value4) leftAttachment: (block28127ea0Value5).
    block28127ea0Value6 := block28127ea0Value0.
    (block28127ea0Value6) leftOffset: (5).
    block28127ea0Value7 := block28127ea0Value0.
    block28127ea0Value8 := XmATTACHPOSITION.
    (block28127ea0Value7) rightAttachment: (block28127ea0Value8).
    block28127ea0Value9 := (block28127ea0Value0) rightPosition: (50).
    block28127ea0Value9
].
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredPC := 940.
        ].
        recoveredStep = 940 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 945.
        ].
        recoveredStep = 945 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack2 := [:recoveredBlock948Arg1 | 
    | recoveredBlock948Value0 recoveredBlock948Value1 recoveredBlock948Value2 recoveredBlock948Value3 recoveredBlock948Value4 recoveredBlock948Value5 recoveredBlock948Value6 recoveredBlock948Value7 recoveredBlock948Value8 recoveredBlock948Value9 recoveredBlock948Value10 recoveredBlock948Value11 recoveredBlock948Value12 recoveredBlock948Value13 recoveredBlock948Value14 recoveredBlock948Value15 recoveredBlock948Value16 recoveredBlock948Value17 recoveredBlock948Value18 recoveredBlock948Value19 recoveredBlock948Value20 recoveredBlock948Value21 recoveredBlock948Value22 recoveredBlock948Value23 recoveredBlock948Value24 recoveredBlock948Value25 recoveredBlock948Value26 recoveredBlock948Value27 recoveredBlock948Value28 recoveredBlock948Value29 recoveredBlock948Value30 recoveredBlock948Value31 recoveredBlock948Value32 recoveredBlock948Value33 |
    recoveredBlock948Value0 := recoveredBlock948Arg1.
    recoveredBlock948Value1 := recoveredBlock948Value0.
    recoveredBlock948Value2 := XmATTACHWIDGET.
    (recoveredBlock948Value1) bottomAttachment: (recoveredBlock948Value2).
    recoveredBlock948Value3 := recoveredBlock948Value0.
    recoveredBlock948Value4 := recoveredLocal8.
    (recoveredBlock948Value3) bottomWidget: (recoveredBlock948Value4).
    recoveredBlock948Value5 := recoveredBlock948Value0.
    (recoveredBlock948Value5) bottomOffset: (5).
    recoveredBlock948Value6 := recoveredBlock948Value0.
    recoveredBlock948Value7 := XmATTACHWIDGET.
    (recoveredBlock948Value6) topAttachment: (recoveredBlock948Value7).
    recoveredBlock948Value8 := recoveredBlock948Value0.
    recoveredBlock948Value9 := recoveredLocal4.
    (recoveredBlock948Value8) topWidget: (recoveredBlock948Value9).
    recoveredBlock948Value10 := recoveredBlock948Value0.
    recoveredBlock948Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock948Value10) leftAttachment: (recoveredBlock948Value11).
    recoveredBlock948Value12 := recoveredBlock948Value0.
    recoveredBlock948Value13 := recoveredLocal4.
    (recoveredBlock948Value12) leftWidget: (recoveredBlock948Value13).
    recoveredBlock948Value14 := recoveredBlock948Value0.
    recoveredBlock948Value15 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock948Value14) rightAttachment: (recoveredBlock948Value15).
    recoveredBlock948Value16 := recoveredBlock948Value0.
    recoveredBlock948Value17 := recoveredLocal4.
    (recoveredBlock948Value16) rightWidget: (recoveredBlock948Value17).
    recoveredBlock948Value18 := recoveredBlock948Value0.
    recoveredBlock948Value19 := recoveredLocal15.
    recoveredBlock948Value20 := (5) * (recoveredBlock948Value19).
    recoveredBlock948Value21 := (recoveredBlock948Value20) rounded.
    (recoveredBlock948Value18) x: (recoveredBlock948Value21).
    recoveredBlock948Value22 := recoveredBlock948Value0.
    recoveredBlock948Value23 := recoveredLocal14.
    recoveredBlock948Value24 := (25) * (recoveredBlock948Value23).
    recoveredBlock948Value25 := (recoveredBlock948Value24) rounded.
    (recoveredBlock948Value22) y: (recoveredBlock948Value25).
    recoveredBlock948Value26 := recoveredBlock948Value0.
    recoveredBlock948Value27 := recoveredLocal14.
    recoveredBlock948Value28 := (204) * (recoveredBlock948Value27).
    recoveredBlock948Value29 := (recoveredBlock948Value28) rounded.
    (recoveredBlock948Value26) height: (recoveredBlock948Value29).
    recoveredBlock948Value30 := recoveredLocal15.
    recoveredBlock948Value31 := (111) * (recoveredBlock948Value30).
    recoveredBlock948Value32 := (recoveredBlock948Value31) rounded.
    recoveredBlock948Value33 := (recoveredBlock948Value0) width: (recoveredBlock948Value32).
    recoveredBlock948Value33
].
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1077.
        ].
        recoveredStep = 1077 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1084.
        ].
        recoveredStep = 1084 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1085.
        ].
        recoveredStep = 1085 ifTrue: [
            recoveredStack4 := 'updateActivate:clientData:callData:'.
            recoveredPC := 1088.
        ].
        recoveredStep = 1088 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1089.
        ].
        recoveredStep = 1089 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1093.
        ].
        recoveredStep = 1093 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1096.
        ].
        recoveredStep = 1096 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 1097.
        ].
        recoveredStep = 1097 ifTrue: [
            recoveredStack3 := XmNvisualInfoCallback.
            recoveredPC := 1100.
        ].
        recoveredStep = 1100 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 1101.
        ].
        recoveredStep = 1101 ifTrue: [
            recoveredStack5 := 'resultListVisualInfoCallback:clientData:callData:'.
            recoveredPC := 1104.
        ].
        recoveredStep = 1104 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 1105.
        ].
        recoveredStep = 1105 ifTrue: [
            (recoveredStack2) addCallback: (recoveredStack3) receiver: (recoveredStack4) selector: (recoveredStack5) clientData: (recoveredStack6).
            recoveredPC := 1109.
        ].
        recoveredStep = 1109 ifTrue: [
            recoveredStack2 := KeyPressMask.
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack4 := 'refItemButtonPress:clientData:event:'.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 1119.
        ].
        recoveredStep = 1119 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1130.
        ].
        recoveredStep = 1130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack4 := 'refItemsSelectionCallback:clientData:callData:'.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1135.
        ].
        recoveredStep = 1135 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1146.
        ].
        recoveredStep = 1146 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1147.
        ].
        recoveredStep = 1147 ifTrue: [
            recoveredStack4 := 'refItemsDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1150.
        ].
        recoveredStep = 1150 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1151.
        ].
        recoveredStep = 1151 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1155.
        ].
        recoveredStep = 1155 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1162.
        ].
        recoveredStep = 1162 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack4 := 'resultListVisualInfoCallback:clientData:callData:'.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1167.
        ].
        recoveredStep = 1167 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1171.
        ].
        recoveredStep = 1171 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1174.
        ].
        recoveredStep = 1174 ifTrue: [
            recoveredStack2 := XmNbrowseSelectionCallback.
            recoveredPC := 1178.
        ].
        recoveredStep = 1178 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1179.
        ].
        recoveredStep = 1179 ifTrue: [
            recoveredStack4 := 'resultListSelection:clientData:callData:'.
            recoveredPC := 1182.
        ].
        recoveredStep = 1182 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1183.
        ].
        recoveredStep = 1183 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1187.
        ].
        recoveredStep = 1187 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1190.
        ].
        recoveredStep = 1190 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1194.
        ].
        recoveredStep = 1194 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1195.
        ].
        recoveredStep = 1195 ifTrue: [
            recoveredStack4 := 'resultListAction:clientData:callData:'.
            recoveredPC := 1198.
        ].
        recoveredStep = 1198 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1199.
        ].
        recoveredStep = 1199 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1203.
        ].
        recoveredStep = 1203 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack1 := 'Please notice that this information may not be correct in some cases.\Choose Update to get correct references in the whole database.\Notice that this transaction may take a while.'.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1234.
        ].
        recoveredStep = 1234 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1239.
        ].
        recoveredStep = 1239 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1250.
        ].
        recoveredStep = 1250 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

