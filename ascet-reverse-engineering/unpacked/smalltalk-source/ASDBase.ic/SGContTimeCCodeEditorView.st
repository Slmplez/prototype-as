"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001b38c; bytecode file offset 0x92209c"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
specialWidgetStrings
    ^#('Normal')
! !

"ASDBase.ic method 0x20073380; bytecode file offset 0x970b34"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
createWindowMenu
    ^nil
! !

"ASDBase.ic method 0x2007956c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddTrigger
    ^false
! !

"ASDBase.ic method 0x20079e2c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canRenameMethod
    ^false
! !

"ASDBase.ic method 0x2007a7cc; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
isMoveMethodVisible
    ^false
! !

"ASDBase.ic method 0x2007a914; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canMenuShiftUp
    ^false
! !

"ASDBase.ic method 0x2007adb4; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
isInsertMethodVisible
    ^false
! !

"ASDBase.ic method 0x2007b85c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddRunnable
    ^false
! !

"ASDBase.ic method 0x2007c014; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
isMoveMethodToVisible
    ^false
! !

"ASDBase.ic method 0x2007c284; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canRemoveMethod
    ^false
! !

"ASDBase.ic method 0x2007c674; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canCopyMethod
    ^false
! !

"ASDBase.ic method 0x2007ce4c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canDeleteDiagram
    ^false
! !

"ASDBase.ic method 0x2007d45c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddAction
    ^false
! !

"ASDBase.ic method 0x2007d50c; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
isInsertDiagramVisible
    ^false
! !

"ASDBase.ic method 0x2007d874; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
isInsertProcessVisible
    ^false
! !

"ASDBase.ic method 0x2007efd4; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddDiagram
    ^false
! !

"ASDBase.ic method 0x2007f0d4; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddCondition
    ^false
! !

"ASDBase.ic method 0x2007f194; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddMethod
    ^false
! !

"ASDBase.ic method 0x2007f2ac; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canMenuShiftDown
    ^false
! !

"ASDBase.ic method 0x2007fa44; bytecode file offset 0x97c330"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
canAddProcess
    ^false
! !

"ASDBase.ic method 0x200d5fdc; bytecode file offset 0x9d3134"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
updateContents
    super updateContents.
    (self) updateDirectNondirectBox.
    ^self
! !

"ASDBase.ic method 0x2011405c; bytecode file offset 0xa10920"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
specListchildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) item.
    recoveredValue2 := (self) uiController.
    recoveredValue3 := (recoveredValue2) item.
    recoveredValue4 := (recoveredValue1) visualCallBackChildren: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) children: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2011c8f8; bytecode file offset 0xa191ec"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
updateSpecific
    super updateSpecific.
    (self) modified: (false).
    (self) updateMethodList.
    ^self
! !

"ASDBase.ic method 0x20236ca4; bytecode file offset 0xb33570"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
updateDirectNondirectBox
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockBehaviourBox.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDirect.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'direct'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'nondirect'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x20397d54; bytecode file offset 0xc9462c"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
blockBehaviourSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) userData.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isToSave.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) updateDirectNondirectBox.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) modified: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'direct'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'nondirect'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) switchToDirect: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) updateDirectNondirectBox.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x204615d8; bytecode file offset 0xd5dee0"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
visiblePaletteButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) add: ('ElementsSelectionScalarArray').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) add: ('SeparatorLine').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) add: ('ElementsCTInput').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) add: ('ElementsCTOutput').
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) add: ('ElementsCTVariableStepLocal').
    recoveredValue12 := recoveredValue6.
    (recoveredValue12) add: ('SeparatorLine').
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) add: ('ElementsCTParameter').
    recoveredValue14 := recoveredValue6.
    (recoveredValue14) add: ('ElementsCTParameterDependent').
    recoveredValue15 := recoveredValue6.
    (recoveredValue15) add: ('SeparatorLine').
    recoveredValue16 := recoveredValue6.
    (recoveredValue16) add: ('ElementsCTStateDiscrete').
    recoveredValue17 := recoveredValue6.
    (recoveredValue17) add: ('ElementsCTStateContinuous').
    recoveredValue18 := recoveredValue6.
    (recoveredValue18) add: ('ElementsCTConstant').
    recoveredValue19 := recoveredValue6.
    (recoveredValue19) add: ('ElementsVariableContinuous').
    recoveredValue20 := recoveredValue6.
    (recoveredValue20) add: ('SeparatorLine').
    recoveredValue21 := recoveredValue6.
    (recoveredValue21) add: ('ElementsTableOneD').
    recoveredValue22 := recoveredValue6.
    (recoveredValue22) add: ('ElementsTableTwoD').
    recoveredValue23 := recoveredLocal3.
    recoveredValue24 := (self) class.
    recoveredValue25 := (recoveredValue24) paletteElementsName.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue23) at: (recoveredValue25) put: (recoveredValue26).
    recoveredValue27 := recoveredLocal3.
    recoveredValue28 := (self) class.
    recoveredValue29 := (recoveredValue28) paletteBasicBlocksName.
    recoveredValue30 := recoveredLocal1.
    (recoveredValue27) at: (recoveredValue29) put: (recoveredValue30).
    recoveredValue31 := recoveredLocal3.
    ^recoveredValue31
