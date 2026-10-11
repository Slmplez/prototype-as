"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006d94; bytecode file offset 0x908be4"
!SGHierarchyGO methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (self) minSizeWithPins.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200138b4; bytecode file offset 0x912098"
!SGHierarchyGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIBlockDiagramHierarchy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002623c; bytecode file offset 0x923928"
!SGHierarchyGO methodsFor: 'recovered'!
renameHierarchyLabel
    ^'~Rename Hierarchy'
! !

"ASDBase.ic method 0x200272cc; bytecode file offset 0x923d40"
!SGHierarchyGO methodsFor: 'recovered'!
addOutPort
    | recoveredValue0 |
    recoveredValue0 := (self) addOutPortDisplay: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027470; bytecode file offset 0x923d40"
!SGHierarchyGO methodsFor: 'recovered'!
addInPort
    | recoveredValue0 |
    recoveredValue0 := (self) addInPortDisplay: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200304c4; bytecode file offset 0x934580"
!SGHierarchyGO methodsFor: 'recovered'!
interfaceElementGOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := (recoveredValue0) asArray.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038694; bytecode file offset 0x935c54"
!SGHierarchyGO methodsFor: 'recovered'!
isReplaceableWith: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isSGHierarchyGO.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004235c; bytecode file offset 0x93ed34"
!SGHierarchyGO methodsFor: 'recovered'!
getName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := actualNameGO.
    recoveredValue1 := (recoveredValue0) getText.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004809c; bytecode file offset 0x9451f8"
!SGHierarchyGO methodsFor: 'recovered'!
getUniqueConnectorInName
    | recoveredValue0 |
    recoveredValue0 := (self) getUniqueConnectorName: ('in').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004815c; bytecode file offset 0x9451f8"
!SGHierarchyGO methodsFor: 'recovered'!
getUniqueConnectorOutName
    | recoveredValue0 |
    recoveredValue0 := (self) getUniqueConnectorName: ('out').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20063ed4; bytecode file offset 0x961970"
!SGHierarchyGO methodsFor: 'recovered'!
resolveHierarchy
    | recoveredValue0 |
    recoveredValue0 := (self) hierarchyMGO.
    (recoveredValue0) resolveBlockHierarchy.
    ^self
! !

"ASDBase.ic method 0x200704c4; bytecode file offset 0x96ce40"
!SGHierarchyGO methodsFor: 'recovered'!
hierarchyMGO
    | recoveredValue0 |
    recoveredValue0 := hierarchyMGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073648; bytecode file offset 0x970b34"
!SGHierarchyGO methodsFor: 'recovered'!
classRBSymbolGO
    ^nil
! !

"ASDBase.ic method 0x20075d9c; bytecode file offset 0x9757c8"
!SGHierarchyGO methodsFor: 'recovered'!
isSGHierarchyGO
    ^true
! !

"ASDBase.ic method 0x200772f4; bytecode file offset 0x9757c8"
!SGHierarchyGO methodsFor: 'recovered'!
resolveIsPossible
    ^true
! !

"ASDBase.ic method 0x20078964; bytecode file offset 0x9757c8"
!SGHierarchyGO methodsFor: 'recovered'!
nameEditable
    ^true
! !

"ASDBase.ic method 0x200793fc; bytecode file offset 0x97c330"
!SGHierarchyGO methodsFor: 'recovered'!
fitToForcePositionRaster
    ^false
! !

"ASDBase.ic method 0x20086b00; bytecode file offset 0x98376c"
!SGHierarchyGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) buildLogicBasic: (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20088dc4; bytecode file offset 0x9856f0"
!SGHierarchyGO methodsFor: 'recovered'!
sequenceCalls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20098174; bytecode file offset 0x995850"
!SGHierarchyGO methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hierarchyMGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) parent: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5720; bytecode file offset 0x9a23f0"
!SGHierarchyGO methodsFor: 'recovered'!
addInPortDisplay: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) topLeft.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) addInPortFor: (recoveredValue1) display: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b1f08; bytecode file offset 0x9ae7f4"
!SGHierarchyGO methodsFor: 'recovered'!
hasEditableLayout
    | recoveredValue0 |
    recoveredValue0 := ('Muzaffar') == ('Call_62140').
    ^true
! !

"ASDBase.ic method 0x200c69ec; bytecode file offset 0x9c3470"
!SGHierarchyGO methodsFor: 'recovered'!
hierarchyMGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchyMGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de398; bytecode file offset 0x9dac84"
!SGHierarchyGO methodsFor: 'recovered'!
addPortAt: recoveredArg1 connector: recoveredArg2 connectorName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) interfaceGOs.
    recoveredValue4 := (self) addPortAt: (recoveredValue0) connector: (recoveredValue1) connectorName: (recoveredValue2) forInterfaceGOs: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e2490; bytecode file offset 0x9ded50"
!SGHierarchyGO methodsFor: 'recovered'!
menuIconRemove
    | recoveredValue0 recoveredValue1 |
    symbolGO := nil.
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) frame.
    (recoveredValue0) displayOneRectSetModified: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e8400; bytecode file offset 0x9e4cc8"
!SGHierarchyGO methodsFor: 'recovered'!
addOutPortDisplay: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) logicFrame.
    recoveredValue1 := (recoveredValue0) topRight.
    recoveredValue2 := PinDistance.
    recoveredValue3 := (recoveredValue1) down: (recoveredValue2).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) addOutPortFor: (recoveredValue3) display: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013372c; bytecode file offset 0xa2ffec"
!SGHierarchyGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            super displayOn: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20156778; bytecode file offset 0xa5303c"
!SGHierarchyGO methodsFor: 'recovered'!
createInConnectorAt: recoveredArg1 direction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGArgumentConnectorGO.
    recoveredValue1 := lineStyle.
    recoveredValue2 := (recoveredValue0) createWithLineStyle: (recoveredValue1) manager: (self).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := PinLength.
    (recoveredValue3) initAt: (recoveredValue4) direction: (recoveredValue5) length: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2015683c; bytecode file offset 0xa53104"
!SGHierarchyGO methodsFor: 'recovered'!
createOutConnectorAt: recoveredArg1 direction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGResultConnectorGO.
    recoveredValue1 := (self) lineStyle.
    recoveredValue2 := (recoveredValue0) createWithLineStyle: (recoveredValue1) manager: (self).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := PinLength.
    (recoveredValue3) initAt: (recoveredValue4) direction: (recoveredValue5) length: (recoveredValue6).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20199788; bytecode file offset 0xa96074"
!SGHierarchyGO methodsFor: 'recovered'!
menuAddInPort
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addInPort.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) raster.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fitToRaster: (recoveredStack1) rectangle: (recoveredStack2).
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

"ASDBase.ic method 0x201997a8; bytecode file offset 0xa96074"
!SGHierarchyGO methodsFor: 'recovered'!
menuAddOutPort
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addOutPort.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) raster.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fitToRaster: (recoveredStack1) rectangle: (recoveredStack2).
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

"ASDBase.ic method 0x201b2314; bytecode file offset 0xaaebdc"
!SGHierarchyGO methodsFor: 'recovered'!
checkSizeForPinNumber: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) growDown.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8a90; bytecode file offset 0xad5354"
!SGHierarchyGO methodsFor: 'recovered'!
displayAfterFrameOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) viewContour.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            super displayAfterFrameOn: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6210; bytecode file offset 0xae2ae8"
!SGHierarchyGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('Kli') == ('Call_71935').
    recoveredValue1 := (self) frameGO.
    recoveredValue2 := (self) frameGO.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (self) desiredRasterSize.
    recoveredValue5 := (recoveredValue3) roundTo: (recoveredValue4).
    (recoveredValue1) size: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    super fitToRaster: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202081b0; bytecode file offset 0xb04a84"
!SGHierarchyGO methodsFor: 'recovered'!
removePort: recoveredArg1 display: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) removeConnections.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) frame.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWith: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) displayRects: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202083b4; bytecode file offset 0xb04c7c"
!SGHierarchyGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := RBMoveAndScaleWrapper.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWith: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject: (recoveredStack1) changeToSensitivePointWrapper: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x2023a2e8; bytecode file offset 0xb36ba8"
!SGHierarchyGO methodsFor: 'recovered'!
getUniqueConnectorName: recoveredArg1
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterfaceGONamed: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) getInterfaceGONamed: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 33].
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

