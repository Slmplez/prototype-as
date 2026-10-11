"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042a2c; bytecode file offset 0x9451f8"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtonList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('availableButtonList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e8c; bytecode file offset 0x9451f8"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtonList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('visibleButtonList').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dba0; bytecode file offset 0x96a9dc"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtons
    | recoveredValue0 |
    recoveredValue0 := availableButtons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e47c; bytecode file offset 0x96af48"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtons
    | recoveredValue0 |
    recoveredValue0 := visibleButtons.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200942b8; bytecode file offset 0x990b6c"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtons: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    availableButtons := recoveredValue0.
    recoveredValue1 := availableButtons.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200942cc; bytecode file offset 0x990b80"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtons: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    visibleButtons := recoveredValue0.
    recoveredValue1 := visibleButtons.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200aeb74; bytecode file offset 0x9ab448"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
removeButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) visibleButtonList.
    recoveredValue1 := (recoveredValue0) selectedItemIndexes.
    (self) removeButtons: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aeb88; bytecode file offset 0x9ab448"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
addButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) availableButtonList.
    recoveredValue1 := (recoveredValue0) selectedItems.
    (self) addButtons: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d63c4; bytecode file offset 0x9d3134"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x2013a348; bytecode file offset 0xa36c64"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtonColumns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createAvailableButtonColumnType.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createAvailableButtonColumnDescription.
    (recoveredValue4) add: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2013a364; bytecode file offset 0xa36c64"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtonColumns
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) createVisibleButtonColumnType.
    (recoveredValue2) add: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) createVisibleButtonColumnDescription.
    (recoveredValue4) add: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20197f20; bytecode file offset 0xa947f0"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtonListCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleButtonList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemPosition.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) removeButtons: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ea854; bytecode file offset 0xae7128"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtonListCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtonList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) availableButtonList.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) items.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) itemPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) addButtons: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20290de0; bytecode file offset 0xb8d728"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
createAvailableButtonColumnType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Icon').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (20).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('availableButtonColumnTypeValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20290e14; bytecode file offset 0xb8d728"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
createVisibleButtonColumnType
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Icon').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (20).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('visibleButtonColumnTypeValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202a3544; bytecode file offset 0xb9fe8c"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
createAvailableButtonColumnDescription
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Button').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (400).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('availableButtonColumnDescriptionValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202a35ac; bytecode file offset 0xb9fe8c"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
createVisibleButtonColumnDescription
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) heading: ('Button').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) editable: (false).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) verticalSeparatorThickness: (1).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) resizable: (true).
    recoveredValue6 := recoveredValue1.
    (recoveredValue6) width: (400).
    recoveredLocal1 := recoveredValue1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := XmNcellValueCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('visibleButtonColumnDescriptionValueCallback:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202e7ab8; bytecode file offset 0xbe43a0"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtonColumnDescriptionValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleButtonList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentWindow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredToolbarItems.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasDescriptionForConfigDialog.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) descriptionForConfigDialog.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) tooltip.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20309354; bytecode file offset 0xc05c38"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtonColumnDescriptionValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtonList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentWindow.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredToolbarItems.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtonList.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) itemPosition.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasDescriptionForConfigDialog.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) descriptionForConfigDialog.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) tooltip.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20313eb0; bytecode file offset 0xc10784"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
initButtonLists
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) availableButtonList.
    recoveredValue1 := (self) availableButtons.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := 'Separator'.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) = (recoveredBlock7Stack3).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 29] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) visibleButtons.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) includes: (recoveredBlock7Stack2).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) not.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    (recoveredValue0) items: (recoveredValue3).
    recoveredValue4 := (self) visibleButtonList.
    recoveredValue5 := (self) visibleButtons.
    recoveredValue6 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := (self) availableButtons.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) includes: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
    recoveredValue7 := (recoveredValue5) select: (recoveredValue6).
    (recoveredValue4) items: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x203a6fc0; bytecode file offset 0xca38f4"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
availableButtonColumnTypeValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtonList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableButtonList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentWindow.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredToolbarItems.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIconForConfigDialog.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconForConfigDialog.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a7004; bytecode file offset 0xca38f4"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
visibleButtonColumnTypeValueCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemPosition.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleButtonList.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) items.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtonList.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemPosition.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) parentWindow.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) registeredToolbarItems.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasIconForConfigDialog.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconForConfigDialog.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := RBRenderableBitmapString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203af438; bytecode file offset 0xcabd1c"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
removeButtons: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := (self) visibleButtons.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) removeAtIndex: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) reverseDo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtonList.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleButtons.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := (self) availableButtons.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) includes: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableButtonList.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtons.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := true.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 60.
        ].
        recoveredBlock52Step = 60 ifTrue: [
            recoveredBlock52Stack3 := 'Separator'.
            recoveredBlock52PC := 62.
        ].
        recoveredBlock52Step = 62 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) = (recoveredBlock52Stack3).
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 73] ifFalse: [recoveredBlock52PC := 66].
        ].
        recoveredBlock52Step = 66 ifTrue: [
            recoveredBlock52PC := 67.
        ].
        recoveredBlock52Step = 67 ifTrue: [
            recoveredBlock52Stack1 := self.
            recoveredBlock52PC := 68.
        ].
        recoveredBlock52Step = 68 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) visibleButtons.
            recoveredBlock52PC := 69.
        ].
        recoveredBlock52Step = 69 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Arg1.
            recoveredBlock52PC := 70.
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) includes: (recoveredBlock52Stack2).
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack1 := (recoveredBlock52Stack1) not.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d2a14; bytecode file offset 0xccf2f4"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
upButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleButtonList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) visibleButtons.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) moveIndexUp: (recoveredBlock19Stack3).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 38] ifFalse: [recoveredBlock19PC := 41].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleButtonList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtons.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := (self) availableButtons.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) includes: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := (self) visibleButtonList.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value1) + (-1).
    recoveredBlock67Value3 := (recoveredBlock67Value0) selectPos: (recoveredBlock67Value2) notify: (false).
    recoveredBlock67Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x203d2aa0; bytecode file offset 0xccf384"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
downButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleButtonList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItemIndexes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) visibleButtons.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) moveIndexDown: (recoveredBlock19Stack3).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) = (recoveredBlock19Stack3).
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 38] ifFalse: [recoveredBlock19PC := 41].
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            ^recoveredBlock19Stack1
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) visibleButtonList.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtons.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := (self) availableButtons.
    recoveredBlock48Value1 := recoveredBlock48Arg1.
    recoveredBlock48Value2 := (recoveredBlock48Value0) includes: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := (self) visibleButtonList.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value1) + (1).
    recoveredBlock67Value3 := (recoveredBlock67Value0) selectPos: (recoveredBlock67Value2) notify: (false).
    recoveredBlock67Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20470af4; bytecode file offset 0xd6d3e4"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
