"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20417308; bytecode file offset 0xd13c0c"
!ASDRecordView methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    (recoveredValue4) add: ('Separator').
    recoveredValue5 := recoveredLocal3.
    (recoveredValue5) add: ('GeneralUndo').
    recoveredValue6 := recoveredLocal3.
    (recoveredValue6) add: ('GeneralRedo').
    recoveredValue7 := recoveredLocal3.
    (recoveredValue7) add: ('GeneralEditData').
    recoveredValue8 := recoveredLocal3.
    (recoveredValue8) add: ('GeneralEditImplementation').
    recoveredValue9 := recoveredLocal3.
    (recoveredValue9) add: ('GeneralCut').
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) add: ('GeneralCopy').
    recoveredValue11 := recoveredLocal3.
    (recoveredValue11) add: ('GeneralPaste').
    recoveredValue12 := recoveredLocal3.
    (recoveredValue12) add: ('GeneralDelete').
    recoveredValue13 := recoveredLocal3.
    (recoveredValue13) add: ('GeneralComponentAdd').
    recoveredValue14 := recoveredLocal2.
    (recoveredValue14) add: ('Separator').
    recoveredValue15 := recoveredLocal2.
    (recoveredValue15) add: ('ElementsVariable').
    recoveredValue16 := recoveredLocal2.
    (recoveredValue16) add: ('ElementsVariableArray').
    recoveredValue17 := recoveredLocal2.
    (recoveredValue17) add: ('ElementsVariableMatrix').
    recoveredValue18 := (self) userInterfaceManager.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := (self) toolbarGeneralsName.
    (recoveredValue19) writeToolbarConfiguration: (recoveredValue20) toolbar: (recoveredValue21).
    recoveredValue22 := recoveredLocal2.
    recoveredValue23 := (self) toolbarElementsName.
    (recoveredValue18) writeToolbarConfiguration: (recoveredValue22) toolbar: (recoveredValue23).
    ^self
! !

"ASDBase.ic method 0x204173c4; bytecode file offset 0xd13ccc"
!ASDRecordView methodsFor: 'recovered'!
visiblePaletteButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'ElementsVariableLogic'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionUseSignedUnsignedDiscreteTypes.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'ElementsVariableSignedDiscrete'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'ElementsVariableUnsignedDiscrete'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'ElementsVariableLimitedInteger'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'ElementsVariableWrapAroundInteger'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'ElementsVariableContinuous'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'ElementsVariableEnumeration'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'SeparatorLine'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'ElementsVariableArray'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'ElementsVariableMatrix'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) paletteElementsName.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) paletteBasicBlocksName.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204727f8; bytecode file offset 0xd6f108"
!ASDRecordView methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := OrderedCollection.
    recoveredValue7 := (recoveredValue6) new.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal3.
    (recoveredValue8) add: ('Separator').
    recoveredValue9 := recoveredLocal3.
    (recoveredValue9) add: ('GeneralUndo').
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) add: ('GeneralRedo').
    recoveredValue11 := recoveredLocal3.
    (recoveredValue11) add: ('GeneralEditData').
    recoveredValue12 := recoveredLocal3.
    (recoveredValue12) add: ('GeneralEditImplementation').
    recoveredValue13 := recoveredLocal3.
    (recoveredValue13) add: ('GeneralCut').
    recoveredValue14 := recoveredLocal3.
    (recoveredValue14) add: ('GeneralCopy').
    recoveredValue15 := recoveredLocal3.
    (recoveredValue15) add: ('GeneralPaste').
    recoveredValue16 := recoveredLocal3.
    (recoveredValue16) add: ('GeneralDelete').
    recoveredValue17 := recoveredLocal3.
    (recoveredValue17) add: ('GeneralOptions').
    recoveredValue18 := recoveredLocal3.
    (recoveredValue18) add: ('GeneralComponentAdd').
    recoveredValue19 := recoveredLocal3.
    (recoveredValue19) add: ('EditorNavigateUp').
    recoveredValue20 := recoveredLocal2.
    (recoveredValue20) add: ('Separator').
    recoveredValue21 := recoveredLocal2.
    (recoveredValue21) add: ('ElementsVariable').
    recoveredValue22 := recoveredLocal2.
    (recoveredValue22) add: ('ElementsVariableArray').
    recoveredValue23 := recoveredLocal2.
    (recoveredValue23) add: ('ElementsVariableMatrix').
    recoveredValue24 := recoveredLocal4.
    recoveredValue25 := (self) toolbarGeneralsName.
    recoveredValue26 := recoveredLocal3.
    (recoveredValue24) at: (recoveredValue25) put: (recoveredValue26).
    recoveredValue27 := recoveredLocal4.
    recoveredValue28 := (self) toolbarElementsName.
    recoveredValue29 := recoveredLocal2.
    (recoveredValue27) at: (recoveredValue28) put: (recoveredValue29).
    recoveredValue30 := recoveredLocal4.
    recoveredValue31 := (self) toolbarBasicBlocksName.
    recoveredValue32 := recoveredLocal1.
    (recoveredValue30) at: (recoveredValue31) put: (recoveredValue32).
    recoveredValue33 := recoveredLocal4.
    ^recoveredValue33
! !

