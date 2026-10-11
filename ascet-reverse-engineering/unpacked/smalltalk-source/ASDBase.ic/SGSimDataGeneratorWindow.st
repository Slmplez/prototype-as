"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200055a8; bytecode file offset 0x90206c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateSimulationData: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20015d88; bytecode file offset 0x92209c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
defaultIcon
    ^'EditorDataGenerator'
! !

"ASDBase.ic method 0x2004306c; bytecode file offset 0x9451f8"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
widgetLabelSignalItem
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelSignalItem').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004774c; bytecode file offset 0x9451f8"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
widgetLabelElements
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('labelElements').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200486bc; bytecode file offset 0x9451f8"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
widgetDataChannels
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dataChannels').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005a374; bytecode file offset 0x957a6c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
dataChannelsDefault: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) menuDataChannelsEdit.
    ^self
! !

"ASDBase.ic method 0x20064694; bytecode file offset 0x961970"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDataInterpolate
    | recoveredValue0 |
    recoveredValue0 := (self) getDataGenerator.
    (recoveredValue0) toggleInterpolate.
    ^self
! !

"ASDBase.ic method 0x200647b4; bytecode file offset 0x961970"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDataRepeat
    | recoveredValue0 |
    recoveredValue0 := (self) getDataGenerator.
    (recoveredValue0) toggleRepeat.
    ^self
! !

"ASDBase.ic method 0x2009b700; bytecode file offset 0x99803c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateDataGenView
    (self) updateLabelSignalItem.
    (self) updateDataPane.
    ^self
! !

"ASDBase.ic method 0x200b190c; bytecode file offset 0x9ae1d8"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuChannelsDeleteAll
    | recoveredValue0 |
    recoveredValue0 := uiController.
    (recoveredValue0) removeAllDataChannels.
    (self) updateDataPane.
    ^self
! !

"ASDBase.ic method 0x200b20d0; bytecode file offset 0x9aea94"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
getStimuliMatrix
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Muzaffar') == ('EHI_15158').
    recoveredValue1 := (self) getStimuliSignal.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200caa50; bytecode file offset 0x9c7310"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
getDataGenerator
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := uiController.
    recoveredValue1 := (recoveredValue0) mainController.
    recoveredValue2 := (recoveredValue1) simEnvironment.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) dataGenerator.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f2068; bytecode file offset 0x9ee95c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDataIgnoreTimestampOffset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Rnz') == ('EHI_2008400346').
    recoveredValue1 := (self) getDataGenerator.
    (recoveredValue1) toggleIgnoreTimestampOffset.
    ^self
! !

"ASDBase.ic method 0x20144cf8; bytecode file offset 0xa415c4"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
dataName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := (recoveredValue1) , (' ').
    recoveredValue3 := (recoveredValue2) fillBlankTo: (20).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) value.
    recoveredValue6 := (recoveredValue5) printState.
    recoveredValue7 := (recoveredValue3) , (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015f998; bytecode file offset 0xa5c2b4"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
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

"ASDBase.ic method 0x2016a708; bytecode file offset 0xa66fec"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
createMenuBar
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMenuBar.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) createChannelsMenu.
    (recoveredValue3) addMenu: (recoveredValue4).
    recoveredValue5 := (self) createDataSourceMenu.
    (recoveredValue2) addMenu: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016aa80; bytecode file offset 0xa6734c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
getStimuliSignal
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Muzaffar') == ('EHI_15158').
    recoveredValue1 := uiController.
    recoveredValue2 := (recoveredValue1) mainController.
    recoveredValue3 := (recoveredValue2) simEnvironment.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) dataGenerator.
    recoveredValue6 := (recoveredValue5) signal.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2016de80; bytecode file offset 0xa6a74c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
initFonts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGUserInterfaceSettings.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) widgetLabelElements.
    (recoveredValue1) updateLabelFont: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) widgetLabelSignalItem.
    (recoveredValue3) updateLabelFont: (recoveredValue4).
    recoveredValue5 := (self) widgetDataChannels.
    (recoveredValue0) updateFontAndItemHeight: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2019caa0; bytecode file offset 0xa99370"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
dataChannelsVisual: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) iconName.
    recoveredValue4 := (self) returnIcon16WithName: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) icon: (recoveredValue6).
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) item.
    recoveredValue10 := (self) dataName: (recoveredValue9).
    (recoveredValue7) label: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x201e17dc; bytecode file offset 0xade0b0"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
initDragAndDrop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EwTargetAdapter.
    recoveredValue1 := (self) widgetDataChannels.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := XmNdropCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('dataDrop:clientData:callData:') clientData: (nil).
    recoveredValue5 := XmNdragOverCallback.
    (recoveredValue2) addCallback: (recoveredValue5) receiver: (self) selector: ('dataOver:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDBase.ic method 0x201e2ac4; bytecode file offset 0xadf398"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateSignals
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalledChannels.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280d67acArg1 | 
    | block280d67acValue0 block280d67acValue1 block280d67acValue2 block280d67acValue3 |
    block280d67acValue0 := block280d67acArg1.
    block280d67acValue1 := block280d67acArg1.
    block280d67acValue2 := (block280d67acValue1) undefinedSignal.
    block280d67acValue3 := (block280d67acValue0) matrixID: (block280d67acValue2).
    block280d67acValue3
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20225934; bytecode file offset 0xb22208"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateLabelSignalItem
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelSignalItem.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Signal Item: '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDataGenerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) signal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetLabelSignalItem.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'Signal Item: not defined'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
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

"ASDBase.ic method 0x2026a11c; bytecode file offset 0xb669f8"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateDataGenerator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) signalledChannels.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280e013cArg1 | 
    | block280e013cStack0 block280e013cStack1 block280e013cStack2 block280e013cStack3 block280e013cStack4 block280e013cPC block280e013cStep block280e013cDone block280e013cResult |
    block280e013cStack0 := self.
    block280e013cPC := 4.
    block280e013cDone := false.
    [block280e013cDone not] whileTrue: [
        block280e013cStep := block280e013cPC.
        block280e013cStep = 4 ifTrue: [
            block280e013cStack1 := nil.
            block280e013cPC := 5.
        ].
        block280e013cStep = 5 ifTrue: [
            block280e013cStack2 := block280e013cArg1.
            block280e013cPC := 6.
        ].
        block280e013cStep = 6 ifTrue: [
            block280e013cStack2 := (block280e013cStack2) matrixID.
            block280e013cPC := 8.
        ].
        block280e013cStep = 8 ifTrue: [
            block280e013cStack3 := ''.
            block280e013cPC := 10.
        ].
        block280e013cStep = 10 ifTrue: [
            block280e013cStack2 := (block280e013cStack2) = (block280e013cStack3).
            block280e013cPC := 11.
        ].
        block280e013cStep = 11 ifTrue: [
            (block280e013cStack2) ifTrue: [block280e013cPC := 14] ifFalse: [block280e013cPC := 21].
        ].
        block280e013cStep = 14 ifTrue: [
            block280e013cPC := 15.
        ].
        block280e013cStep = 15 ifTrue: [
            block280e013cStack1 := block280e013cArg1.
            block280e013cPC := 16.
        ].
        block280e013cStep = 16 ifTrue: [
            block280e013cStack2 := block280e013cArg1.
            block280e013cPC := 17.
        ].
        block280e013cStep = 17 ifTrue: [
            block280e013cStack2 := (block280e013cStack2) undefinedSignal.
            block280e013cPC := 19.
        ].
        block280e013cStep = 19 ifTrue: [
            block280e013cStack1 := (block280e013cStack1) matrixID: (block280e013cStack2).
            block280e013cPC := 21.
        ].
        block280e013cStep = 21 ifTrue: [
            block280e013cResult := block280e013cStack1.
            block280e013cDone := true.
        ].
    ].
    block280e013cResult
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20275cbc; bytecode file offset 0xb72594"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateMenuBar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 |
    recoveredBlock5Value0 := windowMenuBar.
    (recoveredBlock5Value0) deferRecreate.
    recoveredBlock5Value1 := windowMenuBar.
    recoveredBlock5Value2 := windowMenuBar.
    recoveredBlock5Value3 := (recoveredBlock5Value2) menuAtTitle: ('~Signal').
    (recoveredBlock5Value1) removeMenu: (recoveredBlock5Value3).
    recoveredBlock5Value4 := windowMenuBar.
    recoveredBlock5Value5 := (self) createDataSourceMenu.
    (recoveredBlock5Value4) addMenu: (recoveredBlock5Value5).
    recoveredBlock5Value6 := windowMenuBar.
    recoveredBlock5Value7 := (recoveredBlock5Value6) recreateNow.
    recoveredBlock5Value7
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20275fac; bytecode file offset 0xb72894"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    (self) initializeMenuBar.
    (self) initFonts.
    (self) initDragAndDrop.
    recoveredValue0 := (self) widgetDataChannels.
    recoveredValue1 := (self) createChannelsMenu.
    (recoveredValue0) menu: (recoveredValue1) owner: (self).
    (self) iconSmall: ('EditorDataGenerator') large: ('EditorDataGenerator32').
    (self) updateDataPane.
    (self) updateLabelSignalItem.
    ^self
