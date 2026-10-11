"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20043c7c; bytecode file offset 0x9451f8"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
infoWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('infoWidget').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044dbc; bytecode file offset 0x9451f8"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
mainSplit
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('splitBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004844c; bytecode file offset 0x9451f8"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
itemForm
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('itemForm').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070bbc; bytecode file offset 0x96d580"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
windowMenuBar
    | recoveredValue0 |
    recoveredValue0 := windowMenuBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079a74; bytecode file offset 0x97c330"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
isCollapsed
    ^false
! !

"ASDBase.ic method 0x200c7470; bytecode file offset 0x9c3d64"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
widgetCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widgetCache := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6414; bytecode file offset 0x9d3134"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) initFocusWrapper.
    ^self
! !

"ASDBase.ic method 0x201119d8; bytecode file offset 0xa0e324"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
classListextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super classListextendedSelectionCallback: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    (self) updateASDInfo.
    ^self
! !

"ASDBase.ic method 0x2013c160; bytecode file offset 0xa38a20"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
widgetCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widgetCache.
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
            recoveredStack2 := LookupTable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) widgetCache: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := widgetCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20182100; bytecode file offset 0xa7e9cc"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
additionalTabGroup
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dbWidget.
    (recoveredValue0) additionalTabGroup.
    recoveredValue1 := (self) mainSplit.
    (recoveredValue1) addTabGroup.
    recoveredValue2 := (self) okButton.
    (recoveredValue2) addTabGroup.
    recoveredValue3 := (self) cancelButton.
    (recoveredValue3) addTabGroup.
    ^self
! !

"ASDBase.ic method 0x201b1728; bytecode file offset 0xaadfe8"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
isEditingInProgress
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isEditingInProgress.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fc0f0; bytecode file offset 0xaf89c4"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
initFocusWrapper
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBFocusBorderController.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    (recoveredValue2) borderWidth: (3).
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) mainSplit.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) addWidgets: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20205e60; bytecode file offset 0xb02754"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
releaseInfoWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) stopObserving.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) removeInfoWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCache.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCachingKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) destroyWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20233208; bytecode file offset 0xb2fad0"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
removeDynamicMenuLabels: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) windowMenuBar.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack4 := [].
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) menuAtTitle: (recoveredBlock5Stack3) ifAbsent: (recoveredBlock5Stack4).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 31] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) windowMenuBar.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Local1.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) removeMenu: (recoveredBlock5Stack2).
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2023cc68; bytecode file offset 0xb39530"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
isClosingPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isClosingPossible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
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
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025f620; bytecode file offset 0xb5bf00"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
preClosingActivities
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) releaseInfoWidget.
    super preClosingActivities.
    recoveredValue0 := (self) dbWidget.
    (recoveredValue0) stopObserving.
    recoveredValue1 := (self) dbWidget.
    (recoveredValue1) removeDependent: (self).
    recoveredValue2 := (self) class.
    recoveredValue3 := (self) mainSplit.
    recoveredValue4 := (recoveredValue3) relPosition.
    recoveredValue5 := (recoveredValue4) * (100).
    recoveredValue6 := (recoveredValue5) rounded.
    (recoveredValue2) splitBarPosition: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2029702c; bytecode file offset 0xb93908"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