"ASDBase.ic method 0x2023ade0; bytecode file offset 0xb37734"
!SGHierarchyGO methodsFor: 'recovered'!
createDefaultFrameGO
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := RBDoubleFrameGO.
    recoveredValue1 := DefaultGraphObjectPositionBlock.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (self) getDefSize.
    recoveredValue4 := (recoveredValue3) x.
    recoveredValue5 := (self) getDefSize.
    recoveredValue6 := (recoveredValue5) y.
    recoveredValue7 := DefaultLineStyle.
    recoveredValue8 := (recoveredValue7) deepCopy.
    recoveredValue9 := DefinedBlockAreaStyle.
    recoveredValue10 := (recoveredValue9) deepCopy.
    recoveredValue11 := (recoveredValue0) createAt: (recoveredValue2) xAxis: (recoveredValue4) yAxis: (recoveredValue6) lineStyle: (recoveredValue8) areaStyle: (recoveredValue10) manager: (self).
    recoveredValue12 := (recoveredValue11) includesFlag: (true).
    (self) frameGO: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x2023cca8; bytecode file offset 0xb39574"
!SGHierarchyGO methodsFor: 'recovered'!
changeActualNameLocally
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super changeActualName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'call_98709'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkActualNameLocally.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeActualNameLocally.
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
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c008; bytecode file offset 0xb488c8"
!SGHierarchyGO methodsFor: 'recovered'!
getInterfaceGONamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isHierarchyBlockInterface.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) getConnectorName.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) = (recoveredBlock6Stack2).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20262460; bytecode file offset 0xb5ed38"
!SGHierarchyGO methodsFor: 'recovered'!
correctedScalePoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) a.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue1) * (recoveredValue3).
    recoveredValue5 := PinDistance.
    recoveredValue6 := (recoveredValue4) roundTo: (recoveredValue5).
    recoveredValue7 := (self) frameGO.
    recoveredValue8 := (recoveredValue7) a.
    recoveredValue9 := (recoveredValue6) / (recoveredValue8).
    recoveredValue10 := (self) frameGO.
    recoveredValue11 := (recoveredValue10) b.
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (recoveredValue12) y.
    recoveredValue14 := (recoveredValue11) * (recoveredValue13).
    recoveredValue15 := PinDistance.
    recoveredValue16 := (recoveredValue14) roundTo: (recoveredValue15).
    recoveredValue17 := (self) frameGO.
    recoveredValue18 := (recoveredValue17) b.
    recoveredValue19 := (recoveredValue16) / (recoveredValue18).
    recoveredValue20 := (recoveredValue9) @ (recoveredValue19).
    ^recoveredValue20
! !

"ASDBase.ic method 0x2026a078; bytecode file offset 0xb66950"
!SGHierarchyGO methodsFor: 'recovered'!
storagePositionOffset
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
            recoveredStack2 := 'Call_57583'.
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
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsEditableLayout.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEditableLayout.
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
            recoveredStack0 := (recoveredStack0) extent.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := super storagePositionOffset.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202765a0; bytecode file offset 0xb72e84"
!SGHierarchyGO methodsFor: 'recovered'!
createNameGO: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := SGNameGO.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := lineStyle.
    recoveredValue4 := FontNames.
    recoveredValue5 := (recoveredValue4) font.
    recoveredValue6 := recoveredArg1.
    (recoveredValue2) initForSGClassGO: (self) lineStyle: (recoveredValue3) font: (recoveredValue5) text: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := DefaultGraphObjectPositionBlock.
    recoveredValue9 := (recoveredValue8) value.
    recoveredValue10 := (self) getDefSize.
    recoveredValue11 := (recoveredValue10) y.
    recoveredValue12 := (recoveredValue11) // (2).
    recoveredValue13 := (recoveredValue9) up: (recoveredValue12).
    (recoveredValue7) setPosition: (recoveredValue13) alignment: ('TaCenter') visibleFlag: (true).
    actualNameGO := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20288d28; bytecode file offset 0xb85600"
!SGHierarchyGO methodsFor: 'recovered'!
removeGO: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280e1d38Arg1 | 
    | block280e1d38Stack0 block280e1d38Stack1 block280e1d38Stack2 block280e1d38Stack3 block280e1d38Stack4 block280e1d38PC block280e1d38Step block280e1d38Done block280e1d38Result |
    block280e1d38Stack0 := self.
    block280e1d38PC := 4.
    block280e1d38Done := false.
    [block280e1d38Done not] whileTrue: [
        block280e1d38Step := block280e1d38PC.
        block280e1d38Step = 4 ifTrue: [
            block280e1d38Stack1 := nil.
            block280e1d38PC := 5.
        ].
        block280e1d38Step = 5 ifTrue: [
            block280e1d38Stack2 := block280e1d38Arg1.
            block280e1d38PC := 6.
        ].
        block280e1d38Step = 6 ifTrue: [
            block280e1d38Stack2 := (block280e1d38Stack2) basicGraphObject.
            block280e1d38PC := 8.
        ].
        block280e1d38Step = 8 ifTrue: [
            block280e1d38Stack2 := (block280e1d38Stack2) isSGHierarchyGO.
            block280e1d38PC := 10.
        ].
        block280e1d38Step = 10 ifTrue: [
            (block280e1d38Stack2) ifTrue: [block280e1d38PC := 14] ifFalse: [block280e1d38PC := 20].
        ].
        block280e1d38Step = 14 ifTrue: [
            block280e1d38PC := 15.
        ].
        block280e1d38Step = 15 ifTrue: [
            block280e1d38Stack1 := block280e1d38Arg1.
            block280e1d38PC := 16.
        ].
        block280e1d38Step = 16 ifTrue: [
            block280e1d38Stack2 := block280e1d38Arg1.
            block280e1d38PC := 17.
        ].
        block280e1d38Step = 17 ifTrue: [
            block280e1d38Stack3 := false.
            block280e1d38PC := 18.
        ].
        block280e1d38Step = 18 ifTrue: [
            block280e1d38Stack1 := (block280e1d38Stack1) removeGO: (block280e1d38Stack2) display: (block280e1d38Stack3).
            block280e1d38PC := 20.
        ].
        block280e1d38Step = 20 ifTrue: [
            block280e1d38Result := block280e1d38Stack1.
            block280e1d38Done := true.
        ].
    ].
    block280e1d38Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            super removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4f88; bytecode file offset 0xbb1860"
!SGHierarchyGO methodsFor: 'recovered'!
checkConsistencyTableBuilder: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e4edcArg1 | 
    | block280e4edcStack0 block280e4edcStack1 block280e4edcStack2 block280e4edcStack3 block280e4edcPC block280e4edcStep block280e4edcDone block280e4edcResult |
    block280e4edcStack0 := self.
    block280e4edcPC := 4.
    block280e4edcDone := false.
    [block280e4edcDone not] whileTrue: [
        block280e4edcStep := block280e4edcPC.
        block280e4edcStep = 4 ifTrue: [
            block280e4edcStack1 := false.
            block280e4edcPC := 5.
        ].
        block280e4edcStep = 5 ifTrue: [
            block280e4edcStack2 := block280e4edcArg1.
            block280e4edcPC := 6.
        ].
        block280e4edcStep = 6 ifTrue: [
            block280e4edcStack2 := (block280e4edcStack2) isHierarchyBlockInterface.
            block280e4edcPC := 7.
        ].
        block280e4edcStep = 7 ifTrue: [
            (block280e4edcStack2) ifTrue: [block280e4edcPC := 10] ifFalse: [block280e4edcPC := 14].
        ].
        block280e4edcStep = 10 ifTrue: [
            block280e4edcPC := 11.
        ].
        block280e4edcStep = 11 ifTrue: [
            block280e4edcStack1 := block280e4edcArg1.
            block280e4edcPC := 12.
        ].
        block280e4edcStep = 12 ifTrue: [
            block280e4edcStack1 := (block280e4edcStack1) internalConnectorGO.
            block280e4edcPC := 13.
        ].
        block280e4edcStep = 13 ifTrue: [
            block280e4edcStack1 := (block280e4edcStack1) isNil.
            block280e4edcPC := 14.
        ].
        block280e4edcStep = 14 ifTrue: [
            block280e4edcResult := block280e4edcStack1.
            block280e4edcDone := true.
        ].
    ].
    block280e4edcResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    (self) removePort: (recoveredBlock23Value0) display: (false).
    recoveredBlock23Value1 := recoveredArg1.
    recoveredBlock23Value2 := recoveredBlock23Arg1.
    recoveredBlock23Value3 := (recoveredBlock23Value2) identifier.
    recoveredBlock23Value4 := (recoveredBlock23Value1) removeIdentifier: (recoveredBlock23Value3).
    recoveredBlock23Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e24c4; bytecode file offset 0xbded90"
!SGHierarchyGO methodsFor: 'recovered'!
fontCursorConstantForSelectPoint: recoveredArg1
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
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'GFTopLeftCorner'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'GFTopRightCorner'.
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
            recoveredStack2 := 3.
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
            recoveredStack1 := 'GFBottomRightCorner'.
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
            recoveredStack2 := 4.
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
            recoveredStack1 := 'GFBottomLeftCorner'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (String new: 18) at: 1 put: (Character value: 85); at: 2 put: (Character value: 110); at: 3 put: (Character value: 122); at: 4 put: (Character value: 117); at: 5 put: (Character value: 108); at: 6 put: (Character value: 228); at: 7 put: (Character value: 115); at: 8 put: (Character value: 115); at: 9 put: (Character value: 105); at: 10 put: (Character value: 103); at: 11 put: (Character value: 101); at: 12 put: (Character value: 114); at: 13 put: (Character value: 32); at: 14 put: (Character value: 73); at: 15 put: (Character value: 110); at: 16 put: (Character value: 100); at: 17 put: (Character value: 101); at: 18 put: (Character value: 120); yourself.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
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

