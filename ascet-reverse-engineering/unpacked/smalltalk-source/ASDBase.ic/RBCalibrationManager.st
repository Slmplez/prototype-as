"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002458; bytecode file offset 0x8ffcfc"
!RBCalibrationManager methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x20005758; bytecode file offset 0x90206c"
!RBCalibrationManager methodsFor: 'recovered'!
calibrationViewChangedTitle: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005fac; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
changedStartAddressInCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20005fec; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
openCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006244; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
removeDataFromCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000626c; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
closeCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000627c; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
changedGroupDistribution: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20006344; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
addDataIntoCalibrationView: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000646c; bytecode file offset 0x902de8"
!RBCalibrationManager methodsFor: 'recovered'!
reactToCalibrationOn: recoveredArg1 view: recoveredArg2 operation: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000d054; bytecode file offset 0x909ab8"
!RBCalibrationManager methodsFor: 'recovered'!
determineOpenedCalibrationWindowFor: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d6dc; bytecode file offset 0x90a4b8"
!RBCalibrationManager methodsFor: 'recovered'!
extendViewMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d8d4; bytecode file offset 0x90a4b8"
!RBCalibrationManager methodsFor: 'recovered'!
extendOptionsMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000daac; bytecode file offset 0x90a4b8"
!RBCalibrationManager methodsFor: 'recovered'!
extendEditMenu: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000db64; bytecode file offset 0x90a4b8"
!RBCalibrationManager methodsFor: 'recovered'!
updateCalibrationViewTitleFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000de90; bytecode file offset 0x90ab8c"
!RBCalibrationManager methodsFor: 'recovered'!
getCalibrationElementWithName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000df20; bytecode file offset 0x90ab8c"
!RBCalibrationManager methodsFor: 'recovered'!
isCalibrationElementInOpenedView: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f1cc; bytecode file offset 0x90bb38"
!RBCalibrationManager methodsFor: 'recovered'!
isDisplayingWorkingPointForCalibrationElement: recoveredArg1 calibrationView: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2000f53c; bytecode file offset 0x90bef8"
!RBCalibrationManager methodsFor: 'recovered'!
checkValidElements: recoveredArg1 forEditor: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20038730; bytecode file offset 0x935c54"
!RBCalibrationManager methodsFor: 'recovered'!
returnReferenceValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) deepCopy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038844; bytecode file offset 0x935c54"
!RBCalibrationManager methodsFor: 'recovered'!
returnDeepCopyOfDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) deepCopy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e628; bytecode file offset 0x93bf94"
!RBCalibrationManager methodsFor: 'recovered'!
openedCalibrationViews
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004fcb0; bytecode file offset 0x94d048"
!RBCalibrationManager methodsFor: 'recovered'!
startAcquisition
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050364; bytecode file offset 0x94d048"
!RBCalibrationManager methodsFor: 'recovered'!
updateCalibrationViews
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200731b8; bytecode file offset 0x970b34"
!RBCalibrationManager methodsFor: 'recovered'!
determineDataRangesForMemoryBlockEditor
    ^nil
! !

"ASDBase.ic method 0x20076a7c; bytecode file offset 0x9757c8"
!RBCalibrationManager methodsFor: 'recovered'!
endOfLongCalibrationOperation
    ^true
! !

"ASDBase.ic method 0x20078d3c; bytecode file offset 0x9757c8"
!RBCalibrationManager methodsFor: 'recovered'!
startOfLongCalibrationOperation
    ^true
! !

"ASDBase.ic method 0x2007a43c; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
canCopyCalibrationElements
    ^false
! !

"ASDBase.ic method 0x2007b1a4; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
isWriteProtected
    ^false
! !

"ASDBase.ic method 0x2007defc; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
acquisitionRunning
    ^false
! !

"ASDBase.ic method 0x2007e634; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
canEditInterpolation
    ^false
! !

"ASDBase.ic method 0x2007eb8c; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
canEditMaxSize
    ^false
! !

"ASDBase.ic method 0x2007ee3c; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
canAddRemoveWPDuringAcquisition
    ^false
! !

"ASDBase.ic method 0x2007ef04; bytecode file offset 0x97c330"
!RBCalibrationManager methodsFor: 'recovered'!
activeConfiguration
    ^false