initializeAfterOpen
    | recoveredValue0 |
    super initializeAfterOpen.
    recoveredValue0 := [
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) mainSplit.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) position.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack0 := self.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) mainSplit.
            recoveredBlock9PC := 21.
        ].
        recoveredBlock9Step = 21 ifTrue: [
            recoveredBlock9Stack1 := [:block280e3328Arg1 | 
    | block280e3328Value0 block280e3328Value1 block280e3328Value2 |
    block280e3328Value0 := block280e3328Arg1.
    block280e3328Value1 := XmATTACHNONE.
    block280e3328Value2 := (block280e3328Value0) rightAttachment: (block280e3328Value1).
    block280e3328Value2
].
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            (recoveredBlock9Stack0) setValuesBlock: (recoveredBlock9Stack1).
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Stack0 := self.
            recoveredBlock9PC := 35.
        ].
        recoveredBlock9Step = 35 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) mainSplit.
            recoveredBlock9PC := 36.
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Local1.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) setPosition: (recoveredBlock9Stack1).
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (self) doWithoutRedraw: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x202db6d4; bytecode file offset 0xbd7fb4"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
removeInfoWidget
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEditingInProgress.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) endEdit.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) removeDependent: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) removeActionDictForWidget: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) dynamicMenuLabels.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) removeDynamicMenuLabels: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) checkModified.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) unmanageChild.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'infoWidget'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039ce6c; bytecode file offset 0xc99740"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
checkIfASDInfoHasToBeUpdated
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedObject.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) infoWidget.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) infoWidget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRootItem.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) xor: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
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
            recoveredPC := 66.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) infoWidget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 66].
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
            recoveredStack0 := (recoveredStack0) isCollapsed.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x203b68c8; bytecode file offset 0xcb31bc"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
setupInfoWidgetFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCachingKey.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCachingKey.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) item: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'infoWidget'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemForm.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createHwcInfoWidget: (recoveredStack1) parent: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) hookInterfaceCallbacksFor: (recoveredStack1) clientData: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowWidgetCaching.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCache.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCachingKey.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetCachingKey.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) widgetCachingKey: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) hookKeyEventsDynamical.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) startObserving.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) addDependent: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c1630; bytecode file offset 0xdbdf54"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
updateASDInfo
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
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
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) checkIfASDInfoHasToBeUpdated.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 140] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) itemForm.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) uiController.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) selectedObject.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) notNil.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            (recoveredBlock4Stack1) sensitive: (recoveredBlock4Stack2).
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            (recoveredBlock4Stack1) releaseInfoWidget.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) uiController.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) selectedObject.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack3.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 138] ifFalse: [recoveredBlock4PC := 40].
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal2.
            recoveredBlock4PC := 45.
        ].
        recoveredBlock4Step = 45 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) setupInfoWidgetFor: (recoveredBlock4Stack2).
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack2 := [:block28106888Arg1 | 
    | block28106888Value0 block28106888Value1 block28106888Value2 block28106888Value3 block28106888Value4 block28106888Value5 block28106888Value6 block28106888Value7 block28106888Value8 block28106888Value9 block28106888Value10 block28106888Value11 block28106888Value12 |
    block28106888Value0 := block28106888Arg1.
    block28106888Value1 := block28106888Value0.
    block28106888Value2 := XmATTACHFORM.
    (block28106888Value1) bottomAttachment: (block28106888Value2).
    block28106888Value3 := block28106888Value0.
    (block28106888Value3) bottomOffset: (2).
    block28106888Value4 := block28106888Value0.
    block28106888Value5 := XmATTACHFORM.
    (block28106888Value4) topAttachment: (block28106888Value5).
    block28106888Value6 := block28106888Value0.
    (block28106888Value6) topOffset: (0).
    block28106888Value7 := block28106888Value0.
    block28106888Value8 := XmATTACHFORM.
    (block28106888Value7) leftAttachment: (block28106888Value8).
    block28106888Value9 := block28106888Value0.
    (block28106888Value9) leftOffset: (0).
    block28106888Value10 := block28106888Value0.
    block28106888Value11 := XmATTACHFORM.
    (block28106888Value10) rightAttachment: (block28106888Value11).
    block28106888Value12 := (block28106888Value0) rightOffset: (0).
    block28106888Value12
].
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            (recoveredBlock4Stack1) setValuesBlock: (recoveredBlock4Stack2).
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 98.
        ].
        recoveredBlock4Step = 98 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) dynamicMenus.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block100Arg1 | 
    | recoveredBlock4Block100Value0 recoveredBlock4Block100Value1 recoveredBlock4Block100Value2 recoveredBlock4Block100Value3 |
    recoveredBlock4Block100Value0 := recoveredBlock4Block100Arg1.
    (recoveredBlock4Block100Value0) addToolboxMenuItemsFor: (self).
    recoveredBlock4Block100Value1 := windowMenuBar.
    recoveredBlock4Block100Value2 := recoveredBlock4Block100Arg1.
    recoveredBlock4Block100Value3 := (recoveredBlock4Block100Value1) addMenu: (recoveredBlock4Block100Value2).
    recoveredBlock4Block100Value3
].
            recoveredBlock4PC := 116.
        ].
        recoveredBlock4Step = 116 ifTrue: [
            (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 119.
        ].
        recoveredBlock4Step = 119 ifTrue: [
            (recoveredBlock4Stack1) manageChild.
            recoveredBlock4PC := 121.
        ].
        recoveredBlock4Step = 121 ifTrue: [
            recoveredBlock4Stack1 := widgetDictionary.
            recoveredBlock4PC := 123.
        ].
        recoveredBlock4Step = 123 ifTrue: [
            recoveredBlock4Stack2 := 'infoWidget'.
            recoveredBlock4PC := 125.
        ].
        recoveredBlock4Step = 125 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Local1.
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            (recoveredBlock4Stack1) at: (recoveredBlock4Stack2) put: (recoveredBlock4Stack3).
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 129.
        ].
        recoveredBlock4Step = 129 ifTrue: [
            recoveredBlock4Stack2 := 3.
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            (recoveredBlock4Stack1) updateKeyboardControlNumber: (recoveredBlock4Stack2).
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) initializeAfterOpen.
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 137.
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 138.
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack2 := nil.
            recoveredBlock4PC := 139.
        ].
        recoveredBlock4Step = 139 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack2.
            recoveredBlock4PC := 140.
        ].
        recoveredBlock4Step = 140 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) value.
    ^self