"ASDBase.ic method 0x202f7464; bytecode file offset 0xbf3d50"
!SGHierarchyGO methodsFor: 'recovered'!
checkAndUpdateLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280e8b54Arg1 | 
    | block280e8b54Value0 block280e8b54Value1 block280e8b54Value2 |
    block280e8b54Value0 := block280e8b54Arg1.
    block280e8b54Value1 := (block280e8b54Value0) graphObject.
    block280e8b54Value2 := (block280e8b54Value1) isSGHierarchyGO.
    block280e8b54Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block280e8b78Arg1 | 
    | block280e8b78Value0 block280e8b78Value1 block280e8b78Value2 |
    block280e8b78Value0 := block280e8b78Arg1.
    block280e8b78Value1 := (block280e8b78Value0) graphObject.
    block280e8b78Value2 := (block280e8b78Value1) getName.
    block280e8b78Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) getName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) setText: (recoveredStack1).
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

"ASDBase.ic method 0x2032f21c; bytecode file offset 0xc2bae0"
!SGHierarchyGO methodsFor: 'recovered'!
moveTo: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := actualNameGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredLocal1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) moveDelta: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveDelta: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203553a8; bytecode file offset 0xc51c94"
!SGHierarchyGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSimBDECtrl.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ASDExperimentOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionExperimentAutomaticMonitorMode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) menuExperimentMonitorDelete.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'EHI_55554'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextLevel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSimBDECtrl.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := manager.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) loadMonitors.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036d6b4; bytecode file offset 0xc69f90"
!SGHierarchyGO methodsFor: 'recovered'!
interfaceConnectorNameGOs
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
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
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isSelectorPort.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 24] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) basicGraphObject.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) interfaceConnectorNameGOs.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) addAll: (recoveredBlock12Stack2).
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) basicGraphObject.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getConnectorNameGO.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isString.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 61] ifFalse: [recoveredBlock12PC := 52].
        ].
        recoveredBlock12Step = 52 ifTrue: [
            recoveredBlock12PC := 53.
        ].
        recoveredBlock12Step = 53 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 61.
        ].
        recoveredBlock12Step = 61 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2039dcec; bytecode file offset 0xc9a5c8"
!SGHierarchyGO methodsFor: 'recovered'!
getMenuGOForPoint: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) basicGraphObject.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg1.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getPointedGOFor: (recoveredBlock16Stack3).
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack3.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 56] ifFalse: [recoveredBlock16PC := 38].
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isTextGO.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 52] ifFalse: [recoveredBlock16PC := 48].
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack1 := recoveredLocal1.
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) hierarchyMGO.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b91bc; bytecode file offset 0xcb5a9c"
!SGHierarchyGO methodsFor: 'recovered'!
addOutPortFor: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) outPortPosAndDirDisplay: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOutConnectorAt: (recoveredStack1) direction: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUniqueConnectorOutName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) addPortAt: (recoveredStack1) connector: (recoveredStack2) connectorName: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203cab20; bytecode file offset 0xcc7410"
!SGHierarchyGO methodsFor: 'recovered'!
updateForIcon: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGImageGO.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) position: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            symbolGO := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) image: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) logicFrame.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) a: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) extent.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) logicFrame.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := (recoveredStack4) extent.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) // (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) b: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack2) visibleFlag: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ce964; bytecode file offset 0xccb248"
!SGHierarchyGO methodsFor: 'recovered'!
addInPortFor: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) inStartVal.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) inPortPosAndDirFirstStartPos: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInConnectorAt: (recoveredStack1) direction: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUniqueConnectorInName.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) addPortAt: (recoveredStack1) connector: (recoveredStack2) connectorName: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d8ce0; bytecode file offset 0xcd55d0"
!SGHierarchyGO methodsFor: 'recovered'!
siblingCallsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) manager.
    recoveredValue2 := (recoveredValue1) internalConnectorGO.
    recoveredValue3 := (recoveredValue2) externalConnectorGO.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue6) connectedGOs.
    recoveredValue8 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Local1 recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := recoveredLocal2.
    recoveredBlock25Value2 := (recoveredBlock25Value0) opposedNode: (recoveredBlock25Value1).
    recoveredBlock25Value3 := [:recoveredBlock25Block38Arg1 | 
    | recoveredBlock25Block38Stack0 recoveredBlock25Block38Stack1 recoveredBlock25Block38Stack2 recoveredBlock25Block38Stack3 recoveredBlock25Block38Stack4 recoveredBlock25Block38PC recoveredBlock25Block38Step recoveredBlock25Block38Done recoveredBlock25Block38Result |
    recoveredBlock25Block38Stack0 := nil.
    recoveredBlock25Block38PC := 44.
    recoveredBlock25Block38Done := false.
    [recoveredBlock25Block38Done not] whileTrue: [
        recoveredBlock25Block38Step := recoveredBlock25Block38PC.
        recoveredBlock25Block38Step = 44 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 45.
        ].
        recoveredBlock25Block38Step = 45 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) getBlock.
            recoveredBlock25Block38PC := 47.
        ].
        recoveredBlock25Block38Step = 47 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) isSGHierarchyGO.
            recoveredBlock25Block38PC := 49.
        ].
        recoveredBlock25Block38Step = 49 ifTrue: [
            (recoveredBlock25Block38Stack1) ifTrue: [recoveredBlock25Block38PC := 52] ifFalse: [recoveredBlock25Block38PC := 66].
        ].
        recoveredBlock25Block38Step = 52 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredLocal1.
            recoveredBlock25Block38PC := 55.
        ].
        recoveredBlock25Block38Step = 55 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 56.
        ].
        recoveredBlock25Block38Step = 56 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) getBlock.
            recoveredBlock25Block38PC := 58.
        ].
        recoveredBlock25Block38Step = 58 ifTrue: [
            recoveredBlock25Block38Stack3 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 59.
        ].
        recoveredBlock25Block38Step = 59 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) siblingCallsFor: (recoveredBlock25Block38Stack3).
            recoveredBlock25Block38PC := 61.
        ].
        recoveredBlock25Block38Step = 61 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) addAll: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 63.
        ].
        recoveredBlock25Block38Step = 63 ifTrue: [
            recoveredBlock25Block38PC := 74.
        ].
        recoveredBlock25Block38Step = 66 ifTrue: [
            recoveredBlock25Block38Stack1 := recoveredLocal1.
            recoveredBlock25Block38PC := 69.
        ].
        recoveredBlock25Block38Step = 69 ifTrue: [
            recoveredBlock25Block38Stack2 := recoveredBlock25Block38Arg1.
            recoveredBlock25Block38PC := 70.
        ].
        recoveredBlock25Block38Step = 70 ifTrue: [
            recoveredBlock25Block38Stack2 := (recoveredBlock25Block38Stack2) getBlock.
            recoveredBlock25Block38PC := 72.
        ].
        recoveredBlock25Block38Step = 72 ifTrue: [
            recoveredBlock25Block38Stack1 := (recoveredBlock25Block38Stack1) add: (recoveredBlock25Block38Stack2).
            recoveredBlock25Block38PC := 74.
        ].
        recoveredBlock25Block38Step = 74 ifTrue: [
            recoveredBlock25Block38Result := recoveredBlock25Block38Stack1.
            recoveredBlock25Block38Done := true.
        ].
    ].
    recoveredBlock25Block38Result
].
    recoveredBlock25Value4 := (recoveredBlock25Value2) ifNotNil: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) asOrderedCollection.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2041bb38; bytecode file offset 0xd1842c"
