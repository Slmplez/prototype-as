"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016568; bytecode file offset 0x92209c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorEventGenerator32'
! !

"ASDBase.ic method 0x2004591c; bytecode file offset 0x9451f8"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
widgetEventChannels
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('eventChannels').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200485cc; bytecode file offset 0x9451f8"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
widgetLabelEvents
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelEvents').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fd5c4; bytecode file offset 0x9f9e88"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
undoEnable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) disable.
    (self) updateWidgets.
    recoveredValue1 := (self) parent.
    (recoveredValue1) refreshTreePane.
    ^self
! !

"ASDBase.ic method 0x20102ba0; bytecode file offset 0x9ff47c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) createChannelsMenu.
    (recoveredValue2) addMenu: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011aecc; bytecode file offset 0xa17790"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
updateWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allEvents.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
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

"ASDBase.ic method 0x20120058; bytecode file offset 0xa1c920"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
visualStringForEvent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) eventName.
    recoveredValue2 := (recoveredValue1) , (' ').
    recoveredValue3 := (recoveredValue2) fillBlankTo: (20).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) printState.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2013e44c; bytecode file offset 0xa3ad84"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsDependentEvent
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDependentEvent.
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
            (recoveredStack0) menuChannelsDeleteDependentEvent.
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
            (recoveredStack0) menuChannelsDefineDependentEvent.
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

"ASDBase.ic method 0x2014a248; bytecode file offset 0xa46b2c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
hasDependentEvent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            recoveredStack0 := (recoveredStack0) hasDependentEvent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014a264; bytecode file offset 0xa46b2c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
isEventEnabled
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
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
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015f9b4; bytecode file offset 0xa5c2b4"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
initializeMenuBar
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createMenuBar.
    windowMenuBar := recoveredValue0.
    recoveredValue1 := (self) mainWindow.
    recoveredValue2 := windowMenuBar.
    recoveredValue3 := (self) mainWindow.
    recoveredValue4 := (recoveredValue2) createMenuBarFor: (recoveredValue3) owner: (self).
    recoveredValue5 := (recoveredValue4) manageChild.
    (recoveredValue1) menuBar: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2017b368; bytecode file offset 0xa77c74"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
couldEdit
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cf3ccArg1 | 
    | block280cf3ccValue0 block280cf3ccValue1 |
    block280cf3ccValue0 := block280cf3ccArg1.
    block280cf3ccValue1 := (block280cf3ccValue0) isEnabled.
    block280cf3ccValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b388; bytecode file offset 0xa77c74"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
isEventSingle
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cf3f0Arg1 | 
    | block280cf3f0Value0 block280cf3f0Value1 |
    block280cf3f0Value0 := block280cf3f0Arg1.
    block280cf3f0Value1 := (block280cf3f0Value0) isSingleMode.
    block280cf3f0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017b3a8; bytecode file offset 0xa77c74"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
couldDependent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cf414Arg1 | 
    | block280cf414Value0 block280cf414Value1 |
    block280cf414Value0 := block280cf414Arg1.
    block280cf414Value1 := (block280cf414Value0) isEnabled.
    block280cf414Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017da88; bytecode file offset 0xa7a348"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
eventChannelsDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) doEnable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuChannelsEdit.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) undoEnable: (recoveredStack1).
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

"ASDBase.ic method 0x201ada3c; bytecode file offset 0xaaa308"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
eventChannelsVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) iconName.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (self) returnIconWithName: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredLocal3.
    (recoveredValue5) icon: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) item.
    recoveredValue10 := (self) visualStringForEvent: (recoveredValue9).
    (recoveredValue7) label: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201bfb64; bytecode file offset 0xabc434"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetLabelEvents.
    (recoveredValue1) updateLabelFont: (recoveredValue2).
    recoveredValue3 := (self) widgetEventChannels.
    (recoveredValue0) updateFontAndItemHeight: (recoveredValue3).
    recoveredValue4 := (self) widgetEventChannels.
    recoveredValue5 := (self) widgetEventChannels.
    recoveredValue6 := (recoveredValue5) itemHeight.
    recoveredValue7 := (recoveredValue6) + (3).
    (recoveredValue4) itemHeight: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20225ccc; bytecode file offset 0xb225ac"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    (self) initializeMenuBar.
    recoveredValue0 := (self) widgetEventChannels.
    recoveredValue1 := (self) createChannelsMenu.
    (recoveredValue0) menu: (recoveredValue1) owner: (self).
    (self) iconSmall: ('EditorEventGenerator') large: ('EditorEventGenerator32').
    (self) initFonts.
    (self) updateWidgets.
    ^self
