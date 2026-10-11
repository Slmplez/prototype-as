"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014454; bytecode file offset 0x912098"
!SGSimCalibrationManager methodsFor: 'recovered'!
getDefaultView
    | recoveredValue0 |
    recoveredValue0 := SGDummyCalibrator.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200331d4; bytecode file offset 0x934580"
!SGSimCalibrationManager methodsFor: 'recovered'!
measureCtrl
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) measureSystemC.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20033cb4; bytecode file offset 0x934580"
!SGSimCalibrationManager methodsFor: 'recovered'!
simEnvironment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mainController.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038814; bytecode file offset 0x935c54"
!SGSimCalibrationManager methodsFor: 'recovered'!
returnReferenceValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) deepCopy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d644; bytecode file offset 0x959f30"
!SGSimCalibrationManager methodsFor: 'recovered'!
acquisitionRunning
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) measureSystemC.
    recoveredValue2 := (recoveredValue1) isAcquisitionRunning.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065a5c; bytecode file offset 0x963428"
!SGSimCalibrationManager methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006728c; bytecode file offset 0x9646f8"
!SGSimCalibrationManager methodsFor: 'recovered'!
mainController
    | recoveredValue0 |
    recoveredValue0 := mainController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006874c; bytecode file offset 0x965b90"
!SGSimCalibrationManager methodsFor: 'recovered'!
selectedDataElements
    | recoveredValue0 |
    recoveredValue0 := selectedDataElements.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb48; bytecode file offset 0x96873c"
!SGSimCalibrationManager methodsFor: 'recovered'!
viewCounter
    | recoveredValue0 |
    recoveredValue0 := viewCounter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c14c; bytecode file offset 0x9692b0"
!SGSimCalibrationManager methodsFor: 'recovered'!
elementsOnCalibration
    | recoveredValue0 |
    recoveredValue0 := elementsOnCalibration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d694; bytecode file offset 0x96a390"
!SGSimCalibrationManager methodsFor: 'recovered'!
changedDatas
    | recoveredValue0 |
    recoveredValue0 := changedDatas.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dcc8; bytecode file offset 0x96a9dc"
!SGSimCalibrationManager methodsFor: 'recovered'!
changedImpls
    | recoveredValue0 |
    recoveredValue0 := changedImpls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075494; bytecode file offset 0x9757c8"
!SGSimCalibrationManager methodsFor: 'recovered'!
canEditInterpolation
    ^true
! !

"ASDBase.ic method 0x20076c54; bytecode file offset 0x9757c8"
!SGSimCalibrationManager methodsFor: 'recovered'!
canMoveCalibrationElements
    ^true
! !

"ASDBase.ic method 0x2007773c; bytecode file offset 0x9757c8"
!SGSimCalibrationManager methodsFor: 'recovered'!
canEditGroupArgs
    ^true
! !

"ASDBase.ic method 0x20077ddc; bytecode file offset 0x9757c8"
!SGSimCalibrationManager methodsFor: 'recovered'!
canDisplayWorkingPoint
    ^true
! !

"ASDBase.ic method 0x20078554; bytecode file offset 0x9757c8"
!SGSimCalibrationManager methodsFor: 'recovered'!
canAddRemoveWPDuringAcquisition
    ^true
! !

"ASDBase.ic method 0x2008241c; bytecode file offset 0x97ecd4"
!SGSimCalibrationManager methodsFor: 'recovered'!
isCalibrationElementInOpenedView: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := elementsOnCalibration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200853e0; bytecode file offset 0x981ca4"
!SGSimCalibrationManager methodsFor: 'recovered'!
changeViewSelection: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) selectedView: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200864cc; bytecode file offset 0x982e18"
!SGSimCalibrationManager methodsFor: 'recovered'!
allowClosingWPView: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) measureCtrl.
    recoveredValue1 := (recoveredValue0) measureInterfaceManager.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) allowClosingWPView: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008742c; bytecode file offset 0x983d14"
!SGSimCalibrationManager methodsFor: 'recovered'!
closeCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeView: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20092a24; bytecode file offset 0x98f2f0"
!SGSimCalibrationManager methodsFor: 'recovered'!
getCalibrationElementWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := mainController.
    recoveredValue1 := (recoveredValue0) simEnvironment.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getDataElementForStoredName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200956c8; bytecode file offset 0x991fb4"
!SGSimCalibrationManager methodsFor: 'recovered'!
openCalibrationView: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) userInterface.
    (recoveredValue0) openWithParent: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be02c; bytecode file offset 0x9bb178"
!SGSimCalibrationManager methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be920; bytecode file offset 0x9bc0b4"
!SGSimCalibrationManager methodsFor: 'recovered'!
mainController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mainController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0694; bytecode file offset 0x9bd228"
!SGSimCalibrationManager methodsFor: 'recovered'!
selectedDataElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedDataElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0f70; bytecode file offset 0x9bdf14"
!SGSimCalibrationManager methodsFor: 'recovered'!
selectedView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedView := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3e3c; bytecode file offset 0x9c0bf0"
!SGSimCalibrationManager methodsFor: 'recovered'!
changedDatas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    changedDatas := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4438; bytecode file offset 0x9c11bc"
!SGSimCalibrationManager methodsFor: 'recovered'!
changedImpls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    changedImpls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9be0; bytecode file offset 0x9e64a4"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateCalibrationViewTitleFrom: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'Unknwon'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200fbe48; bytecode file offset 0x9f8700"
!SGSimCalibrationManager methodsFor: 'recovered'!
addView: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := views.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := viewCounter.
    recoveredValue3 := (recoveredValue2) + (1).
    viewCounter := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20115c94; bytecode file offset 0xa125a4"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateCalibrationViews
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6d80Arg1 | 
    | block280c6d80Value0 block280c6d80Value1 |
    block280c6d80Value0 := block280c6d80Arg1.
    block280c6d80Value1 := (block280c6d80Value0) updateContents.
    block280c6d80Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20119824; bytecode file offset 0xa16880"
!SGSimCalibrationManager methodsFor: 'recovered'!
closeOpenedCalibrationViews
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) openedCalibrationViews.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7a28Arg1 | 
    | block280c7a28Value0 block280c7a28Value1 |
    block280c7a28Value0 := block280c7a28Arg1.
    block280c7a28Value1 := (block280c7a28Value0) close.
    block280c7a28Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20129a04; bytecode file offset 0xa262c4"
!SGSimCalibrationManager methodsFor: 'recovered'!
openedCalibrationViews
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c9690Arg1 | 
    | block280c9690Value0 block280c9690Value1 block280c9690Value2 |
    block280c9690Value0 := block280c9690Arg1.
    block280c9690Value1 := (block280c9690Value0) isDestroyed.
    block280c9690Value2 := (block280c9690Value1) not.
    block280c9690Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201390a4; bytecode file offset 0xa35968"
!SGSimCalibrationManager methodsFor: 'recovered'!
addXWorkingPoint: recoveredArg1 view: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createXWorkingPointData: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) measureCtrl.
    recoveredValue3 := (recoveredValue2) measureInterfaceManager.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue3) addXWorkingPointData: (recoveredValue4) editChannel: (recoveredValue5) editData: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20156e44; bytecode file offset 0xa5370c"
!SGSimCalibrationManager methodsFor: 'recovered'!
droppedItemList: recoveredArg1 intoCalibrationView: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) changeDataSelection: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) selectedView: (recoveredValue1).
    recoveredValue2 := (self) userInterface.
    (recoveredValue2) updateCalibrationViewBox.
    (self) calibrate.
    ^self
! !

"ASDBase.ic method 0x20169f80; bytecode file offset 0xa6683c"
!SGSimCalibrationManager methodsFor: 'recovered'!
removeDataFromCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := elementsOnCalibration.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) data.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue0) removeKey: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2018c78c; bytecode file offset 0xa89054"
!SGSimCalibrationManager methodsFor: 'recovered'!
addXYWorkingPoint: recoveredArg1 view: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createXWorkingPointData: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createYWorkingPointData: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) measureCtrl.
    recoveredValue5 := (recoveredValue4) measureInterfaceManager.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := recoveredArg1.
    (recoveredValue5) addXWorkingPointData: (recoveredValue6) yWorkingPointData: (recoveredValue7) editChannel: (recoveredValue8) editData: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2018dbcc; bytecode file offset 0xa8a48c"
!SGSimCalibrationManager methodsFor: 'recovered'!
selectedView
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDefaultView.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) selectedView: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := selectedView.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c760c; bytecode file offset 0xac3edc"
!SGSimCalibrationManager methodsFor: 'recovered'!
getViewList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d47e4Arg1 | 
    | block280d47e4Value0 block280d47e4Value1 block280d47e4Value2 |
    block280d47e4Value0 := block280d47e4Arg1.
    block280d47e4Value1 := (block280d47e4Value0) isDestroyed.
    block280d47e4Value2 := (block280d47e4Value1) not.
    block280d47e4Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) getDefaultView.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201ca250; bytecode file offset 0xac6b1c"