!SGHierarchyGO methodsFor: 'recovered'!
moveInterfaceElement: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPos: (recoveredStack1) forGO: (recoveredStack2) delta: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPointOnRect: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := 'right'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'left'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := 'down'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := 'up'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsPinAtPosition: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) moveBasicTo: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) setDirectionTo: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042303c; bytecode file offset 0xd1f91c"
!SGHierarchyGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bigFrame.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := actualNameGO.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := nil.
            recoveredBlock41PC := 49.
        ].
        recoveredBlock41Step = 49 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) basicGraphObject.
            recoveredBlock41PC := 52.
        ].
        recoveredBlock41Step = 52 ifTrue: [
            recoveredBlock41Stack3 := recoveredArg1.
            recoveredBlock41PC := 55.
        ].
        recoveredBlock41Step = 55 ifTrue: [
            recoveredBlock41Stack2 := (recoveredBlock41Stack2) getPointedGOFor: (recoveredBlock41Stack3).
            recoveredBlock41PC := 56.
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Stack2.
            recoveredBlock41PC := 57.
        ].
        recoveredBlock41Step = 57 ifTrue: [
            recoveredLocal1 := recoveredBlock41Stack3.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            (recoveredBlock41Stack2 == nil) ifTrue: [recoveredBlock41PC := 82] ifFalse: [recoveredBlock41PC := 64].
        ].
        recoveredBlock41Step = 64 ifTrue: [
            recoveredBlock41PC := 65.
        ].
        recoveredBlock41Step = 65 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) isTextGO.
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 78] ifFalse: [recoveredBlock41PC := 74].
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack1 := self.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) hierarchyMGO.
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            ^recoveredBlock41Stack1
        ].
        recoveredBlock41Step = 82 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043feb8; bytecode file offset 0xd3c7a0"
!SGHierarchyGO methodsFor: 'recovered'!
buildLogicBasic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getName.
    recoveredValue2 := (self) identifier.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) hierarchyBlock: (recoveredValue1) iD: (recoveredValue2) hierarchy: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := (self) interfaceElementGOs.
    recoveredValue6 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21Stack5 recoveredBlock21Stack6 recoveredBlock21Stack7 recoveredBlock21Stack8 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) isHierarchyBlockInterface.
            recoveredBlock21PC := 32.
        ].
        recoveredBlock21Step = 32 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 36] ifFalse: [recoveredBlock21PC := 102].
        ].
        recoveredBlock21Step = 36 ifTrue: [
            recoveredBlock21PC := 37.
        ].
        recoveredBlock21Step = 37 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 38.
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) internalConnectorGO.
            recoveredBlock21PC := 41.
        ].
        recoveredBlock21Step = 41 ifTrue: [
            (recoveredBlock21Stack2 == nil) ifTrue: [recoveredBlock21PC := 102] ifFalse: [recoveredBlock21PC := 44].
        ].
        recoveredBlock21Step = 44 ifTrue: [
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Stack1 := recoveredBlock21Arg1.
            recoveredBlock21PC := 46.
        ].
        recoveredBlock21Step = 46 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) hasArgumentPin.
            recoveredBlock21PC := 48.
        ].
        recoveredBlock21Step = 48 ifTrue: [
            (recoveredBlock21Stack1) ifTrue: [recoveredBlock21PC := 52] ifFalse: [recoveredBlock21PC := 76].
        ].
        recoveredBlock21Step = 52 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 55.
        ].
        recoveredBlock21Step = 55 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 56.
        ].
        recoveredBlock21Step = 56 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) connectorName.
            recoveredBlock21PC := 58.
        ].
        recoveredBlock21Step = 58 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 59.
        ].
        recoveredBlock21Step = 59 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) identifier.
            recoveredBlock21PC := 60.
        ].
        recoveredBlock21Step = 60 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Arg1.
            recoveredBlock21PC := 61.
        ].
        recoveredBlock21Step = 61 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) internalConnectorGO.
            recoveredBlock21PC := 63.
        ].
        recoveredBlock21Step = 63 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) identifier.
            recoveredBlock21PC := 64.
        ].
        recoveredBlock21Step = 64 ifTrue: [
            recoveredBlock21Stack5 := recoveredLocal1.
            recoveredBlock21PC := 67.
        ].
        recoveredBlock21Step = 67 ifTrue: [
            recoveredBlock21Stack6 := recoveredArg2.
            recoveredBlock21PC := 70.
        ].
        recoveredBlock21Step = 70 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) inputOfHierarchy: (recoveredBlock21Stack2) externalPinID: (recoveredBlock21Stack3) internalPinID: (recoveredBlock21Stack4) ofBlock: (recoveredBlock21Stack5) hierarchy: (recoveredBlock21Stack6).
            recoveredBlock21PC := 73.
        ].
        recoveredBlock21Step = 73 ifTrue: [
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 76 ifTrue: [
            recoveredBlock21Stack1 := recoveredArg1.
            recoveredBlock21PC := 79.
        ].
        recoveredBlock21Step = 79 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 80.
        ].
        recoveredBlock21Step = 80 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) connectorName.
            recoveredBlock21PC := 82.
        ].
        recoveredBlock21Step = 82 ifTrue: [
            recoveredBlock21Stack3 := recoveredBlock21Arg1.
            recoveredBlock21PC := 83.
        ].
        recoveredBlock21Step = 83 ifTrue: [
            recoveredBlock21Stack3 := (recoveredBlock21Stack3) identifier.
            recoveredBlock21PC := 84.
        ].
        recoveredBlock21Step = 84 ifTrue: [
            recoveredBlock21Stack4 := recoveredBlock21Arg1.
            recoveredBlock21PC := 85.
        ].
        recoveredBlock21Step = 85 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) internalConnectorGO.
            recoveredBlock21PC := 87.
        ].
        recoveredBlock21Step = 87 ifTrue: [
            recoveredBlock21Stack4 := (recoveredBlock21Stack4) identifier.
            recoveredBlock21PC := 88.
        ].
        recoveredBlock21Step = 88 ifTrue: [
            recoveredBlock21Stack5 := recoveredLocal1.
            recoveredBlock21PC := 91.
        ].
        recoveredBlock21Step = 91 ifTrue: [
            recoveredBlock21Stack6 := recoveredBlock21Arg1.
            recoveredBlock21PC := 92.
        ].
        recoveredBlock21Step = 92 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) externalConnectorGO.
            recoveredBlock21PC := 94.
        ].
        recoveredBlock21Step = 94 ifTrue: [
            recoveredBlock21Stack6 := (recoveredBlock21Stack6) hasTempVar.
            recoveredBlock21PC := 96.
        ].
        recoveredBlock21Step = 96 ifTrue: [
            recoveredBlock21Stack7 := recoveredArg2.
            recoveredBlock21PC := 99.
        ].
        recoveredBlock21Step = 99 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) outputOfHierarchy: (recoveredBlock21Stack2) externalPinID: (recoveredBlock21Stack3) internalPinID: (recoveredBlock21Stack4) ofBlock: (recoveredBlock21Stack5) tempVar: (recoveredBlock21Stack6) hierarchy: (recoveredBlock21Stack7).
            recoveredBlock21PC := 102.
        ].
        recoveredBlock21Step = 102 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20448648; bytecode file offset 0xd44f50"
!SGHierarchyGO methodsFor: 'recovered'!
menuIconChange
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBFileSelectionPrompter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Image file'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptGraphicsFileTitle: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CgImageFileFormat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) allFormats.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredLocal3.
    recoveredBlock22Value2 := (recoveredBlock22Value0) formatMatchesFile: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromFile: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) shouldShowPostscriptExportWarning.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) postscriptExportWarningMessage.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) warning: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) updateForIcon: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
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

