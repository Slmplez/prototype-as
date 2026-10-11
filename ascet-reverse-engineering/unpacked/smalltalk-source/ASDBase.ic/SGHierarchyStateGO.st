"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001f18; bytecode file offset 0x8ffcfc"
!SGHierarchyStateGO methodsFor: 'recovered'!
asHierarchyState
    ^self
! !

"ASDBase.ic method 0x200145a4; bytecode file offset 0x912098"
!SGHierarchyStateGO methodsFor: 'recovered'!
stateGODBClass
    | recoveredValue0 |
    recoveredValue0 := SGHierarchyStateGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014fd0; bytecode file offset 0x912098"
!SGHierarchyStateGO methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIHierarchyState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019a00; bytecode file offset 0x92209c"
!SGHierarchyStateGO methodsFor: 'recovered'!
hierarchyStatePortName
    ^'Hierarchy State Port'
! !

"ASDBase.ic method 0x20032804; bytecode file offset 0x934580"
!SGHierarchyStateGO methodsFor: 'recovered'!
getAllPins
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hierarchyStatePort.
    recoveredValue1 := (recoveredValue0) interfaceGOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200638d4; bytecode file offset 0x961970"
!SGHierarchyStateGO methodsFor: 'recovered'!
resolveHierarchy
    | recoveredValue0 |
    recoveredValue0 := (self) hierarchyMGO.
    (recoveredValue0) resolveStateHierarchy.
    ^self
! !

"ASDBase.ic method 0x20070f78; bytecode file offset 0x96d87c"
!SGHierarchyStateGO methodsFor: 'recovered'!
hierarchyMGO
    | recoveredValue0 |
    recoveredValue0 := hierarchyMGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072628; bytecode file offset 0x96f1c4"
!SGHierarchyStateGO methodsFor: 'recovered'!
offsetForDoubleLine
    ^2
! !

"ASDBase.ic method 0x2007605c; bytecode file offset 0x9757c8"
!SGHierarchyStateGO methodsFor: 'recovered'!
checkActualNameLocally
    ^true
! !

"ASDBase.ic method 0x20076a74; bytecode file offset 0x9757c8"
!SGHierarchyStateGO methodsFor: 'recovered'!
isSGHierarchyGO
    ^true
! !

"ASDBase.ic method 0x2007787c; bytecode file offset 0x9757c8"
!SGHierarchyStateGO methodsFor: 'recovered'!
resolveIsPossible
    ^true
! !

"ASDBase.ic method 0x20085afc; bytecode file offset 0x982408"
!SGHierarchyStateGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) hierarchyMGO.
    (recoveredValue0) nextLevel.
    ^self
! !

"ASDBase.ic method 0x20086b84; bytecode file offset 0x98376c"
!SGHierarchyStateGO methodsFor: 'recovered'!
buildLogicBlock: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) buildHierarchyLogicBlock: (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093930; bytecode file offset 0x9904ac"
!SGHierarchyStateGO methodsFor: 'recovered'!
getAPIHandleForItem: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hierarchyMGO.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) getAPIHandle: (recoveredValue0) forItem: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c7618; bytecode file offset 0x9c3efc"
!SGHierarchyStateGO methodsFor: 'recovered'!
hierarchyMGO: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchyMGO := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e5ca8; bytecode file offset 0x9e25cc"
!SGHierarchyStateGO methodsFor: 'recovered'!
storageObject
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super storageObject.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) buildPinDictionary.
    (recoveredValue1) hierarchyConnectors: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e6310; bytecode file offset 0x9e2bf8"
!SGHierarchyStateGO methodsFor: 'recovered'!
initialize
    super initialize.
    (self) historyGO: (nil).
    ^self
! !

"ASDBase.ic method 0x200ea2e4; bytecode file offset 0x9e6c94"
!SGHierarchyStateGO methodsFor: 'recovered'!
initSpecial: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super initSpecial: (recoveredValue0).
    (self) initHierarchyStatePort.
    ^self
! !