addButtons: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtonList.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItemIndexes.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := (self) visibleButtons.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) add: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 |
    recoveredBlock47Value0 := (self) visibleButtons.
    recoveredBlock47Value1 := recoveredBlock47Arg1.
    recoveredBlock47Value2 := recoveredLocal1.
    recoveredBlock47Value3 := (recoveredBlock47Value2) first.
    recoveredBlock47Value4 := (recoveredBlock47Value0) add: (recoveredBlock47Value1) beforeIndex: (recoveredBlock47Value3).
    recoveredBlock47Value4
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) reverseDo: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) visibleButtonList.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) visibleButtons.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 |
    recoveredBlock70Value0 := (self) availableButtons.
    recoveredBlock70Value1 := recoveredBlock70Arg1.
    recoveredBlock70Value2 := (recoveredBlock70Value0) includes: (recoveredBlock70Value1).
    recoveredBlock70Value2
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) availableButtonList.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) availableButtons.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := [:recoveredBlock92Arg1 | 
    | recoveredBlock92Stack0 recoveredBlock92Stack1 recoveredBlock92Stack2 recoveredBlock92Stack3 recoveredBlock92Stack4 recoveredBlock92PC recoveredBlock92Step recoveredBlock92Done recoveredBlock92Result |
    recoveredBlock92Stack0 := self.
    recoveredBlock92PC := 98.
    recoveredBlock92Done := false.
    [recoveredBlock92Done not] whileTrue: [
        recoveredBlock92Step := recoveredBlock92PC.
        recoveredBlock92Step = 98 ifTrue: [
            recoveredBlock92Stack1 := true.
            recoveredBlock92PC := 99.
        ].
        recoveredBlock92Step = 99 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Arg1.
            recoveredBlock92PC := 100.
        ].
        recoveredBlock92Step = 100 ifTrue: [
            recoveredBlock92Stack3 := 'Separator'.
            recoveredBlock92PC := 102.
        ].
        recoveredBlock92Step = 102 ifTrue: [
            recoveredBlock92Stack2 := (recoveredBlock92Stack2) = (recoveredBlock92Stack3).
            recoveredBlock92PC := 103.
        ].
        recoveredBlock92Step = 103 ifTrue: [
            (recoveredBlock92Stack2) ifTrue: [recoveredBlock92PC := 113] ifFalse: [recoveredBlock92PC := 106].
        ].
        recoveredBlock92Step = 106 ifTrue: [
            recoveredBlock92PC := 107.
        ].
        recoveredBlock92Step = 107 ifTrue: [
            recoveredBlock92Stack1 := self.
            recoveredBlock92PC := 108.
        ].
        recoveredBlock92Step = 108 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) visibleButtons.
            recoveredBlock92PC := 109.
        ].
        recoveredBlock92Step = 109 ifTrue: [
            recoveredBlock92Stack2 := recoveredBlock92Arg1.
            recoveredBlock92PC := 110.
        ].
        recoveredBlock92Step = 110 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) includes: (recoveredBlock92Stack2).
            recoveredBlock92PC := 112.
        ].
        recoveredBlock92Step = 112 ifTrue: [
            recoveredBlock92Stack1 := (recoveredBlock92Stack1) not.
            recoveredBlock92PC := 113.
        ].
        recoveredBlock92Step = 113 ifTrue: [
            recoveredBlock92Result := recoveredBlock92Stack1.
            recoveredBlock92Done := true.
        ].
    ].
    recoveredBlock92Result
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067a648; bytecode file offset 0xf77070"
!ASDToolbarConfigurationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'availableButtonFrame'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block281282b4Arg1 | 
    | block281282b4Value0 block281282b4Value1 block281282b4Value2 |
    block281282b4Value0 := block281282b4Arg1.
    block281282b4Value1 := block281282b4Value0.
    (block281282b4Value1) width: (250).
    block281282b4Value2 := block281282b4Value0.
    (block281282b4Value2) labelString: ('Available').
    block281282b4Value0
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'availableButtonFrame'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'availableButtonForm'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := 'availableButtonForm'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 'availableButtonList'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 recoveredBlock83Value5 recoveredBlock83Value6 recoveredBlock83Value7 recoveredBlock83Value8 recoveredBlock83Value9 recoveredBlock83Value10 recoveredBlock83Value11 recoveredBlock83Value12 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredBlock83Value0.
    recoveredBlock83Value2 := (self) availableButtonColumns.
    (recoveredBlock83Value1) columns: (recoveredBlock83Value2).
    recoveredBlock83Value3 := recoveredBlock83Value0.
    (recoveredBlock83Value3) editable: (false).
    recoveredBlock83Value4 := recoveredBlock83Value0.
    (recoveredBlock83Value4) selectableColumns: (false).
    recoveredBlock83Value5 := recoveredBlock83Value0.
    (recoveredBlock83Value5) lockedColumns: (1).
    recoveredBlock83Value6 := recoveredBlock83Value0.
    (recoveredBlock83Value6) headingSeparatorThickness: (0).
    recoveredBlock83Value7 := recoveredBlock83Value0.
    recoveredBlock83Value8 := XmEXTENDEDSELECT.
    (recoveredBlock83Value7) selectionPolicy: (recoveredBlock83Value8).
    recoveredBlock83Value9 := recoveredBlock83Value0.
    (recoveredBlock83Value9) applicationDrawnBackground: (true).
    recoveredBlock83Value10 := recoveredBlock83Value0.
    recoveredBlock83Value11 := XmETCHCELLS.
    (recoveredBlock83Value10) headingVisualStyle: (recoveredBlock83Value11).
    recoveredBlock83Value12 := recoveredBlock83Value0.
    (recoveredBlock83Value12) x: (5).
    recoveredBlock83Value0
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := 'availableButtonScrolledList'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 'availableButtonList'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'visibleButtonFrame'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := [:block281282d8Arg1 | 
    | block281282d8Value0 block281282d8Value1 block281282d8Value2 |
    block281282d8Value0 := block281282d8Arg1.
    block281282d8Value1 := block281282d8Value0.
    (block281282d8Value1) width: (250).
    block281282d8Value2 := block281282d8Value0.
    (block281282d8Value2) labelString: ('Visible').
    block281282d8Value0
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 'visibleButtonFrame'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := 'visibleButtonForm'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := 'visibleButtonForm'.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := 'visibleButtonList'.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 recoveredBlock239Value3 recoveredBlock239Value4 recoveredBlock239Value5 recoveredBlock239Value6 recoveredBlock239Value7 recoveredBlock239Value8 recoveredBlock239Value9 recoveredBlock239Value10 recoveredBlock239Value11 recoveredBlock239Value12 |
    recoveredBlock239Value0 := recoveredBlock239Arg1.
    recoveredBlock239Value1 := recoveredBlock239Value0.
    recoveredBlock239Value2 := (self) visibleButtonColumns.
    (recoveredBlock239Value1) columns: (recoveredBlock239Value2).
    recoveredBlock239Value3 := recoveredBlock239Value0.
    (recoveredBlock239Value3) editable: (false).
    recoveredBlock239Value4 := recoveredBlock239Value0.
    (recoveredBlock239Value4) selectableColumns: (false).
    recoveredBlock239Value5 := recoveredBlock239Value0.
    (recoveredBlock239Value5) lockedColumns: (1).
    recoveredBlock239Value6 := recoveredBlock239Value0.
    (recoveredBlock239Value6) headingSeparatorThickness: (0).
    recoveredBlock239Value7 := recoveredBlock239Value0.
    recoveredBlock239Value8 := XmEXTENDEDSELECT.
    (recoveredBlock239Value7) selectionPolicy: (recoveredBlock239Value8).
    recoveredBlock239Value9 := recoveredBlock239Value0.
    (recoveredBlock239Value9) applicationDrawnBackground: (true).
    recoveredBlock239Value10 := recoveredBlock239Value0.
    recoveredBlock239Value11 := XmETCHCELLS.
    (recoveredBlock239Value10) headingVisualStyle: (recoveredBlock239Value11).
    recoveredBlock239Value12 := recoveredBlock239Value0.
    (recoveredBlock239Value12) x: (5).
    recoveredBlock239Value0
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := 'visibleButtonScrolledList'.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := 'visibleButtonList'.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := 'addButton'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack2 := [:recoveredBlock331Arg1 | 
    | recoveredBlock331Value0 recoveredBlock331Value1 recoveredBlock331Value2 recoveredBlock331Value3 recoveredBlock331Value4 recoveredBlock331Value5 recoveredBlock331Value6 recoveredBlock331Value7 recoveredBlock331Value8 |
    recoveredBlock331Value0 := recoveredBlock331Arg1.
    recoveredBlock331Value1 := recoveredBlock331Value0.
    recoveredBlock331Value2 := XmICON.
    (recoveredBlock331Value1) labelType: (recoveredBlock331Value2).
    recoveredBlock331Value3 := recoveredBlock331Value0.
    recoveredBlock331Value4 := (self) resourceManager.
    recoveredBlock331Value5 := ('GeneralArrowRight') asString.
    recoveredBlock331Value6 := (recoveredBlock331Value4) returnIconWithName: (recoveredBlock331Value5).
    (recoveredBlock331Value3) labelIcon: (recoveredBlock331Value6).
    recoveredBlock331Value7 := recoveredBlock331Value0.
    (recoveredBlock331Value7) height: (24).
    recoveredBlock331Value8 := (recoveredBlock331Value0) width: (40).
    recoveredBlock331Value8
].
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := 'addButton'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := 'removeButton'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := [:recoveredBlock388Arg1 | 
    | recoveredBlock388Value0 recoveredBlock388Value1 recoveredBlock388Value2 recoveredBlock388Value3 recoveredBlock388Value4 recoveredBlock388Value5 recoveredBlock388Value6 recoveredBlock388Value7 recoveredBlock388Value8 |
    recoveredBlock388Value0 := recoveredBlock388Arg1.
    recoveredBlock388Value1 := recoveredBlock388Value0.
    recoveredBlock388Value2 := XmICON.
    (recoveredBlock388Value1) labelType: (recoveredBlock388Value2).
    recoveredBlock388Value3 := recoveredBlock388Value0.
    recoveredBlock388Value4 := (self) resourceManager.
    recoveredBlock388Value5 := ('GeneralArrowLeft') asString.
    recoveredBlock388Value6 := (recoveredBlock388Value4) returnIconWithName: (recoveredBlock388Value5).
    (recoveredBlock388Value3) labelIcon: (recoveredBlock388Value6).
    recoveredBlock388Value7 := recoveredBlock388Value0.
    (recoveredBlock388Value7) height: (24).
    recoveredBlock388Value8 := (recoveredBlock388Value0) width: (40).
    recoveredBlock388Value8
].
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := 'removeButton'.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := 'upButton'.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack2 := [:recoveredBlock444Arg1 | 
    | recoveredBlock444Value0 recoveredBlock444Value1 recoveredBlock444Value2 recoveredBlock444Value3 recoveredBlock444Value4 recoveredBlock444Value5 recoveredBlock444Value6 recoveredBlock444Value7 recoveredBlock444Value8 |
    recoveredBlock444Value0 := recoveredBlock444Arg1.
    recoveredBlock444Value1 := recoveredBlock444Value0.
    recoveredBlock444Value2 := XmICON.
    (recoveredBlock444Value1) labelType: (recoveredBlock444Value2).
    recoveredBlock444Value3 := recoveredBlock444Value0.
    recoveredBlock444Value4 := (self) resourceManager.
    recoveredBlock444Value5 := ('GeneralArrowUp') asString.
    recoveredBlock444Value6 := (recoveredBlock444Value4) returnIconWithName: (recoveredBlock444Value5).
    (recoveredBlock444Value3) labelIcon: (recoveredBlock444Value6).
    recoveredBlock444Value7 := recoveredBlock444Value0.
    (recoveredBlock444Value7) height: (24).
    recoveredBlock444Value8 := (recoveredBlock444Value0) width: (40).
    recoveredBlock444Value8
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack1 := 'upButton'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := 'downButton'.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := [:recoveredBlock504Arg1 | 
    | recoveredBlock504Value0 recoveredBlock504Value1 recoveredBlock504Value2 recoveredBlock504Value3 recoveredBlock504Value4 recoveredBlock504Value5 recoveredBlock504Value6 recoveredBlock504Value7 recoveredBlock504Value8 |
    recoveredBlock504Value0 := recoveredBlock504Arg1.
    recoveredBlock504Value1 := recoveredBlock504Value0.
    recoveredBlock504Value2 := XmICON.
    (recoveredBlock504Value1) labelType: (recoveredBlock504Value2).
    recoveredBlock504Value3 := recoveredBlock504Value0.
    recoveredBlock504Value4 := (self) resourceManager.
    recoveredBlock504Value5 := ('GeneralArrowDown') asString.
    recoveredBlock504Value6 := (recoveredBlock504Value4) returnIconWithName: (recoveredBlock504Value5).
    (recoveredBlock504Value3) labelIcon: (recoveredBlock504Value6).
    recoveredBlock504Value7 := recoveredBlock504Value0.
    (recoveredBlock504Value7) height: (24).
    recoveredBlock504Value8 := (recoveredBlock504Value0) width: (40).
    recoveredBlock504Value8
].
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := 'downButton'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := [:block281282fcArg1 | 
    | block281282fcValue0 block281282fcValue1 block281282fcValue2 block281282fcValue3 block281282fcValue4 block281282fcValue5 block281282fcValue6 block281282fcValue7 block281282fcValue8 block281282fcValue9 block281282fcValue10 |
    block281282fcValue0 := block281282fcArg1.
    block281282fcValue1 := block281282fcValue0.
    block281282fcValue2 := XmATTACHPOSITION.
    (block281282fcValue1) topAttachment: (block281282fcValue2).
    block281282fcValue3 := block281282fcValue0.
    (block281282fcValue3) topPosition: (30).
    block281282fcValue4 := block281282fcValue0.
    block281282fcValue5 := XmATTACHNONE.
    (block281282fcValue4) bottomAttachment: (block281282fcValue5).
    block281282fcValue6 := block281282fcValue0.
    block281282fcValue7 := XmATTACHPOSITION.
    (block281282fcValue6) leftAttachment: (block281282fcValue7).
    block281282fcValue8 := block281282fcValue0.
    (block281282fcValue8) leftPosition: (45).
    block281282fcValue9 := XmATTACHNONE.
    block281282fcValue10 := (block281282fcValue0) rightAttachment: (block281282fcValue9).
    block281282fcValue10
].
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := [:recoveredBlock626Arg1 | 
    | recoveredBlock626Value0 recoveredBlock626Value1 recoveredBlock626Value2 recoveredBlock626Value3 recoveredBlock626Value4 recoveredBlock626Value5 recoveredBlock626Value6 recoveredBlock626Value7 recoveredBlock626Value8 recoveredBlock626Value9 recoveredBlock626Value10 recoveredBlock626Value11 recoveredBlock626Value12 |
    recoveredBlock626Value0 := recoveredBlock626Arg1.
    recoveredBlock626Value1 := recoveredBlock626Value0.
    recoveredBlock626Value2 := XmATTACHWIDGET.
    (recoveredBlock626Value1) topAttachment: (recoveredBlock626Value2).
    recoveredBlock626Value3 := recoveredBlock626Value0.
    recoveredBlock626Value4 := recoveredLocal2.
    (recoveredBlock626Value3) topWidget: (recoveredBlock626Value4).
    recoveredBlock626Value5 := recoveredBlock626Value0.
    (recoveredBlock626Value5) topOffset: (5).
    recoveredBlock626Value6 := recoveredBlock626Value0.
    recoveredBlock626Value7 := XmATTACHNONE.
    (recoveredBlock626Value6) bottomAttachment: (recoveredBlock626Value7).
    recoveredBlock626Value8 := recoveredBlock626Value0.
    recoveredBlock626Value9 := XmATTACHPOSITION.
    (recoveredBlock626Value8) leftAttachment: (recoveredBlock626Value9).
    recoveredBlock626Value10 := recoveredBlock626Value0.
    (recoveredBlock626Value10) leftPosition: (45).
    recoveredBlock626Value11 := XmATTACHNONE.
    recoveredBlock626Value12 := (recoveredBlock626Value0) rightAttachment: (recoveredBlock626Value11).
    recoveredBlock626Value12
].
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack1 := [:recoveredBlock696Arg1 | 
    | recoveredBlock696Value0 recoveredBlock696Value1 recoveredBlock696Value2 recoveredBlock696Value3 recoveredBlock696Value4 recoveredBlock696Value5 recoveredBlock696Value6 recoveredBlock696Value7 recoveredBlock696Value8 recoveredBlock696Value9 recoveredBlock696Value10 recoveredBlock696Value11 recoveredBlock696Value12 |
    recoveredBlock696Value0 := recoveredBlock696Arg1.
    recoveredBlock696Value1 := recoveredBlock696Value0.
    recoveredBlock696Value2 := XmATTACHWIDGET.
    (recoveredBlock696Value1) topAttachment: (recoveredBlock696Value2).
    recoveredBlock696Value3 := recoveredBlock696Value0.
    recoveredBlock696Value4 := recoveredLocal4.
    (recoveredBlock696Value3) topWidget: (recoveredBlock696Value4).
    recoveredBlock696Value5 := recoveredBlock696Value0.
    (recoveredBlock696Value5) topOffset: (5).
    recoveredBlock696Value6 := recoveredBlock696Value0.
    recoveredBlock696Value7 := XmATTACHNONE.
    (recoveredBlock696Value6) bottomAttachment: (recoveredBlock696Value7).
    recoveredBlock696Value8 := recoveredBlock696Value0.
    recoveredBlock696Value9 := XmATTACHPOSITION.
    (recoveredBlock696Value8) leftAttachment: (recoveredBlock696Value9).
    recoveredBlock696Value10 := recoveredBlock696Value0.
    (recoveredBlock696Value10) leftPosition: (45).
    recoveredBlock696Value11 := XmATTACHNONE.
    recoveredBlock696Value12 := (recoveredBlock696Value0) rightAttachment: (recoveredBlock696Value11).
    recoveredBlock696Value12
].
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack1 := [:recoveredBlock766Arg1 | 
    | recoveredBlock766Value0 recoveredBlock766Value1 recoveredBlock766Value2 recoveredBlock766Value3 recoveredBlock766Value4 recoveredBlock766Value5 recoveredBlock766Value6 recoveredBlock766Value7 recoveredBlock766Value8 recoveredBlock766Value9 recoveredBlock766Value10 recoveredBlock766Value11 recoveredBlock766Value12 |
    recoveredBlock766Value0 := recoveredBlock766Arg1.
    recoveredBlock766Value1 := recoveredBlock766Value0.
    recoveredBlock766Value2 := XmATTACHWIDGET.
    (recoveredBlock766Value1) topAttachment: (recoveredBlock766Value2).
    recoveredBlock766Value3 := recoveredBlock766Value0.
    recoveredBlock766Value4 := recoveredLocal3.
    (recoveredBlock766Value3) topWidget: (recoveredBlock766Value4).
    recoveredBlock766Value5 := recoveredBlock766Value0.
    (recoveredBlock766Value5) topOffset: (5).
    recoveredBlock766Value6 := recoveredBlock766Value0.
    recoveredBlock766Value7 := XmATTACHNONE.
    (recoveredBlock766Value6) bottomAttachment: (recoveredBlock766Value7).
    recoveredBlock766Value8 := recoveredBlock766Value0.
    recoveredBlock766Value9 := XmATTACHPOSITION.
    (recoveredBlock766Value8) leftAttachment: (recoveredBlock766Value9).
    recoveredBlock766Value10 := recoveredBlock766Value0.
    (recoveredBlock766Value10) leftPosition: (45).
    recoveredBlock766Value11 := XmATTACHNONE.
    recoveredBlock766Value12 := (recoveredBlock766Value0) rightAttachment: (recoveredBlock766Value11).
    recoveredBlock766Value12
].
            recoveredPC := 828.
        ].
        recoveredStep = 828 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := [:recoveredBlock836Arg1 | 
    | recoveredBlock836Value0 recoveredBlock836Value1 recoveredBlock836Value2 recoveredBlock836Value3 recoveredBlock836Value4 recoveredBlock836Value5 recoveredBlock836Value6 recoveredBlock836Value7 recoveredBlock836Value8 recoveredBlock836Value9 recoveredBlock836Value10 recoveredBlock836Value11 recoveredBlock836Value12 recoveredBlock836Value13 recoveredBlock836Value14 |
    recoveredBlock836Value0 := recoveredBlock836Arg1.
    recoveredBlock836Value1 := recoveredBlock836Value0.
    recoveredBlock836Value2 := XmATTACHFORM.
    (recoveredBlock836Value1) topAttachment: (recoveredBlock836Value2).
    recoveredBlock836Value3 := recoveredBlock836Value0.
    (recoveredBlock836Value3) topOffset: (5).
    recoveredBlock836Value4 := recoveredBlock836Value0.
    recoveredBlock836Value5 := XmATTACHFORM.
    (recoveredBlock836Value4) bottomAttachment: (recoveredBlock836Value5).
    recoveredBlock836Value6 := recoveredBlock836Value0.
    (recoveredBlock836Value6) bottomOffset: (5).
    recoveredBlock836Value7 := recoveredBlock836Value0.
    recoveredBlock836Value8 := XmATTACHFORM.
    (recoveredBlock836Value7) leftAttachment: (recoveredBlock836Value8).
    recoveredBlock836Value9 := recoveredBlock836Value0.
    (recoveredBlock836Value9) leftOffset: (5).
    recoveredBlock836Value10 := recoveredBlock836Value0.
    recoveredBlock836Value11 := XmATTACHWIDGET.
    (recoveredBlock836Value10) rightAttachment: (recoveredBlock836Value11).
    recoveredBlock836Value12 := recoveredBlock836Value0.
    recoveredBlock836Value13 := recoveredLocal4.
    (recoveredBlock836Value12) rightWidget: (recoveredBlock836Value13).
    recoveredBlock836Value14 := (recoveredBlock836Value0) rightOffset: (5).
    recoveredBlock836Value14
].
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 915.
        ].
        recoveredStep = 915 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 918.
        ].
        recoveredStep = 918 ifTrue: [
            recoveredStack1 := [:recoveredBlock918Arg1 | 
    | recoveredBlock918Value0 recoveredBlock918Value1 recoveredBlock918Value2 recoveredBlock918Value3 recoveredBlock918Value4 recoveredBlock918Value5 recoveredBlock918Value6 recoveredBlock918Value7 recoveredBlock918Value8 recoveredBlock918Value9 recoveredBlock918Value10 recoveredBlock918Value11 recoveredBlock918Value12 recoveredBlock918Value13 recoveredBlock918Value14 |
    recoveredBlock918Value0 := recoveredBlock918Arg1.
    recoveredBlock918Value1 := recoveredBlock918Value0.
    recoveredBlock918Value2 := XmATTACHFORM.
    (recoveredBlock918Value1) topAttachment: (recoveredBlock918Value2).
    recoveredBlock918Value3 := recoveredBlock918Value0.
    (recoveredBlock918Value3) topOffset: (5).
    recoveredBlock918Value4 := recoveredBlock918Value0.
    recoveredBlock918Value5 := XmATTACHFORM.
    (recoveredBlock918Value4) bottomAttachment: (recoveredBlock918Value5).
    recoveredBlock918Value6 := recoveredBlock918Value0.
    (recoveredBlock918Value6) bottomOffset: (5).
    recoveredBlock918Value7 := recoveredBlock918Value0.
    recoveredBlock918Value8 := XmATTACHWIDGET.
    (recoveredBlock918Value7) leftAttachment: (recoveredBlock918Value8).
    recoveredBlock918Value9 := recoveredBlock918Value0.
    recoveredBlock918Value10 := recoveredLocal4.
    (recoveredBlock918Value9) leftWidget: (recoveredBlock918Value10).
    recoveredBlock918Value11 := recoveredBlock918Value0.
    (recoveredBlock918Value11) leftOffset: (5).
    recoveredBlock918Value12 := recoveredBlock918Value0.
    recoveredBlock918Value13 := XmATTACHFORM.
    (recoveredBlock918Value12) rightAttachment: (recoveredBlock918Value13).
    recoveredBlock918Value14 := (recoveredBlock918Value0) rightOffset: (5).
    recoveredBlock918Value14
].
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1000.
        ].
        recoveredStep = 1000 ifTrue: [
            recoveredStack1 := [:block28128320Arg1 | 
    | block28128320Value0 block28128320Value1 block28128320Value2 block28128320Value3 block28128320Value4 block28128320Value5 block28128320Value6 block28128320Value7 block28128320Value8 block28128320Value9 block28128320Value10 block28128320Value11 block28128320Value12 |
    block28128320Value0 := block28128320Arg1.
    block28128320Value1 := block28128320Value0.
    block28128320Value2 := XmATTACHFORM.
    (block28128320Value1) bottomAttachment: (block28128320Value2).
    block28128320Value3 := block28128320Value0.
    (block28128320Value3) bottomOffset: (5).
    block28128320Value4 := block28128320Value0.
    block28128320Value5 := XmATTACHFORM.
    (block28128320Value4) topAttachment: (block28128320Value5).
    block28128320Value6 := block28128320Value0.
    (block28128320Value6) topOffset: (0).
    block28128320Value7 := block28128320Value0.
    block28128320Value8 := XmATTACHFORM.
    (block28128320Value7) leftAttachment: (block28128320Value8).
    block28128320Value9 := block28128320Value0.
    (block28128320Value9) leftOffset: (5).
    block28128320Value10 := block28128320Value0.
    block28128320Value11 := XmATTACHFORM.
    (block28128320Value10) rightAttachment: (block28128320Value11).
    block28128320Value12 := (block28128320Value0) rightOffset: (5).
    block28128320Value12
].
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack1 := [:block28128344Arg1 | 
    | block28128344Value0 block28128344Value1 block28128344Value2 block28128344Value3 block28128344Value4 block28128344Value5 block28128344Value6 block28128344Value7 block28128344Value8 block28128344Value9 block28128344Value10 block28128344Value11 block28128344Value12 |
    block28128344Value0 := block28128344Arg1.
    block28128344Value1 := block28128344Value0.
    block28128344Value2 := XmATTACHFORM.
    (block28128344Value1) bottomAttachment: (block28128344Value2).
    block28128344Value3 := block28128344Value0.
    (block28128344Value3) bottomOffset: (5).
    block28128344Value4 := block28128344Value0.
    block28128344Value5 := XmATTACHFORM.
    (block28128344Value4) topAttachment: (block28128344Value5).
    block28128344Value6 := block28128344Value0.
    (block28128344Value6) topOffset: (0).
    block28128344Value7 := block28128344Value0.
    block28128344Value8 := XmATTACHFORM.
    (block28128344Value7) leftAttachment: (block28128344Value8).
    block28128344Value9 := block28128344Value0.
    (block28128344Value9) leftOffset: (5).
    block28128344Value10 := block28128344Value0.
    block28128344Value11 := XmATTACHFORM.
    (block28128344Value10) rightAttachment: (block28128344Value11).
    block28128344Value12 := (block28128344Value0) rightOffset: (5).
    block28128344Value12
].
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredPC := 1144.
        ].
        recoveredStep = 1144 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1149.
        ].
        recoveredStep = 1149 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack3 := 'availableButtonListCallback:clientData:callData:'.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1165.
        ].
        recoveredStep = 1165 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1168.
        ].
        recoveredStep = 1168 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1172.
        ].
        recoveredStep = 1172 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1173.
        ].
        recoveredStep = 1173 ifTrue: [
            recoveredStack3 := 'addButton:clientData:callData:'.
            recoveredPC := 1176.
        ].
        recoveredStep = 1176 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1177.
        ].
        recoveredStep = 1177 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1181.
        ].
        recoveredStep = 1181 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1188.
        ].
        recoveredStep = 1188 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack3 := 'removeButton:clientData:callData:'.
            recoveredPC := 1192.
        ].
        recoveredStep = 1192 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1193.
        ].
        recoveredStep = 1193 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1197.
        ].
        recoveredStep = 1197 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1200.
        ].
        recoveredStep = 1200 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1204.
        ].
        recoveredStep = 1204 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1205.
        ].
        recoveredStep = 1205 ifTrue: [
            recoveredStack3 := 'upButton:clientData:callData:'.
            recoveredPC := 1208.
        ].
        recoveredStep = 1208 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1209.
        ].
        recoveredStep = 1209 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1213.
        ].
        recoveredStep = 1213 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1216.
        ].
        recoveredStep = 1216 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1221.
        ].
        recoveredStep = 1221 ifTrue: [
            recoveredStack3 := 'downButton:clientData:callData:'.
            recoveredPC := 1224.
        ].
        recoveredStep = 1224 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1225.
        ].
        recoveredStep = 1225 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1229.
        ].
        recoveredStep = 1229 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1232.
        ].
        recoveredStep = 1232 ifTrue: [
            recoveredStack1 := XmNdefaultActionCallback.
            recoveredPC := 1236.
        ].
        recoveredStep = 1236 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1237.
        ].
        recoveredStep = 1237 ifTrue: [
            recoveredStack3 := 'visibleButtonListCallback:clientData:callData:'.
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1241.
        ].
        recoveredStep = 1241 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1245.
        ].
        recoveredStep = 1245 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1248.
        ].
        recoveredStep = 1248 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1253.
        ].
        recoveredStep = 1253 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1256.
        ].
        recoveredStep = 1256 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1261.
        ].
        recoveredStep = 1261 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1264.
        ].
        recoveredStep = 1264 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1269.
        ].
        recoveredStep = 1269 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1272.
        ].
        recoveredStep = 1272 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1277.
        ].
        recoveredStep = 1277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1278.
        ].
        recoveredStep = 1278 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 1281.
        ].
        recoveredStep = 1281 ifTrue: [
            (recoveredStack0) widgetDictionary: (recoveredStack1).
            recoveredPC := 1285.
        ].
        recoveredStep = 1285 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