!SGSimCalibrationManager methodsFor: 'recovered'!
startAcquisition
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionRunning.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) activateStartMeasurement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updateMeasureControl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ca28c; bytecode file offset 0xac6b58"
!SGSimCalibrationManager methodsFor: 'recovered'!
checkAcquisitionState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOffline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionRunning.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) activateStartMeasurement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) updateMeasureControl.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eaaf8; bytecode file offset 0xae73cc"
!SGSimCalibrationManager methodsFor: 'recovered'!
openCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) windowConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) title.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := '; '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) viewCounter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) addView: (recoveredStack1).
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

"ASDBase.ic method 0x2021b774; bytecode file offset 0xb1803c"
!SGSimCalibrationManager methodsFor: 'recovered'!
createCalibrationConfig: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
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
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) versionString.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := ''.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) restoreCalibrationWindowForConfigOld: (recoveredBlock5Stack2).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) restoreCalibrationWindowForConfig: (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2023acc4; bytecode file offset 0xb3758c"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateCalibrationValuesFromTarget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementsOnCalibration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysArray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) updateViewsForDataElement: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202405e8; bytecode file offset 0xb3cecc"
!SGSimCalibrationManager methodsFor: 'recovered'!
addWorkingPointForCalibrationView: recoveredArg1 calibrationElement: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := RBOneDStaticCharTable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := RBTwoDStaticCharTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) addXYWorkingPoint: (recoveredStack2) view: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) addXWorkingPoint: (recoveredStack2) view: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20240604; bytecode file offset 0xb3cecc"
!SGSimCalibrationManager methodsFor: 'recovered'!
removeWorkingPointForCalibrationView: recoveredArg1 calibrationElement: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := RBOneDStaticCharTable.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := RBTwoDStaticCharTable.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) removeXYWorkingPoint: (recoveredStack2) view: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) removeXWorkingPoint: (recoveredStack2) view: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20245178; bytecode file offset 0xb41a4c"
!SGSimCalibrationManager methodsFor: 'recovered'!
addDataIntoCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := elementsOnCalibration.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := Association.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := (recoveredStack5) deepCopyValuesSetAccessToNil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) key: (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) data.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) addChangedData: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isImplEditor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addChangedImpl: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20267c58; bytecode file offset 0xb64530"
!SGSimCalibrationManager methodsFor: 'recovered'!
getValidCalibrationElementWithName: recoveredArg1
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
            recoveredStack0 := super getValidCalibrationElementWithName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProtection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'No calibration rights for element:  '.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) wName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := ' !!'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) monitorInfo: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20281cd0; bytecode file offset 0xb7e5a4"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateCalibrationValuesFromTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := elementsOnCalibration.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := [:block280e1360Arg1 | 
    | block280e1360Value0 block280e1360Value1 |
    block280e1360Value0 := block280e1360Arg1.
    block280e1360Value1 := (block280e1360Value0) get.
    block280e1360Value1
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            (recoveredBlock6Stack1) keysDo: (recoveredBlock6Stack2).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := views.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := [:block280e1384Arg1 | 
    | block280e1384Value0 block280e1384Value1 |
    block280e1384Value0 := block280e1384Arg1.
    block280e1384Value1 := (block280e1384Value0) updateContents.
    block280e1384Value1
].
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2028bf08; bytecode file offset 0xb887e4"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateCalibrationViewsForNewData
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getViewList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e2050Arg1 | 
    | block280e2050Stack0 block280e2050Stack1 block280e2050Stack2 block280e2050Stack3 block280e2050Stack4 block280e2050PC block280e2050Step block280e2050Done block280e2050Result |
    block280e2050Stack0 := self.
    block280e2050PC := 4.
    block280e2050Done := false.
    [block280e2050Done not] whileTrue: [
        block280e2050Step := block280e2050PC.
        block280e2050Step = 4 ifTrue: [
            block280e2050Stack1 := nil.
            block280e2050PC := 5.
        ].
        block280e2050Step = 5 ifTrue: [
            block280e2050Stack2 := block280e2050Arg1.
            block280e2050PC := 6.
        ].
        block280e2050Step = 6 ifTrue: [
            block280e2050Stack3 := 'updateContents'.
            block280e2050PC := 8.
        ].
        block280e2050Step = 8 ifTrue: [
            block280e2050Stack2 := (block280e2050Stack2) respondsTo: (block280e2050Stack3).
            block280e2050PC := 9.
        ].
        block280e2050Step = 9 ifTrue: [
            (block280e2050Stack2) ifTrue: [block280e2050PC := 12] ifFalse: [block280e2050PC := 15].
        ].
        block280e2050Step = 12 ifTrue: [
            block280e2050PC := 13.
        ].
        block280e2050Step = 13 ifTrue: [
            block280e2050Stack1 := block280e2050Arg1.
            block280e2050PC := 14.
        ].
        block280e2050Step = 14 ifTrue: [
            block280e2050Stack1 := (block280e2050Stack1) updateContents.
            block280e2050PC := 15.
        ].
        block280e2050Step = 15 ifTrue: [
            block280e2050Result := block280e2050Stack1.
            block280e2050Done := true.
        ].
    ].
    block280e2050Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) elementsOnCalibration.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:block280e2074Arg1 :block280e2074Arg2 | 
    | block280e2074Value0 block280e2074Value1 block280e2074Value2 block280e2074Value3 |
    block280e2074Value0 := block280e2074Arg2.
    block280e2074Value1 := block280e2074Arg1.
    block280e2074Value2 := (block280e2074Value1) deepCopyValuesSetAccessToNil.
    block280e2074Value3 := (block280e2074Value0) value: (block280e2074Value2).
    block280e2074Value3
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
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

"ASDBase.ic method 0x2028e284; bytecode file offset 0xb8ab58"
!SGSimCalibrationManager methodsFor: 'recovered'!
changeDataSelection: recoveredArg1
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
            recoveredStack2 := [:block280e29e0Arg1 | 
    | block280e29e0Stack0 block280e29e0Stack1 block280e29e0Stack2 block280e29e0Stack3 block280e29e0PC block280e29e0Step block280e29e0Done block280e29e0Result |
    block280e29e0Stack0 := self.
    block280e29e0PC := 4.
    block280e29e0Done := false.
    [block280e29e0Done not] whileTrue: [
        block280e29e0Step := block280e29e0PC.
        block280e29e0Step = 4 ifTrue: [
            block280e29e0Stack1 := nil.
            block280e29e0PC := 5.
        ].
        block280e29e0Step = 5 ifTrue: [
            block280e29e0Stack2 := block280e29e0Arg1.
            block280e29e0PC := 6.
        ].
        block280e29e0Step = 6 ifTrue: [
            (block280e29e0Stack2 == nil) ifTrue: [block280e29e0PC := 27] ifFalse: [block280e29e0PC := 10].
        ].
        block280e29e0Step = 10 ifTrue: [
            block280e29e0PC := 11.
        ].
        block280e29e0Step = 11 ifTrue: [
            block280e29e0Stack1 := block280e29e0Arg1.
            block280e29e0PC := 12.
        ].
        block280e29e0Step = 12 ifTrue: [
            (block280e29e0Stack1) get.
            block280e29e0PC := 14.
        ].
        block280e29e0Step = 14 ifTrue: [
            block280e29e0Stack1 := nil.
            block280e29e0PC := 15.
        ].
        block280e29e0Step = 15 ifTrue: [
            block280e29e0Stack2 := block280e29e0Arg1.
            block280e29e0PC := 16.
        ].
        block280e29e0Step = 16 ifTrue: [
            block280e29e0Stack2 := (block280e29e0Stack2) isRBComposedDataElement.
            block280e29e0PC := 17.
        ].
        block280e29e0Step = 17 ifTrue: [
            (block280e29e0Stack2) ifTrue: [block280e29e0PC := 20] ifFalse: [block280e29e0PC := 27].
        ].
        block280e29e0Step = 20 ifTrue: [
            block280e29e0PC := 21.
        ].
        block280e29e0Step = 21 ifTrue: [
            block280e29e0Stack1 := block280e29e0Arg1.
            block280e29e0PC := 22.
        ].
        block280e29e0Step = 22 ifTrue: [
            block280e29e0Stack2 := block280e29e0Stack1.
            block280e29e0PC := 23.
        ].
        block280e29e0Step = 23 ifTrue: [
            (block280e29e0Stack2) getInterpolation.
            block280e29e0PC := 25.
        ].
        block280e29e0Step = 25 ifTrue: [
            block280e29e0Stack1 := (block280e29e0Stack1) getExtrapolation.
            block280e29e0PC := 27.
        ].
        block280e29e0Step = 27 ifTrue: [
            block280e29e0Result := block280e29e0Stack1.
            block280e29e0Done := true.
        ].
    ].
    block280e29e0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
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

"ASDBase.ic method 0x202e3678; bytecode file offset 0xbdff48"
!SGSimCalibrationManager methodsFor: 'recovered'!
removeView: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedView.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultView.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) selectedView: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := views.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            viewCounter := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) updateCalibrationViewBox.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e88f4; bytecode file offset 0xbe51d4"
!SGSimCalibrationManager methodsFor: 'recovered'!
restoreCalibrationWindowForConfigOld: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) getNewEditorSymbolFor: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) mainController.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFromConfiguration: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) open.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e8e80; bytecode file offset 0xbe5754"
!SGSimCalibrationManager methodsFor: 'recovered'!
checkValidElements: recoveredArg1 forEditor: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) supportedSourceModels.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) mainController.
    recoveredValue3 := (recoveredValue2) simEnvironment.
    recoveredValue4 := (recoveredValue3) getCalibrationLabels.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := false.
            recoveredBlock20PC := 27.
        ].
        recoveredBlock20Step = 27 ifTrue: [
            recoveredBlock20Stack2 := recoveredLocal2.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 31.
        ].
        recoveredBlock20Step = 31 ifTrue: [
            recoveredBlock20Stack3 := (recoveredBlock20Stack3) type.
            recoveredBlock20PC := 33.
        ].
        recoveredBlock20Step = 33 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) includes: (recoveredBlock20Stack3).
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            (recoveredBlock20Stack2) ifTrue: [recoveredBlock20PC := 38] ifFalse: [recoveredBlock20PC := 47].
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20PC := 39.
        ].
        recoveredBlock20Step = 39 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 42.
        ].
        recoveredBlock20Step = 42 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 43.
        ].
        recoveredBlock20Step = 43 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) name.
            recoveredBlock20PC := 45.
        ].
        recoveredBlock20Step = 45 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) includes: (recoveredBlock20Stack2).
            recoveredBlock20PC := 47.
        ].
        recoveredBlock20Step = 47 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
    recoveredValue7 := (recoveredValue5) select: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202efc88; bytecode file offset 0xbec548"