! !

"ASDBase.ic method 0x2053f778; bytecode file offset 0xe3c0c0"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
writeDefaultToolbarConfiguration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) add: ('GeneralFileSave').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) add: ('GeneralPrint').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) add: ('Separator').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) add: ('GeneralCut').
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) add: ('GeneralCopy').
    recoveredValue12 := recoveredValue6.
    (recoveredValue12) add: ('GeneralPaste').
    recoveredValue13 := recoveredValue6.
    (recoveredValue13) add: ('GeneralDelete').
    recoveredValue14 := recoveredValue6.
    (recoveredValue14) add: ('Separator').
    recoveredValue15 := recoveredValue6.
    (recoveredValue15) add: ('GeneralUndo').
    recoveredValue16 := recoveredValue6.
    (recoveredValue16) add: ('GeneralRedo').
    recoveredValue17 := recoveredValue6.
    (recoveredValue17) add: ('Separator').
    recoveredValue18 := recoveredValue6.
    (recoveredValue18) add: ('GeneralEditData').
    recoveredValue19 := recoveredValue6.
    (recoveredValue19) add: ('Separator').
    recoveredValue20 := recoveredValue6.
    (recoveredValue20) add: ('GeneralComponentAdd').
    recoveredValue21 := recoveredValue6.
    (recoveredValue21) add: ('Separator').
    recoveredValue22 := recoveredValue6.
    (recoveredValue22) add: ('GeneralCodeGenerate').
    recoveredValue23 := recoveredValue6.
    (recoveredValue23) add: ('GeneralCodeCompile').
    recoveredValue24 := recoveredValue6.
    (recoveredValue24) add: ('GeneralCodeExperiment').
    recoveredValue25 := recoveredValue6.
    (recoveredValue25) add: ('GeneralSelectionExperimentTarget').
    recoveredValue26 := recoveredValue6.
    (recoveredValue26) add: ('EditorExternalSource').
    recoveredValue27 := recoveredValue6.
    (recoveredValue27) add: ('EditorExternalEditor').
    recoveredValue28 := recoveredValue6.
    (recoveredValue28) add: ('ElementsSelectionBlockBehaviour').
    recoveredValue29 := recoveredLocal2.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) add: ('ElementsTableOneD').
    recoveredValue31 := recoveredValue29.
    (recoveredValue31) add: ('ElementsTableTwoD').
    recoveredValue32 := recoveredValue29.
    (recoveredValue32) add: ('Separator').
    recoveredValue33 := recoveredValue29.
    (recoveredValue33) add: ('ElementsCTInput').
    recoveredValue34 := recoveredValue29.
    (recoveredValue34) add: ('ElementsCTOutput').
    recoveredValue35 := recoveredValue29.
    (recoveredValue35) add: ('ElementsCTVariableStepLocal').
    recoveredValue36 := recoveredValue29.
    (recoveredValue36) add: ('ElementsCTParameter').
    recoveredValue37 := recoveredValue29.
    (recoveredValue37) add: ('ElementsCTParameterDependent').
    recoveredValue38 := recoveredValue29.
    (recoveredValue38) add: ('ElementsCTStateDiscrete').
    recoveredValue39 := recoveredValue29.
    (recoveredValue39) add: ('ElementsCTStateContinuous').
    recoveredValue40 := recoveredValue29.
    (recoveredValue40) add: ('ElementsCTConstant').
    recoveredValue41 := recoveredValue29.
    (recoveredValue41) add: ('ElementsSelectionScalarArray').
    recoveredValue42 := recoveredValue29.
    (recoveredValue42) add: ('ElementsVariableContinuous').
    recoveredValue43 := (self) userInterfaceManager.
    recoveredValue44 := recoveredValue43.
    recoveredValue45 := recoveredLocal3.
    recoveredValue46 := (self) toolbarGeneralsName.
    (recoveredValue44) writeToolbarConfiguration: (recoveredValue45) toolbar: (recoveredValue46).
    recoveredValue47 := recoveredLocal2.
    recoveredValue48 := (self) toolbarElementsName.
    (recoveredValue43) writeToolbarConfiguration: (recoveredValue47) toolbar: (recoveredValue48).
    ^self
! !