! !

"ASDBase.ic method 0x202920fc; bytecode file offset 0xb8e9d0"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
updateDataPane
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDestroyed.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataChannels.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredLocal1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) add: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataChannels.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
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

"ASDBase.ic method 0x2029b08c; bytecode file offset 0xb97968"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuChannelsDelete
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := uiController.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) removeDataChannel: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) updateDataPane.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'There is nothing selected in Data Generator.'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) prompt.
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

"ASDBase.ic method 0x2039ed60; bytecode file offset 0xc9b648"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuRemoveSignal
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'EHI_2001401391'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) retainExistingSignalMappings.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) closeSignal.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) signal: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'EHI_2001401391'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) updateSignals.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) updateMenuBar.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) updateLabelSignalItem.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) updateDataPane.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ea9e8; bytecode file offset 0xce72ec"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
createChannelsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
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
            recoveredStack3 := '~Channels'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'menuDataChannelsEdit'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := '~Edit...'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := (self) widgetDataChannels.
    recoveredBlock18Value1 := (recoveredBlock18Value0) selectedItems.
    recoveredBlock18Value2 := (recoveredBlock18Value1) notEmpty.
    recoveredBlock18Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'menuChannelsCreate'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := '~Create...'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'menuChannelsDelete'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 |
    recoveredBlock53Value0 := (self) widgetDataChannels.
    recoveredBlock53Value1 := (recoveredBlock53Value0) selectedItems.
    recoveredBlock53Value2 := (recoveredBlock53Value1) notEmpty.
    recoveredBlock53Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 'menuChannelsDeleteAll'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := 'Delete ~All'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ed218; bytecode file offset 0xce9b10"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDataChannelsEdit
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDataChannels.
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
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGeneratorChannelDialogClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := RBUserInfo.
    recoveredBlock28Value1 := (recoveredBlock28Value0) message: ('The element selected cannot be stimulated.').
    (recoveredBlock28Value1) prompt.
    ^nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'EHI_15158'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) getStimuliSignal.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) matrix: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) openForDataGenView: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'There is nothing selected in Event Generator.'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044892c; bytecode file offset 0xd4522c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
dataDrop: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
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
            recoveredStack1 := Dictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataGeneratorDic.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 recoveredBlock37Value3 recoveredBlock37Value4 recoveredBlock37Value5 recoveredBlock37Value6 |
    recoveredBlock37Value0 := recoveredLocal1.
    recoveredBlock37Value1 := recoveredBlock37Arg1.
    recoveredBlock37Value2 := (recoveredBlock37Value1) key.
    recoveredBlock37Value3 := (recoveredBlock37Value2) asASDSimLabel.
    recoveredBlock37Value4 := recoveredBlock37Arg1.
    recoveredBlock37Value5 := (recoveredBlock37Value4) value.
    recoveredBlock37Value6 := (recoveredBlock37Value0) at: (recoveredBlock37Value3) put: (recoveredBlock37Value5).
    recoveredBlock37Value6
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Local1 recoveredBlock63Stack0 recoveredBlock63Stack1 recoveredBlock63Stack2 recoveredBlock63Stack3 recoveredBlock63Stack4 recoveredBlock63PC recoveredBlock63Step recoveredBlock63Done recoveredBlock63Result |
    recoveredBlock63Stack0 := self.
    recoveredBlock63PC := 70.
    recoveredBlock63Done := false.
    [recoveredBlock63Done not] whileTrue: [
        recoveredBlock63Step := recoveredBlock63PC.
        recoveredBlock63Step = 70 ifTrue: [
            recoveredBlock63Stack1 := recoveredLocal1.
            recoveredBlock63PC := 73.
        ].
        recoveredBlock63Step = 73 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 74.
        ].
        recoveredBlock63Step = 74 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) wName.
            recoveredBlock63PC := 76.
        ].
        recoveredBlock63Step = 76 ifTrue: [
            recoveredBlock63Stack3 := [].
            recoveredBlock63PC := 78.
        ].
        recoveredBlock63Step = 78 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) at: (recoveredBlock63Stack2) ifAbsent: (recoveredBlock63Stack3).
            recoveredBlock63PC := 80.
        ].
        recoveredBlock63Step = 80 ifTrue: [
            recoveredBlock63Local1 := recoveredBlock63Stack1.
            recoveredBlock63PC := 81.
        ].
        recoveredBlock63Step = 81 ifTrue: [
            recoveredBlock63Stack1 := nil.
            recoveredBlock63PC := 82.
        ].
        recoveredBlock63Step = 82 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Local1.
            recoveredBlock63PC := 83.
        ].
        recoveredBlock63Step = 83 ifTrue: [
            (recoveredBlock63Stack2 == nil) ifTrue: [recoveredBlock63PC := 104] ifFalse: [recoveredBlock63PC := 86].
        ].
        recoveredBlock63Step = 86 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Local1.
            recoveredBlock63PC := 87.
        ].
        recoveredBlock63Step = 87 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) isDataGeneratorNode.
            recoveredBlock63PC := 89.
        ].
        recoveredBlock63Step = 89 ifTrue: [
            (recoveredBlock63Stack2) ifTrue: [recoveredBlock63PC := 92] ifFalse: [recoveredBlock63PC := 104].
        ].
        recoveredBlock63Step = 92 ifTrue: [
            recoveredBlock63PC := 93.
        ].
        recoveredBlock63Step = 93 ifTrue: [
            recoveredBlock63Stack1 := self.
            recoveredBlock63PC := 94.
        ].
        recoveredBlock63Step = 94 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) getDataGenerator.
            recoveredBlock63PC := 96.
        ].
        recoveredBlock63Step = 96 ifTrue: [
            recoveredBlock63Stack2 := recoveredBlock63Arg1.
            recoveredBlock63PC := 97.
        ].
        recoveredBlock63Step = 97 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) wName.
            recoveredBlock63PC := 99.
        ].
        recoveredBlock63Step = 99 ifTrue: [
            recoveredBlock63Stack2 := (recoveredBlock63Stack2) reversedASDSimLabel.
            recoveredBlock63PC := 101.
        ].
        recoveredBlock63Step = 101 ifTrue: [
            recoveredBlock63Stack3 := recoveredBlock63Arg1.
            recoveredBlock63PC := 102.
        ].
        recoveredBlock63Step = 102 ifTrue: [
            recoveredBlock63Stack1 := (recoveredBlock63Stack1) getOrCreateDataChannel: (recoveredBlock63Stack2) dataElem: (recoveredBlock63Stack3).
            recoveredBlock63PC := 104.
        ].
        recoveredBlock63Step = 104 ifTrue: [
            recoveredBlock63Result := recoveredBlock63Stack1.
            recoveredBlock63Done := true.
        ].
    ].
    recoveredBlock63Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) updateDataPane.
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