! !

"ASDBase.ic method 0x200c8204; bytecode file offset 0x9c4abc"
!RBCalibrationManager methodsFor: 'recovered'!
addVariableList: recoveredArg1 into: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) manage: (recoveredValue1) for: (self) with: (nil).
    ^self
! !

"ASDBase.ic method 0x200c8bd0; bytecode file offset 0x9c5488"
!RBCalibrationManager methodsFor: 'recovered'!
createAndOpenCalibrationViewFromClass: recoveredArg1 onVariableList: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) manage: (recoveredValue1) for: (self) with: (nil).
    ^self
! !

"ASDBase.ic method 0x200da1ac; bytecode file offset 0x9d6a68"
!RBCalibrationManager methodsFor: 'recovered'!
allowClosingWPView: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) acquisitionRunning.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) canAddRemoveWPDuringAcquisition.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20100530; bytecode file offset 0x9fcdec"
!RBCalibrationManager methodsFor: 'recovered'!
droppedItemList: recoveredArg1 intoCalibrationView: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) activate: (recoveredValue2) for: (self) with: (nil).
    (recoveredValue0) updateView.
    ^self
! !

"ASDBase.ic method 0x2010e5c4; bytecode file offset 0xa0ae80"
!RBCalibrationManager methodsFor: 'recovered'!
getElementDisplayNameFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortNameDevice.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017c760; bytecode file offset 0xa79020"
!RBCalibrationManager methodsFor: 'recovered'!
getValidCalibrationElementWithName: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCalibrationElementWithName: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) canCopyCalibrationElements.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCalibrationElementInOpenedView: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278670; bytecode file offset 0xb74f44"
!RBCalibrationManager methodsFor: 'recovered'!
menuInfo: recoveredArg1 calibrationView: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) getObjectInformationViewClass.
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := (recoveredBlock7Value2) objectInformationAssociation.
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) objectInformationDictionary.
    recoveredBlock7Value6 := (recoveredBlock7Value1) createObjectAssociation: (recoveredBlock7Value3) infoDict: (recoveredBlock7Value5).
    recoveredBlock7Local1 := recoveredBlock7Value6.
    recoveredBlock7Value7 := recoveredBlock7Local1.
    recoveredBlock7Value8 := recoveredBlock7Value7.
    recoveredBlock7Value9 := recoveredBlock7Arg1.
    recoveredBlock7Value10 := (recoveredBlock7Value9) objectInformationDescription.
    (recoveredBlock7Value8) description: (recoveredBlock7Value10).
    recoveredBlock7Value11 := recoveredArg2.
    recoveredBlock7Value12 := (recoveredBlock7Value7) openAtCurrentMousePositionWithParent: (recoveredBlock7Value11).
    ^recoveredBlock7Value12
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20333b8c; bytecode file offset 0xc30474"
!RBCalibrationManager methodsFor: 'recovered'!
hookCalibrationCallbacksFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := RbCalibrationEditorOpenCallback.
    (recoveredValue1) addCallback: (recoveredValue2) receiver: (self) selector: ('openCalibrationView:clientData:callData:') clientData: (nil).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := RbCalibrationEditorCloseCallback.
    (recoveredValue3) addCallback: (recoveredValue4) receiver: (self) selector: ('closeCalibrationView:clientData:callData:') clientData: (nil).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := RbCalibrationEditorAddDataCallback.
    (recoveredValue5) addCallback: (recoveredValue6) receiver: (self) selector: ('addDataIntoCalibrationView:clientData:callData:') clientData: (nil).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := RbCalibrationEditorRemoveDataCallback.
    (recoveredValue7) addCallback: (recoveredValue8) receiver: (self) selector: ('removeDataFromCalibrationView:clientData:callData:') clientData: (nil).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := RbChangedStartAddressCallback.
    (recoveredValue9) addCallback: (recoveredValue10) receiver: (self) selector: ('changedStartAddressInCalibrationView:clientData:callData:') clientData: (nil).
    recoveredValue11 := RbChangedGroupDistributionCallback.
    (recoveredValue0) addCallback: (recoveredValue11) receiver: (self) selector: ('changedGroupDistribution:clientData:callData:') clientData: (nil).
    ^self
! !