"ASDBase.ic method 0x200ef284; bytecode file offset 0x9ebb44"
!SGHierarchyStateGO methodsFor: 'recovered'!
moveInterfaceElement: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) intersectionPointFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) moveBasicTo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x200ef994; bytecode file offset 0x9ec258"
!SGHierarchyStateGO methodsFor: 'recovered'!
initHierarchyStatePort
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGStatePortGO.
    recoveredValue1 := (self) hierarchyStatePortName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1) for: (self).
    (self) addPort: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010ddec; bytecode file offset 0xa0a6b0"
!SGHierarchyStateGO methodsFor: 'recovered'!
addStateChildrenHierarchicalTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) add: (self).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) hierarchyMGO.
    recoveredValue3 := (recoveredValue2) stateChildrenHierarchical.
    (recoveredValue1) addAll: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20133840; bytecode file offset 0xa30108"
!SGHierarchyStateGO methodsFor: 'recovered'!
displayAfterFrameOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (self) offsetForDoubleLine.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) displaySecondWithOffset: (recoveredValue1) on: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    super displayAfterFrameOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014037c; bytecode file offset 0xa3cc68"
!SGHierarchyStateGO methodsFor: 'recovered'!
getMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super getMenu.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addSingleLine.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) add: ('addHierarchyPort') label: ('Add ~Pin').
    ^recoveredValue0
! !

"ASDBase.ic method 0x201824a4; bytecode file offset 0xa7edc0"
!SGHierarchyStateGO methodsFor: 'recovered'!
hierarchyStatePort
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) methodName.
    recoveredBlock5Value2 := (self) hierarchyStatePortName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019c868; bytecode file offset 0xa99128"
!SGHierarchyStateGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyStatePort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPointFor: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := super connectionPointFor: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d1578; bytecode file offset 0xacde3c"
!SGHierarchyStateGO methodsFor: 'recovered'!
occupiedPinPositions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getPosition.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) hierarchyStatePort.
    recoveredValue2 := (recoveredValue1) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) getPosition.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) - (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201d2194; bytecode file offset 0xacea54"
!SGHierarchyStateGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
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
            recoveredStack0 := super getPointedGOFor: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyMGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201efd74; bytecode file offset 0xaec63c"
!SGHierarchyStateGO methodsFor: 'recovered'!
addHierarchyConnector: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) createConnectorAt: (recoveredValue0) connectorName: (recoveredValue1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := (self) hierarchyMGO.
    recoveredValue4 := (recoveredValue3) newInPosition.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (self) hierarchyMGO.
    recoveredValue8 := (recoveredValue5) initInOutGOAt: (recoveredValue6) for: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) hierarchyMGO.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) addChildGO: (recoveredValue10) display: (false).
    recoveredValue11 := recoveredLocal3.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20203e40; bytecode file offset 0xb00704"
!SGHierarchyStateGO methodsFor: 'recovered'!
getInterfaceGONamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) hierarchyStatePort.
    recoveredValue1 := (recoveredValue0) interfaceGOs.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getConnectorName.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20221d38; bytecode file offset 0xb1e614"
!SGHierarchyStateGO methodsFor: 'recovered'!
removePort: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) hierarchyStatePort.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) frame.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023a2d4; bytecode file offset 0xb36ba8"
!SGHierarchyStateGO methodsFor: 'recovered'!
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

"ASDBase.ic method 0x202a20b0; bytecode file offset 0xb9e984"
!SGHierarchyStateGO methodsFor: 'recovered'!
checkAndUpdateStatePrioWithManager: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super checkAndUpdateStatePrioWithManager: (recoveredValue0).
    recoveredValue1 := (self) hierarchyMGO.
    recoveredValue2 := (recoveredValue1) contents.
    recoveredValue3 := (recoveredValue2) children.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
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
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isStateBlock.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 32] ifFalse: [recoveredBlock16PC := 40].
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 34.
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) basicGraphObject.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := recoveredArg1.
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) checkAndUpdateStatePrioWithManager: (recoveredBlock16Stack2).
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202b19b0; bytecode file offset 0xbae290"
!SGHierarchyStateGO methodsFor: 'recovered'!
createConnectorAt: recoveredArg1 connectorName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := SGHierarchyStateInterfaceElementGO.
    recoveredValue1 := (self) lineStyle.
    recoveredValue2 := (self) hierarchyStatePort.
    recoveredValue3 := (recoveredValue0) createWithLineStyle: (recoveredValue1) manager: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := SGStateConnectorGO.
    recoveredValue5 := (self) lineStyle.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue4) createWithLineStyle: (recoveredValue5) manager: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := PinLength.
    (recoveredValue8) initAt: (recoveredValue9) direction: ('down') length: (recoveredValue10).
    recoveredLocal1 := recoveredValue7.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) setExternalConnectorGO: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := recoveredArg2.
    (recoveredValue14) buildConnectorNameGO: (recoveredValue15).
    recoveredValue16 := (self) hierarchyStatePort.
    recoveredValue17 := recoveredLocal2.
    (recoveredValue16) addInterfaceGO: (recoveredValue17).
    recoveredValue18 := recoveredLocal2.
    ^recoveredValue18