!SGSimCalibrationManager methodsFor: 'recovered'!
addChangedData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := changedDatas.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) wName.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack3 := (recoveredBlock10Stack3) wName.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) = (recoveredBlock10Stack3).
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 28] ifFalse: [recoveredBlock10PC := 34].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := true.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock10Stack2.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := changedDatas.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f88cc; bytecode file offset 0xbf5190"
!SGSimCalibrationManager methodsFor: 'recovered'!
addChangedImpl: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedImpls.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9Stack4 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack1 := nil.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Arg1.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) wName.
            recoveredBlock9PC := 19.
        ].
        recoveredBlock9Step = 19 ifTrue: [
            recoveredBlock9Stack3 := recoveredArg1.
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack3 := (recoveredBlock9Stack3) wName.
            recoveredBlock9PC := 23.
        ].
        recoveredBlock9Step = 23 ifTrue: [
            recoveredBlock9Stack2 := (recoveredBlock9Stack2) = (recoveredBlock9Stack3).
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            (recoveredBlock9Stack2) ifTrue: [recoveredBlock9PC := 28] ifFalse: [recoveredBlock9PC := 34].
        ].
        recoveredBlock9Step = 28 ifTrue: [
            recoveredBlock9PC := 29.
        ].
        recoveredBlock9Step = 29 ifTrue: [
            recoveredBlock9Stack1 := true.
            recoveredBlock9PC := 30.
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack2 := recoveredBlock9Stack1.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock9Stack2.
            recoveredBlock9PC := 34.
        ].
        recoveredBlock9Step = 34 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack1.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) changedImpls.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20318ba8; bytecode file offset 0xc1546c"
!SGSimCalibrationManager methodsFor: 'recovered'!
isDisplayingWorkingPointForCalibrationElement: recoveredArg1 calibrationView: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBComposedDataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := wpDatas.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) distribution.
            recoveredBlock26PC := 35.
        ].
        recoveredBlock26Step = 35 ifTrue: [
            recoveredBlock26Stack3 := recoveredArg1.
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            recoveredBlock26Stack3 := (recoveredBlock26Stack3) xDistribution.
            recoveredBlock26PC := 39.
        ].
        recoveredBlock26Step = 39 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) = (recoveredBlock26Stack3).
            recoveredBlock26PC := 40.
        ].
        recoveredBlock26Step = 40 ifTrue: [
            (recoveredBlock26Stack2) ifTrue: [recoveredBlock26PC := 44] ifFalse: [recoveredBlock26PC := 50].
        ].
        recoveredBlock26Step = 44 ifTrue: [
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack1 := true.
            recoveredBlock26PC := 46.
        ].
        recoveredBlock26Step = 46 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Stack1.
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            recoveredLocal1 := recoveredBlock26Stack2.
            recoveredBlock26PC := 50.
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20321a08; bytecode file offset 0xc1e2e4"
!SGSimCalibrationManager methodsFor: 'recovered'!
convertDataNamesFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contentsConfiguration.
    recoveredValue2 := (recoveredValue1) at: ('dataConfigs').
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := (recoveredBlock17Value0) at: ('name').
    recoveredBlock17Value2 := (recoveredBlock17Value1) asASDSimLabel.
    recoveredLocal1 := recoveredBlock17Value2.
    recoveredBlock17Value3 := recoveredBlock17Arg1.
    recoveredBlock17Value4 := recoveredLocal1.
    (recoveredBlock17Value3) at: ('hierName') put: (recoveredBlock17Value4).
    recoveredBlock17Value5 := recoveredBlock17Arg1.
    recoveredBlock17Value6 := (self) mainController.
    recoveredBlock17Value7 := recoveredLocal1.
    recoveredBlock17Value8 := (recoveredBlock17Value6) getAliasForLabel: (recoveredBlock17Value7).
    recoveredBlock17Value9 := (recoveredBlock17Value5) at: ('name') put: (recoveredBlock17Value8).
    recoveredBlock17Value9
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20339fc0; bytecode file offset 0xc368a4"
!SGSimCalibrationManager methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) selectedDataElements: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280ed4e0Arg1 :block280ed4e0Arg2 | 
    | block280ed4e0Value0 block280ed4e0Value1 block280ed4e0Value2 block280ed4e0Value3 block280ed4e0Value4 |
    block280ed4e0Value0 := block280ed4e0Arg1.
    block280ed4e0Value1 := (block280ed4e0Value0) basicLabel.
    block280ed4e0Value2 := block280ed4e0Arg2.
    block280ed4e0Value3 := (block280ed4e0Value2) basicLabel.
    block280ed4e0Value4 := (block280ed4e0Value1) < (block280ed4e0Value3).
    block280ed4e0Value4
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortBlock: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            views := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getDefaultView.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) selectedView: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            elementsOnCalibration := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            viewCounter := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) changedDatas: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) changedImpls: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            wpDatas := recoveredStack0.
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

"ASDBase.ic method 0x20350d28; bytecode file offset 0xc4d68c"
!SGSimCalibrationManager methodsFor: 'recovered'!
createXWorkingPointData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) xDistribution.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := RBWPArithmeticElement.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) getPhysType.
    recoveredValue5 := (recoveredValue2) createForType: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal3.
    (recoveredValue6) distribution: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) formula.
    (recoveredValue8) formula: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) wName.
    recoveredValue14 := ('WPx') , (recoveredValue13).
    (recoveredValue11) name: (recoveredValue14).
    recoveredValue15 := SGAccessSmalltalkData.
    recoveredValue16 := (recoveredValue15) createForSimKey: ('WPDummyAccess').
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue16) charElement: (recoveredValue17).
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    (recoveredValue19) access: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) access.
    recoveredValue23 := (self) measureCtrl.
    recoveredValue24 := (recoveredValue23) selectedTask.
    (recoveredValue22) channelGroup: (recoveredValue24).
    recoveredValue25 := wpDatas.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue25) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    ^recoveredValue27
! !

"ASDBase.ic method 0x20350d84; bytecode file offset 0xc4d68c"
!SGSimCalibrationManager methodsFor: 'recovered'!
createYWorkingPointData: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) yDistribution.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := RBWPArithmeticElement.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) getPhysType.
    recoveredValue5 := (recoveredValue2) createForType: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal3.
    (recoveredValue6) distribution: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal3.
    recoveredValue10 := (recoveredValue9) formula.
    (recoveredValue8) formula: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) wName.
    recoveredValue14 := ('WPy') , (recoveredValue13).
    (recoveredValue11) name: (recoveredValue14).
    recoveredValue15 := SGAccessSmalltalkData.
    recoveredValue16 := (recoveredValue15) createForSimKey: ('WPDummyAccess').
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue16) charElement: (recoveredValue17).
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := recoveredLocal2.
    recoveredValue20 := recoveredLocal1.
    (recoveredValue19) access: (recoveredValue20).
    recoveredValue21 := recoveredLocal2.
    recoveredValue22 := (recoveredValue21) access.
    recoveredValue23 := (self) measureCtrl.
    recoveredValue24 := (recoveredValue23) selectedTask.
    (recoveredValue22) channelGroup: (recoveredValue24).
    recoveredValue25 := wpDatas.
    recoveredValue26 := recoveredLocal2.
    (recoveredValue25) add: (recoveredValue26).
    recoveredValue27 := recoveredLocal2.
    ^recoveredValue27
! !