"ASDBase.ic method 0x20541584; bytecode file offset 0xe3dedc"
!SGContTimeCCodeEditorView methodsFor: 'recovered'!
availableToolbarButtons
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 |
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
    (recoveredValue8) add: ('GeneralUndo').
    recoveredValue9 := recoveredLocal3.
    (recoveredValue9) add: ('GeneralRedo').
    recoveredValue10 := recoveredLocal3.
    (recoveredValue10) add: ('GeneralEditData').
    recoveredValue11 := recoveredLocal3.
    (recoveredValue11) add: ('GeneralEditDefaultProject').
    recoveredValue12 := recoveredLocal3.
    (recoveredValue12) add: ('GeneralCodeGenerate').
    recoveredValue13 := recoveredLocal3.
    (recoveredValue13) add: ('GeneralCodeCompile').
    recoveredValue14 := recoveredLocal3.
    (recoveredValue14) add: ('GeneralCodeExperiment').
    recoveredValue15 := recoveredLocal3.
    (recoveredValue15) add: ('GeneralSelectionExperimentTarget').
    recoveredValue16 := recoveredLocal3.
    (recoveredValue16) add: ('EditorExternalSource').
    recoveredValue17 := recoveredLocal3.
    (recoveredValue17) add: ('EditorExternalEditor').
    recoveredValue18 := recoveredLocal3.
    (recoveredValue18) add: ('Separator').
    recoveredValue19 := recoveredLocal3.
    (recoveredValue19) add: ('GeneralCut').
    recoveredValue20 := recoveredLocal3.
    (recoveredValue20) add: ('GeneralCopy').
    recoveredValue21 := recoveredLocal3.
    (recoveredValue21) add: ('GeneralPaste').
    recoveredValue22 := recoveredLocal3.
    (recoveredValue22) add: ('GeneralDelete').
    recoveredValue23 := recoveredLocal3.
    (recoveredValue23) add: ('GeneralPrint').
    recoveredValue24 := recoveredLocal3.
    (recoveredValue24) add: ('GeneralFileSave').
    recoveredValue25 := recoveredLocal3.
    (recoveredValue25) add: ('ElementsSelectionBlockBehaviour').
    recoveredValue26 := recoveredLocal3.
    (recoveredValue26) add: ('GeneralOptions').
    recoveredValue27 := recoveredLocal3.
    (recoveredValue27) add: ('GeneralComponentAdd').
    recoveredValue28 := recoveredLocal3.
    (recoveredValue28) add: ('EditorNavigateUp').
    recoveredValue29 := recoveredLocal2.
    (recoveredValue29) add: ('ElementsCTInput').
    recoveredValue30 := recoveredLocal2.
    (recoveredValue30) add: ('ElementsCTOutput').
    recoveredValue31 := recoveredLocal2.
    (recoveredValue31) add: ('ElementsCTVariableStepLocal').
    recoveredValue32 := recoveredLocal2.
    (recoveredValue32) add: ('ElementsCTParameter').
    recoveredValue33 := recoveredLocal2.
    (recoveredValue33) add: ('ElementsCTParameterDependent').
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) add: ('ElementsCTStateDiscrete').
    recoveredValue35 := recoveredLocal2.
    (recoveredValue35) add: ('ElementsCTStateContinuous').
    recoveredValue36 := recoveredLocal2.
    (recoveredValue36) add: ('ElementsCTConstant').
    recoveredValue37 := recoveredLocal2.
    (recoveredValue37) add: ('ElementsVariableContinuous').
    recoveredValue38 := recoveredLocal2.
    (recoveredValue38) add: ('ElementsSelectionScalarArray').
    recoveredValue39 := recoveredLocal2.
    (recoveredValue39) add: ('ElementsTableOneD').
    recoveredValue40 := recoveredLocal2.
    (recoveredValue40) add: ('ElementsTableTwoD').
    recoveredValue41 := recoveredLocal2.
    (recoveredValue41) add: ('Separator').
    recoveredValue42 := recoveredLocal4.
    recoveredValue43 := (self) toolbarGeneralsName.
    recoveredValue44 := recoveredLocal3.
    (recoveredValue42) at: (recoveredValue43) put: (recoveredValue44).
    recoveredValue45 := recoveredLocal4.
    recoveredValue46 := (self) toolbarElementsName.
    recoveredValue47 := recoveredLocal2.
    (recoveredValue45) at: (recoveredValue46) put: (recoveredValue47).
    recoveredValue48 := recoveredLocal4.
    recoveredValue49 := (self) toolbarBasicBlocksName.
    recoveredValue50 := recoveredLocal1.
    (recoveredValue48) at: (recoveredValue49) put: (recoveredValue50).
    recoveredValue51 := recoveredLocal4.
    ^recoveredValue51
! !