"ASDBase.ic method 0x204c89a4; bytecode file offset 0xdc52a4"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
dataOver: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceModel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := XmILLEGAL.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'measureScalar'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'measureCalibrationScalar'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataGeneratorDic.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 77.
        ].
        recoveredBlock70Step = 77 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) key.
            recoveredBlock70PC := 80.
        ].
        recoveredBlock70Step = 80 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) asASDSimLabel.
            recoveredBlock70PC := 82.
        ].
        recoveredBlock70Step = 82 ifTrue: [
            recoveredBlock70Stack3 := recoveredLocal3.
            recoveredBlock70PC := 85.
        ].
        recoveredBlock70Step = 85 ifTrue: [
            recoveredBlock70Stack3 := (recoveredBlock70Stack3) first.
            recoveredBlock70PC := 87.
        ].
        recoveredBlock70Step = 87 ifTrue: [
            recoveredBlock70Stack3 := (recoveredBlock70Stack3) wName.
            recoveredBlock70PC := 89.
        ].
        recoveredBlock70Step = 89 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) = (recoveredBlock70Stack3).
            recoveredBlock70PC := 90.
        ].
        recoveredBlock70Step = 90 ifTrue: [
            (recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 94] ifFalse: [recoveredBlock70PC := 110].
        ].
        recoveredBlock70Step = 94 ifTrue: [
            recoveredBlock70PC := 95.
        ].
        recoveredBlock70Step = 95 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 96.
        ].
        recoveredBlock70Step = 96 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 97.
        ].
        recoveredBlock70Step = 97 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) value.
            recoveredBlock70PC := 99.
        ].
        recoveredBlock70Step = 99 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) isDataGeneratorNode.
            recoveredBlock70PC := 101.
        ].
        recoveredBlock70Step = 101 ifTrue: [
            (recoveredBlock70Stack2) ifTrue: [recoveredBlock70PC := 104] ifFalse: [recoveredBlock70PC := 110].
        ].
        recoveredBlock70Step = 104 ifTrue: [
            recoveredBlock70PC := 105.
        ].
        recoveredBlock70Step = 105 ifTrue: [
            recoveredBlock70Stack1 := true.
            recoveredBlock70PC := 106.
        ].
        recoveredBlock70Step = 106 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Stack1.
            recoveredBlock70PC := 107.
        ].
        recoveredBlock70Step = 107 ifTrue: [
            recoveredLocal1 := recoveredBlock70Stack2.
            recoveredBlock70PC := 110.
        ].
        recoveredBlock70Step = 110 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := XmCOPY.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := XmILLEGAL.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) vote: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d800c; bytecode file offset 0xdd491c"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