! !

"ASDBase.ic method 0x20237160; bytecode file offset 0xb33a30"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsReEnterToEventQueue
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280dd7c0Arg1 | 
    | block280dd7c0Stack0 block280dd7c0Stack1 block280dd7c0Stack2 block280dd7c0Stack3 block280dd7c0PC block280dd7c0Step block280dd7c0Done block280dd7c0Result |
    block280dd7c0Stack0 := self.
    block280dd7c0PC := 4.
    block280dd7c0Done := false.
    [block280dd7c0Done not] whileTrue: [
        block280dd7c0Step := block280dd7c0PC.
        block280dd7c0Step = 4 ifTrue: [
            block280dd7c0Stack1 := nil.
            block280dd7c0PC := 5.
        ].
        block280dd7c0Step = 5 ifTrue: [
            block280dd7c0Stack2 := block280dd7c0Arg1.
            block280dd7c0PC := 6.
        ].
        block280dd7c0Step = 6 ifTrue: [
            block280dd7c0Stack2 := (block280dd7c0Stack2) isSingleMode.
            block280dd7c0PC := 8.
        ].
        block280dd7c0Step = 8 ifTrue: [
            (block280dd7c0Stack2) ifTrue: [block280dd7c0PC := 12] ifFalse: [block280dd7c0PC := 16].
        ].
        block280dd7c0Step = 12 ifTrue: [
            block280dd7c0PC := 13.
        ].
        block280dd7c0Step = 13 ifTrue: [
            block280dd7c0Stack1 := block280dd7c0Arg1.
            block280dd7c0PC := 14.
        ].
        block280dd7c0Step = 14 ifTrue: [
            block280dd7c0Stack1 := (block280dd7c0Stack1) reenterEvent.
            block280dd7c0PC := 16.
        ].
        block280dd7c0Step = 16 ifTrue: [
            block280dd7c0Result := block280dd7c0Stack1.
            block280dd7c0Done := true.
        ].
    ].
    block280dd7c0Result
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2026ff58; bytecode file offset 0xb6c838"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsDeleteDependentEvent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280e0604Arg1 | 
    | block280e0604Value0 block280e0604Value1 |
    block280e0604Value0 := block280e0604Arg1.
    block280e0604Value1 := (block280e0604Value0) removeDependentEvent.
    block280e0604Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'There is nothing selected in Event Generator.'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) prompt.
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

"ASDBase.ic method 0x202d4dac; bytecode file offset 0xbd1688"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
doEnable
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) enable.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) refreshTreePane.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ee228; bytecode file offset 0xbeab0c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsEnableDisable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
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
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEnabled.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [:block280e7f18Arg1 | 
    | block280e7f18Value0 block280e7f18Value1 |
    block280e7f18Value0 := block280e7f18Arg1.
    block280e7f18Value1 := (block280e7f18Value0) disable.
    block280e7f18Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:block280e7f3cArg1 | 
    | block280e7f3cValue0 block280e7f3cValue1 |
    block280e7f3cValue0 := block280e7f3cArg1.
    block280e7f3cValue1 := (block280e7f3cValue0) enable.
    block280e7f3cValue1
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
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
            (recoveredStack0) updateWidgets.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) updateTreePane.
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