"ASDBase.ic method 0x20463fec; bytecode file offset 0xd608e0"
!SGHierarchyGO methodsFor: 'recovered'!
buildPinDictionary
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) interfaceElementGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 recoveredBlock11Value15 recoveredBlock11Value16 recoveredBlock11Value17 recoveredBlock11Value18 recoveredBlock11Value19 recoveredBlock11Value20 recoveredBlock11Value21 recoveredBlock11Value22 recoveredBlock11Value23 recoveredBlock11Value24 recoveredBlock11Value25 recoveredBlock11Value26 recoveredBlock11Value27 recoveredBlock11Value28 recoveredBlock11Value29 |
    recoveredBlock11Value0 := Array.
    recoveredBlock11Value1 := (recoveredBlock11Value0) new: (7).
    recoveredLocal1 := recoveredBlock11Value1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) identifier.
    (recoveredBlock11Value2) at: (1) put: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredLocal1.
    recoveredBlock11Value6 := recoveredBlock11Arg1.
    recoveredBlock11Value7 := (recoveredBlock11Value6) hasResultPin.
    (recoveredBlock11Value5) at: (2) put: (recoveredBlock11Value7).
    recoveredBlock11Value8 := recoveredLocal1.
    recoveredBlock11Value9 := recoveredBlock11Arg1.
    recoveredBlock11Value10 := (recoveredBlock11Value9) getDirection.
    (recoveredBlock11Value8) at: (3) put: (recoveredBlock11Value10).
    recoveredBlock11Value11 := recoveredLocal1.
    recoveredBlock11Value12 := recoveredBlock11Arg1.
    recoveredBlock11Value13 := (recoveredBlock11Value12) getPosition.
    (recoveredBlock11Value11) at: (4) put: (recoveredBlock11Value13).
    recoveredBlock11Value14 := recoveredLocal1.
    recoveredBlock11Value15 := recoveredBlock11Arg1.
    recoveredBlock11Value16 := (recoveredBlock11Value15) isVisible.
    (recoveredBlock11Value14) at: (5) put: (recoveredBlock11Value16).
    recoveredBlock11Value17 := recoveredLocal1.
    recoveredBlock11Value18 := recoveredBlock11Arg1.
    recoveredBlock11Value19 := (recoveredBlock11Value18) getConnectorNameGO.
    recoveredBlock11Value20 := (recoveredBlock11Value19) isVisible.
    (recoveredBlock11Value17) at: (6) put: (recoveredBlock11Value20).
    recoveredBlock11Value21 := recoveredLocal1.
    recoveredBlock11Value22 := recoveredBlock11Arg1.
    recoveredBlock11Value23 := (recoveredBlock11Value22) externalConnectorGO.
    recoveredBlock11Value24 := (recoveredBlock11Value23) hasTempVar.
    (recoveredBlock11Value21) at: (7) put: (recoveredBlock11Value24).
    recoveredBlock11Value25 := recoveredLocal2.
    recoveredBlock11Value26 := recoveredBlock11Arg1.
    recoveredBlock11Value27 := (recoveredBlock11Value26) connectorName.
    recoveredBlock11Value28 := recoveredLocal1.
    recoveredBlock11Value29 := (recoveredBlock11Value25) at: (recoveredBlock11Value27) put: (recoveredBlock11Value28).
    recoveredBlock11Value29
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20487c90; bytecode file offset 0xd845b8"
!SGHierarchyGO methodsFor: 'recovered'!
getMenu
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super getMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'changeActualName'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) renameHierarchyLabel.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'menuIconChange'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := '~Change Icon'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'menuIconRemove'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := '~Remove Icon'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := symbolGO.
    recoveredBlock31Value1 := (recoveredBlock31Value0) notNil.
    recoveredBlock31Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'changeFillColor'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '~Fill Color...'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) for: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'toggleActualNameVisibility'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 'Show / Hide N~ame'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock71Value0 recoveredBlock71Value1 |
    recoveredBlock71Value0 := actualNameGO.
    recoveredBlock71Value1 := (recoveredBlock71Value0) isVisible.
    recoveredBlock71Value1
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) toggle: (recoveredStack4).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 'showInterfaceNames'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := '~Show Pin Names'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'hideInterfaceNames'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := '~Hide Pin Names'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'setToDefaultSize'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'Set To ~Default Size'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'menuAddOutPort'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := 'Add ~Outpin'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := 'menuAddInPort'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := 'Add ~Inpin'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048c888; bytecode file offset 0xd89184"
!SGHierarchyGO methodsFor: 'recovered'!
createForPinDictionary: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) value.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := 2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) value.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := 4.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack4 := 3.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) createOutConnectorAt: (recoveredBlock7Stack2) direction: (recoveredBlock7Stack3).
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) value.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack3 := 4.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3).
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack4 := 3.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) createInConnectorAt: (recoveredBlock7Stack2) direction: (recoveredBlock7Stack3).
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal2.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) value.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack3 := 7.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack4 := [
    false
].
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) at: (recoveredBlock7Stack3) ifAbsent: (recoveredBlock7Stack4).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            (recoveredBlock7Stack1) tempVar: (recoveredBlock7Stack2).
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := SGHierarchyBlockInterfaceElementGO.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) lineStyle.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack3 := self.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) createWithLineStyle: (recoveredBlock7Stack2) manager: (recoveredBlock7Stack3).
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal2.
            recoveredBlock7PC := 94.
        ].
        recoveredBlock7Step = 94 ifTrue: [
            recoveredBlock7Stack4 := recoveredLocal1.
            recoveredBlock7PC := 97.
        ].
        recoveredBlock7Step = 97 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) setManager: (recoveredBlock7Stack4).
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            (recoveredBlock7Stack2) setExternalConnectorGO: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 103.
        ].
        recoveredBlock7Step = 103 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) key.
            recoveredBlock7PC := 105.
        ].
        recoveredBlock7Step = 105 ifTrue: [
            (recoveredBlock7Stack2) buildConnectorNameGO: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 108.
        ].
        recoveredBlock7Step = 108 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 109.
        ].
        recoveredBlock7Step = 109 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) value.
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack4 := 6.
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) at: (recoveredBlock7Stack4).
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            (recoveredBlock7Stack2) connNameVisible: (recoveredBlock7Stack3).
            recoveredBlock7PC := 115.
        ].
        recoveredBlock7Step = 115 ifTrue: [
            (recoveredBlock7Stack0) addPort: (recoveredBlock7Stack1).
            recoveredBlock7PC := 117.
        ].
        recoveredBlock7Step = 117 ifTrue: [
            recoveredBlock7Stack0 := recoveredLocal1.
            recoveredBlock7PC := 120.
        ].
        recoveredBlock7Step = 120 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 121.
        ].
        recoveredBlock7Step = 121 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) value.
            recoveredBlock7PC := 122.
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7Stack2 := 1.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) at: (recoveredBlock7Stack2).
            recoveredBlock7PC := 125.
        ].
        recoveredBlock7Step = 125 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) identifier: (recoveredBlock7Stack1).
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x204a72bc; bytecode file offset 0xda3bd0"
!SGHierarchyGO methodsFor: 'recovered'!
setToDefaultSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BlockMinSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) minSize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerRight: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerLeft: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerDown: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeScaledSmallerUp: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) changeStarted.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) setExtent: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [:block28104dacArg1 | 
    | block28104dacValue0 block28104dacValue1 |
    block28104dacValue0 := block28104dacArg1.
    block28104dacValue1 := (block28104dacValue0) repositionConnectorNameGO.
    block28104dacValue1
].
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) raster.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) fitToRaster: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c65d0; bytecode file offset 0xdc2ef8"
!SGHierarchyGO methodsFor: 'recovered'!
checkActualNameLocally
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_98709'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asValidFileName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := $&.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := ReadWriteStream.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := '" is invalid.'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'A hierarchy name must not contain any of the following characters: '.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) invalidFileCharacters.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := '&'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 |
    recoveredBlock83Value0 := recoveredLocal1.
    recoveredBlock83Value1 := recoveredBlock83Arg1.
    recoveredBlock83Value2 := (recoveredBlock83Value0) nextPut: (recoveredBlock83Value1).
    recoveredBlock83Value2
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock97Value0 recoveredBlock97Value1 |
    recoveredBlock97Value0 := recoveredLocal1.
    recoveredBlock97Value1 := (recoveredBlock97Value0) nextPut: ($ ).
    recoveredBlock97Value1
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := 'Please choose another name.'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'Invalid hierarchy name: '.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := (recoveredStack3) label.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ca324; bytecode file offset 0xdc6c6c"
!SGHierarchyGO methodsFor: 'recovered'!
storageObject
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) iD: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineStyle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) lineStyle: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) size: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := actualNameGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) isVisible.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) actualNameVisibility: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributedViewNames.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) attributedViewNames: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := actualNameGO.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPosition.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) namePosition: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) getName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) areaStyle.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) areaStyle: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) extent.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) lBlockSize: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'Call_63666'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfo.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLookupTable.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) setCustomerDataInfo: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawingOrder.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) drawingOrder.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) drawingOrder: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := symbolGO.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := symbolGO.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) iconDBImage: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := symbolGO.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) iconSize: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := symbolGO.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) iconVisibility: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) buildPinDictionary.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) pins: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20510230; bytecode file offset 0xe0cb50"
!SGHierarchyGO methodsFor: 'recovered'!
changeActualName
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            (recoveredBlock4Stack0) changeStarted.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack0 := actualNameGO.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) getText.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) changeActualNameLocally.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 32] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack0) changeActualName: (recoveredBlock4Stack1).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hierarchyMGO.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) parent.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock4Stack2.
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 165] ifFalse: [recoveredBlock4PC := 46].
        ].
        recoveredBlock4Step = 46 ifTrue: [
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hierarchyLabelsLocal.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block53Arg1 | 
    | recoveredBlock4Block53Value0 recoveredBlock4Block53Value1 recoveredBlock4Block53Value2 recoveredBlock4Block53Value3 recoveredBlock4Block53Value4 recoveredBlock4Block53Value5 |
    recoveredBlock4Block53Value0 := recoveredBlock4Block53Arg1.
    recoveredBlock4Block53Value1 := (recoveredBlock4Block53Value0) label.
    recoveredBlock4Block53Value2 := (recoveredBlock4Block53Value1) asLowercase.
    recoveredBlock4Block53Value3 := (self) label.
    recoveredBlock4Block53Value4 := (recoveredBlock4Block53Value3) asLowercase.
    recoveredBlock4Block53Value5 := (recoveredBlock4Block53Value2) = (recoveredBlock4Block53Value4).
    recoveredBlock4Block53Value5
].
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) select: (recoveredBlock4Stack2).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) size.
            recoveredBlock4PC := 76.
        ].
        recoveredBlock4Step = 76 ifTrue: [
            recoveredBlock4Stack2 := 1.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) > (recoveredBlock4Stack2).
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 82] ifFalse: [recoveredBlock4PC := 165].
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4PC := 83.
        ].
        recoveredBlock4Step = 83 ifTrue: [
            recoveredBlock4Stack0 := 'hw'.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack1 := 'call_2008404126'.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 88.
        ].
        recoveredBlock4Step = 88 ifTrue: [
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) label.
            recoveredBlock4PC := 92.
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal2.
            recoveredBlock4PC := 95.
        ].
        recoveredBlock4Step = 95 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) hierarchyLabelsLocal.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) uniqueStringFor: (recoveredBlock4Stack1).
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 100.
        ].
        recoveredBlock4Step = 100 ifTrue: [
            recoveredBlock4Stack0 := actualNameGO.
            recoveredBlock4PC := 102.
        ].
        recoveredBlock4Step = 102 ifTrue: [
            (recoveredBlock4Stack0) changeStarted.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack0 := RBUserQuestion.
            recoveredBlock4PC := 106.
        ].
        recoveredBlock4Step = 106 ifTrue: [
            recoveredBlock4Stack1 := 'Name <'.
            recoveredBlock4PC := 108.
        ].
        recoveredBlock4Step = 108 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) label.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 113.
        ].
        recoveredBlock4Step = 113 ifTrue: [
            recoveredBlock4Stack2 := '> already exists.\Change name to <'.
            recoveredBlock4PC := 115.
        ].
        recoveredBlock4Step = 115 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local2.
            recoveredBlock4PC := 118.
        ].
        recoveredBlock4Step = 118 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            recoveredBlock4Stack2 := '>?'.
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) , (recoveredBlock4Stack2).
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) withCrs.
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) confirm: (recoveredBlock4Stack1).
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 129.
        ].
        recoveredBlock4Step = 129 ifTrue: [
            (recoveredBlock4Stack1) yesNoCancel.
            recoveredBlock4PC := 131.
        ].
        recoveredBlock4Step = 131 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) prompt.
            recoveredBlock4PC := 133.
        ].
        recoveredBlock4Step = 133 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 135.
        ].
        recoveredBlock4Step = 135 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 146] ifFalse: [recoveredBlock4PC := 138].
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 139.
        ].
        recoveredBlock4Step = 139 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 142.
        ].
        recoveredBlock4Step = 142 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) changeActualName: (recoveredBlock4Stack1).
            recoveredBlock4PC := 143.
        ].
        recoveredBlock4Step = 143 ifTrue: [
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 146 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 147.
        ].
        recoveredBlock4Step = 147 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 150] ifFalse: [recoveredBlock4PC := 156].
        ].
        recoveredBlock4Step = 150 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 151.
        ].
        recoveredBlock4Step = 151 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 152.
        ].
        recoveredBlock4Step = 152 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) changeActualName: (recoveredBlock4Stack1).
            recoveredBlock4PC := 153.
        ].
        recoveredBlock4Step = 153 ifTrue: [
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 156 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 157.
        ].
        recoveredBlock4Step = 157 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal1.
            recoveredBlock4PC := 160.
        ].
        recoveredBlock4Step = 160 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) changeActualName: (recoveredBlock4Stack1).
            recoveredBlock4PC := 161.
        ].
        recoveredBlock4Step = 161 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 162 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 163.
        ].
        recoveredBlock4Step = 163 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack2.
            recoveredBlock4PC := 164.
        ].
        recoveredBlock4Step = 164 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 165.
        ].
        recoveredBlock4Step = 165 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := [
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 |
    recoveredBlock166Value0 := manager.
    recoveredBlock166Value1 := (recoveredBlock166Value0) controller.
    recoveredBlock166Value2 := (self) giveRedisplayRects.
    recoveredBlock166Value3 := (recoveredBlock166Value1) displayRectsSetModified: (recoveredBlock166Value2).
    recoveredBlock166Value3
].
    (recoveredValue0) ensure: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2054a7ec; bytecode file offset 0xe470fc"