retainExistingSignalMappings
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
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
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSignalledChannels.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block28107770Arg1 | 
    | block28107770Value0 block28107770Value1 block28107770Value2 block28107770Value3 block28107770Value4 |
    block28107770Value0 := block28107770Arg1.
    block28107770Value1 := (block28107770Value0) matrixID.
    block28107770Value2 := block28107770Arg1.
    block28107770Value3 := (block28107770Value2) undefinedSignal.
    block28107770Value4 := (block28107770Value1) ~= (block28107770Value3).
    block28107770Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'The foll. channels with signalled mode are mapped to the current signal:'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformLineDelimiter.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 :recoveredBlock68Arg2 | 
    | recoveredBlock68Local1 recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 recoveredBlock68Value5 recoveredBlock68Value6 recoveredBlock68Value7 recoveredBlock68Value8 recoveredBlock68Value9 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) copyReplaceAll: ('\') with: ('\\').
    recoveredBlock68Local1 := recoveredBlock68Value1.
    recoveredBlock68Value2 := recoveredLocal1.
    recoveredBlock68Value3 := recoveredBlock68Local1.
    recoveredBlock68Value4 := (recoveredBlock68Value2) , (recoveredBlock68Value3).
    recoveredLocal1 := recoveredBlock68Value4.
    recoveredBlock68Value5 := recoveredLocal1.
    recoveredBlock68Value6 := String.
    recoveredBlock68Value7 := (recoveredBlock68Value6) platformLineDelimiter.
    recoveredBlock68Value8 := (recoveredBlock68Value5) , (recoveredBlock68Value7).
    recoveredBlock68Value9 := recoveredBlock68Value8.
    recoveredLocal1 := recoveredBlock68Value9.
    recoveredBlock68Value8
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformLineDelimiter.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'Do you want to retain the mappings?'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) yesNoCancel.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e6748; bytecode file offset 0xde3070"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
checkForExistingSignal
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_15158'.
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
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSignalledChannels.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:block28108cacArg1 | 
    | block28108cacValue0 block28108cacValue1 block28108cacValue2 block28108cacValue3 block28108cacValue4 |
    block28108cacValue0 := block28108cacArg1.
    block28108cacValue1 := (block28108cacValue0) matrixID.
    block28108cacValue2 := block28108cacArg1.
    block28108cacValue3 := (block28108cacValue2) undefinedSignal.
    block28108cacValue4 := (block28108cacValue1) ~= (block28108cacValue3).
    block28108cacValue4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'The foll. channels with signalled mode mapped to the current signal will get undefined:'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformLineDelimiter.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 :recoveredBlock68Arg2 | 
    | recoveredBlock68Local1 recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 recoveredBlock68Value4 recoveredBlock68Value5 recoveredBlock68Value6 recoveredBlock68Value7 recoveredBlock68Value8 recoveredBlock68Value9 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) copyReplaceAll: ('\') with: ('\\').
    recoveredBlock68Local1 := recoveredBlock68Value1.
    recoveredBlock68Value2 := recoveredLocal1.
    recoveredBlock68Value3 := recoveredBlock68Local1.
    recoveredBlock68Value4 := (recoveredBlock68Value2) , (recoveredBlock68Value3).
    recoveredLocal1 := recoveredBlock68Value4.
    recoveredBlock68Value5 := recoveredLocal1.
    recoveredBlock68Value6 := String.
    recoveredBlock68Value7 := (recoveredBlock68Value6) platformLineDelimiter.
    recoveredBlock68Value8 := (recoveredBlock68Value5) , (recoveredBlock68Value7).
    recoveredBlock68Value9 := recoveredBlock68Value8.
    recoveredLocal1 := recoveredBlock68Value9.
    recoveredBlock68Value8
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) platformLineDelimiter.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := 'Continue anyway?'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := EtasUserQuestion.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'RemoveSignal'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) prompterID: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'OKCANCEL'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) buttonStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'question'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052f7f4; bytecode file offset 0xe2c158"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDefineSignal
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_2001401391'.
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
            recoveredStack0 := (recoveredStack0) retainExistingSignalMappings.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastSelectedSignalFolder.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:block2810d3b0Arg1 | 
    nil
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := EtasDatabaseDialog.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := EtasDatabaseWidgetOptions.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDefault.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) storeSortedItems: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithOptions: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) lastSelectedItem: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := SGLibrarySignal.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) maskClassForLibs: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'Select a Signal Item'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) dialogTitle: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := [:block2810d3d4Arg1 | 
    nil
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentIfUndefined: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 |
    recoveredBlock94Value0 := (self) class.
    recoveredBlock94Value1 := recoveredBlock94Arg1.
    recoveredBlock94Value2 := (recoveredBlock94Value1) asRBDBReference.
    recoveredBlock94Value3 := (recoveredBlock94Value0) lastSelectedSignalFolder: (recoveredBlock94Value2).
    recoveredBlock94Value3
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasData.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'Signal: '.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := ' has no data defined!! Please edit signal data?'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := SGStimulusView.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) promptFor: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasData.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 165] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := 'Signal: '.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := ' has no data defined!!'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) closeSignal.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) signal: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'EHI_2001401391'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 191] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) updateSignals.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) updateMenuBar.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) updateLabelSignalItem.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) updateDataPane.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053d930; bytecode file offset 0xe3a260"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
createDataSourceMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_2008400346'.
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
            recoveredStack1 := CwMenu.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := '~Signal'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'menuDefineSignal'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := '~Define Signal...'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := uiController.
    recoveredBlock25Value1 := (recoveredBlock25Value0) mainController.
    recoveredBlock25Value2 := (recoveredBlock25Value1) isSimOff.
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStimuliMatrix.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'menuRemoveSignal'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'Remo~ve Signal'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 |
    recoveredBlock53Value0 := uiController.
    recoveredBlock53Value1 := (recoveredBlock53Value0) mainController.
    recoveredBlock53Value2 := (recoveredBlock53Value1) isSimOff.
    recoveredBlock53Value2
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) addLine.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'menuDataRepeat'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := '~Repeat Mode'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 |
    recoveredBlock78Value0 := uiController.
    recoveredBlock78Value1 := (recoveredBlock78Value0) mainController.
    recoveredBlock78Value2 := (recoveredBlock78Value1) isSimOff.
    recoveredBlock78Value2
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock91Value0 recoveredBlock91Value1 |
    recoveredBlock91Value0 := (self) getDataGenerator.
    recoveredBlock91Value1 := (recoveredBlock91Value0) isRepeat.
    recoveredBlock91Value1
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'menuDataInterpolate'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := '~Interpolate'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 |
    recoveredBlock111Value0 := uiController.
    recoveredBlock111Value1 := (recoveredBlock111Value0) mainController.
    recoveredBlock111Value2 := (recoveredBlock111Value1) isSimOff.
    recoveredBlock111Value2
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock125Value0 recoveredBlock125Value1 |
    recoveredBlock125Value0 := (self) getDataGenerator.
    recoveredBlock125Value1 := (recoveredBlock125Value0) isInterpolate.
    recoveredBlock125Value1
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 'menuDataIgnoreTimestampOffset'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := 'Ignore ~Timestamp Offset'.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 |
    recoveredBlock145Value0 := uiController.
    recoveredBlock145Value1 := (recoveredBlock145Value0) mainController.
    recoveredBlock145Value2 := (recoveredBlock145Value1) isSimOff.
    recoveredBlock145Value2
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock159Value0 recoveredBlock159Value1 |
    recoveredBlock159Value0 := (self) getDataGenerator.
    recoveredBlock159Value1 := (recoveredBlock159Value0) isIgnoreTimestampOffset.
    recoveredBlock159Value1
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) addLine.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'menuDataMap'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := '~Map Same Names'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock182Stack0 recoveredBlock182Stack1 recoveredBlock182Stack2 recoveredBlock182Stack3 recoveredBlock182PC recoveredBlock182Step recoveredBlock182Done recoveredBlock182Result |
    recoveredBlock182Stack0 := self.
    recoveredBlock182PC := 188.
    recoveredBlock182Done := false.
    [recoveredBlock182Done not] whileTrue: [
        recoveredBlock182Step := recoveredBlock182PC.
        recoveredBlock182Step = 188 ifTrue: [
            recoveredBlock182Stack1 := false.
            recoveredBlock182PC := 189.
        ].
        recoveredBlock182Step = 189 ifTrue: [
            recoveredBlock182Stack2 := uiController.
            recoveredBlock182PC := 191.
        ].
        recoveredBlock182Step = 191 ifTrue: [
            recoveredBlock182Stack2 := (recoveredBlock182Stack2) mainController.
            recoveredBlock182PC := 193.
        ].
        recoveredBlock182Step = 193 ifTrue: [
            recoveredBlock182Stack2 := (recoveredBlock182Stack2) isSimOff.
            recoveredBlock182PC := 195.
        ].
        recoveredBlock182Step = 195 ifTrue: [
            (recoveredBlock182Stack2) ifTrue: [recoveredBlock182PC := 198] ifFalse: [recoveredBlock182PC := 205].
        ].
        recoveredBlock182Step = 198 ifTrue: [
            recoveredBlock182PC := 199.
        ].
        recoveredBlock182Step = 199 ifTrue: [
            recoveredBlock182Stack1 := uiController.
            recoveredBlock182PC := 201.
        ].
        recoveredBlock182Step = 201 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) matrixChannels.
            recoveredBlock182PC := 203.
        ].
        recoveredBlock182Step = 203 ifTrue: [
            recoveredBlock182Stack1 := (recoveredBlock182Stack1) notEmpty.
            recoveredBlock182PC := 205.
        ].
        recoveredBlock182Step = 205 ifTrue: [
            recoveredBlock182Result := recoveredBlock182Stack1.
            recoveredBlock182Done := true.
        ].
    ].
    recoveredBlock182Result
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058a1d0; bytecode file offset 0xe86afc"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuDataMap
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'EHI_2001401391'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataGenerator.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) signal.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'No signal Defined'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileObject.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupCnt.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileObject.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) groupCnt.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileObject.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemFiles.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) nameTable.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 74] ifFalse: [recoveredPC := 125]] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) nameTable.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) reversedASDSimLabel.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileName.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 158] ifFalse: [recoveredPC := 213]] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataChannels.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := [:recoveredBlock218Arg1 | 
    | recoveredBlock218Stack0 recoveredBlock218Stack1 recoveredBlock218Stack2 recoveredBlock218Stack3 recoveredBlock218Stack4 recoveredBlock218PC recoveredBlock218Step recoveredBlock218Done recoveredBlock218Result |
    recoveredBlock218Stack0 := self.
    recoveredBlock218PC := 224.
    recoveredBlock218Done := false.
    [recoveredBlock218Done not] whileTrue: [
        recoveredBlock218Step := recoveredBlock218PC.
        recoveredBlock218Step = 224 ifTrue: [
            recoveredBlock218Stack1 := recoveredLocal5.
            recoveredBlock218PC := 227.
        ].
        recoveredBlock218Step = 227 ifTrue: [
            recoveredBlock218Stack2 := recoveredBlock218Arg1.
            recoveredBlock218PC := 228.
        ].
        recoveredBlock218Step = 228 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) key.
            recoveredBlock218PC := 230.
        ].
        recoveredBlock218Step = 230 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) fileName.
            recoveredBlock218PC := 232.
        ].
        recoveredBlock218Step = 232 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) indexOf: (recoveredBlock218Stack2).
            recoveredBlock218PC := 234.
        ].
        recoveredBlock218Step = 234 ifTrue: [
            recoveredLocal4 := recoveredBlock218Stack1.
            recoveredBlock218PC := 237.
        ].
        recoveredBlock218Step = 237 ifTrue: [
            recoveredBlock218Stack1 := nil.
            recoveredBlock218PC := 238.
        ].
        recoveredBlock218Step = 238 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal4.
            recoveredBlock218PC := 241.
        ].
        recoveredBlock218Step = 241 ifTrue: [
            recoveredBlock218Stack3 := 0.
            recoveredBlock218PC := 243.
        ].
        recoveredBlock218Step = 243 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) > (recoveredBlock218Stack3).
            recoveredBlock218PC := 244.
        ].
        recoveredBlock218Step = 244 ifTrue: [
            (recoveredBlock218Stack2) ifTrue: [recoveredBlock218PC := 248] ifFalse: [recoveredBlock218PC := 262].
        ].
        recoveredBlock218Step = 248 ifTrue: [
            recoveredBlock218PC := 249.
        ].
        recoveredBlock218Step = 249 ifTrue: [
            recoveredBlock218Stack1 := recoveredBlock218Arg1.
            recoveredBlock218PC := 250.
        ].
        recoveredBlock218Step = 250 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) value.
            recoveredBlock218PC := 252.
        ].
        recoveredBlock218Step = 252 ifTrue: [
            recoveredBlock218Stack2 := recoveredLocal6.
            recoveredBlock218PC := 255.
        ].
        recoveredBlock218Step = 255 ifTrue: [
            recoveredBlock218Stack3 := recoveredLocal4.
            recoveredBlock218PC := 258.
        ].
        recoveredBlock218Step = 258 ifTrue: [
            recoveredBlock218Stack2 := (recoveredBlock218Stack2) at: (recoveredBlock218Stack3).
            recoveredBlock218PC := 260.
        ].
        recoveredBlock218Step = 260 ifTrue: [
            recoveredBlock218Stack1 := (recoveredBlock218Stack1) matrixID: (recoveredBlock218Stack2).
            recoveredBlock218PC := 262.
        ].
        recoveredBlock218Step = 262 ifTrue: [
            recoveredBlock218Result := recoveredBlock218Stack1.
            recoveredBlock218Done := true.
        ].
    ].
    recoveredBlock218Result
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) updateDataPane.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059d2c4; bytecode file offset 0xe99c08"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
menuChannelsCreate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataGeneratorDic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataChannels.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredLocal5.
    recoveredBlock29Value1 := [:recoveredBlock29Block39Arg1 | 
    | recoveredBlock29Block39Stack0 recoveredBlock29Block39Stack1 recoveredBlock29Block39Stack2 recoveredBlock29Block39Stack3 recoveredBlock29Block39Stack4 recoveredBlock29Block39PC recoveredBlock29Block39Step recoveredBlock29Block39Done recoveredBlock29Block39Result |
    recoveredBlock29Block39Stack0 := nil.
    recoveredBlock29Block39PC := 46.
    recoveredBlock29Block39Done := false.
    [recoveredBlock29Block39Done not] whileTrue: [
        recoveredBlock29Block39Step := recoveredBlock29Block39PC.
        recoveredBlock29Block39Step = 46 ifTrue: [
            recoveredBlock29Block39Stack1 := nil.
            recoveredBlock29Block39PC := 47.
        ].
        recoveredBlock29Block39Step = 47 ifTrue: [
            recoveredBlock29Block39Stack2 := recoveredBlock29Block39Arg1.
            recoveredBlock29Block39PC := 48.
        ].
        recoveredBlock29Block39Step = 48 ifTrue: [
            recoveredBlock29Block39Stack2 := (recoveredBlock29Block39Stack2) key.
            recoveredBlock29Block39PC := 50.
        ].
        recoveredBlock29Block39Step = 50 ifTrue: [
            recoveredBlock29Block39Stack3 := recoveredBlock29Arg1.
            recoveredBlock29Block39PC := 53.
        ].
        recoveredBlock29Block39Step = 53 ifTrue: [
            recoveredBlock29Block39Stack2 := (recoveredBlock29Block39Stack2) = (recoveredBlock29Block39Stack3).
            recoveredBlock29Block39PC := 54.
        ].
        recoveredBlock29Block39Step = 54 ifTrue: [
            (recoveredBlock29Block39Stack2) ifTrue: [recoveredBlock29Block39PC := 58] ifFalse: [recoveredBlock29Block39PC := 67].
        ].
        recoveredBlock29Block39Step = 58 ifTrue: [
            recoveredBlock29Block39PC := 59.
        ].
        recoveredBlock29Block39Step = 59 ifTrue: [
            recoveredBlock29Block39Stack1 := recoveredLocal4.
            recoveredBlock29Block39PC := 62.
        ].
        recoveredBlock29Block39Step = 62 ifTrue: [
            recoveredBlock29Block39Stack2 := recoveredBlock29Block39Arg1.
            recoveredBlock29Block39PC := 63.
        ].
        recoveredBlock29Block39Step = 63 ifTrue: [
            recoveredBlock29Block39Stack3 := [].
            recoveredBlock29Block39PC := 65.
        ].
        recoveredBlock29Block39Step = 65 ifTrue: [
            recoveredBlock29Block39Stack1 := (recoveredBlock29Block39Stack1) remove: (recoveredBlock29Block39Stack2) ifAbsent: (recoveredBlock29Block39Stack3).
            recoveredBlock29Block39PC := 67.
        ].
        recoveredBlock29Block39Step = 67 ifTrue: [
            recoveredBlock29Block39Result := recoveredBlock29Block39Stack1.
            recoveredBlock29Block39Done := true.
        ].
    ].
    recoveredBlock29Block39Result
].
    recoveredBlock29Value2 := (recoveredBlock29Value0) do: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := SGListPrompterFilterParameter.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) allItems: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) selectionPolicy: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := 'Select Element(s) to create a new channel:'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack2) messageString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 'Elements'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) labelString: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := 'Create Data Generator Channel'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := [:block281152f4Arg1 | 
    | block281152f4Value0 block281152f4Value1 |
    block281152f4Value0 := block281152f4Arg1.
    block281152f4Value1 := (block281152f4Value0) key.
    block281152f4Value1
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) printBlock: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 288] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 |
    recoveredBlock129Value0 := uiController.
    recoveredBlock129Value1 := recoveredBlock129Arg1.
    recoveredBlock129Value2 := (recoveredBlock129Value0) createDataChannel: (recoveredBlock129Value1).
    recoveredBlock129Value2
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) updateDataPane.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := 'Hw'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'Call_68780'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDataChannels.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1) deselectAllItems.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Local1 recoveredBlock161Stack0 recoveredBlock161Stack1 recoveredBlock161Stack2 recoveredBlock161Stack3 recoveredBlock161Stack4 recoveredBlock161Stack5 recoveredBlock161PC recoveredBlock161Step recoveredBlock161Done recoveredBlock161Result |
    recoveredBlock161Stack0 := self.
    recoveredBlock161PC := 168.
    recoveredBlock161Done := false.
    [recoveredBlock161Done not] whileTrue: [
        recoveredBlock161Step := recoveredBlock161PC.
        recoveredBlock161Step = 168 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 169.
        ].
        recoveredBlock161Step = 169 ifTrue: [
            recoveredBlock161Stack2 := self.
            recoveredBlock161PC := 170.
        ].
        recoveredBlock161Step = 170 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) widgetDataChannels.
            recoveredBlock161PC := 172.
        ].
        recoveredBlock161Step = 172 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) items.
            recoveredBlock161PC := 174.
        ].
        recoveredBlock161Step = 174 ifTrue: [
            recoveredBlock161Stack3 := [:recoveredBlock161Block174Arg1 | 
    | recoveredBlock161Block174Value0 recoveredBlock161Block174Value1 recoveredBlock161Block174Value2 recoveredBlock161Block174Value3 recoveredBlock161Block174Value4 |
    recoveredBlock161Block174Value0 := recoveredBlock161Arg1.
    recoveredBlock161Block174Value1 := (recoveredBlock161Block174Value0) key.
    recoveredBlock161Block174Value2 := recoveredBlock161Block174Arg1.
    recoveredBlock161Block174Value3 := (recoveredBlock161Block174Value2) key.
    recoveredBlock161Block174Value4 := (recoveredBlock161Block174Value1) equals: (recoveredBlock161Block174Value3).
    recoveredBlock161Block174Value4
].
            recoveredBlock161PC := 191.
        ].
        recoveredBlock161Step = 191 ifTrue: [
            recoveredBlock161Stack4 := [].
            recoveredBlock161PC := 193.
        ].
        recoveredBlock161Step = 193 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) detect: (recoveredBlock161Stack3) ifNone: (recoveredBlock161Stack4).
            recoveredBlock161PC := 195.
        ].
        recoveredBlock161Step = 195 ifTrue: [
            recoveredBlock161Stack3 := recoveredBlock161Stack2.
            recoveredBlock161PC := 196.
        ].
        recoveredBlock161Step = 196 ifTrue: [
            recoveredBlock161Local1 := recoveredBlock161Stack3.
            recoveredBlock161PC := 199.
        ].
        recoveredBlock161Step = 199 ifTrue: [
            (recoveredBlock161Stack2 == nil) ifTrue: [recoveredBlock161PC := 212] ifFalse: [recoveredBlock161PC := 202].
        ].
        recoveredBlock161Step = 202 ifTrue: [
            recoveredBlock161PC := 203.
        ].
        recoveredBlock161Step = 203 ifTrue: [
            recoveredBlock161Stack1 := self.
            recoveredBlock161PC := 204.
        ].
        recoveredBlock161Step = 204 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) widgetDataChannels.
            recoveredBlock161PC := 206.
        ].
        recoveredBlock161Step = 206 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Local1.
            recoveredBlock161PC := 209.
        ].
        recoveredBlock161Step = 209 ifTrue: [
            recoveredBlock161Stack3 := true.
            recoveredBlock161PC := 210.
        ].
        recoveredBlock161Step = 210 ifTrue: [
            recoveredBlock161Stack1 := (recoveredBlock161Stack1) selectItem: (recoveredBlock161Stack2) notify: (recoveredBlock161Stack3).
            recoveredBlock161PC := 212.
        ].
        recoveredBlock161Step = 212 ifTrue: [
            recoveredBlock161Result := recoveredBlock161Stack1.
            recoveredBlock161Done := true.
        ].
    ].
    recoveredBlock161Result
].
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := 'Hw'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'Call_68780'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDataChannels.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 236] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDataChannels.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Value0 recoveredBlock241Value1 recoveredBlock241Value2 recoveredBlock241Value3 recoveredBlock241Value4 recoveredBlock241Value5 |
    recoveredBlock241Value0 := recoveredBlock241Arg1.
    recoveredBlock241Value1 := (recoveredBlock241Value0) key.
    recoveredBlock241Value2 := recoveredLocal2.
    recoveredBlock241Value3 := (recoveredBlock241Value2) first.
    recoveredBlock241Value4 := (recoveredBlock241Value3) key.
    recoveredBlock241Value5 := (recoveredBlock241Value1) equals: (recoveredBlock241Value4).
    recoveredBlock241Value5
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 284] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetDataChannels.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) selectItem: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) menuDataChannelsEdit.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20632818; bytecode file offset 0xf2f1e0"
!SGSimDataGeneratorWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal8 := recoveredStack1.
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
    (recoveredBlock24Value1) title: ('Data Generator').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := recoveredLocal8.
    recoveredBlock24Value4 := (256) * (recoveredBlock24Value3).
    recoveredBlock24Value5 := (recoveredBlock24Value4) rounded.
    (recoveredBlock24Value2) height: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredLocal9.
    recoveredBlock24Value7 := (416) * (recoveredBlock24Value6).
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
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal7.
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal6.
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
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'labelElements'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := [:recoveredBlock127Arg1 | 
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 recoveredBlock127Value8 recoveredBlock127Value9 recoveredBlock127Value10 recoveredBlock127Value11 recoveredBlock127Value12 recoveredBlock127Value13 recoveredBlock127Value14 recoveredBlock127Value15 recoveredBlock127Value16 recoveredBlock127Value17 recoveredBlock127Value18 recoveredBlock127Value19 recoveredBlock127Value20 recoveredBlock127Value21 recoveredBlock127Value22 recoveredBlock127Value23 |
    recoveredBlock127Value0 := recoveredBlock127Arg1.
    recoveredBlock127Value1 := recoveredBlock127Value0.
    recoveredBlock127Value2 := recoveredLocal9.
    recoveredBlock127Value3 := (5) * (recoveredBlock127Value2).
    recoveredBlock127Value4 := (recoveredBlock127Value3) rounded.
    (recoveredBlock127Value1) x: (recoveredBlock127Value4).
    recoveredBlock127Value5 := recoveredBlock127Value0.
    recoveredBlock127Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock127Value5) alignment: (recoveredBlock127Value6).
    recoveredBlock127Value7 := recoveredBlock127Value0.
    (recoveredBlock127Value7) labelString: ('Data Elements').
    recoveredBlock127Value8 := recoveredBlock127Value0.
    (recoveredBlock127Value8) marginWidth: (0).
    recoveredBlock127Value9 := recoveredBlock127Value0.
    (recoveredBlock127Value9) marginHeight: (0).
    recoveredBlock127Value10 := recoveredBlock127Value0.
    recoveredBlock127Value11 := recoveredLocal8.
    recoveredBlock127Value12 := (3) * (recoveredBlock127Value11).
    recoveredBlock127Value13 := (recoveredBlock127Value12) rounded.
    (recoveredBlock127Value10) y: (recoveredBlock127Value13).
    recoveredBlock127Value14 := recoveredBlock127Value0.
    recoveredBlock127Value15 := recoveredLocal8.
    recoveredBlock127Value16 := (22) * (recoveredBlock127Value15).
    recoveredBlock127Value17 := (recoveredBlock127Value16) rounded.
    (recoveredBlock127Value14) height: (recoveredBlock127Value17).
    recoveredBlock127Value18 := recoveredBlock127Value0.
    recoveredBlock127Value19 := recoveredLocal9.
    recoveredBlock127Value20 := (110) * (recoveredBlock127Value19).
    recoveredBlock127Value21 := (recoveredBlock127Value20) rounded.
    (recoveredBlock127Value18) width: (recoveredBlock127Value21).
    recoveredBlock127Value22 := recoveredBlock127Value0.
    recoveredBlock127Value23 := (self) defaultLabelBlue.
    (recoveredBlock127Value22) foregroundColor: (recoveredBlock127Value23).
    recoveredBlock127Value0
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack2 := 'labelElements'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := 'dataChannels'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := [:block28120400Arg1 | 
    | block28120400Value0 block28120400Value1 block28120400Value2 block28120400Value3 |
    block28120400Value0 := block28120400Arg1.
    block28120400Value1 := block28120400Value0.
    block28120400Value2 := XmEXTENDEDSELECT.
    (block28120400Value1) selectionPolicy: (block28120400Value2).
    block28120400Value3 := (block28120400Value0) itemHeight: (17).
    block28120400Value3
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasScrolledIconTree: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := 'aScrolledIconTree1'.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := 'dataChannels'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredLocal2.
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
            recoveredStack2 := 'labelSignalItem'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := [:recoveredBlock285Arg1 | 
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 recoveredBlock285Value3 recoveredBlock285Value4 recoveredBlock285Value5 recoveredBlock285Value6 recoveredBlock285Value7 recoveredBlock285Value8 recoveredBlock285Value9 recoveredBlock285Value10 recoveredBlock285Value11 recoveredBlock285Value12 recoveredBlock285Value13 recoveredBlock285Value14 recoveredBlock285Value15 recoveredBlock285Value16 recoveredBlock285Value17 recoveredBlock285Value18 recoveredBlock285Value19 recoveredBlock285Value20 recoveredBlock285Value21 recoveredBlock285Value22 recoveredBlock285Value23 |
    recoveredBlock285Value0 := recoveredBlock285Arg1.
    recoveredBlock285Value1 := recoveredBlock285Value0.
    recoveredBlock285Value2 := recoveredLocal9.
    recoveredBlock285Value3 := (5) * (recoveredBlock285Value2).
    recoveredBlock285Value4 := (recoveredBlock285Value3) rounded.
    (recoveredBlock285Value1) x: (recoveredBlock285Value4).
    recoveredBlock285Value5 := recoveredBlock285Value0.
    recoveredBlock285Value6 := XmALIGNMENTBEGINNING.
    (recoveredBlock285Value5) alignment: (recoveredBlock285Value6).
    recoveredBlock285Value7 := recoveredBlock285Value0.
    (recoveredBlock285Value7) labelString: ('Signal Item: not defined').
    recoveredBlock285Value8 := recoveredBlock285Value0.
    (recoveredBlock285Value8) marginWidth: (0).
    recoveredBlock285Value9 := recoveredBlock285Value0.
    (recoveredBlock285Value9) marginHeight: (0).
    recoveredBlock285Value10 := recoveredBlock285Value0.
    recoveredBlock285Value11 := recoveredLocal8.
    recoveredBlock285Value12 := (239) * (recoveredBlock285Value11).
    recoveredBlock285Value13 := (recoveredBlock285Value12) rounded.
    (recoveredBlock285Value10) y: (recoveredBlock285Value13).
    recoveredBlock285Value14 := recoveredBlock285Value0.
    recoveredBlock285Value15 := recoveredLocal8.
    recoveredBlock285Value16 := (17) * (recoveredBlock285Value15).
    recoveredBlock285Value17 := (recoveredBlock285Value16) rounded.
    (recoveredBlock285Value14) height: (recoveredBlock285Value17).
    recoveredBlock285Value18 := recoveredBlock285Value0.
    recoveredBlock285Value19 := recoveredLocal9.
    recoveredBlock285Value20 := (110) * (recoveredBlock285Value19).
    recoveredBlock285Value21 := (recoveredBlock285Value20) rounded.
    (recoveredBlock285Value18) width: (recoveredBlock285Value21).
    recoveredBlock285Value22 := recoveredBlock285Value0.
    recoveredBlock285Value23 := (self) defaultLabelBlue.
    (recoveredBlock285Value22) foregroundColor: (recoveredBlock285Value23).
    recoveredBlock285Value0
].
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'labelSignalItem'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack2 := [:recoveredBlock387Arg1 | 
    | recoveredBlock387Value0 recoveredBlock387Value1 recoveredBlock387Value2 |
    recoveredBlock387Value0 := recoveredBlock387Arg1.
    recoveredBlock387Value1 := recoveredLocal5.
    recoveredBlock387Value2 := (recoveredBlock387Value0) workWindow: (recoveredBlock387Value1).
    recoveredBlock387Value2
].
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := [:block28120424Arg1 | 
    | block28120424Value0 block28120424Value1 block28120424Value2 block28120424Value3 |
    block28120424Value0 := block28120424Arg1.
    block28120424Value1 := block28120424Value0.
    block28120424Value2 := XmATTACHFORM.
    (block28120424Value1) leftAttachment: (block28120424Value2).
    block28120424Value3 := (block28120424Value0) leftOffset: (5).
    block28120424Value3
].
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := [:recoveredBlock428Arg1 | 
    | recoveredBlock428Value0 recoveredBlock428Value1 recoveredBlock428Value2 recoveredBlock428Value3 recoveredBlock428Value4 recoveredBlock428Value5 recoveredBlock428Value6 recoveredBlock428Value7 recoveredBlock428Value8 recoveredBlock428Value9 recoveredBlock428Value10 recoveredBlock428Value11 recoveredBlock428Value12 recoveredBlock428Value13 recoveredBlock428Value14 recoveredBlock428Value15 recoveredBlock428Value16 recoveredBlock428Value17 recoveredBlock428Value18 recoveredBlock428Value19 recoveredBlock428Value20 recoveredBlock428Value21 recoveredBlock428Value22 recoveredBlock428Value23 recoveredBlock428Value24 recoveredBlock428Value25 recoveredBlock428Value26 recoveredBlock428Value27 recoveredBlock428Value28 recoveredBlock428Value29 recoveredBlock428Value30 recoveredBlock428Value31 |
    recoveredBlock428Value0 := recoveredBlock428Arg1.
    recoveredBlock428Value1 := recoveredBlock428Value0.
    recoveredBlock428Value2 := XmATTACHFORM.
    (recoveredBlock428Value1) bottomAttachment: (recoveredBlock428Value2).
    recoveredBlock428Value3 := recoveredBlock428Value0.
    (recoveredBlock428Value3) bottomOffset: (20).
    recoveredBlock428Value4 := recoveredBlock428Value0.
    recoveredBlock428Value5 := XmATTACHWIDGET.
    (recoveredBlock428Value4) topAttachment: (recoveredBlock428Value5).
    recoveredBlock428Value6 := recoveredBlock428Value0.
    recoveredBlock428Value7 := recoveredLocal4.
    (recoveredBlock428Value6) topWidget: (recoveredBlock428Value7).
    recoveredBlock428Value8 := recoveredBlock428Value0.
    recoveredBlock428Value9 := XmATTACHFORM.
    (recoveredBlock428Value8) leftAttachment: (recoveredBlock428Value9).
    recoveredBlock428Value10 := recoveredBlock428Value0.
    (recoveredBlock428Value10) leftOffset: (5).
    recoveredBlock428Value11 := recoveredBlock428Value0.
    recoveredBlock428Value12 := XmATTACHFORM.
    (recoveredBlock428Value11) rightAttachment: (recoveredBlock428Value12).
    recoveredBlock428Value13 := recoveredBlock428Value0.
    (recoveredBlock428Value13) rightOffset: (5).
    recoveredBlock428Value14 := recoveredBlock428Value0.
    recoveredBlock428Value15 := recoveredLocal9.
    recoveredBlock428Value16 := (5) * (recoveredBlock428Value15).
    recoveredBlock428Value17 := (recoveredBlock428Value16) rounded.
    (recoveredBlock428Value14) x: (recoveredBlock428Value17).
    recoveredBlock428Value18 := recoveredBlock428Value0.
    recoveredBlock428Value19 := recoveredLocal8.
    recoveredBlock428Value20 := (25) * (recoveredBlock428Value19).
    recoveredBlock428Value21 := (recoveredBlock428Value20) rounded.
    (recoveredBlock428Value18) y: (recoveredBlock428Value21).
    recoveredBlock428Value22 := recoveredBlock428Value0.
    recoveredBlock428Value23 := XmASNEEDED.
    (recoveredBlock428Value22) scrollBarDisplayPolicy: (recoveredBlock428Value23).
    recoveredBlock428Value24 := recoveredBlock428Value0.
    recoveredBlock428Value25 := recoveredLocal8.
    recoveredBlock428Value26 := (263) * (recoveredBlock428Value25).
    recoveredBlock428Value27 := (recoveredBlock428Value26) rounded.
    (recoveredBlock428Value24) height: (recoveredBlock428Value27).
    recoveredBlock428Value28 := recoveredLocal9.
    recoveredBlock428Value29 := (410) * (recoveredBlock428Value28).
    recoveredBlock428Value30 := (recoveredBlock428Value29) rounded.
    recoveredBlock428Value31 := (recoveredBlock428Value0) width: (recoveredBlock428Value30).
    recoveredBlock428Value31
].
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack2 := [:block28120448Arg1 | 
    | block28120448Value0 block28120448Value1 block28120448Value2 block28120448Value3 block28120448Value4 block28120448Value5 block28120448Value6 block28120448Value7 block28120448Value8 block28120448Value9 block28120448Value10 block28120448Value11 |
    block28120448Value0 := block28120448Arg1.
    block28120448Value1 := block28120448Value0.
    block28120448Value2 := XmATTACHFORM.
    (block28120448Value1) bottomAttachment: (block28120448Value2).
    block28120448Value3 := block28120448Value0.
    (block28120448Value3) bottomOffset: (-5).
    block28120448Value4 := block28120448Value0.
    block28120448Value5 := XmATTACHOPPOSITEFORM.
    (block28120448Value4) topAttachment: (block28120448Value5).
    block28120448Value6 := block28120448Value0.
    (block28120448Value6) topOffset: (-20).
    block28120448Value7 := block28120448Value0.
    block28120448Value8 := XmATTACHFORM.
    (block28120448Value7) leftAttachment: (block28120448Value8).
    block28120448Value9 := block28120448Value0.
    (block28120448Value9) leftOffset: (5).
    block28120448Value10 := XmATTACHFORM.
    block28120448Value11 := (block28120448Value0) rightAttachment: (block28120448Value10).
    block28120448Value11
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack4 := 'dataChannelsVisual:clientData:callData:'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack4 := 'dataChannelsDefault:clientData:callData:'.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