! !

"ASDBase.ic method 0x2066ca98; bytecode file offset 0xf694d8"
!EtasEnhancedDatabaseDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal11 := recoveredStack1.
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
            recoveredStack3 := [:block2812652cArg1 | 
    | block2812652cValue0 block2812652cValue1 block2812652cValue2 block2812652cValue3 block2812652cValue4 block2812652cValue5 block2812652cValue6 block2812652cValue7 block2812652cValue8 block2812652cValue9 block2812652cValue10 block2812652cValue11 |
    block2812652cValue0 := block2812652cArg1.
    block2812652cValue1 := block2812652cValue0.
    block2812652cValue2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block2812652cValue1) mwmInputMode: (block2812652cValue2).
    block2812652cValue3 := block2812652cValue0.
    (block2812652cValue3) title: ('Dialog').
    block2812652cValue4 := block2812652cValue0.
    block2812652cValue5 := MWMDECORALL.
    block2812652cValue6 := MWMDECORMINIMIZE.
    block2812652cValue7 := (block2812652cValue5) | (block2812652cValue6).
    block2812652cValue8 := MWMDECORMAXIMIZE.
    block2812652cValue9 := (block2812652cValue7) | (block2812652cValue8).
    (block2812652cValue4) mwmDecorations: (block2812652cValue9).
    block2812652cValue10 := block2812652cValue0.
    (block2812652cValue10) height: (496).
    block2812652cValue11 := (block2812652cValue0) width: (608).
    block2812652cValue11
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal10.
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
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal9.
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28126550Arg1 | 
    | block28126550Value0 block28126550Value1 block28126550Value2 block28126550Value3 block28126550Value4 block28126550Value5 block28126550Value6 block28126550Value7 block28126550Value8 |
    block28126550Value0 := block28126550Arg1.
    block28126550Value1 := block28126550Value0.
    (block28126550Value1) x: (450).
    block28126550Value2 := block28126550Value0.
    block28126550Value3 := XmSINGLELINE.
    (block28126550Value2) separatorType: (block28126550Value3).
    block28126550Value4 := block28126550Value0.
    block28126550Value5 := XmVERTICAL.
    (block28126550Value4) orientation: (block28126550Value5).
    block28126550Value6 := block28126550Value0.
    (block28126550Value6) y: (10).
    block28126550Value7 := block28126550Value0.
    (block28126550Value7) height: (370).
    block28126550Value8 := (block28126550Value0) width: (1).
    block28126550Value8
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSeparator: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'aSeparator'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := [:block28126574Arg1 | 
    | block28126574Value0 block28126574Value1 block28126574Value2 block28126574Value3 block28126574Value4 block28126574Value5 block28126574Value6 block28126574Value7 block28126574Value8 block28126574Value9 block28126574Value10 |
    block28126574Value0 := block28126574Arg1.
    block28126574Value1 := block28126574Value0.
    (block28126574Value1) x: (461).
    block28126574Value2 := block28126574Value0.
    (block28126574Value2) marginRight: (10).
    block28126574Value3 := block28126574Value0.
    block28126574Value4 := EtButtonOk.
    (block28126574Value3) labelString: (block28126574Value4).
    block28126574Value5 := block28126574Value0.
    (block28126574Value5) marginWidth: (0).
    block28126574Value6 := block28126574Value0.
    (block28126574Value6) marginHeight: (0).
    block28126574Value7 := block28126574Value0.
    (block28126574Value7) y: (10).
    block28126574Value8 := block28126574Value0.
    (block28126574Value8) height: (30).
    block28126574Value9 := block28126574Value0.
    (block28126574Value9) marginBottom: (10).
    block28126574Value10 := (block28126574Value0) width: (75).
    block28126574Value10
].
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := [:block28126598Arg1 | 
    | block28126598Value0 block28126598Value1 block28126598Value2 block28126598Value3 block28126598Value4 block28126598Value5 block28126598Value6 block28126598Value7 block28126598Value8 block28126598Value9 block28126598Value10 |
    block28126598Value0 := block28126598Arg1.
    block28126598Value1 := block28126598Value0.
    (block28126598Value1) x: (405).
    block28126598Value2 := block28126598Value0.
    (block28126598Value2) marginRight: (10).
    block28126598Value3 := block28126598Value0.
    block28126598Value4 := EtMenuCancel.
    (block28126598Value3) labelString: (block28126598Value4).
    block28126598Value5 := block28126598Value0.
    (block28126598Value5) marginWidth: (0).
    block28126598Value6 := block28126598Value0.
    (block28126598Value6) marginHeight: (0).
    block28126598Value7 := block28126598Value0.
    (block28126598Value7) y: (50).
    block28126598Value8 := block28126598Value0.
    (block28126598Value8) height: (30).
    block28126598Value9 := block28126598Value0.
    (block28126598Value9) marginBottom: (10).
    block28126598Value10 := (block28126598Value0) width: (75).
    block28126598Value10
].
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := [:recoveredBlock335Arg1 | 
    | recoveredBlock335Value0 recoveredBlock335Value1 recoveredBlock335Value2 recoveredBlock335Value3 recoveredBlock335Value4 |
    recoveredBlock335Value0 := recoveredBlock335Arg1.
    recoveredBlock335Value1 := recoveredBlock335Value0.
    recoveredBlock335Value2 := (self) dbWidgetOptions.
    (recoveredBlock335Value1) dbWidgetOptions: (recoveredBlock335Value2).
    recoveredBlock335Value3 := recoveredBlock335Value0.
    (recoveredBlock335Value3) y: (38).
    recoveredBlock335Value4 := (recoveredBlock335Value0) x: (32).
    recoveredBlock335Value4
].
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasDatabaseWidget: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := 'anEtasDatabaseWidgetOneList1'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := 'splitBar'.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := [:block281265bcArg1 | 
    | block281265bcValue0 block281265bcValue1 block281265bcValue2 block281265bcValue3 block281265bcValue4 block281265bcValue5 block281265bcValue6 block281265bcValue7 block281265bcValue8 block281265bcValue9 block281265bcValue10 block281265bcValue11 |
    block281265bcValue0 := block281265bcArg1.
    block281265bcValue1 := block281265bcValue0.
    block281265bcValue2 := CgRGBColor.
    block281265bcValue3 := (block281265bcValue2) gray.
    (block281265bcValue1) foregroundColor: (block281265bcValue3).
    block281265bcValue4 := block281265bcValue0.
    (block281265bcValue4) x: (243).
    block281265bcValue5 := block281265bcValue0.
    block281265bcValue6 := XmVERTICAL.
    (block281265bcValue5) orientation: (block281265bcValue6).
    block281265bcValue7 := block281265bcValue0.
    (block281265bcValue7) y: (5).
    block281265bcValue8 := block281265bcValue0.
    (block281265bcValue8) height: (480).
    block281265bcValue9 := block281265bcValue0.
    (block281265bcValue9) width: (7).
    block281265bcValue10 := XmTABGROUP.
    block281265bcValue11 := (block281265bcValue0) navigationType: (block281265bcValue10).
    block281265bcValue11
].
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSplitBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack2 := 'splitBar'.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack2 := 'itemFormLab'.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack3 := [:recoveredBlock462Arg1 | 
    | recoveredBlock462Value0 recoveredBlock462Value1 recoveredBlock462Value2 recoveredBlock462Value3 recoveredBlock462Value4 recoveredBlock462Value5 |
    recoveredBlock462Value0 := recoveredBlock462Arg1.
    recoveredBlock462Value1 := recoveredBlock462Value0.
    recoveredBlock462Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock462Value1) alignment: (recoveredBlock462Value2).
    recoveredBlock462Value3 := recoveredBlock462Value0.
    (recoveredBlock462Value3) labelString: ('&3 Contents').
    recoveredBlock462Value4 := recoveredBlock462Value0.
    recoveredBlock462Value5 := (self) defaultLabelBlue.
    (recoveredBlock462Value4) foregroundColor: (recoveredBlock462Value5).
    recoveredBlock462Value0
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack2 := 'itemFormLab'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := 'itemForm'.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack3 := [:block281265e0Arg1 | 
    | block281265e0Value0 block281265e0Value1 block281265e0Value2 |
    block281265e0Value0 := block281265e0Arg1.
    block281265e0Value1 := block281265e0Value0.
    (block281265e0Value1) y: (5).
    block281265e0Value2 := (block281265e0Value0) x: (252).
    block281265e0Value2
].
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'itemForm'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack2 := [:recoveredBlock566Arg1 | 
    | recoveredBlock566Value0 recoveredBlock566Value1 recoveredBlock566Value2 |
    recoveredBlock566Value0 := recoveredBlock566Arg1.
    recoveredBlock566Value1 := recoveredLocal8.
    recoveredBlock566Value2 := (recoveredBlock566Value0) workWindow: (recoveredBlock566Value1).
    recoveredBlock566Value2
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := [:recoveredBlock590Arg1 | 
    | recoveredBlock590Value0 recoveredBlock590Value1 recoveredBlock590Value2 recoveredBlock590Value3 recoveredBlock590Value4 recoveredBlock590Value5 recoveredBlock590Value6 recoveredBlock590Value7 recoveredBlock590Value8 recoveredBlock590Value9 recoveredBlock590Value10 recoveredBlock590Value11 |
    recoveredBlock590Value0 := recoveredBlock590Arg1.
    recoveredBlock590Value1 := recoveredBlock590Value0.
    recoveredBlock590Value2 := XmATTACHFORM.
    (recoveredBlock590Value1) bottomAttachment: (recoveredBlock590Value2).
    recoveredBlock590Value3 := recoveredBlock590Value0.
    (recoveredBlock590Value3) bottomOffset: (10).
    recoveredBlock590Value4 := recoveredBlock590Value0.
    recoveredBlock590Value5 := XmATTACHFORM.
    (recoveredBlock590Value4) topAttachment: (recoveredBlock590Value5).
    recoveredBlock590Value6 := recoveredBlock590Value0.
    (recoveredBlock590Value6) topOffset: (10).
    recoveredBlock590Value7 := recoveredBlock590Value0.
    recoveredBlock590Value8 := XmATTACHWIDGET.
    (recoveredBlock590Value7) rightAttachment: (recoveredBlock590Value8).
    recoveredBlock590Value9 := recoveredBlock590Value0.
    recoveredBlock590Value10 := recoveredLocal6.
    (recoveredBlock590Value9) rightWidget: (recoveredBlock590Value10).
    recoveredBlock590Value11 := (recoveredBlock590Value0) rightOffset: (10).
    recoveredBlock590Value11
].
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack2 := [:block28126604Arg1 | 
    | block28126604Value0 block28126604Value1 block28126604Value2 block28126604Value3 block28126604Value4 block28126604Value5 block28126604Value6 |
    block28126604Value0 := block28126604Arg1.
    block28126604Value1 := block28126604Value0.
    block28126604Value2 := XmATTACHFORM.
    (block28126604Value1) topAttachment: (block28126604Value2).
    block28126604Value3 := block28126604Value0.
    (block28126604Value3) topOffset: (10).
    block28126604Value4 := block28126604Value0.
    block28126604Value5 := XmATTACHFORM.
    (block28126604Value4) rightAttachment: (block28126604Value5).
    block28126604Value6 := (block28126604Value0) rightOffset: (10).
    block28126604Value6
].
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack2 := [:recoveredBlock706Arg1 | 
    | recoveredBlock706Value0 recoveredBlock706Value1 recoveredBlock706Value2 recoveredBlock706Value3 recoveredBlock706Value4 recoveredBlock706Value5 recoveredBlock706Value6 recoveredBlock706Value7 recoveredBlock706Value8 |
    recoveredBlock706Value0 := recoveredBlock706Arg1.
    recoveredBlock706Value1 := recoveredBlock706Value0.
    recoveredBlock706Value2 := XmATTACHWIDGET.
    (recoveredBlock706Value1) topAttachment: (recoveredBlock706Value2).
    recoveredBlock706Value3 := recoveredBlock706Value0.
    recoveredBlock706Value4 := recoveredLocal6.
    (recoveredBlock706Value3) topWidget: (recoveredBlock706Value4).
    recoveredBlock706Value5 := recoveredBlock706Value0.
    (recoveredBlock706Value5) topOffset: (10).
    recoveredBlock706Value6 := recoveredBlock706Value0.
    recoveredBlock706Value7 := XmATTACHFORM.
    (recoveredBlock706Value6) rightAttachment: (recoveredBlock706Value7).
    recoveredBlock706Value8 := (recoveredBlock706Value0) rightOffset: (10).
    recoveredBlock706Value8
].
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack2 := [:recoveredBlock760Arg1 | 
    | recoveredBlock760Value0 recoveredBlock760Value1 recoveredBlock760Value2 recoveredBlock760Value3 recoveredBlock760Value4 recoveredBlock760Value5 recoveredBlock760Value6 recoveredBlock760Value7 recoveredBlock760Value8 recoveredBlock760Value9 recoveredBlock760Value10 recoveredBlock760Value11 recoveredBlock760Value12 recoveredBlock760Value13 recoveredBlock760Value14 |
    recoveredBlock760Value0 := recoveredBlock760Arg1.
    recoveredBlock760Value1 := recoveredBlock760Value0.
    recoveredBlock760Value2 := XmATTACHFORM.
    (recoveredBlock760Value1) bottomAttachment: (recoveredBlock760Value2).
    recoveredBlock760Value3 := recoveredBlock760Value0.
    (recoveredBlock760Value3) bottomOffset: (5).
    recoveredBlock760Value4 := recoveredBlock760Value0.
    recoveredBlock760Value5 := XmATTACHFORM.
    (recoveredBlock760Value4) topAttachment: (recoveredBlock760Value5).
    recoveredBlock760Value6 := recoveredBlock760Value0.
    (recoveredBlock760Value6) topOffset: (5).
    recoveredBlock760Value7 := recoveredBlock760Value0.
    recoveredBlock760Value8 := XmATTACHFORM.
    (recoveredBlock760Value7) leftAttachment: (recoveredBlock760Value8).
    recoveredBlock760Value9 := recoveredBlock760Value0.
    (recoveredBlock760Value9) leftOffset: (5).
    recoveredBlock760Value10 := recoveredBlock760Value0.
    recoveredBlock760Value11 := XmATTACHWIDGET.
    (recoveredBlock760Value10) rightAttachment: (recoveredBlock760Value11).
    recoveredBlock760Value12 := recoveredBlock760Value0.
    recoveredBlock760Value13 := recoveredLocal3.
    (recoveredBlock760Value12) rightWidget: (recoveredBlock760Value13).
    recoveredBlock760Value14 := (recoveredBlock760Value0) rightOffset: (5).
    recoveredBlock760Value14
].
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack2 := [:recoveredBlock842Arg1 | 
    | recoveredBlock842Value0 recoveredBlock842Value1 recoveredBlock842Value2 recoveredBlock842Value3 recoveredBlock842Value4 recoveredBlock842Value5 recoveredBlock842Value6 recoveredBlock842Value7 recoveredBlock842Value8 recoveredBlock842Value9 recoveredBlock842Value10 recoveredBlock842Value11 |
    recoveredBlock842Value0 := recoveredBlock842Arg1.
    recoveredBlock842Value1 := recoveredBlock842Value0.
    recoveredBlock842Value2 := XmATTACHPOSITION.
    (recoveredBlock842Value1) rightAttachment: (recoveredBlock842Value2).
    recoveredBlock842Value3 := recoveredBlock842Value0.
    recoveredBlock842Value4 := (self) class.
    recoveredBlock842Value5 := (recoveredBlock842Value4) splitBarPosition.
    (recoveredBlock842Value3) rightPosition: (recoveredBlock842Value5).
    recoveredBlock842Value6 := recoveredBlock842Value0.
    recoveredBlock842Value7 := XmATTACHFORM.
    (recoveredBlock842Value6) bottomAttachment: (recoveredBlock842Value7).
    recoveredBlock842Value8 := recoveredBlock842Value0.
    (recoveredBlock842Value8) bottomOffset: (5).
    recoveredBlock842Value9 := recoveredBlock842Value0.
    recoveredBlock842Value10 := XmATTACHFORM.
    (recoveredBlock842Value9) topAttachment: (recoveredBlock842Value10).
    recoveredBlock842Value11 := (recoveredBlock842Value0) topOffset: (5).
    recoveredBlock842Value11
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredStack2 := [:recoveredBlock910Arg1 | 
    | recoveredBlock910Value0 recoveredBlock910Value1 recoveredBlock910Value2 recoveredBlock910Value3 recoveredBlock910Value4 recoveredBlock910Value5 recoveredBlock910Value6 recoveredBlock910Value7 recoveredBlock910Value8 recoveredBlock910Value9 recoveredBlock910Value10 recoveredBlock910Value11 recoveredBlock910Value12 recoveredBlock910Value13 |
    recoveredBlock910Value0 := recoveredBlock910Arg1.
    recoveredBlock910Value1 := recoveredBlock910Value0.
    recoveredBlock910Value2 := XmATTACHFORM.
    (recoveredBlock910Value1) topAttachment: (recoveredBlock910Value2).
    recoveredBlock910Value3 := recoveredBlock910Value0.
    (recoveredBlock910Value3) topOffset: (5).
    recoveredBlock910Value4 := recoveredBlock910Value0.
    recoveredBlock910Value5 := XmATTACHWIDGET.
    (recoveredBlock910Value4) leftAttachment: (recoveredBlock910Value5).
    recoveredBlock910Value6 := recoveredBlock910Value0.
    recoveredBlock910Value7 := recoveredLocal3.
    (recoveredBlock910Value6) leftWidget: (recoveredBlock910Value7).
    recoveredBlock910Value8 := recoveredBlock910Value0.
    (recoveredBlock910Value8) leftOffset: (5).
    recoveredBlock910Value9 := recoveredBlock910Value0.
    recoveredBlock910Value10 := XmATTACHWIDGET.
    (recoveredBlock910Value9) rightAttachment: (recoveredBlock910Value10).
    recoveredBlock910Value11 := recoveredBlock910Value0.
    recoveredBlock910Value12 := recoveredLocal7.
    (recoveredBlock910Value11) rightWidget: (recoveredBlock910Value12).
    recoveredBlock910Value13 := (recoveredBlock910Value0) rightOffset: (5).
    recoveredBlock910Value13
].
            recoveredPC := 978.
        ].
        recoveredStep = 978 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 983.
        ].
        recoveredStep = 983 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            recoveredStack2 := [:recoveredBlock986Arg1 | 
    | recoveredBlock986Value0 recoveredBlock986Value1 recoveredBlock986Value2 recoveredBlock986Value3 recoveredBlock986Value4 recoveredBlock986Value5 recoveredBlock986Value6 recoveredBlock986Value7 recoveredBlock986Value8 recoveredBlock986Value9 recoveredBlock986Value10 recoveredBlock986Value11 recoveredBlock986Value12 recoveredBlock986Value13 recoveredBlock986Value14 recoveredBlock986Value15 recoveredBlock986Value16 recoveredBlock986Value17 |
    recoveredBlock986Value0 := recoveredBlock986Arg1.
    recoveredBlock986Value1 := recoveredBlock986Value0.
    recoveredBlock986Value2 := XmATTACHFORM.
    (recoveredBlock986Value1) bottomAttachment: (recoveredBlock986Value2).
    recoveredBlock986Value3 := recoveredBlock986Value0.
    (recoveredBlock986Value3) bottomOffset: (5).
    recoveredBlock986Value4 := recoveredBlock986Value0.
    recoveredBlock986Value5 := XmATTACHWIDGET.
    (recoveredBlock986Value4) topAttachment: (recoveredBlock986Value5).
    recoveredBlock986Value6 := recoveredBlock986Value0.
    recoveredBlock986Value7 := recoveredLocal1.
    (recoveredBlock986Value6) topWidget: (recoveredBlock986Value7).
    recoveredBlock986Value8 := recoveredBlock986Value0.
    recoveredBlock986Value9 := XmATTACHWIDGET.
    (recoveredBlock986Value8) leftAttachment: (recoveredBlock986Value9).
    recoveredBlock986Value10 := recoveredBlock986Value0.
    recoveredBlock986Value11 := recoveredLocal3.
    (recoveredBlock986Value10) leftWidget: (recoveredBlock986Value11).
    recoveredBlock986Value12 := recoveredBlock986Value0.
    (recoveredBlock986Value12) leftOffset: (5).
    recoveredBlock986Value13 := recoveredBlock986Value0.
    recoveredBlock986Value14 := XmATTACHWIDGET.
    (recoveredBlock986Value13) rightAttachment: (recoveredBlock986Value14).
    recoveredBlock986Value15 := recoveredBlock986Value0.
    recoveredBlock986Value16 := recoveredLocal7.
    (recoveredBlock986Value15) rightWidget: (recoveredBlock986Value16).
    recoveredBlock986Value17 := (recoveredBlock986Value0) rightOffset: (5).
    recoveredBlock986Value17
].
            recoveredPC := 1070.
        ].
        recoveredStep = 1070 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1075.
        ].
        recoveredStep = 1075 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 1086.
        ].
        recoveredStep = 1086 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1091.
        ].
        recoveredStep = 1091 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1098.
        ].
        recoveredStep = 1098 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1103.
        ].
        recoveredStep = 1103 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 1113.
        ].
        recoveredStep = 1113 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 1116.
        ].
        recoveredStep = 1116 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1121.
        ].
        recoveredStep = 1121 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