!SGHierarchyGO methodsFor: 'recovered'!
addPortAt: recoveredArg1 connector: recoveredArg2 connectorName: recoveredArg3 forInterfaceGOs: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg4.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7Stack7 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isHierarchyBlockInterface.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 20] ifFalse: [recoveredBlock7PC := 156].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) internalConnectorGO.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getPosition.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Stack2.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack3.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) - (recoveredBlock7Stack3).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) abs.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack3 := 2.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack4 := PinDistance.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) * (recoveredBlock7Stack4).
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack4 := 2.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack5 := PinDistance.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) * (recoveredBlock7Stack5).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) @ (recoveredBlock7Stack4).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) < (recoveredBlock7Stack3).
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 50] ifFalse: [recoveredBlock7PC := 156].
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) x.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) getPosition.
            recoveredBlock7PC := 58.
        ].
        recoveredBlock7Step = 58 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) x.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) > (recoveredBlock7Stack2).
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 64] ifFalse: [recoveredBlock7PC := 90].
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack3 := 5.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack4 := PinDistance.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) * (recoveredBlock7Stack4).
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) right: (recoveredBlock7Stack3).
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack5 := OrderedCollection.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack6 := recoveredBlock7Arg1.
            recoveredBlock7PC := 84.
        ].
        recoveredBlock7Step = 84 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) with: (recoveredBlock7Stack6).
            recoveredBlock7PC := 86.
        ].
        recoveredBlock7Step = 86 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addPortAt: (recoveredBlock7Stack2) connector: (recoveredBlock7Stack3) connectorName: (recoveredBlock7Stack4) forInterfaceGOs: (recoveredBlock7Stack5).
            recoveredBlock7PC := 89.
        ].
        recoveredBlock7Step = 89 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) x.
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            recoveredBlock7Stack2 := 5.
            recoveredBlock7PC := 97.
        ].
        recoveredBlock7Step = 97 ifTrue: [
            recoveredBlock7Stack3 := PinDistance.
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) * (recoveredBlock7Stack3).
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) > (recoveredBlock7Stack2).
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 104] ifFalse: [recoveredBlock7PC := 130].
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 105.
        ].
        recoveredBlock7Step = 105 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 108.
        ].
        recoveredBlock7Step = 108 ifTrue: [
            recoveredBlock7Stack3 := 5.
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack4 := PinDistance.
            recoveredBlock7PC := 112.
        ].
        recoveredBlock7Step = 112 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) * (recoveredBlock7Stack4).
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) left: (recoveredBlock7Stack3).
            recoveredBlock7PC := 115.
        ].
        recoveredBlock7Step = 115 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 118.
        ].
        recoveredBlock7Step = 118 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 121.
        ].
        recoveredBlock7Step = 121 ifTrue: [
            recoveredBlock7Stack5 := OrderedCollection.
            recoveredBlock7PC := 123.
        ].
        recoveredBlock7Step = 123 ifTrue: [
            recoveredBlock7Stack6 := recoveredBlock7Arg1.
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) with: (recoveredBlock7Stack6).
            recoveredBlock7PC := 126.
        ].
        recoveredBlock7Step = 126 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addPortAt: (recoveredBlock7Stack2) connector: (recoveredBlock7Stack3) connectorName: (recoveredBlock7Stack4) forInterfaceGOs: (recoveredBlock7Stack5).
            recoveredBlock7PC := 129.
        ].
        recoveredBlock7Step = 129 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 130 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 131.
        ].
        recoveredBlock7Step = 131 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 134.
        ].
        recoveredBlock7Step = 134 ifTrue: [
            recoveredBlock7Stack3 := 5.
            recoveredBlock7PC := 136.
        ].
        recoveredBlock7Step = 136 ifTrue: [
            recoveredBlock7Stack4 := PinDistance.
            recoveredBlock7PC := 138.
        ].
        recoveredBlock7Step = 138 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) * (recoveredBlock7Stack4).
            recoveredBlock7PC := 139.
        ].
        recoveredBlock7Step = 139 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) right: (recoveredBlock7Stack3).
            recoveredBlock7PC := 141.
        ].
        recoveredBlock7Step = 141 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 144.
        ].
        recoveredBlock7Step = 144 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 147.
        ].
        recoveredBlock7Step = 147 ifTrue: [
            recoveredBlock7Stack5 := OrderedCollection.
            recoveredBlock7PC := 149.
        ].
        recoveredBlock7Step = 149 ifTrue: [
            recoveredBlock7Stack6 := recoveredBlock7Arg1.
            recoveredBlock7PC := 150.
        ].
        recoveredBlock7Step = 150 ifTrue: [
            recoveredBlock7Stack5 := (recoveredBlock7Stack5) with: (recoveredBlock7Stack6).
            recoveredBlock7PC := 152.
        ].
        recoveredBlock7Step = 152 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) addPortAt: (recoveredBlock7Stack2) connector: (recoveredBlock7Stack3) connectorName: (recoveredBlock7Stack4) forInterfaceGOs: (recoveredBlock7Stack5).
            recoveredBlock7PC := 155.
        ].
        recoveredBlock7Step = 155 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 156 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := SGHierarchyBlockInterfaceElementGO.
    recoveredValue3 := (self) lineStyle.
    recoveredValue4 := (recoveredValue2) createWithLineStyle: (recoveredValue3) manager: (self).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := (recoveredValue7) setManager: (recoveredValue8).
    (recoveredValue6) setExternalConnectorGO: (recoveredValue9).
    recoveredValue10 := recoveredValue5.
    recoveredValue11 := recoveredArg3.
    (recoveredValue10) buildConnectorNameGO: (recoveredValue11).
    (self) addPort: (recoveredValue5).
    recoveredValue12 := recoveredLocal3.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (self) hierarchyMGO.
    recoveredValue15 := (recoveredValue12) initInOutGOAt: (recoveredValue13) for: (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := (self) hierarchyMGO.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) addChildGO: (recoveredValue17) display: (false).
    recoveredValue18 := recoveredLocal3.
    ^recoveredValue18
