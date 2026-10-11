"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200141a8; bytecode file offset 0x912098"
!RBCalibrationWindow class methodsFor: 'recovered'!
getObjectInformationViewClass
    | recoveredValue0 |
    recoveredValue0 := RBObjectInformationView.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001566c; bytecode file offset 0x912098"
!RBCalibrationWindow class methodsFor: 'recovered'!
defaultWindowConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBCalViewConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f4cc; bytecode file offset 0x92209c"
!RBCalibrationWindow class methodsFor: 'recovered'!
configVersion
    ^'1.0'
! !

"ASDBase.ic method 0x20021cec; bytecode file offset 0x92209c"
!RBCalibrationWindow class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('KL' 'FKl' 'GKl' 'KF' 'FKf' 'GKf' 'KW' 'KWb' 'FWb' 'GSst' 'Mem')
! !

"ASDBase.ic method 0x2003ede8; bytecode file offset 0x93bf94"
!RBCalibrationWindow class methodsFor: 'recovered'!
getDataIdList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20046b8c; bytecode file offset 0x9451f8"
!RBCalibrationWindow class methodsFor: 'recovered'!
defaultGroupDistributionViewClasses
    | recoveredValue0 |
    recoveredValue0 := (self) allEditorClassesFor: ('GSt').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048d68; bytecode file offset 0x945728"
!RBCalibrationWindow class methodsFor: 'recovered'!
freeEditDataDict
    EditDataDict := nil.
    ^self
! !

"ASDBase.ic method 0x2005ca28; bytecode file offset 0x959680"
!RBCalibrationWindow class methodsFor: 'recovered'!
minFreeGDIResources
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDCalibrationEditorOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) optionCalibrationEditorGDIBounds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20070494; bytecode file offset 0x96ce40"
!RBCalibrationWindow class methodsFor: 'recovered'!
windowPositionDict
    | recoveredValue0 |
    recoveredValue0 := windowPositionDict.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074c14; bytecode file offset 0x9757c8"
!RBCalibrationWindow class methodsFor: 'recovered'!
checkFreeRessources
    ^true
! !

"ASDBase.ic method 0x200c69bc; bytecode file offset 0x9c3470"
!RBCalibrationWindow class methodsFor: 'recovered'!
windowPositionDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    windowPositionDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cfe48; bytecode file offset 0x9cc7b4"
!RBCalibrationWindow class methodsFor: 'recovered'!
basicLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GMVNumericEditor.
    recoveredValue1 := ('[') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (']').
    ^recoveredValue2
! !

"ASDBase.ic method 0x2010529c; bytecode file offset 0xa01b84"
!RBCalibrationWindow class methodsFor: 'recovered'!
showValueChanges
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ShowChanges.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ShowChanges := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ShowChanges.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20149308; bytecode file offset 0xa45c74"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorRightBoundsExceeded
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := GMVRightBoundsExceeded.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20149368; bytecode file offset 0xa45c74"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorLeftBoundsExceeded
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := GMVLeftBoundsExceeded.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201493a8; bytecode file offset 0xa45c74"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorFixedDistributionSize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := FixedAxisPointNumber.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := UserInterface.
    (recoveredValue4) context: (recoveredValue5).
    recoveredValue6 := (recoveredValue3) prompt.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2014c708; bytecode file offset 0xa48fd0"
!RBCalibrationWindow class methodsFor: 'recovered'!
resetRegistrationDictionaries
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    GraphEditorClasses := recoveredValue1.
    recoveredValue2 := Dictionary.
    recoveredValue3 := (recoveredValue2) new.
    NumericEditorClasses := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    SpecificationClasses := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20178940; bytecode file offset 0xa75214"
!RBCalibrationWindow class methodsFor: 'recovered'!
getConvertedViewConfiguration: recoveredArg1 version: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) configVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultWindowConfigObjectClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForConfig: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20178954; bytecode file offset 0xa75214"
!RBCalibrationWindow class methodsFor: 'recovered'!
getConvertedDataDisplayConfiguration: recoveredArg1 version: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) configVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultDataConfigObjectClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForConfig: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198950; bytecode file offset 0xa95274"
!RBCalibrationWindow class methodsFor: 'recovered'!
messageStopAcquisitionBeforeChangingWorkingPoint
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := NoAddRemoveWorkingPointDuringAcquisition.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := AdviceAddRemoveWorkingPoint.
    (recoveredValue4) advice: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := UserInterface.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := (recoveredValue3) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201989a0; bytecode file offset 0xa95274"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorInconsistentValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := DisplayInconsistentWithData.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := CloseEditor.
    (recoveredValue4) advice: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := UserInterface.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := (recoveredValue3) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2019cbdc; bytecode file offset 0xa99498"