"ASDBase.ic method 0x20386f2c; bytecode file offset 0xc83814"
!SGSimCalibrationManager methodsFor: 'recovered'!
restoreCalibrationWindowForConfig: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) contentsConfiguration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack1 := Smalltalk.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) windowClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := Smalltalk.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'SGDataScalarValueMinMaxQuantEditor'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuantFloatPath.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) mainController.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) userInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFromConfiguration: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) open.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20392e70; bytecode file offset 0xc8f748"
!SGSimCalibrationManager methodsFor: 'recovered'!
updateViewsForDataElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := elementsOnCalibration.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := views.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) get.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) equalValues: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopyValuesSetAccessToNil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) updateContents.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20398f94; bytecode file offset 0xc95874"
!SGSimCalibrationManager methodsFor: 'recovered'!
removeXWorkingPoint: recoveredArg1 view: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) wName.
    recoveredValue2 := ('WPx') , (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := wpDatas.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) name.
    recoveredBlock16Value2 := recoveredLocal2.
    recoveredBlock16Value3 := (recoveredBlock16Value1) = (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    recoveredValue5 := [
    ^nil
].
    recoveredValue6 := (recoveredValue3) detect: (recoveredValue4) ifNone: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) measureCtrl.
    recoveredValue8 := (recoveredValue7) measureInterfaceManager.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) access.
    recoveredValue12 := (recoveredValue11) device.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := recoveredArg1.
    (recoveredValue8) removeXWorkingPointNamed: (recoveredValue9) device: (recoveredValue12) editChannel: (recoveredValue13) editData: (recoveredValue14).
    recoveredValue15 := wpDatas.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue15) remove: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x203dc8d0; bytecode file offset 0xcd91b4"
!SGSimCalibrationManager methodsFor: 'recovered'!
calibrateInstVars: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := (self) mainController.
    recoveredBlock13Value1 := (recoveredBlock13Value0) simEnvironment.
    recoveredBlock13Local1 := recoveredBlock13Value1.
    recoveredBlock13Value2 := recoveredBlock13Local1.
    recoveredBlock13Value3 := recoveredBlock13Arg1.
    recoveredBlock13Value4 := (recoveredBlock13Value2) getSimNodeForInstVar: (recoveredBlock13Value3).
    recoveredBlock13Value5 := [:recoveredBlock13Block33Arg1 | 
    | recoveredBlock13Block33Stack0 recoveredBlock13Block33Stack1 recoveredBlock13Block33Stack2 recoveredBlock13Block33Stack3 recoveredBlock13Block33PC recoveredBlock13Block33Step recoveredBlock13Block33Done recoveredBlock13Block33Result |
    recoveredBlock13Block33Stack0 := nil.
    recoveredBlock13Block33PC := 40.
    recoveredBlock13Block33Done := false.
    [recoveredBlock13Block33Done not] whileTrue: [
        recoveredBlock13Block33Step := recoveredBlock13Block33PC.
        recoveredBlock13Block33Step = 40 ifTrue: [
            recoveredBlock13Block33Stack1 := nil.
            recoveredBlock13Block33PC := 41.
        ].
        recoveredBlock13Block33Step = 41 ifTrue: [
            recoveredBlock13Block33Stack2 := recoveredBlock13Block33Arg1.
            recoveredBlock13Block33PC := 42.
        ].
        recoveredBlock13Block33Step = 42 ifTrue: [
            recoveredBlock13Block33Stack2 := (recoveredBlock13Block33Stack2) isCalibrationNode.
            recoveredBlock13Block33PC := 44.
        ].
        recoveredBlock13Block33Step = 44 ifTrue: [
            (recoveredBlock13Block33Stack2) ifTrue: [recoveredBlock13Block33PC := 48] ifFalse: [recoveredBlock13Block33PC := 71].
        ].
        recoveredBlock13Block33Step = 48 ifTrue: [
            recoveredBlock13Block33PC := 49.
        ].
        recoveredBlock13Block33Step = 49 ifTrue: [
            recoveredBlock13Block33Stack1 := recoveredBlock13Local1.
            recoveredBlock13Block33PC := 52.
        ].
        recoveredBlock13Block33Step = 52 ifTrue: [
            recoveredBlock13Block33Stack2 := recoveredBlock13Block33Arg1.
            recoveredBlock13Block33PC := 53.
        ].
        recoveredBlock13Block33Step = 53 ifTrue: [
            recoveredBlock13Block33Stack1 := (recoveredBlock13Block33Stack1) getSimInstanceForNode: (recoveredBlock13Block33Stack2).
            recoveredBlock13Block33PC := 55.
        ].
        recoveredBlock13Block33Step = 55 ifTrue: [
            recoveredBlock13Block33Stack2 := [:recoveredBlock13Block33Block55Arg1 | 
    | recoveredBlock13Block33Block55Value0 recoveredBlock13Block33Block55Value1 recoveredBlock13Block33Block55Value2 |
    recoveredBlock13Block33Block55Value0 := recoveredLocal1.
    recoveredBlock13Block33Block55Value1 := recoveredBlock13Block33Block55Arg1.
    recoveredBlock13Block33Block55Value2 := (recoveredBlock13Block33Block55Value0) add: (recoveredBlock13Block33Block55Value1).
    recoveredBlock13Block33Block55Value2
].
            recoveredBlock13Block33PC := 69.
        ].
        recoveredBlock13Block33Step = 69 ifTrue: [
            recoveredBlock13Block33Stack1 := (recoveredBlock13Block33Stack1) ifNotNil: (recoveredBlock13Block33Stack2).
            recoveredBlock13Block33PC := 71.
        ].
        recoveredBlock13Block33Step = 71 ifTrue: [
            recoveredBlock13Block33Result := recoveredBlock13Block33Stack1.
            recoveredBlock13Block33Done := true.
        ].
    ].
    recoveredBlock13Block33Result
].
    recoveredBlock13Value6 := (recoveredBlock13Value4) ifNotNil: (recoveredBlock13Value5).
    recoveredBlock13Value6
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) changeDataSelection: (recoveredValue4).
    (self) calibrate.
    ^self
! !

"ASDBase.ic method 0x20406e2c; bytecode file offset 0xd03710"
!SGSimCalibrationManager methodsFor: 'recovered'!
extendEditMenu: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addLine.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) owner.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack2 == nil) ifTrue: [recoveredBlock15PC := 54] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg1.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) owner.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) dataElement.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack3 := 'fileInFromString:'.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) respondsTo: (recoveredBlock15Stack3).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 46] ifFalse: [recoveredBlock15PC := 54].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) owner.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) writeProtection.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) not.
            recoveredBlock15PC := 54.
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) add: ('menuFileInData') label: ('File ~In Data') enable: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := [
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := false.
            recoveredBlock62PC := 69.
        ].
        recoveredBlock62Step = 69 ifTrue: [
            recoveredBlock62Stack2 := recoveredArg1.
            recoveredBlock62PC := 72.
        ].
        recoveredBlock62Step = 72 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) owner.
            recoveredBlock62PC := 73.
        ].
        recoveredBlock62Step = 73 ifTrue: [
            (recoveredBlock62Stack2 == nil) ifTrue: [recoveredBlock62PC := 87] ifFalse: [recoveredBlock62PC := 76].
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62PC := 77.
        ].
        recoveredBlock62Step = 77 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg1.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) owner.
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) dataElement.
            recoveredBlock62PC := 83.
        ].
        recoveredBlock62Step = 83 ifTrue: [
            recoveredBlock62Stack2 := 'fileOutString'.
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) respondsTo: (recoveredBlock62Stack2).
            recoveredBlock62PC := 87.
        ].
        recoveredBlock62Step = 87 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
    (recoveredValue4) add: ('menuFileOutData') label: ('File ~Out Data') enable: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20412bfc; bytecode file offset 0xd0f4e8"
!SGSimCalibrationManager methodsFor: 'recovered'!
getCalibrationConfig
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := views.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) shell.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) title.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) returnWindowConfigurationWithName: (recoveredBlock12Stack2).
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            (recoveredBlock12Stack0) convertDataNamesFor: (recoveredBlock12Stack1).
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal3.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) includesKey: (recoveredBlock12Stack1).
            recoveredBlock12PC := 46.
        ].
        recoveredBlock12Step = 46 ifTrue: [
            (recoveredBlock12Stack0) ifTrue: [recoveredBlock12PC := 50] ifFalse: [recoveredBlock12PC := 80].
        ].
        recoveredBlock12Step = 50 ifTrue: [
            recoveredBlock12Stack0 := 'hw'.
            recoveredBlock12PC := 52.
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12Stack1 := 'call_2010404344'.
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) == (recoveredBlock12Stack1).
            recoveredBlock12PC := 55.
        ].
        recoveredBlock12Step = 55 ifTrue: [
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal3.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack2 := '.'.
            recoveredBlock12PC := 64.
        ].
        recoveredBlock12Step = 64 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) , (recoveredBlock12Stack2).
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg2.
            recoveredBlock12PC := 67.
        ].
        recoveredBlock12Step = 67 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) printString.
            recoveredBlock12PC := 69.
        ].
        recoveredBlock12Step = 69 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) , (recoveredBlock12Stack2).
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 74.
        ].
        recoveredBlock12Step = 74 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) at: (recoveredBlock12Stack1) put: (recoveredBlock12Stack2).
            recoveredBlock12PC := 76.
        ].
        recoveredBlock12Step = 76 ifTrue: [
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 80 ifTrue: [
            recoveredBlock12Stack0 := recoveredLocal3.
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 86.
        ].
        recoveredBlock12Step = 86 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 89.
        ].
        recoveredBlock12Step = 89 ifTrue: [
            recoveredBlock12Stack0 := (recoveredBlock12Stack0) at: (recoveredBlock12Stack1) put: (recoveredBlock12Stack2).
            recoveredBlock12PC := 91.
        ].
        recoveredBlock12Step = 91 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack0.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := recoveredLocal3.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20414ab0; bytecode file offset 0xd113a0"