! !

"ASDBase.ic method 0x202b9830; bytecode file offset 0xbb6104"
!SGHierarchyStateGO methodsFor: 'recovered'!
addHierarchyPort
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedPoint.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllowedNodePosition: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'A'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueConnectorName: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) addHierarchyConnector: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ca3dc; bytecode file offset 0xbc6cac"
!SGHierarchyStateGO methodsFor: 'recovered'!
createHierarchyConnectors: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 recoveredBlock7Value13 recoveredBlock7Value14 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    recoveredBlock7Value2 := (recoveredBlock7Value1) at: (4).
    recoveredBlock7Value3 := recoveredBlock7Arg1.
    recoveredBlock7Value4 := (recoveredBlock7Value3) key.
    recoveredBlock7Value5 := (self) createConnectorAt: (recoveredBlock7Value2) connectorName: (recoveredBlock7Value4).
    recoveredLocal1 := recoveredBlock7Value5.
    recoveredBlock7Value6 := recoveredLocal1.
    recoveredBlock7Value7 := recoveredBlock7Value6.
    recoveredBlock7Value8 := recoveredBlock7Arg1.
    recoveredBlock7Value9 := (recoveredBlock7Value8) value.
    recoveredBlock7Value10 := (recoveredBlock7Value9) at: (6).
    (recoveredBlock7Value7) connNameVisible: (recoveredBlock7Value10).
    recoveredBlock7Value11 := recoveredBlock7Arg1.
    recoveredBlock7Value12 := (recoveredBlock7Value11) value.
    recoveredBlock7Value13 := (recoveredBlock7Value12) at: (1).
    recoveredBlock7Value14 := (recoveredBlock7Value6) identifier: (recoveredBlock7Value13).
    recoveredBlock7Value14
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2034e8d8; bytecode file offset 0xc4b1b0"
!SGHierarchyStateGO methodsFor: 'recovered'!
buildLogicBasic: recoveredArg1 for: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := super buildLogicBasic: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
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
            recoveredStack0 := (recoveredStack0) hierarchyStatePort.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 recoveredBlock27Value8 recoveredBlock27Value9 recoveredBlock27Value10 |
    recoveredBlock27Value0 := recoveredArg1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value1) connectorName.
    recoveredBlock27Value3 := recoveredBlock27Arg1.
    recoveredBlock27Value4 := (recoveredBlock27Value3) identifier.
    recoveredBlock27Value5 := recoveredBlock27Arg1.
    recoveredBlock27Value6 := (recoveredBlock27Value5) internalConnectorGO.
    recoveredBlock27Value7 := (recoveredBlock27Value6) identifier.
    recoveredBlock27Value8 := recoveredLocal1.
    recoveredBlock27Value9 := recoveredArg2.
    recoveredBlock27Value10 := (recoveredBlock27Value0) connectorOfHierarchyState: (recoveredBlock27Value2) externalPinID: (recoveredBlock27Value4) internalPinID: (recoveredBlock27Value7) ofBlock: (recoveredBlock27Value8) hierarchy: (recoveredBlock27Value9).
    recoveredBlock27Value10
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042f864; bytecode file offset 0xd2c150"
!SGHierarchyStateGO methodsFor: 'recovered'!
buildPinDictionary
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) hierarchyStatePort.
    recoveredValue3 := (recoveredValue2) interfaceGOs.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 recoveredBlock12Value12 recoveredBlock12Value13 recoveredBlock12Value14 recoveredBlock12Value15 recoveredBlock12Value16 recoveredBlock12Value17 recoveredBlock12Value18 recoveredBlock12Value19 recoveredBlock12Value20 recoveredBlock12Value21 recoveredBlock12Value22 recoveredBlock12Value23 |
    recoveredBlock12Value0 := Array.
    recoveredBlock12Value1 := (recoveredBlock12Value0) new: (6).
    recoveredLocal1 := recoveredBlock12Value1.
    recoveredBlock12Value2 := recoveredLocal1.
    recoveredBlock12Value3 := recoveredBlock12Arg1.
    recoveredBlock12Value4 := (recoveredBlock12Value3) identifier.
    (recoveredBlock12Value2) at: (1) put: (recoveredBlock12Value4).
    recoveredBlock12Value5 := recoveredLocal1.
    (recoveredBlock12Value5) at: (2) put: (nil).
    recoveredBlock12Value6 := recoveredLocal1.
    recoveredBlock12Value7 := recoveredBlock12Arg1.
    recoveredBlock12Value8 := (recoveredBlock12Value7) getDirection.
    (recoveredBlock12Value6) at: (3) put: (recoveredBlock12Value8).
    recoveredBlock12Value9 := recoveredLocal1.
    recoveredBlock12Value10 := recoveredBlock12Arg1.
    recoveredBlock12Value11 := (recoveredBlock12Value10) getPosition.
    (recoveredBlock12Value9) at: (4) put: (recoveredBlock12Value11).
    recoveredBlock12Value12 := recoveredLocal1.
    recoveredBlock12Value13 := recoveredBlock12Arg1.
    recoveredBlock12Value14 := (recoveredBlock12Value13) isVisible.
    (recoveredBlock12Value12) at: (5) put: (recoveredBlock12Value14).
    recoveredBlock12Value15 := recoveredLocal1.
    recoveredBlock12Value16 := recoveredBlock12Arg1.
    recoveredBlock12Value17 := (recoveredBlock12Value16) getConnectorNameGO.
    recoveredBlock12Value18 := (recoveredBlock12Value17) isVisible.
    (recoveredBlock12Value15) at: (6) put: (recoveredBlock12Value18).
    recoveredBlock12Value19 := recoveredLocal2.
    recoveredBlock12Value20 := recoveredBlock12Arg1.
    recoveredBlock12Value21 := (recoveredBlock12Value20) connectorName.
    recoveredBlock12Value22 := recoveredLocal1.
    recoveredBlock12Value23 := (recoveredBlock12Value19) at: (recoveredBlock12Value21) put: (recoveredBlock12Value22).
    recoveredBlock12Value23
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2056d214; bytecode file offset 0xe69b2c"
!SGHierarchyStateGO methodsFor: 'recovered'!
nextFreePosition
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) occupiedPinPositions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28111808Arg1 | 
    | block28111808Local1 block28111808Stack0 block28111808Stack1 block28111808Stack2 block28111808Stack3 block28111808Stack4 block28111808PC block28111808Step block28111808Done block28111808Result |
    block28111808Stack0 := self.
    block28111808PC := 4.
    block28111808Done := false.
    [block28111808Done not] whileTrue: [
        block28111808Step := block28111808PC.
        block28111808Step = 4 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 5.
        ].
        block28111808Step = 5 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) x.
            block28111808PC := 6.
        ].
        block28111808Step = 6 ifTrue: [
            block28111808Stack2 := 0.
            block28111808PC := 8.
        ].
        block28111808Step = 8 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) = (block28111808Stack2).
            block28111808PC := 9.
        ].
        block28111808Step = 9 ifTrue: [
            (block28111808Stack1) ifTrue: [block28111808PC := 12] ifFalse: [block28111808PC := 40].
        ].
        block28111808Step = 12 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 13.
        ].
        block28111808Step = 13 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) y.
            block28111808PC := 14.
        ].
        block28111808Step = 14 ifTrue: [
            block28111808Stack2 := 0.
            block28111808PC := 16.
        ].
        block28111808Step = 16 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) < (block28111808Stack2).
            block28111808PC := 17.
        ].
        block28111808Step = 17 ifTrue: [
            (block28111808Stack1) ifTrue: [block28111808PC := 20] ifFalse: [block28111808PC := 30].
        ].
        block28111808Step = 20 ifTrue: [
            block28111808Stack1 := Float.
            block28111808PC := 22.
        ].
        block28111808Step = 22 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) pi.
            block28111808PC := 24.
        ].
        block28111808Step = 24 ifTrue: [
            block28111808Stack2 := #[0 0 0 0 0 0 224 191].
            block28111808PC := 26.
        ].
        block28111808Step = 26 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) * (block28111808Stack2).
            block28111808PC := 27.
        ].
        block28111808Step = 27 ifTrue: [
            block28111808PC := 37.
        ].
        block28111808Step = 30 ifTrue: [
            block28111808Stack1 := Float.
            block28111808PC := 32.
        ].
        block28111808Step = 32 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) pi.
            block28111808PC := 34.
        ].
        block28111808Step = 34 ifTrue: [
            block28111808Stack2 := #[0 0 0 0 0 0 224 63].
            block28111808PC := 36.
        ].
        block28111808Step = 36 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) * (block28111808Stack2).
            block28111808PC := 37.
        ].
        block28111808Step = 37 ifTrue: [
            block28111808PC := 48.
        ].
        block28111808Step = 40 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 41.
        ].
        block28111808Step = 41 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) y.
            block28111808PC := 42.
        ].
        block28111808Step = 42 ifTrue: [
            block28111808Stack2 := block28111808Arg1.
            block28111808PC := 43.
        ].
        block28111808Step = 43 ifTrue: [
            block28111808Stack2 := (block28111808Stack2) x.
            block28111808PC := 44.
        ].
        block28111808Step = 44 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) / (block28111808Stack2).
            block28111808PC := 46.
        ].
        block28111808Step = 46 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) arcTan.
            block28111808PC := 48.
        ].
        block28111808Step = 48 ifTrue: [
            block28111808Local1 := block28111808Stack1.
            block28111808PC := 49.
        ].
        block28111808Step = 49 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 50.
        ].
        block28111808Step = 50 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) x.
            block28111808PC := 51.
        ].
        block28111808Step = 51 ifTrue: [
            block28111808Stack2 := 0.
            block28111808PC := 53.
        ].
        block28111808Step = 53 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) < (block28111808Stack2).
            block28111808PC := 54.
        ].
        block28111808Step = 54 ifTrue: [
            (block28111808Stack1) ifTrue: [block28111808PC := 58] ifFalse: [block28111808PC := 86].
        ].
        block28111808Step = 58 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 59.
        ].
        block28111808Step = 59 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) y.
            block28111808PC := 60.
        ].
        block28111808Step = 60 ifTrue: [
            block28111808Stack2 := 0.
            block28111808PC := 62.
        ].
        block28111808Step = 62 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) < (block28111808Stack2).
            block28111808PC := 63.
        ].
        block28111808Step = 63 ifTrue: [
            (block28111808Stack1) ifTrue: [block28111808PC := 66] ifFalse: [block28111808PC := 76].
        ].
        block28111808Step = 66 ifTrue: [
            block28111808Stack1 := block28111808Local1.
            block28111808PC := 67.
        ].
        block28111808Step = 67 ifTrue: [
            block28111808Stack2 := Float.
            block28111808PC := 69.
        ].
        block28111808Step = 69 ifTrue: [
            block28111808Stack2 := (block28111808Stack2) pi.
            block28111808PC := 71.
        ].
        block28111808Step = 71 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) + (block28111808Stack2).
            block28111808PC := 72.
        ].
        block28111808Step = 72 ifTrue: [
            block28111808PC := 82.
        ].
        block28111808Step = 76 ifTrue: [
            block28111808Stack1 := Float.
            block28111808PC := 78.
        ].
        block28111808Step = 78 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) pi.
            block28111808PC := 80.
        ].
        block28111808Step = 80 ifTrue: [
            block28111808Stack2 := block28111808Local1.
            block28111808PC := 81.
        ].
        block28111808Step = 81 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) + (block28111808Stack2).
            block28111808PC := 82.
        ].
        block28111808Step = 82 ifTrue: [
            block28111808PC := 107.
        ].
        block28111808Step = 86 ifTrue: [
            block28111808Stack1 := block28111808Arg1.
            block28111808PC := 87.
        ].
        block28111808Step = 87 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) y.
            block28111808PC := 88.
        ].
        block28111808Step = 88 ifTrue: [
            block28111808Stack2 := 0.
            block28111808PC := 90.
        ].
        block28111808Step = 90 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) < (block28111808Stack2).
            block28111808PC := 91.
        ].
        block28111808Step = 91 ifTrue: [
            (block28111808Stack1) ifTrue: [block28111808PC := 94] ifFalse: [block28111808PC := 106].
        ].
        block28111808Step = 94 ifTrue: [
            block28111808Stack1 := block28111808Local1.
            block28111808PC := 95.
        ].
        block28111808Step = 95 ifTrue: [
            block28111808Stack2 := #[0 0 0 0 0 0 0 64].
            block28111808PC := 97.
        ].
        block28111808Step = 97 ifTrue: [
            block28111808Stack3 := Float.
            block28111808PC := 99.
        ].
        block28111808Step = 99 ifTrue: [
            block28111808Stack3 := (block28111808Stack3) pi.
            block28111808PC := 101.
        ].
        block28111808Step = 101 ifTrue: [
            block28111808Stack2 := (block28111808Stack2) * (block28111808Stack3).
            block28111808PC := 102.
        ].
        block28111808Step = 102 ifTrue: [
            block28111808Stack1 := (block28111808Stack1) + (block28111808Stack2).
            block28111808PC := 103.
        ].
        block28111808Step = 103 ifTrue: [
            block28111808PC := 107.
        ].
        block28111808Step = 106 ifTrue: [
            block28111808Stack1 := block28111808Local1.
            block28111808PC := 107.
        ].
        block28111808Step = 107 ifTrue: [
            block28111808Result := block28111808Stack1.
            block28111808Done := true.
        ].
    ].
    block28111808Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := #[0 0 0 0 0 0 0 0].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 215].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := #[0 0 0 0 0 0 0 64].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := Float.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) pi.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := [:recoveredBlock169Arg1 :recoveredBlock169Arg2 | 
    | recoveredBlock169Local1 recoveredBlock169Stack0 recoveredBlock169Stack1 recoveredBlock169Stack2 recoveredBlock169Stack3 recoveredBlock169Stack4 recoveredBlock169PC recoveredBlock169Step recoveredBlock169Done recoveredBlock169Result |
    recoveredBlock169Stack0 := self.
    recoveredBlock169PC := 176.
    recoveredBlock169Done := false.
    [recoveredBlock169Done not] whileTrue: [
        recoveredBlock169Step := recoveredBlock169PC.
        recoveredBlock169Step = 176 ifTrue: [
            recoveredBlock169Stack1 := nil.
            recoveredBlock169PC := 177.
        ].
        recoveredBlock169Step = 177 ifTrue: [
            recoveredBlock169Stack2 := recoveredLocal3.
            recoveredBlock169PC := 180.
        ].
        recoveredBlock169Step = 180 ifTrue: [
            recoveredBlock169Stack3 := recoveredBlock169Arg2.
            recoveredBlock169PC := 181.
        ].
        recoveredBlock169Step = 181 ifTrue: [
            recoveredBlock169Stack3 := (recoveredBlock169Stack3) + (1).
            recoveredBlock169PC := 182.
        ].
        recoveredBlock169Step = 182 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) at: (recoveredBlock169Stack3).
            recoveredBlock169PC := 184.
        ].
        recoveredBlock169Step = 184 ifTrue: [
            recoveredBlock169Stack3 := recoveredBlock169Arg1.
            recoveredBlock169PC := 185.
        ].
        recoveredBlock169Step = 185 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) - (recoveredBlock169Stack3).
            recoveredBlock169PC := 186.
        ].
        recoveredBlock169Step = 186 ifTrue: [
            recoveredBlock169Stack3 := recoveredBlock169Stack2.
            recoveredBlock169PC := 187.
        ].
        recoveredBlock169Step = 187 ifTrue: [
            recoveredBlock169Local1 := recoveredBlock169Stack3.
            recoveredBlock169PC := 188.
        ].
        recoveredBlock169Step = 188 ifTrue: [
            recoveredBlock169Stack3 := recoveredLocal1.
            recoveredBlock169PC := 191.
        ].
        recoveredBlock169Step = 191 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) > (recoveredBlock169Stack3).
            recoveredBlock169PC := 192.
        ].
        recoveredBlock169Step = 192 ifTrue: [
            (recoveredBlock169Stack2) ifTrue: [recoveredBlock169PC := 196] ifFalse: [recoveredBlock169PC := 211].
        ].
        recoveredBlock169Step = 196 ifTrue: [
            recoveredBlock169PC := 197.
        ].
        recoveredBlock169Step = 197 ifTrue: [
            recoveredBlock169Stack1 := recoveredBlock169Local1.
            recoveredBlock169PC := 198.
        ].
        recoveredBlock169Step = 198 ifTrue: [
            recoveredLocal1 := recoveredBlock169Stack1.
            recoveredBlock169PC := 201.
        ].
        recoveredBlock169Step = 201 ifTrue: [
            recoveredBlock169Stack1 := recoveredBlock169Arg1.
            recoveredBlock169PC := 202.
        ].
        recoveredBlock169Step = 202 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Local1.
            recoveredBlock169PC := 203.
        ].
        recoveredBlock169Step = 203 ifTrue: [
            recoveredBlock169Stack3 := #[0 0 0 0 0 0 224 63].
            recoveredBlock169PC := 205.
        ].
        recoveredBlock169Step = 205 ifTrue: [
            recoveredBlock169Stack2 := (recoveredBlock169Stack2) * (recoveredBlock169Stack3).
            recoveredBlock169PC := 206.
        ].
        recoveredBlock169Step = 206 ifTrue: [
            recoveredBlock169Stack1 := (recoveredBlock169Stack1) + (recoveredBlock169Stack2).
            recoveredBlock169PC := 207.
        ].
        recoveredBlock169Step = 207 ifTrue: [
            recoveredBlock169Stack2 := recoveredBlock169Stack1.
            recoveredBlock169PC := 208.
        ].
        recoveredBlock169Step = 208 ifTrue: [
            recoveredLocal2 := recoveredBlock169Stack2.
            recoveredBlock169PC := 211.
        ].
        recoveredBlock169Step = 211 ifTrue: [
            recoveredBlock169Result := recoveredBlock169Stack1.
            recoveredBlock169Done := true.
        ].
    ].
    recoveredBlock169Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) from: (recoveredStack1) to: (recoveredStack2) doWithIndex: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := (recoveredStack0) cos.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) sin.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPosition.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205752ec; bytecode file offset 0xe71c50"
!SGHierarchyStateGO methodsFor: 'recovered'!
fromHierarchyState
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
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
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchyStatePort.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeConnections.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGStateGO.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineStyle.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := manager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) actualNameGO.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) actualNameGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) viewVisibility.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) viewVisibility: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) deepCopy.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) frameGO: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) getDefSize.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) setDefSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceGOs.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) hierarchyStatePort.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyWithout: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) setInterfaceGOs: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) attributedViewNames.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) attributedViewNames: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) methods.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) methods: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) minSize.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) minSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) identifier.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) identifier: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) getSelectFlag.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) setSelectFlag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) stateInfoGO.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) stateInfoGO: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) actualNameGO.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) manager: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 |
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := recoveredLocal4.
    recoveredBlock130Value2 := (recoveredBlock130Value0) manager: (recoveredBlock130Value1).
    recoveredBlock130Value2
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateInfoGO.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) manager: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) manager: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateInfoGO.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) setLabelPosition.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) isStartState.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) startGO.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) startGO: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) updateIntersectingBlocksFor: (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) setInterfaceGOs: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := manager.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := (recoveredStack1) hierarchyMGO.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) replaceGO: (recoveredStack1) with: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) setInterfaceGOs: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