!RBCalibrationWindow class methodsFor: 'recovered'!
manage: recoveredArg1 for: recoveredArg2 with: recoveredArg3
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) openCalibrationView: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bf1cc; bytecode file offset 0xabbaa0"
!RBCalibrationWindow class methodsFor: 'recovered'!
invalidAddressValidRanges: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := InvalidEditAddress.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) prompt.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201bf238; bytecode file offset 0xabbb0c"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorCannotRemoveLastArgs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue3) errorMessage: ('The variable must have at least %1 axis points. For that reason no axis point can be removed.') with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := UserInterface.
    (recoveredValue7) context: (recoveredValue8).
    recoveredValue9 := (recoveredValue6) prompt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201d0230; bytecode file offset 0xaccb08"
!RBCalibrationWindow class methodsFor: 'recovered'!
confirmStopWorkingPointAcquisition
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := ConfirmStopWorkingPointAcquisition.
    recoveredValue2 := (recoveredValue0) confirm: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) noYes.
    recoveredValue5 := recoveredValue3.
    recoveredValue6 := AdviceStopWorkingPointAcquisition.
    (recoveredValue5) advice: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := UserInterface.
    (recoveredValue7) context: (recoveredValue8).
    recoveredValue9 := (recoveredValue3) prompt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ef408; bytecode file offset 0xaebd64"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorMaxYDistributionSizeReached: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: ('y').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := MaxSupportingValueSizeReached.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) prompt.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ef48c; bytecode file offset 0xaebd64"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorMaxXDistributionSizeReached: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1) with: ('x').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := MaxSupportingValueSizeReached.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := (recoveredValue7) prompt.
    ^recoveredValue10
! !

"ASDBase.ic method 0x201ef7ec; bytecode file offset 0xaec0b8"
!RBCalibrationWindow class methodsFor: 'recovered'!
allSpecificationClassesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specificationClassesFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280d791cArg1 :block280d791cArg2 | 
    | block280d791cValue0 block280d791cValue1 block280d791cValue2 block280d791cValue3 block280d791cValue4 |
    block280d791cValue0 := block280d791cArg1.
    block280d791cValue1 := (block280d791cValue0) basicLabel.
    block280d791cValue2 := block280d791cArg2.
    block280d791cValue3 := (block280d791cValue2) basicLabel.
    block280d791cValue4 := (block280d791cValue1) < (block280d791cValue3).
    block280d791cValue4
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f38d0; bytecode file offset 0xaf01d0"
!RBCalibrationWindow class methodsFor: 'recovered'!
graphEditorClassesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GraphEditorClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := GraphEditorClasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f38ec; bytecode file offset 0xaf01d0"
!RBCalibrationWindow class methodsFor: 'recovered'!
specificationClassesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SpecificationClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := SpecificationClasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f3908; bytecode file offset 0xaf01d0"
!RBCalibrationWindow class methodsFor: 'recovered'!
numericEditorClassesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NumericEditorClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := NumericEditorClasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    #()
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fbff8; bytecode file offset 0xaf8904"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNoSetupInHexDisplayMode
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := RBUserInfo.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue2) errorMessage: ('No Setup possible in this display mode, because the underlying implementation type is float.') with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := UserInterface.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) advice: ('Change to physical display').
    recoveredValue9 := (recoveredValue5) prompt.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20209240; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNoPhysDisplay: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoPhysDisplay.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202092a0; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorCannotEditCurveWithOneArg: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := CannotEditCurveWithOneArg.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := OpenTableEditor.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20209300; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNotMonotonous: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NotMonotonousArgs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20209360; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
cannotAddSoManyChannels: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoAddingDataListOfSize.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := UserInterface.
    (recoveredValue8) context: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := AddFewerChannels.
    (recoveredValue10) advice: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x20209390; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNoPhysDisplayNotMonotonous: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoPhysDisplayNotMonotonousArgs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoPhysDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202093f0; bytecode file offset 0xb05ccc"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNoGraphDisplayNotMonotonous: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserInfo.
    recoveredValue4 := NoGraphDisplayNotMonotonousArgs.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) errorMessage: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := NoGraphDisplayAdvice.
    (recoveredValue8) advice: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := UserInterface.
    (recoveredValue10) context: (recoveredValue11).
    recoveredValue12 := (recoveredValue7) prompt.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2022330c; bytecode file offset 0xb1fc18"