!SGSimCalibrationManager methodsFor: 'recovered'!
getNewEditorSymbolFor: recoveredArg1
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
            recoveredStack2 := 'SGDataBooleanCalibrationEditor'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'SGArithmeticElementCalibrationEditor'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'RBNumericCalibrationEditor'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'SGDataVectorConfigAndCalibrationEditor'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'RBMultiTableCalibrationEditor'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'SGOneDCharTableConfigAndCalibrationEditor'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'RBMultiTableCalibrationEditor'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'SGTwoDCharTableConfigAndCalibrationEditor'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 'RBMultiTableCalibrationEditor'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'SGOneDGraphEditor'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'RBOneDCharTableGraphCalibrationEditor'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'SGTwoDGraphEditor'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'RBTwoDCharTable3DViewer'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'SGDataScalarValueMinMaxQuantEditor'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) simEnvironment.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) isQuantFloatPath.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'SGDataScalarValueMinMaxQuantEditor'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20415138; bytecode file offset 0xd11a1c"
!SGSimCalibrationManager methodsFor: 'recovered'!
extendEditMenu: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addLine.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg2.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            (recoveredBlock15Stack2 == nil) ifTrue: [recoveredBlock15PC := 53] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15PC := 31.
        ].
        recoveredBlock15Step = 31 ifTrue: [
            recoveredBlock15Stack1 := false.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg2.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) dataElement.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack3 := 'fileInFromString:'.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) respondsTo: (recoveredBlock15Stack3).
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 44] ifFalse: [recoveredBlock15PC := 53].
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 48.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) owner.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) writeProtection.
            recoveredBlock15PC := 52.
        ].
        recoveredBlock15Step = 52 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) not.
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) add: ('menuFileInData') label: ('File ~In Data') enable: (recoveredValue3) for: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := [
    | recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := false.
            recoveredBlock64PC := 71.
        ].
        recoveredBlock64Step = 71 ifTrue: [
            recoveredBlock64Stack2 := recoveredArg2.
            recoveredBlock64PC := 74.
        ].
        recoveredBlock64Step = 74 ifTrue: [
            (recoveredBlock64Stack2 == nil) ifTrue: [recoveredBlock64PC := 87] ifFalse: [recoveredBlock64PC := 78].
        ].
        recoveredBlock64Step = 78 ifTrue: [
            recoveredBlock64PC := 79.
        ].
        recoveredBlock64Step = 79 ifTrue: [
            recoveredBlock64Stack1 := recoveredArg2.
            recoveredBlock64PC := 82.
        ].
        recoveredBlock64Step = 82 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) dataElement.
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            recoveredBlock64Stack2 := 'fileOutString'.
            recoveredBlock64PC := 85.
        ].
        recoveredBlock64Step = 85 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) respondsTo: (recoveredBlock64Stack2).
            recoveredBlock64PC := 87.
        ].
        recoveredBlock64Step = 87 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
    recoveredValue7 := recoveredArg2.
    (recoveredValue5) add: ('menuFileOutData') label: ('File ~Out Data') enable: (recoveredValue6) for: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2047a564; bytecode file offset 0xd76e48"
!SGSimCalibrationManager methodsFor: 'recovered'!
removeXYWorkingPoint: recoveredArg1 view: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) wName.
    recoveredValue2 := ('WPx') , (recoveredValue1).
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) wName.
    recoveredValue5 := ('WPy') , (recoveredValue4).
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := wpDatas.
    recoveredValue7 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := (recoveredBlock26Value0) name.
    recoveredBlock26Value2 := recoveredLocal4.
    recoveredBlock26Value3 := (recoveredBlock26Value1) = (recoveredBlock26Value2).
    recoveredBlock26Value3
].
    recoveredValue8 := [
    ^nil
].
    recoveredValue9 := (recoveredValue6) detect: (recoveredValue7) ifNone: (recoveredValue8).
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := wpDatas.
    recoveredValue11 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := recoveredBlock55Arg1.
    recoveredBlock55Value1 := (recoveredBlock55Value0) name.
    recoveredBlock55Value2 := recoveredLocal3.
    recoveredBlock55Value3 := (recoveredBlock55Value1) = (recoveredBlock55Value2).
    recoveredBlock55Value3
].
    recoveredValue12 := [
    ^nil
].
    recoveredValue13 := (recoveredValue10) detect: (recoveredValue11) ifNone: (recoveredValue12).
    recoveredLocal1 := recoveredValue13.
    recoveredValue14 := (self) measureCtrl.
    recoveredValue15 := (recoveredValue14) measureInterfaceManager.
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := recoveredLocal3.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (recoveredValue18) access.
    recoveredValue20 := (recoveredValue19) device.
    recoveredValue21 := recoveredArg2.
    recoveredValue22 := recoveredArg1.
    (recoveredValue15) removeXWorkingPointNamed: (recoveredValue16) yWorkingPointNamed: (recoveredValue17) device: (recoveredValue20) editChannel: (recoveredValue21) editData: (recoveredValue22).
    recoveredValue23 := wpDatas.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue23) remove: (recoveredValue24).
    recoveredValue25 := wpDatas.
    recoveredValue26 := recoveredLocal1.
    (recoveredValue25) remove: (recoveredValue26).
    ^self
! !