! !

"ASDBase.ic method 0x20597cd0; bytecode file offset 0xe945f8"
!SGHierarchyGO methodsFor: 'recovered'!
moveTo: recoveredArg1 andScale: recoveredArg2 fixPoint: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_82122'.
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
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectorGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 |
    recoveredBlock28Value0 := recoveredLocal6.
    recoveredBlock28Value1 := recoveredBlock28Arg1.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) getPosition.
    recoveredBlock28Value4 := recoveredArg3.
    recoveredBlock28Value5 := (recoveredBlock28Value3) - (recoveredBlock28Value4).
    recoveredBlock28Value6 := (recoveredBlock28Value0) at: (recoveredBlock28Value1) put: (recoveredBlock28Value5).
    recoveredBlock28Value6
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:block28114e50Arg1 | 
    | block28114e50Stack0 block28114e50Stack1 block28114e50Stack2 block28114e50Stack3 block28114e50PC block28114e50Step block28114e50Done block28114e50Result |
    block28114e50Stack0 := self.
    block28114e50PC := 4.
    block28114e50Done := false.
    [block28114e50Done not] whileTrue: [
        block28114e50Step := block28114e50PC.
        block28114e50Step = 4 ifTrue: [
            block28114e50Stack1 := false.
            block28114e50PC := 5.
        ].
        block28114e50Step = 5 ifTrue: [
            block28114e50Stack2 := block28114e50Arg1.
            block28114e50PC := 6.
        ].
        block28114e50Step = 6 ifTrue: [
            block28114e50Stack2 := (block28114e50Stack2) getSGCallGO.
            block28114e50PC := 8.
        ].
        block28114e50Step = 8 ifTrue: [
            (block28114e50Stack2 == nil) ifTrue: [block28114e50PC := 18] ifFalse: [block28114e50PC := 12].
        ].
        block28114e50Step = 12 ifTrue: [
            block28114e50PC := 13.
        ].
        block28114e50Step = 13 ifTrue: [
            block28114e50Stack1 := block28114e50Arg1.
            block28114e50PC := 14.
        ].
        block28114e50Step = 14 ifTrue: [
            block28114e50Stack1 := (block28114e50Stack1) interfaceGOs.
            block28114e50PC := 16.
        ].
        block28114e50Step = 16 ifTrue: [
            block28114e50Stack1 := (block28114e50Stack1) notEmpty.
            block28114e50PC := 18.
        ].
        block28114e50Step = 18 ifTrue: [
            block28114e50Result := block28114e50Stack1.
            block28114e50Done := true.
        ].
    ].
    block28114e50Result
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 recoveredBlock81Value5 recoveredBlock81Value6 recoveredBlock81Value7 recoveredBlock81Value8 recoveredBlock81Value9 recoveredBlock81Value10 |
    recoveredBlock81Value0 := recoveredLocal5.
    recoveredBlock81Value1 := recoveredBlock81Arg1.
    recoveredBlock81Value2 := recoveredBlock81Arg1.
    recoveredBlock81Value3 := (recoveredBlock81Value2) getSGCallGO.
    recoveredBlock81Value4 := (recoveredBlock81Value3) getPosition.
    recoveredBlock81Value5 := recoveredBlock81Arg1.
    recoveredBlock81Value6 := (recoveredBlock81Value5) interfaceGOs.
    recoveredBlock81Value7 := (recoveredBlock81Value6) first.
    recoveredBlock81Value8 := (recoveredBlock81Value7) getPosition.
    recoveredBlock81Value9 := (recoveredBlock81Value4) - (recoveredBlock81Value8).
    recoveredBlock81Value10 := (recoveredBlock81Value0) at: (recoveredBlock81Value1) put: (recoveredBlock81Value9).
    recoveredBlock81Value10
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := -1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := PinDistance.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) roundTo: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1) andScale: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 recoveredBlock206Value2 recoveredBlock206Value3 recoveredBlock206Value4 recoveredBlock206Value5 recoveredBlock206Value6 recoveredBlock206Value7 recoveredBlock206Value8 recoveredBlock206Value9 |
    recoveredBlock206Value0 := recoveredBlock206Arg1.
    recoveredBlock206Value1 := recoveredArg3.
    recoveredBlock206Value2 := recoveredLocal6.
    recoveredBlock206Value3 := recoveredBlock206Arg1.
    recoveredBlock206Value4 := (recoveredBlock206Value2) at: (recoveredBlock206Value3).
    recoveredBlock206Value5 := (recoveredBlock206Value1) + (recoveredBlock206Value4).
    (recoveredBlock206Value0) setPosition: (recoveredBlock206Value5).
    recoveredBlock206Value6 := recoveredBlock206Arg1.
    recoveredBlock206Value7 := (self) frameGO.
    recoveredBlock206Value8 := (recoveredBlock206Value7) logicFrame.
    recoveredBlock206Value9 := (recoveredBlock206Value6) fitToRectangle: (recoveredBlock206Value8).
    recoveredBlock206Value9
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 recoveredBlock239Value3 recoveredBlock239Value4 recoveredBlock239Value5 recoveredBlock239Value6 recoveredBlock239Value7 recoveredBlock239Value8 recoveredBlock239Value9 recoveredBlock239Value10 |
    recoveredBlock239Value0 := recoveredBlock239Arg1.
    recoveredBlock239Value1 := (recoveredBlock239Value0) getSGCallGO.
    recoveredBlock239Value2 := recoveredBlock239Arg1.
    recoveredBlock239Value3 := (recoveredBlock239Value2) interfaceGOs.
    recoveredBlock239Value4 := (recoveredBlock239Value3) first.
    recoveredBlock239Value5 := (recoveredBlock239Value4) getPosition.
    recoveredBlock239Value6 := recoveredLocal5.
    recoveredBlock239Value7 := recoveredBlock239Arg1.
    recoveredBlock239Value8 := (recoveredBlock239Value6) at: (recoveredBlock239Value7).
    recoveredBlock239Value9 := (recoveredBlock239Value5) + (recoveredBlock239Value8).
    recoveredBlock239Value10 := (recoveredBlock239Value1) moveTo: (recoveredBlock239Value9).
    recoveredBlock239Value10
].
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := [:block28114e74Arg1 | 
    | block28114e74Value0 block28114e74Value1 |
    block28114e74Value0 := block28114e74Arg1.
    block28114e74Value1 := (block28114e74Value0) repositionConnectorNameGO.
    block28114e74Value1
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061a3f4; bytecode file offset 0xf16d38"
!SGHierarchyGO methodsFor: 'recovered'!
portPosAndDir: recoveredArg1 visitedPoints: recoveredArg2 isInput: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) leftTop.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) rightTop.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 'right'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := 'left'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := 'down'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := 'up'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := 'left'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := 'right'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 162] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) top.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) bottom.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) y: (recoveredStack1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := 'down'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := 'up'.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 293].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 265].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 293].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := PinDistance.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) x: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 329].
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := PinDistance.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) down: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) portPosAndDir: (recoveredStack1) visitedPoints: (recoveredStack2) isInput: (recoveredStack3).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [:block2811e798Arg1 | 
    | block2811e798Value0 block2811e798Value1 block2811e798Value2 |
    block2811e798Value0 := block2811e798Arg1.
    block2811e798Value1 := (block2811e798Value0) isSelectorPort.
    block2811e798Value2 := (block2811e798Value1) not.
    block2811e798Value2
].
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := [:recoveredBlock353Arg1 | 
    | recoveredBlock353Stack0 recoveredBlock353Stack1 recoveredBlock353Stack2 recoveredBlock353Stack3 recoveredBlock353Stack4 recoveredBlock353Stack5 recoveredBlock353Stack6 recoveredBlock353Stack7 recoveredBlock353Stack8 recoveredBlock353Stack9 recoveredBlock353Stack10 recoveredBlock353PC recoveredBlock353Step recoveredBlock353Done recoveredBlock353Result |
    recoveredBlock353Stack0 := self.
    recoveredBlock353PC := 360.
    recoveredBlock353Done := false.
    [recoveredBlock353Done not] whileTrue: [
        recoveredBlock353Step := recoveredBlock353PC.
        recoveredBlock353Step = 360 ifTrue: [
            recoveredBlock353Stack1 := nil.
            recoveredBlock353PC := 361.
        ].
        recoveredBlock353Step = 361 ifTrue: [
            recoveredBlock353Stack2 := recoveredBlock353Arg1.
            recoveredBlock353PC := 362.
        ].
        recoveredBlock353Step = 362 ifTrue: [
            recoveredBlock353Stack2 := (recoveredBlock353Stack2) externalConnectorGO.
            recoveredBlock353PC := 364.
        ].
        recoveredBlock353Step = 364 ifTrue: [
            recoveredBlock353Stack2 := (recoveredBlock353Stack2) getPosition.
            recoveredBlock353PC := 366.
        ].
        recoveredBlock353Step = 366 ifTrue: [
            recoveredBlock353Stack3 := recoveredBlock353Stack2.
            recoveredBlock353PC := 367.
        ].
        recoveredBlock353Step = 367 ifTrue: [
            recoveredLocal2 := recoveredBlock353Stack3.
            recoveredBlock353PC := 370.
        ].
        recoveredBlock353Step = 370 ifTrue: [
            recoveredBlock353Stack3 := recoveredLocal4.
            recoveredBlock353PC := 373.
        ].
        recoveredBlock353Step = 373 ifTrue: [
            recoveredBlock353Stack2 := (recoveredBlock353Stack2) - (recoveredBlock353Stack3).
            recoveredBlock353PC := 374.
        ].
        recoveredBlock353Step = 374 ifTrue: [
            recoveredBlock353Stack2 := (recoveredBlock353Stack2) abs.
            recoveredBlock353PC := 376.
        ].
        recoveredBlock353Step = 376 ifTrue: [
            recoveredBlock353Stack3 := PinDistance.
            recoveredBlock353PC := 378.
        ].
        recoveredBlock353Step = 378 ifTrue: [
            recoveredBlock353Stack4 := PinDistance.
            recoveredBlock353PC := 380.
        ].
        recoveredBlock353Step = 380 ifTrue: [
            recoveredBlock353Stack3 := (recoveredBlock353Stack3) @ (recoveredBlock353Stack4).
            recoveredBlock353PC := 382.
        ].
        recoveredBlock353Step = 382 ifTrue: [
            recoveredBlock353Stack2 := (recoveredBlock353Stack2) < (recoveredBlock353Stack3).
            recoveredBlock353PC := 383.
        ].
        recoveredBlock353Step = 383 ifTrue: [
            (recoveredBlock353Stack2) ifTrue: [recoveredBlock353PC := 386] ifFalse: [recoveredBlock353PC := 504].
        ].
        recoveredBlock353Step = 386 ifTrue: [
            recoveredBlock353PC := 387.
        ].
        recoveredBlock353Step = 387 ifTrue: [
            recoveredBlock353Stack1 := [
    | recoveredBlock353Block387Value0 |
    recoveredBlock353Block387Value0 := recoveredLocal1.
    recoveredBlock353Block387Value0
].
            recoveredBlock353PC := 398.
        ].
        recoveredBlock353Step = 398 ifTrue: [
            recoveredBlock353Stack2 := 'right'.
            recoveredBlock353PC := 400.
        ].
        recoveredBlock353Step = 400 ifTrue: [
            recoveredBlock353Stack3 := [
    | recoveredBlock353Block400Value0 recoveredBlock353Block400Value1 recoveredBlock353Block400Value2 recoveredBlock353Block400Value3 recoveredBlock353Block400Value4 recoveredBlock353Block400Value5 |
    recoveredBlock353Block400Value0 := recoveredLocal2.
    recoveredBlock353Block400Value1 := PinDistance.
    recoveredBlock353Block400Value2 := (recoveredBlock353Block400Value0) down: (recoveredBlock353Block400Value1).
    recoveredBlock353Block400Value3 := recoveredArg2.
    recoveredBlock353Block400Value4 := recoveredArg3.
    recoveredBlock353Block400Value5 := (self) portPosAndDir: (recoveredBlock353Block400Value2) visitedPoints: (recoveredBlock353Block400Value3) isInput: (recoveredBlock353Block400Value4).
    ^recoveredBlock353Block400Value5
].
            recoveredBlock353PC := 423.
        ].
        recoveredBlock353Step = 423 ifTrue: [
            recoveredBlock353Stack4 := 'down'.
            recoveredBlock353PC := 425.
        ].
        recoveredBlock353Step = 425 ifTrue: [
            recoveredBlock353Stack5 := [
    | recoveredBlock353Block425Value0 recoveredBlock353Block425Value1 recoveredBlock353Block425Value2 recoveredBlock353Block425Value3 recoveredBlock353Block425Value4 recoveredBlock353Block425Value5 |
    recoveredBlock353Block425Value0 := recoveredLocal2.
    recoveredBlock353Block425Value1 := PinDistance.
    recoveredBlock353Block425Value2 := (recoveredBlock353Block425Value0) right: (recoveredBlock353Block425Value1).
    recoveredBlock353Block425Value3 := recoveredArg2.
    recoveredBlock353Block425Value4 := recoveredArg3.
    recoveredBlock353Block425Value5 := (self) portPosAndDir: (recoveredBlock353Block425Value2) visitedPoints: (recoveredBlock353Block425Value3) isInput: (recoveredBlock353Block425Value4).
    ^recoveredBlock353Block425Value5
].
            recoveredBlock353PC := 449.
        ].
        recoveredBlock353Step = 449 ifTrue: [
            recoveredBlock353Stack6 := 'left'.
            recoveredBlock353PC := 451.
        ].
        recoveredBlock353Step = 451 ifTrue: [
            recoveredBlock353Stack7 := [
    | recoveredBlock353Block451Value0 recoveredBlock353Block451Value1 recoveredBlock353Block451Value2 recoveredBlock353Block451Value3 recoveredBlock353Block451Value4 recoveredBlock353Block451Value5 |
    recoveredBlock353Block451Value0 := recoveredLocal2.
    recoveredBlock353Block451Value1 := PinDistance.
    recoveredBlock353Block451Value2 := (recoveredBlock353Block451Value0) down: (recoveredBlock353Block451Value1).
    recoveredBlock353Block451Value3 := recoveredArg2.
    recoveredBlock353Block451Value4 := recoveredArg3.
    recoveredBlock353Block451Value5 := (self) portPosAndDir: (recoveredBlock353Block451Value2) visitedPoints: (recoveredBlock353Block451Value3) isInput: (recoveredBlock353Block451Value4).
    ^recoveredBlock353Block451Value5
].
            recoveredBlock353PC := 475.
        ].
        recoveredBlock353Step = 475 ifTrue: [
            recoveredBlock353Stack8 := 'up'.
            recoveredBlock353PC := 477.
        ].
        recoveredBlock353Step = 477 ifTrue: [
            recoveredBlock353Stack9 := [
    | recoveredBlock353Block477Value0 recoveredBlock353Block477Value1 recoveredBlock353Block477Value2 recoveredBlock353Block477Value3 recoveredBlock353Block477Value4 recoveredBlock353Block477Value5 |
    recoveredBlock353Block477Value0 := recoveredLocal2.
    recoveredBlock353Block477Value1 := PinDistance.
    recoveredBlock353Block477Value2 := (recoveredBlock353Block477Value0) right: (recoveredBlock353Block477Value1).
    recoveredBlock353Block477Value3 := recoveredArg2.
    recoveredBlock353Block477Value4 := recoveredArg3.
    recoveredBlock353Block477Value5 := (self) portPosAndDir: (recoveredBlock353Block477Value2) visitedPoints: (recoveredBlock353Block477Value3) isInput: (recoveredBlock353Block477Value4).
    ^recoveredBlock353Block477Value5
].
            recoveredBlock353PC := 501.
        ].
        recoveredBlock353Step = 501 ifTrue: [
            recoveredBlock353Stack1 := (recoveredBlock353Stack1) case: (recoveredBlock353Stack2) do: (recoveredBlock353Stack3) case: (recoveredBlock353Stack4) do: (recoveredBlock353Stack5) case: (recoveredBlock353Stack6) do: (recoveredBlock353Stack7) case: (recoveredBlock353Stack8) do: (recoveredBlock353Stack9).
            recoveredBlock353PC := 504.
        ].
        recoveredBlock353Step = 504 ifTrue: [
            recoveredBlock353Result := recoveredBlock353Stack1.
            recoveredBlock353Done := true.
        ].
    ].
    recoveredBlock353Result
].
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