!RBCalibrationWindow class methodsFor: 'recovered'!
errorNoPhysDisplay: recoveredArg1 bounds: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := RBUserInfo.
    recoveredValue5 := NoPhysDisplayWithBounds.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue4) errorMessage: (recoveredValue5) with: (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := NoPhysDisplayAdvice.
    (recoveredValue9) advice: (recoveredValue10).
    recoveredValue11 := recoveredValue8.
    recoveredValue12 := UserInterface.
    (recoveredValue11) context: (recoveredValue12).
    recoveredValue13 := (recoveredValue8) prompt.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2022e450; bytecode file offset 0xb2ad30"
!RBCalibrationWindow class methodsFor: 'recovered'!
lowGDIResources: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := RBUserQuestion.
    recoveredValue4 := LowGDIResources.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue3) confirm: (recoveredValue4) with: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) noYes.
    recoveredValue9 := recoveredValue7.
    recoveredValue10 := CloseSomeApplications.
    (recoveredValue9) advice: (recoveredValue10).
    recoveredValue11 := recoveredValue7.
    recoveredValue12 := UserInterface.
    (recoveredValue11) context: (recoveredValue12).
    recoveredValue13 := (recoveredValue7) prompt.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2022eb64; bytecode file offset 0xb2b43c"
!RBCalibrationWindow class methodsFor: 'recovered'!
confirmEditGroupDistributionOf: recoveredArg1 type: recoveredArg2 groupDistribution: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := RBUserQuestion.
    recoveredValue6 := ConfirmOpenGroupDistributionEditor.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue5) confirm: (recoveredValue6) with: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) yesNo.
    recoveredValue11 := recoveredValue9.
    recoveredValue12 := UserInterface.
    (recoveredValue11) context: (recoveredValue12).
    recoveredValue13 := (recoveredValue9) prompt.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2023a3f4; bytecode file offset 0xb36cc8"
!RBCalibrationWindow class methodsFor: 'recovered'!
allEditorClassesFor: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) graphEditorClassesFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) numericEditorClassesFor: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block280dd8bcArg1 :block280dd8bcArg2 | 
    | block280dd8bcValue0 block280dd8bcValue1 block280dd8bcValue2 block280dd8bcValue3 block280dd8bcValue4 |
    block280dd8bcValue0 := block280dd8bcArg1.
    block280dd8bcValue1 := (block280dd8bcValue0) basicLabel.
    block280dd8bcValue2 := block280dd8bcArg2.
    block280dd8bcValue3 := (block280dd8bcValue2) basicLabel.
    block280dd8bcValue4 := (block280dd8bcValue1) < (block280dd8bcValue3).
    block280dd8bcValue4
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028aad0; bytecode file offset 0xb87398"
!RBCalibrationWindow class methodsFor: 'recovered'!
create: recoveredArg1 for: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkValidElements: (recoveredStack2) forEditor: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkFreeRessources.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) manage: (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab65c; bytecode file offset 0xba7f68"
!RBCalibrationWindow class methodsFor: 'recovered'!
unregisterNumericEditorClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NumericEditorClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := NumericEditorClasses.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includesKey: (recoveredBlock15Stack3).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 42].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := NumericEditorClasses.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := [].
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) remove: (recoveredBlock15Stack2) ifAbsent: (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab67c; bytecode file offset 0xba7f68"
!RBCalibrationWindow class methodsFor: 'recovered'!
unregisterGraphEditorClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GraphEditorClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := GraphEditorClasses.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includes: (recoveredBlock15Stack3).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 42].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := GraphEditorClasses.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := [].
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) remove: (recoveredBlock15Stack2) ifAbsent: (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ab69c; bytecode file offset 0xba7f68"
!RBCalibrationWindow class methodsFor: 'recovered'!
unregisterSpecificationClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SpecificationClasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := SpecificationClasses.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Arg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) includes: (recoveredBlock15Stack3).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 42].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := SpecificationClasses.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) at: (recoveredBlock15Stack2).
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := [].
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) remove: (recoveredBlock15Stack2) ifAbsent: (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe250; bytecode file offset 0xbfab80"
!RBCalibrationWindow class methodsFor: 'recovered'!
registerGraphEditorClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GraphEditorClasses.
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
            GraphEditorClasses := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := GraphEditorClasses.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includesKey: (recoveredBlock18Stack2).
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := GraphEditorClasses.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack3 := Set.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) new.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) put: (recoveredBlock18Stack3).
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := GraphEditorClasses.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2).
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe27c; bytecode file offset 0xbfab80"
!RBCalibrationWindow class methodsFor: 'recovered'!
registerSpecificationClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SpecificationClasses.
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
            SpecificationClasses := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := SpecificationClasses.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includesKey: (recoveredBlock18Stack2).
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := SpecificationClasses.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack3 := Set.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) new.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) put: (recoveredBlock18Stack3).
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := SpecificationClasses.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2).
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe2a8; bytecode file offset 0xbfab80"
!RBCalibrationWindow class methodsFor: 'recovered'!
registerNumericEditorClass: recoveredArg1 forDataTypes: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := NumericEditorClasses.
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
            NumericEditorClasses := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := NumericEditorClasses.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includesKey: (recoveredBlock18Stack2).
            recoveredBlock18PC := 28.
        ].
        recoveredBlock18Step = 28 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 40] ifFalse: [recoveredBlock18PC := 32].
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack1 := NumericEditorClasses.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Stack3 := Set.
            recoveredBlock18PC := 37.
        ].
        recoveredBlock18Step = 37 ifTrue: [
            recoveredBlock18Stack3 := (recoveredBlock18Stack3) new.
            recoveredBlock18PC := 38.
        ].
        recoveredBlock18Step = 38 ifTrue: [
            (recoveredBlock18Stack1) at: (recoveredBlock18Stack2) put: (recoveredBlock18Stack3).
            recoveredBlock18PC := 40.
        ].
        recoveredBlock18Step = 40 ifTrue: [
            recoveredBlock18Stack1 := NumericEditorClasses.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2).
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := recoveredArg1.
            recoveredBlock18PC := 48.
        ].
        recoveredBlock18Step = 48 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ed38; bytecode file offset 0xc6b654"