"ASDBase.ic method 0x2033f25c; bytecode file offset 0xc3bb50"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsEdit
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280edd50Arg1 | 
    | block280edd50Value0 block280edd50Value1 |
    block280edd50Value0 := block280edd50Arg1.
    block280edd50Value1 := (block280edd50Value0) isEnabled.
    block280edd50Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := SGEditEventChannelDialog.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1) events: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) promptAtCurrentMousePositionWithParent: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 |
    (self) updateWidgets.
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := (recoveredBlock42Value0) refreshTreePane.
    recoveredBlock42Value1
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) result.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2044dd68; bytecode file offset 0xd4a67c"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
createChannelsMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := CwMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) title: ('~Channels').
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) couldEdit.
    recoveredBlock18Value0
].
    (recoveredValue4) add: ('menuChannelsEdit') label: ('~Edit') enable: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := [
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := (self) widgetEventChannels.
    recoveredBlock34Value1 := (recoveredBlock34Value0) selectedItems.
    recoveredBlock34Value2 := (recoveredBlock34Value1) notEmpty.
    recoveredBlock34Value2
].
    recoveredValue8 := [
    | recoveredBlock47Value0 |
    recoveredBlock47Value0 := (self) isEventEnabled.
    recoveredBlock47Value0
].
    (recoveredValue6) add: ('menuChannelsEnableDisable') label: ('~Enable') enable: (recoveredValue7) toggle: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) addLine.
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := [
    | recoveredBlock67Value0 |
    recoveredBlock67Value0 := (self) isEventSingle.
    recoveredBlock67Value0
].
    (recoveredValue10) add: ('menuChannelsReEnterToEventQueue') label: ('~Reactivate Event') enable: (recoveredValue11).
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) addLine.
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := [
    | recoveredBlock87Value0 |
    recoveredBlock87Value0 := (self) couldDependent.
    recoveredBlock87Value0
].
    recoveredValue15 := [
    | recoveredBlock97Value0 |
    recoveredBlock97Value0 := (self) hasDependentEvent.
    recoveredBlock97Value0
].
    (recoveredValue13) add: ('menuChannelsDependentEvent') label: ('De~pendent Event') enable: (recoveredValue14) toggle: (recoveredValue15).
    recoveredLocal1 := recoveredValue2.
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x204f7af8; bytecode file offset 0xdf4430"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
menuChannelsDefineDependentEvent
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEventChannels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'You should select only one item!!'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeEvents.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := true.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 50.
        ].
        recoveredBlock42Step = 50 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) hasDependentEvent.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 64] ifFalse: [recoveredBlock42PC := 56].
        ].
        recoveredBlock42Step = 56 ifTrue: [
            recoveredBlock42PC := 57.
        ].
        recoveredBlock42Step = 57 ifTrue: [
            recoveredBlock42Stack1 := recoveredLocal2.
            recoveredBlock42PC := 60.
        ].
        recoveredBlock42Step = 60 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) first.
            recoveredBlock42PC := 62.
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 63.
        ].
        recoveredBlock42Step = 63 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) = (recoveredBlock42Stack2).
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'There is no event available.'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'The minimum are two events to synchronize them. '.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) advice: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := CwListPrompter.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := XmSINGLESELECT.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) selectionPolicy: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'Select Dependent Event'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := 'Events'.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) labelString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'Define Dependent Event'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := [:block28109e1cArg1 | 
    | block28109e1cValue0 block28109e1cValue1 |
    block28109e1cValue0 := block28109e1cArg1.
    block28109e1cValue1 := (block28109e1cValue0) eventName.
    block28109e1cValue1
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) dependentEvent: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 'There is nothing selected in Event Generator.'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2060f5a4; bytecode file offset 0xf0bf58"
!SGSimEventGeneratorWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Event Generator').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal7.
    recoveredBlock24Value4 := (232) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal8.
    recoveredBlock24Value7 := (420) * (recoveredBlock24Value6).
    recoveredBlock24Value8 := (recoveredBlock24Value7) rounded.
    recoveredBlock24Value9 := (recoveredBlock24Value0) width: (recoveredBlock24Value8).
    recoveredBlock24Value9
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'eventChannels'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:block2811d844Arg1 | 
    | block2811d844Value0 block2811d844Value1 block2811d844Value2 block2811d844Value3 |
    block2811d844Value0 := block2811d844Arg1.
    block2811d844Value1 := block2811d844Value0.
    block2811d844Value2 := XmEXTENDEDSELECT.
    (block2811d844Value1) selectionPolicy: (block2811d844Value2).
    block2811d844Value3 := (block2811d844Value0) itemHeight: (15).
    block2811d844Value3
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := 'aScrolledIconTree1'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'eventChannels'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'labelEvents'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Value0 recoveredBlock183Value1 recoveredBlock183Value2 recoveredBlock183Value3 recoveredBlock183Value4 recoveredBlock183Value5 recoveredBlock183Value6 recoveredBlock183Value7 recoveredBlock183Value8 recoveredBlock183Value9 recoveredBlock183Value10 recoveredBlock183Value11 recoveredBlock183Value12 recoveredBlock183Value13 recoveredBlock183Value14 recoveredBlock183Value15 recoveredBlock183Value16 recoveredBlock183Value17 recoveredBlock183Value18 recoveredBlock183Value19 recoveredBlock183Value20 recoveredBlock183Value21 recoveredBlock183Value22 recoveredBlock183Value23 |
    recoveredBlock183Value0 := recoveredBlock183Arg1.
    recoveredBlock183Value1 := recoveredBlock183Value0.
    recoveredBlock183Value2 := recoveredLocal8.
    recoveredBlock183Value3 := (5) * (recoveredBlock183Value2).
    recoveredBlock183Value4 := (recoveredBlock183Value3) rounded.
    (recoveredBlock183Value1) x: (recoveredBlock183Value4).
    recoveredBlock183Value5 := recoveredBlock183Value0.
    recoveredBlock183Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock183Value5) alignment: (recoveredBlock183Value6).
    recoveredBlock183Value7 := recoveredBlock183Value0.
    (recoveredBlock183Value7) labelString: ('Events').
    recoveredBlock183Value8 := recoveredBlock183Value0.
    (recoveredBlock183Value8) marginWidth: (0).
    recoveredBlock183Value9 := recoveredBlock183Value0.
    (recoveredBlock183Value9) marginHeight: (0).
    recoveredBlock183Value10 := recoveredBlock183Value0.
    recoveredBlock183Value11 := recoveredLocal7.
    recoveredBlock183Value12 := (3) * (recoveredBlock183Value11).
    recoveredBlock183Value13 := (recoveredBlock183Value12) rounded.
    (recoveredBlock183Value10) y: (recoveredBlock183Value13).
    recoveredBlock183Value14 := recoveredBlock183Value0.
    recoveredBlock183Value15 := recoveredLocal7.
    recoveredBlock183Value16 := (22) * (recoveredBlock183Value15).
    recoveredBlock183Value17 := (recoveredBlock183Value16) rounded.
    (recoveredBlock183Value14) height: (recoveredBlock183Value17).
    recoveredBlock183Value18 := recoveredBlock183Value0.
    recoveredBlock183Value19 := recoveredLocal8.
    recoveredBlock183Value20 := (110) * (recoveredBlock183Value19).
    recoveredBlock183Value21 := (recoveredBlock183Value20) rounded.
    (recoveredBlock183Value18) width: (recoveredBlock183Value21).
    recoveredBlock183Value22 := recoveredBlock183Value0.
    recoveredBlock183Value23 := (self) defaultLabelBlue.
    (recoveredBlock183Value22) foregroundColor: (recoveredBlock183Value23).
    recoveredBlock183Value0
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'labelEvents'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := [:recoveredBlock283Arg1 | 
    | recoveredBlock283Value0 recoveredBlock283Value1 recoveredBlock283Value2 |
    recoveredBlock283Value0 := recoveredBlock283Arg1.
    recoveredBlock283Value1 := recoveredLocal4.
    recoveredBlock283Value2 := (recoveredBlock283Value0) workWindow: (recoveredBlock283Value1).
    recoveredBlock283Value2
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := [:recoveredBlock302Arg1 | 
    | recoveredBlock302Value0 recoveredBlock302Value1 recoveredBlock302Value2 recoveredBlock302Value3 recoveredBlock302Value4 recoveredBlock302Value5 recoveredBlock302Value6 recoveredBlock302Value7 recoveredBlock302Value8 recoveredBlock302Value9 recoveredBlock302Value10 recoveredBlock302Value11 recoveredBlock302Value12 recoveredBlock302Value13 recoveredBlock302Value14 recoveredBlock302Value15 recoveredBlock302Value16 recoveredBlock302Value17 recoveredBlock302Value18 recoveredBlock302Value19 recoveredBlock302Value20 recoveredBlock302Value21 recoveredBlock302Value22 recoveredBlock302Value23 recoveredBlock302Value24 recoveredBlock302Value25 recoveredBlock302Value26 recoveredBlock302Value27 recoveredBlock302Value28 recoveredBlock302Value29 recoveredBlock302Value30 recoveredBlock302Value31 |
    recoveredBlock302Value0 := recoveredBlock302Arg1.
    recoveredBlock302Value1 := recoveredBlock302Value0.
    recoveredBlock302Value2 := XmATTACHFORM.
    (recoveredBlock302Value1) bottomAttachment: (recoveredBlock302Value2).
    recoveredBlock302Value3 := recoveredBlock302Value0.
    (recoveredBlock302Value3) bottomOffset: (5).
    recoveredBlock302Value4 := recoveredBlock302Value0.
    recoveredBlock302Value5 := XmATTACHWIDGET.
    (recoveredBlock302Value4) topAttachment: (recoveredBlock302Value5).
    recoveredBlock302Value6 := recoveredBlock302Value0.
    recoveredBlock302Value7 := recoveredLocal1.
    (recoveredBlock302Value6) topWidget: (recoveredBlock302Value7).
    recoveredBlock302Value8 := recoveredBlock302Value0.
    recoveredBlock302Value9 := XmATTACHFORM.
    (recoveredBlock302Value8) leftAttachment: (recoveredBlock302Value9).
    recoveredBlock302Value10 := recoveredBlock302Value0.
    (recoveredBlock302Value10) leftOffset: (5).
    recoveredBlock302Value11 := recoveredBlock302Value0.
    recoveredBlock302Value12 := XmATTACHFORM.
    (recoveredBlock302Value11) rightAttachment: (recoveredBlock302Value12).
    recoveredBlock302Value13 := recoveredBlock302Value0.
    (recoveredBlock302Value13) rightOffset: (5).
    recoveredBlock302Value14 := recoveredBlock302Value0.
    recoveredBlock302Value15 := recoveredLocal8.
    recoveredBlock302Value16 := (5) * (recoveredBlock302Value15).
    recoveredBlock302Value17 := (recoveredBlock302Value16) rounded.
    (recoveredBlock302Value14) x: (recoveredBlock302Value17).
    recoveredBlock302Value18 := recoveredBlock302Value0.
    recoveredBlock302Value19 := recoveredLocal7.
    recoveredBlock302Value20 := (25) * (recoveredBlock302Value19).
    recoveredBlock302Value21 := (recoveredBlock302Value20) rounded.
    (recoveredBlock302Value18) y: (recoveredBlock302Value21).
    recoveredBlock302Value22 := recoveredBlock302Value0.
    recoveredBlock302Value23 := XmASNEEDED.
    (recoveredBlock302Value22) scrollBarDisplayPolicy: (recoveredBlock302Value23).
    recoveredBlock302Value24 := recoveredBlock302Value0.
    recoveredBlock302Value25 := recoveredLocal7.
    recoveredBlock302Value26 := (263) * (recoveredBlock302Value25).
    recoveredBlock302Value27 := (recoveredBlock302Value26) rounded.
    (recoveredBlock302Value24) height: (recoveredBlock302Value27).
    recoveredBlock302Value28 := recoveredLocal8.
    recoveredBlock302Value29 := (410) * (recoveredBlock302Value28).
    recoveredBlock302Value30 := (recoveredBlock302Value29) rounded.
    recoveredBlock302Value31 := (recoveredBlock302Value0) width: (recoveredBlock302Value30).
    recoveredBlock302Value31
].
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := [:block2811d868Arg1 | 
    | block2811d868Value0 block2811d868Value1 block2811d868Value2 block2811d868Value3 block2811d868Value4 block2811d868Value5 block2811d868Value6 |
    block2811d868Value0 := block2811d868Arg1.
    block2811d868Value1 := block2811d868Value0.
    block2811d868Value2 := XmATTACHFORM.
    (block2811d868Value1) topAttachment: (block2811d868Value2).
    block2811d868Value3 := block2811d868Value0.
    (block2811d868Value3) topOffset: (3).
    block2811d868Value4 := block2811d868Value0.
    block2811d868Value5 := XmATTACHFORM.
    (block2811d868Value4) leftAttachment: (block2811d868Value5).
    block2811d868Value6 := (block2811d868Value0) leftOffset: (5).
    block2811d868Value6
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack4 := 'eventChannelsVisual:clientData:callData:'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack4 := 'eventChannelsDefault:clientData:callData:'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