"ASDBase.ic method 0x2052ddb4; bytecode file offset 0xe2a6bc"
!SGSimCalibrationManager methodsFor: 'recovered'!
changedGroupDistribution: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataElement.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBDiscreteDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'Call_66014'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getViewList.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) = (recoveredBlock36Value1).
    recoveredBlock36Value2
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 59.
        ].
        recoveredBlock50Step = 59 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) isClass.
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            (recoveredBlock50Stack1) ifTrue: [recoveredBlock50PC := 162] ifFalse: [recoveredBlock50PC := 64].
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 67.
        ].
        recoveredBlock50Step = 67 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) variables.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack2 := [:recoveredBlock50Block69Arg1 | 
    | recoveredBlock50Block69Stack0 recoveredBlock50Block69Stack1 recoveredBlock50Block69Stack2 recoveredBlock50Block69Stack3 recoveredBlock50Block69Stack4 recoveredBlock50Block69PC recoveredBlock50Block69Step recoveredBlock50Block69Done recoveredBlock50Block69Result |
    recoveredBlock50Block69Stack0 := nil.
    recoveredBlock50Block69PC := 76.
    recoveredBlock50Block69Done := false.
    [recoveredBlock50Block69Done not] whileTrue: [
        recoveredBlock50Block69Step := recoveredBlock50Block69PC.
        recoveredBlock50Block69Step = 76 ifTrue: [
            recoveredBlock50Block69Stack1 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 77.
        ].
        recoveredBlock50Block69Step = 77 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) isRBGroupCharTable.
            recoveredBlock50Block69PC := 79.
        ].
        recoveredBlock50Block69Step = 79 ifTrue: [
            (recoveredBlock50Block69Stack1) ifTrue: [recoveredBlock50Block69PC := 82] ifFalse: [recoveredBlock50Block69PC := 108].
        ].
        recoveredBlock50Block69Step = 82 ifTrue: [
            recoveredBlock50Block69Stack1 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 83.
        ].
        recoveredBlock50Block69Step = 83 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) isRBOneDCharTable.
            recoveredBlock50Block69PC := 85.
        ].
        recoveredBlock50Block69Step = 85 ifTrue: [
            (recoveredBlock50Block69Stack1) ifTrue: [recoveredBlock50Block69PC := 88] ifFalse: [recoveredBlock50Block69PC := 108].
        ].
        recoveredBlock50Block69Step = 88 ifTrue: [
            recoveredBlock50Block69Stack1 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 89.
        ].
        recoveredBlock50Block69Step = 89 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) xDistribution.
            recoveredBlock50Block69PC := 91.
        ].
        recoveredBlock50Block69Step = 91 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) access.
            recoveredBlock50Block69PC := 93.
        ].
        recoveredBlock50Block69Step = 93 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredLocal1.
            recoveredBlock50Block69PC := 96.
        ].
        recoveredBlock50Block69Step = 96 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) access.
            recoveredBlock50Block69PC := 98.
        ].
        recoveredBlock50Block69Step = 98 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) = (recoveredBlock50Block69Stack2).
            recoveredBlock50Block69PC := 99.
        ].
        recoveredBlock50Block69Step = 99 ifTrue: [
            (recoveredBlock50Block69Stack1) ifTrue: [recoveredBlock50Block69PC := 102] ifFalse: [recoveredBlock50Block69PC := 108].
        ].
        recoveredBlock50Block69Step = 102 ifTrue: [
            recoveredBlock50Block69Stack1 := recoveredLocal2.
            recoveredBlock50Block69PC := 105.
        ].
        recoveredBlock50Block69Step = 105 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 106.
        ].
        recoveredBlock50Block69Step = 106 ifTrue: [
            (recoveredBlock50Block69Stack1) add: (recoveredBlock50Block69Stack2).
            recoveredBlock50Block69PC := 108.
        ].
        recoveredBlock50Block69Step = 108 ifTrue: [
            recoveredBlock50Block69Stack1 := nil.
            recoveredBlock50Block69PC := 109.
        ].
        recoveredBlock50Block69Step = 109 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 110.
        ].
        recoveredBlock50Block69Step = 110 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) isRBTwoDCharTable.
            recoveredBlock50Block69PC := 112.
        ].
        recoveredBlock50Block69Step = 112 ifTrue: [
            (recoveredBlock50Block69Stack2) ifTrue: [recoveredBlock50Block69PC := 116] ifFalse: [recoveredBlock50Block69PC := 159].
        ].
        recoveredBlock50Block69Step = 116 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 117.
        ].
        recoveredBlock50Block69Step = 117 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) isRBGroupCharTable.
            recoveredBlock50Block69PC := 119.
        ].
        recoveredBlock50Block69Step = 119 ifTrue: [
            (recoveredBlock50Block69Stack2) ifTrue: [recoveredBlock50Block69PC := 122] ifFalse: [recoveredBlock50Block69PC := 159].
        ].
        recoveredBlock50Block69Step = 122 ifTrue: [
            recoveredBlock50Block69PC := 123.
        ].
        recoveredBlock50Block69Step = 123 ifTrue: [
            recoveredBlock50Block69Stack1 := nil.
            recoveredBlock50Block69PC := 124.
        ].
        recoveredBlock50Block69Step = 124 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 125.
        ].
        recoveredBlock50Block69Step = 125 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) xDistribution.
            recoveredBlock50Block69PC := 127.
        ].
        recoveredBlock50Block69Step = 127 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) access.
            recoveredBlock50Block69PC := 129.
        ].
        recoveredBlock50Block69Step = 129 ifTrue: [
            recoveredBlock50Block69Stack3 := recoveredLocal1.
            recoveredBlock50Block69PC := 132.
        ].
        recoveredBlock50Block69Step = 132 ifTrue: [
            recoveredBlock50Block69Stack3 := (recoveredBlock50Block69Stack3) access.
            recoveredBlock50Block69PC := 134.
        ].
        recoveredBlock50Block69Step = 134 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) = (recoveredBlock50Block69Stack3).
            recoveredBlock50Block69PC := 135.
        ].
        recoveredBlock50Block69Step = 135 ifTrue: [
            (recoveredBlock50Block69Stack2) ifTrue: [recoveredBlock50Block69PC := 152] ifFalse: [recoveredBlock50Block69PC := 138].
        ].
        recoveredBlock50Block69Step = 138 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 139.
        ].
        recoveredBlock50Block69Step = 139 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) yDistribution.
            recoveredBlock50Block69PC := 141.
        ].
        recoveredBlock50Block69Step = 141 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) access.
            recoveredBlock50Block69PC := 143.
        ].
        recoveredBlock50Block69Step = 143 ifTrue: [
            recoveredBlock50Block69Stack3 := recoveredLocal1.
            recoveredBlock50Block69PC := 146.
        ].
        recoveredBlock50Block69Step = 146 ifTrue: [
            recoveredBlock50Block69Stack3 := (recoveredBlock50Block69Stack3) access.
            recoveredBlock50Block69PC := 148.
        ].
        recoveredBlock50Block69Step = 148 ifTrue: [
            recoveredBlock50Block69Stack2 := (recoveredBlock50Block69Stack2) = (recoveredBlock50Block69Stack3).
            recoveredBlock50Block69PC := 149.
        ].
        recoveredBlock50Block69Step = 149 ifTrue: [
            (recoveredBlock50Block69Stack2) ifTrue: [recoveredBlock50Block69PC := 152] ifFalse: [recoveredBlock50Block69PC := 159].
        ].
        recoveredBlock50Block69Step = 152 ifTrue: [
            recoveredBlock50Block69PC := 153.
        ].
        recoveredBlock50Block69Step = 153 ifTrue: [
            recoveredBlock50Block69Stack1 := recoveredLocal2.
            recoveredBlock50Block69PC := 156.
        ].
        recoveredBlock50Block69Step = 156 ifTrue: [
            recoveredBlock50Block69Stack2 := recoveredBlock50Block69Arg1.
            recoveredBlock50Block69PC := 157.
        ].
        recoveredBlock50Block69Step = 157 ifTrue: [
            recoveredBlock50Block69Stack1 := (recoveredBlock50Block69Stack1) add: (recoveredBlock50Block69Stack2).
            recoveredBlock50Block69PC := 159.
        ].
        recoveredBlock50Block69Step = 159 ifTrue: [
            recoveredBlock50Block69Result := recoveredBlock50Block69Stack1.
            recoveredBlock50Block69Done := true.
        ].
    ].
    recoveredBlock50Block69Result
].
            recoveredBlock50PC := 160.
        ].
        recoveredBlock50Step = 160 ifTrue: [
            (recoveredBlock50Stack1) do: (recoveredBlock50Stack2).
            recoveredBlock50PC := 162.
        ].
        recoveredBlock50Step = 162 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 163.
        ].
        recoveredBlock50Step = 163 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal2.
            recoveredBlock50PC := 166.
        ].
        recoveredBlock50Step = 166 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) notEmpty.
            recoveredBlock50PC := 168.
        ].
        recoveredBlock50Step = 168 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 172] ifFalse: [recoveredBlock50PC := 197].
        ].
        recoveredBlock50Step = 172 ifTrue: [
            recoveredBlock50PC := 173.
        ].
        recoveredBlock50Step = 173 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 176.
        ].
        recoveredBlock50Step = 176 ifTrue: [
            recoveredBlock50Stack2 := [:recoveredBlock50Block176Arg1 | 
    | recoveredBlock50Block176Value0 recoveredBlock50Block176Value1 recoveredBlock50Block176Value2 recoveredBlock50Block176Value3 |
    recoveredBlock50Block176Value0 := recoveredBlock50Arg1.
    (recoveredBlock50Block176Value0) updateEditorDisplay.
    recoveredBlock50Block176Value1 := OrderedCollection.
    recoveredBlock50Block176Value2 := (recoveredBlock50Block176Value1) new.
    recoveredBlock50Block176Value3 := recoveredBlock50Block176Value2.
    recoveredLocal2 := recoveredBlock50Block176Value3.
    recoveredBlock50Block176Value2
].
            recoveredBlock50PC := 195.
        ].
        recoveredBlock50Step = 195 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) do: (recoveredBlock50Stack2).
            recoveredBlock50PC := 197.
        ].
        recoveredBlock50Step = 197 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ca1a0; bytecode file offset 0xec6b2c"