!RBCalibrationWindow class methodsFor: 'recovered'!
cannotEditDistributionOf: recoveredArg1 type: recoveredArg2 groupDistribution: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := CannotChangeSupportingValue.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := UserInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := EditGroupSupportingValues.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) convertStringTemplateKeepStrings: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := CannotChangeSupportingValue.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) advice: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := UserInterface.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203fec4c; bytecode file offset 0xcfb558"
!RBCalibrationWindow class methodsFor: 'recovered'!
showBusyCursorInAllWindowsWhile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) allWindows.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) shell.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 46] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isDestroyed.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 46] ifFalse: [recoveredBlock5PC := 32].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) window.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal1.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) display.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) busyCursor.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) defineCursor: (recoveredBlock5Stack2).
            recoveredBlock5PC := 46.
        ].
        recoveredBlock5Step = 46 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) value.
    recoveredValue3 := (self) allWindows.
    recoveredValue4 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) shell.
            recoveredBlock56PC := 64.
        ].
        recoveredBlock56Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 67.
        ].
        recoveredBlock56Step = 67 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 68.
        ].
        recoveredBlock56Step = 68 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal1.
            recoveredBlock56PC := 71.
        ].
        recoveredBlock56Step = 71 ifTrue: [
            (recoveredBlock56Stack2 == nil) ifTrue: [recoveredBlock56PC := 89] ifFalse: [recoveredBlock56PC := 74].
        ].
        recoveredBlock56Step = 74 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal1.
            recoveredBlock56PC := 77.
        ].
        recoveredBlock56Step = 77 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isDestroyed.
            recoveredBlock56PC := 78.
        ].
        recoveredBlock56Step = 78 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 89] ifFalse: [recoveredBlock56PC := 82].
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56PC := 83.
        ].
        recoveredBlock56Step = 83 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) window.
            recoveredBlock56PC := 87.
        ].
        recoveredBlock56Step = 87 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) undefineCursor.
            recoveredBlock56PC := 89.
        ].
        recoveredBlock56Step = 89 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204b93e4; bytecode file offset 0xdb5cf8"
!RBCalibrationWindow class methodsFor: 'recovered'!
convertStringTemplateKeepStrings: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := '%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := (recoveredStack5) printString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) asArrayOfSubstringsSeparatedBy: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 |
    recoveredBlock53Value0 := recoveredLocal3.
    recoveredBlock53Value1 := recoveredLocal4.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value1) at: (recoveredBlock53Value2).
    recoveredBlock53Value4 := (recoveredBlock53Value0) , (recoveredBlock53Value3).
    recoveredBlock53Value5 := recoveredArg2.
    recoveredBlock53Value6 := recoveredLocal1.
    recoveredBlock53Value7 := (recoveredBlock53Value5) at: (recoveredBlock53Value6).
    recoveredBlock53Value8 := (recoveredBlock53Value7) asString.
    recoveredBlock53Value9 := (recoveredBlock53Value4) , (recoveredBlock53Value8).
    recoveredBlock53Value10 := recoveredBlock53Value9.
    recoveredLocal3 := recoveredBlock53Value10.
    recoveredBlock53Value9
].
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 20] ifFalse: [recoveredPC := 141]] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204ee2c4; bytecode file offset 0xdeabcc"
!RBCalibrationWindow class methodsFor: 'recovered'!
createSpecificWindowFromConfiguration: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) calibrationManager.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'dataConfigs'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Local1 recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37Stack4 recoveredBlock37Stack5 recoveredBlock37Stack6 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal5.
            recoveredBlock37PC := 47.
        ].
        recoveredBlock37Step = 47 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack3 := 'name'.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) at: (recoveredBlock37Stack3).
            recoveredBlock37PC := 52.
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) getValidCalibrationElementWithName: (recoveredBlock37Stack2).
            recoveredBlock37PC := 54.
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack1.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Local1.
            recoveredBlock37PC := 56.
        ].
        recoveredBlock37Step = 56 ifTrue: [
            (recoveredBlock37Stack1 ~~ nil) ifTrue: [recoveredBlock37PC := 73] ifFalse: [recoveredBlock37PC := 60].
        ].
        recoveredBlock37Step = 60 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal5.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 64.
        ].
        recoveredBlock37Step = 64 ifTrue: [
            recoveredBlock37Stack3 := 'hierName'.
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack4 := [].
            recoveredBlock37PC := 68.
        ].
        recoveredBlock37Step = 68 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) at: (recoveredBlock37Stack3) ifAbsent: (recoveredBlock37Stack4).
            recoveredBlock37PC := 70.
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) getValidCalibrationElementWithName: (recoveredBlock37Stack2).
            recoveredBlock37PC := 72.
        ].
        recoveredBlock37Step = 72 ifTrue: [
            recoveredBlock37Local1 := recoveredBlock37Stack1.
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 74.
        ].
        recoveredBlock37Step = 74 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local1.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            (recoveredBlock37Stack2 == nil) ifTrue: [recoveredBlock37PC := 105] ifFalse: [recoveredBlock37PC := 78].
        ].
        recoveredBlock37Step = 78 ifTrue: [
            recoveredBlock37PC := 79.
        ].
        recoveredBlock37Step = 79 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal4.
            recoveredBlock37PC := 82.
        ].
        recoveredBlock37Step = 82 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Local1.
            recoveredBlock37PC := 83.
        ].
        recoveredBlock37Step = 83 ifTrue: [
            (recoveredBlock37Stack1) add: (recoveredBlock37Stack2).
            recoveredBlock37PC := 85.
        ].
        recoveredBlock37Step = 85 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal3.
            recoveredBlock37PC := 88.
        ].
        recoveredBlock37Step = 88 ifTrue: [
            recoveredBlock37Stack2 := self.
            recoveredBlock37PC := 89.
        ].
        recoveredBlock37Step = 89 ifTrue: [
            recoveredBlock37Stack3 := recoveredBlock37Arg1.
            recoveredBlock37PC := 90.
        ].
        recoveredBlock37Step = 90 ifTrue: [
            recoveredBlock37Stack4 := 'displayConfig'.
            recoveredBlock37PC := 92.
        ].
        recoveredBlock37Step = 92 ifTrue: [
            recoveredBlock37Stack5 := [].
            recoveredBlock37PC := 94.
        ].
        recoveredBlock37Step = 94 ifTrue: [
            recoveredBlock37Stack3 := (recoveredBlock37Stack3) at: (recoveredBlock37Stack4) ifAbsent: (recoveredBlock37Stack5).
            recoveredBlock37PC := 96.
        ].
        recoveredBlock37Step = 96 ifTrue: [
            recoveredBlock37Stack4 := recoveredArg1.
            recoveredBlock37PC := 99.
        ].
        recoveredBlock37Step = 99 ifTrue: [
            recoveredBlock37Stack4 := (recoveredBlock37Stack4) versionString.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) getConvertedDataDisplayConfiguration: (recoveredBlock37Stack3) version: (recoveredBlock37Stack4).
            recoveredBlock37PC := 103.
        ].
        recoveredBlock37Step = 103 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) add: (recoveredBlock37Stack2).
            recoveredBlock37PC := 105.
        ].
        recoveredBlock37Step = 105 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) contentsConfiguration.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := 'viewConfig'.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) versionString.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) getConvertedViewConfiguration: (recoveredStack2) version: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) putConfigurationObject: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20531ec8; bytecode file offset 0xe2e804"