!SGSimCalibrationManager methodsFor: 'recovered'!
calibrate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2008402822'.
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
            recoveredStack0 := (recoveredStack0) selectedDataElements.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block28118c54Arg1 | 
    | block28118c54Value0 block28118c54Value1 block28118c54Value2 |
    block28118c54Value0 := block28118c54Arg1.
    block28118c54Value1 := (block28118c54Value0) getPhysType.
    block28118c54Value2 := (block28118c54Value1) isRBFloat.
    block28118c54Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) registerQuantizationCalibrationEditor.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := WriteStream.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := ''.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) on: (recoveredBlock35Stack2).
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredLocal3 := recoveredBlock35Stack1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) selectedDataElements.
            recoveredBlock35PC := 52.
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) copy.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack1 := [:recoveredBlock35Block54Arg1 | 
    | recoveredBlock35Block54Stack0 recoveredBlock35Block54Stack1 recoveredBlock35Block54Stack2 recoveredBlock35Block54Stack3 recoveredBlock35Block54Stack4 recoveredBlock35Block54Stack5 recoveredBlock35Block54PC recoveredBlock35Block54Step recoveredBlock35Block54Done recoveredBlock35Block54Result |
    recoveredBlock35Block54Stack0 := self.
    recoveredBlock35Block54PC := 60.
    recoveredBlock35Block54Done := false.
    [recoveredBlock35Block54Done not] whileTrue: [
        recoveredBlock35Block54Step := recoveredBlock35Block54PC.
        recoveredBlock35Block54Step = 60 ifTrue: [
            recoveredBlock35Block54Stack1 := nil.
            recoveredBlock35Block54PC := 61.
        ].
        recoveredBlock35Block54Step = 61 ifTrue: [
            recoveredBlock35Block54Stack2 := self.
            recoveredBlock35Block54PC := 62.
        ].
        recoveredBlock35Block54Step = 62 ifTrue: [
            recoveredBlock35Block54Stack3 := recoveredBlock35Block54Arg1.
            recoveredBlock35Block54PC := 63.
        ].
        recoveredBlock35Block54Step = 63 ifTrue: [
            recoveredBlock35Block54Stack2 := (recoveredBlock35Block54Stack2) isCalibrationElementInOpenedView: (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54PC := 65.
        ].
        recoveredBlock35Block54Step = 65 ifTrue: [
            (recoveredBlock35Block54Stack2) ifTrue: [recoveredBlock35Block54PC := 68] ifFalse: [recoveredBlock35Block54PC := 106].
        ].
        recoveredBlock35Block54Step = 68 ifTrue: [
            recoveredBlock35Block54PC := 69.
        ].
        recoveredBlock35Block54Step = 69 ifTrue: [
            recoveredBlock35Block54Stack1 := recoveredLocal3.
            recoveredBlock35Block54PC := 72.
        ].
        recoveredBlock35Block54Step = 72 ifTrue: [
            recoveredBlock35Block54Stack2 := recoveredBlock35Block54Stack1.
            recoveredBlock35Block54PC := 73.
        ].
        recoveredBlock35Block54Step = 73 ifTrue: [
            recoveredBlock35Block54Stack3 := Character.
            recoveredBlock35Block54PC := 75.
        ].
        recoveredBlock35Block54Step = 75 ifTrue: [
            recoveredBlock35Block54Stack4 := 13.
            recoveredBlock35Block54PC := 77.
        ].
        recoveredBlock35Block54Step = 77 ifTrue: [
            recoveredBlock35Block54Stack3 := (recoveredBlock35Block54Stack3) value: (recoveredBlock35Block54Stack4).
            recoveredBlock35Block54PC := 79.
        ].
        recoveredBlock35Block54Step = 79 ifTrue: [
            (recoveredBlock35Block54Stack2) nextPut: (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54Stack2 := recoveredBlock35Block54Stack1.
            recoveredBlock35Block54PC := 82.
        ].
        recoveredBlock35Block54Step = 82 ifTrue: [
            recoveredBlock35Block54Stack3 := Character.
            recoveredBlock35Block54PC := 84.
        ].
        recoveredBlock35Block54Step = 84 ifTrue: [
            recoveredBlock35Block54Stack4 := 10.
            recoveredBlock35Block54PC := 86.
        ].
        recoveredBlock35Block54Step = 86 ifTrue: [
            recoveredBlock35Block54Stack3 := (recoveredBlock35Block54Stack3) value: (recoveredBlock35Block54Stack4).
            recoveredBlock35Block54PC := 88.
        ].
        recoveredBlock35Block54Step = 88 ifTrue: [
            (recoveredBlock35Block54Stack2) nextPut: (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54PC := 90.
        ].
        recoveredBlock35Block54Step = 90 ifTrue: [
            recoveredBlock35Block54Stack2 := '   '.
            recoveredBlock35Block54PC := 92.
        ].
        recoveredBlock35Block54Step = 92 ifTrue: [
            recoveredBlock35Block54Stack3 := recoveredBlock35Block54Arg1.
            recoveredBlock35Block54PC := 93.
        ].
        recoveredBlock35Block54Step = 93 ifTrue: [
            recoveredBlock35Block54Stack3 := (recoveredBlock35Block54Stack3) wName.
            recoveredBlock35Block54PC := 95.
        ].
        recoveredBlock35Block54Step = 95 ifTrue: [
            recoveredBlock35Block54Stack2 := (recoveredBlock35Block54Stack2) , (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54PC := 97.
        ].
        recoveredBlock35Block54Step = 97 ifTrue: [
            (recoveredBlock35Block54Stack1) nextPutAll: (recoveredBlock35Block54Stack2).
            recoveredBlock35Block54PC := 99.
        ].
        recoveredBlock35Block54Step = 99 ifTrue: [
            recoveredBlock35Block54Stack1 := self.
            recoveredBlock35Block54PC := 100.
        ].
        recoveredBlock35Block54Step = 100 ifTrue: [
            recoveredBlock35Block54Stack1 := (recoveredBlock35Block54Stack1) selectedDataElements.
            recoveredBlock35Block54PC := 101.
        ].
        recoveredBlock35Block54Step = 101 ifTrue: [
            recoveredBlock35Block54Stack2 := recoveredBlock35Block54Arg1.
            recoveredBlock35Block54PC := 102.
        ].
        recoveredBlock35Block54Step = 102 ifTrue: [
            recoveredBlock35Block54Stack3 := [].
            recoveredBlock35Block54PC := 104.
        ].
        recoveredBlock35Block54Step = 104 ifTrue: [
            recoveredBlock35Block54Stack1 := (recoveredBlock35Block54Stack1) remove: (recoveredBlock35Block54Stack2) ifAbsent: (recoveredBlock35Block54Stack3).
            recoveredBlock35Block54PC := 106.
        ].
        recoveredBlock35Block54Step = 106 ifTrue: [
            recoveredBlock35Block54Result := recoveredBlock35Block54Stack1.
            recoveredBlock35Block54Done := true.
        ].
    ].
    recoveredBlock35Block54Result
].
            recoveredBlock35PC := 107.
        ].
        recoveredBlock35Step = 107 ifTrue: [
            (recoveredBlock35Stack0) do: (recoveredBlock35Stack1).
            recoveredBlock35PC := 109.
        ].
        recoveredBlock35Step = 109 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 110.
        ].
        recoveredBlock35Step = 110 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) selectedDataElements.
            recoveredBlock35PC := 111.
        ].
        recoveredBlock35Step = 111 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isEmpty.
            recoveredBlock35PC := 113.
        ].
        recoveredBlock35Step = 113 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 116] ifFalse: [recoveredBlock35PC := 149].
        ].
        recoveredBlock35Step = 116 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal3.
            recoveredBlock35PC := 119.
        ].
        recoveredBlock35Step = 119 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) contents.
            recoveredBlock35PC := 121.
        ].
        recoveredBlock35Step = 121 ifTrue: [
            recoveredBlock35Stack1 := ''.
            recoveredBlock35PC := 123.
        ].
        recoveredBlock35Step = 123 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) ~= (recoveredBlock35Stack1).
            recoveredBlock35PC := 124.
        ].
        recoveredBlock35Step = 124 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 128] ifFalse: [recoveredBlock35PC := 147].
        ].
        recoveredBlock35Step = 128 ifTrue: [
            recoveredBlock35Stack0 := RBUserInfo.
            recoveredBlock35PC := 130.
        ].
        recoveredBlock35Step = 130 ifTrue: [
            recoveredBlock35Stack1 := 'There is already a calibration editor for: '.
            recoveredBlock35PC := 132.
        ].
        recoveredBlock35Step = 132 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal3.
            recoveredBlock35PC := 135.
        ].
        recoveredBlock35Step = 135 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) contents.
            recoveredBlock35PC := 137.
        ].
        recoveredBlock35Step = 137 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) , (recoveredBlock35Stack2).
            recoveredBlock35PC := 139.
        ].
        recoveredBlock35Step = 139 ifTrue: [
            recoveredBlock35Stack2 := '.'.
            recoveredBlock35PC := 141.
        ].
        recoveredBlock35Step = 141 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) , (recoveredBlock35Stack2).
            recoveredBlock35PC := 143.
        ].
        recoveredBlock35Step = 143 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) message: (recoveredBlock35Stack1).
            recoveredBlock35PC := 145.
        ].
        recoveredBlock35Step = 145 ifTrue: [
            (recoveredBlock35Stack0) prompt.
            recoveredBlock35PC := 147.
        ].
        recoveredBlock35Step = 147 ifTrue: [
            recoveredBlock35Stack0 := nil.
            recoveredBlock35PC := 148.
        ].
        recoveredBlock35Step = 148 ifTrue: [
            ^recoveredBlock35Stack0
        ].
        recoveredBlock35Step = 149 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 150.
        ].
        recoveredBlock35Step = 150 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mainController.
            recoveredBlock35PC := 152.
        ].
        recoveredBlock35Step = 152 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) simEnvironment.
            recoveredBlock35PC := 154.
        ].
        recoveredBlock35Step = 154 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isOffline.
            recoveredBlock35PC := 156.
        ].
        recoveredBlock35Step = 156 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 160] ifFalse: [recoveredBlock35PC := 167].
        ].
        recoveredBlock35Step = 160 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 161.
        ].
        recoveredBlock35Step = 161 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mainController.
            recoveredBlock35PC := 163.
        ].
        recoveredBlock35Step = 163 ifTrue: [
            recoveredBlock35Stack1 := self.
            recoveredBlock35PC := 164.
        ].
        recoveredBlock35Step = 164 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) selectedDataElements.
            recoveredBlock35PC := 165.
        ].
        recoveredBlock35Step = 165 ifTrue: [
            (recoveredBlock35Stack0) checkForDoubleStimulation: (recoveredBlock35Stack1).
            recoveredBlock35PC := 167.
        ].
        recoveredBlock35Step = 167 ifTrue: [
            recoveredBlock35Stack0 := 'Shikhar'.
            recoveredBlock35PC := 169.
        ].
        recoveredBlock35Step = 169 ifTrue: [
            recoveredBlock35Stack1 := 'EHI65091'.
            recoveredBlock35PC := 171.
        ].
        recoveredBlock35Step = 171 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) == (recoveredBlock35Stack1).
            recoveredBlock35PC := 172.
        ].
        recoveredBlock35Step = 172 ifTrue: [
            recoveredBlock35PC := 173.
        ].
        recoveredBlock35Step = 173 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 174.
        ].
        recoveredBlock35Step = 174 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mainController.
            recoveredBlock35PC := 176.
        ].
        recoveredBlock35Step = 176 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) simEnvironment.
            recoveredBlock35PC := 178.
        ].
        recoveredBlock35Step = 178 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) getCalibrationLabels.
            recoveredBlock35PC := 180.
        ].
        recoveredBlock35Step = 180 ifTrue: [
            recoveredLocal1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 183.
        ].
        recoveredBlock35Step = 183 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 184.
        ].
        recoveredBlock35Step = 184 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) selectedDataElements.
            recoveredBlock35PC := 185.
        ].
        recoveredBlock35Step = 185 ifTrue: [
            recoveredBlock35Stack1 := [:recoveredBlock35Block185Arg1 | 
    | recoveredBlock35Block185Value0 recoveredBlock35Block185Value1 recoveredBlock35Block185Value2 recoveredBlock35Block185Value3 |
    recoveredBlock35Block185Value0 := recoveredLocal1.
    recoveredBlock35Block185Value1 := recoveredBlock35Block185Arg1.
    recoveredBlock35Block185Value2 := (recoveredBlock35Block185Value1) name.
    recoveredBlock35Block185Value3 := (recoveredBlock35Block185Value0) includes: (recoveredBlock35Block185Value2).
    recoveredBlock35Block185Value3
].
            recoveredBlock35PC := 201.
        ].
        recoveredBlock35Step = 201 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) select: (recoveredBlock35Stack1).
            recoveredBlock35PC := 203.
        ].
        recoveredBlock35Step = 203 ifTrue: [
            recoveredLocal2 := recoveredBlock35Stack0.
            recoveredBlock35PC := 206.
        ].
        recoveredBlock35Step = 206 ifTrue: [
            recoveredBlock35PC := 317.
        ].
        recoveredBlock35Step = 210 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 211.
        ].
        recoveredBlock35Step = 211 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) selectedView.
            recoveredBlock35PC := 213.
        ].
        recoveredBlock35Step = 213 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isDestroyed.
            recoveredBlock35PC := 215.
        ].
        recoveredBlock35Step = 215 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 218] ifFalse: [recoveredBlock35PC := 248].
        ].
        recoveredBlock35Step = 218 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal2.
            recoveredBlock35PC := 221.
        ].
        recoveredBlock35Step = 221 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) first.
            recoveredBlock35PC := 223.
        ].
        recoveredBlock35Step = 223 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) calibrationEditorClass.
            recoveredBlock35PC := 225.
        ].
        recoveredBlock35Step = 225 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 226.
        ].
        recoveredBlock35Step = 226 ifTrue: [
            recoveredLocal5 := recoveredBlock35Stack1.
            recoveredBlock35PC := 229.
        ].
        recoveredBlock35Step = 229 ifTrue: [
            (recoveredBlock35Stack0 ~~ nil) ifTrue: [recoveredBlock35PC := 234] ifFalse: [recoveredBlock35PC := 232].
        ].
        recoveredBlock35Step = 232 ifTrue: [
            recoveredBlock35Stack0 := nil.
            recoveredBlock35PC := 233.
        ].
        recoveredBlock35Step = 233 ifTrue: [
            ^recoveredBlock35Stack0
        ].
        recoveredBlock35Step = 234 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 235.
        ].
        recoveredBlock35Step = 235 ifTrue: [
            recoveredBlock35Stack1 := self.
            recoveredBlock35PC := 236.
        ].
        recoveredBlock35Step = 236 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) selectedDataElements.
            recoveredBlock35PC := 237.
        ].
        recoveredBlock35Step = 237 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal5.
            recoveredBlock35PC := 240.
        ].
        recoveredBlock35Step = 240 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) checkValidElements: (recoveredBlock35Stack1) forEditor: (recoveredBlock35Stack2).
            recoveredBlock35PC := 242.
        ].
        recoveredBlock35Step = 242 ifTrue: [
            recoveredLocal4 := recoveredBlock35Stack0.
            recoveredBlock35PC := 245.
        ].
        recoveredBlock35Step = 245 ifTrue: [
            recoveredBlock35PC := 268.
        ].
        recoveredBlock35Step = 248 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 249.
        ].
        recoveredBlock35Step = 249 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) selectedView.
            recoveredBlock35PC := 251.
        ].
        recoveredBlock35Step = 251 ifTrue: [
            recoveredLocal5 := recoveredBlock35Stack0.
            recoveredBlock35PC := 254.
        ].
        recoveredBlock35Step = 254 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 255.
        ].
        recoveredBlock35Step = 255 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 258.
        ].
        recoveredBlock35Step = 258 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal5.
            recoveredBlock35PC := 261.
        ].
        recoveredBlock35Step = 261 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) class.
            recoveredBlock35PC := 263.
        ].
        recoveredBlock35Step = 263 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) checkValidElements: (recoveredBlock35Stack1) forEditor: (recoveredBlock35Stack2).
            recoveredBlock35PC := 265.
        ].
        recoveredBlock35Step = 265 ifTrue: [
            recoveredLocal4 := recoveredBlock35Stack0.
            recoveredBlock35PC := 268.
        ].
        recoveredBlock35Step = 268 ifTrue: [
            recoveredBlock35Stack0 := 'Shikhar'.
            recoveredBlock35PC := 270.
        ].
        recoveredBlock35Step = 270 ifTrue: [
            recoveredBlock35Stack1 := 'EHI72613'.
            recoveredBlock35PC := 272.
        ].
        recoveredBlock35Step = 272 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) == (recoveredBlock35Stack1).
            recoveredBlock35PC := 273.
        ].
        recoveredBlock35Step = 273 ifTrue: [
            recoveredBlock35PC := 274.
        ].
        recoveredBlock35Step = 274 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal4.
            recoveredBlock35PC := 277.
        ].
        recoveredBlock35Step = 277 ifTrue: [
            (recoveredBlock35Stack0 == nil) ifTrue: [recoveredBlock35PC := 288] ifFalse: [recoveredBlock35PC := 280].
        ].
        recoveredBlock35Step = 280 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal4.
            recoveredBlock35PC := 283.
        ].
        recoveredBlock35Step = 283 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isEmpty.
            recoveredBlock35PC := 285.
        ].
        recoveredBlock35Step = 285 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 288] ifFalse: [recoveredBlock35PC := 296].
        ].
        recoveredBlock35Step = 288 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 289.
        ].
        recoveredBlock35Step = 289 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 290.
        ].
        recoveredBlock35Step = 290 ifTrue: [
            (recoveredBlock35Stack0) selectedView: (recoveredBlock35Stack1).
            recoveredBlock35PC := 292.
        ].
        recoveredBlock35Step = 292 ifTrue: [
            recoveredBlock35PC := 317.
        ].
        recoveredBlock35Step = 296 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal5.
            recoveredBlock35PC := 299.
        ].
        recoveredBlock35Step = 299 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal4.
            recoveredBlock35PC := 302.
        ].
        recoveredBlock35Step = 302 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 303.
        ].
        recoveredBlock35Step = 303 ifTrue: [
            recoveredBlock35Stack3 := nil.
            recoveredBlock35PC := 304.
        ].
        recoveredBlock35Step = 304 ifTrue: [
            (recoveredBlock35Stack0) manage: (recoveredBlock35Stack1) for: (recoveredBlock35Stack2) with: (recoveredBlock35Stack3).
            recoveredBlock35PC := 307.
        ].
        recoveredBlock35Step = 307 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal2.
            recoveredBlock35PC := 310.
        ].
        recoveredBlock35Step = 310 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 311.
        ].
        recoveredBlock35Step = 311 ifTrue: [
            recoveredBlock35Stack2 := recoveredLocal4.
            recoveredBlock35PC := 314.
        ].
        recoveredBlock35Step = 314 ifTrue: [
            (recoveredBlock35Stack1) removeAll: (recoveredBlock35Stack2).
            recoveredBlock35PC := 316.
        ].
        recoveredBlock35Step = 316 ifTrue: [
            recoveredBlock35PC := 317.
        ].
        recoveredBlock35Step = 317 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal2.
            recoveredBlock35PC := 320.
        ].
        recoveredBlock35Step = 320 ifTrue: [
            (recoveredBlock35Stack0 == nil) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 324].
        ].
        recoveredBlock35Step = 324 ifTrue: [
            recoveredBlock35Stack0 := recoveredLocal2.
            recoveredBlock35PC := 327.
        ].
        recoveredBlock35Step = 327 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) isEmpty.
            recoveredBlock35PC := 329.
        ].
        recoveredBlock35Step = 329 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 331] ifFalse: [recoveredBlock35PC := 210].
        ].
        recoveredBlock35Step = 331 ifTrue: [
            recoveredBlock35Stack0 := nil.
            recoveredBlock35PC := 332.
        ].
        recoveredBlock35Step = 332 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack0.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) showBusyCursorWhile: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) unregisterQuantizationCalibrationEditor.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