!RBCalibrationWindow class methodsFor: 'recovered'!
initEditDataDict
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Array.
    recoveredValue4 := KgKFTxt.
    recoveredValue5 := Set.
    recoveredValue6 := (recoveredValue5) with: ('editX') with: ('editY') with: ('editW') with: ('editWBlock').
    recoveredValue7 := (recoveredValue3) with: (recoveredValue4) with: (recoveredValue6).
    (recoveredValue2) at: ('KF') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := Array.
    recoveredValue10 := KgKLTxt.
    recoveredValue11 := Set.
    recoveredValue12 := (recoveredValue11) with: ('editX') with: ('editW') with: ('editWBlock').
    recoveredValue13 := (recoveredValue9) with: (recoveredValue10) with: (recoveredValue12).
    (recoveredValue8) at: ('KL') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := Array.
    recoveredValue16 := KgKWTxt.
    recoveredValue17 := Set.
    recoveredValue18 := (recoveredValue17) with: ('editW').
    recoveredValue19 := (recoveredValue15) with: (recoveredValue16) with: (recoveredValue18).
    (recoveredValue14) at: ('KW') put: (recoveredValue19).
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := Array.
    recoveredValue22 := KgGstTxt.
    recoveredValue23 := Set.
    recoveredValue24 := (recoveredValue23) with: ('editW').
    recoveredValue25 := (recoveredValue21) with: (recoveredValue22) with: (recoveredValue24).
    (recoveredValue20) at: ('GSt') put: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := Array.
    recoveredValue28 := KgGklTxt.
    recoveredValue29 := Set.
    recoveredValue30 := (recoveredValue29) with: ('editW') with: ('editWBlock').
    recoveredValue31 := (recoveredValue27) with: (recoveredValue28) with: (recoveredValue30).
    (recoveredValue26) at: ('GKl') put: (recoveredValue31).
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := Array.
    recoveredValue34 := KgFklTxt.
    recoveredValue35 := Set.
    recoveredValue36 := (recoveredValue35) with: ('editW') with: ('editWBlock').
    recoveredValue37 := (recoveredValue33) with: (recoveredValue34) with: (recoveredValue36).
    (recoveredValue32) at: ('FKl') put: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := Array.
    recoveredValue40 := KgKWbTxt.
    recoveredValue41 := Set.
    recoveredValue42 := (recoveredValue41) with: ('editW') with: ('editWBlock').
    recoveredValue43 := (recoveredValue39) with: (recoveredValue40) with: (recoveredValue42).
    (recoveredValue38) at: ('KWb') put: (recoveredValue43).
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := Array.
    recoveredValue46 := KgGKfTxt.
    recoveredValue47 := Set.
    recoveredValue48 := (recoveredValue47) with: ('editW') with: ('editWBlock').
    recoveredValue49 := (recoveredValue45) with: (recoveredValue46) with: (recoveredValue48).
    (recoveredValue44) at: ('GKf') put: (recoveredValue49).
    recoveredValue50 := recoveredValue1.
    recoveredValue51 := Array.
    recoveredValue52 := KgFKfTxt.
    recoveredValue53 := Set.
    recoveredValue54 := (recoveredValue53) with: ('editW') with: ('editWBlock').
    recoveredValue55 := (recoveredValue51) with: (recoveredValue52) with: (recoveredValue54).
    (recoveredValue50) at: ('FKf') put: (recoveredValue55).
    recoveredValue56 := recoveredValue1.
    recoveredValue57 := Array.
    recoveredValue58 := KgMemTxt.
    recoveredValue59 := Set.
    recoveredValue60 := (recoveredValue59) with: ('editW') with: ('editWBlock').
    recoveredValue61 := (recoveredValue57) with: (recoveredValue58) with: (recoveredValue60).
    (recoveredValue56) at: ('Mem') put: (recoveredValue61).
    EditDataDict := recoveredValue1.
    ^self
! !

