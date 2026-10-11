"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20060f5c; bytecode file offset 0x95d978"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
allowButton1MoveInViewer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentState.
    recoveredValue1 := (recoveredValue0) = ('compRect').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006710c; bytecode file offset 0x9646f8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
currentState
    | recoveredValue0 |
    recoveredValue0 := currentState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067fa4; bytecode file offset 0x965b90"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
capturedGO
    | recoveredValue0 |
    recoveredValue0 := capturedGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200697e0; bytecode file offset 0x966bdc"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
capturedPoint
    | recoveredValue0 |
    recoveredValue0 := capturedPoint.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab3c; bytecode file offset 0x967a18"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
composingRectangle
    | recoveredValue0 |
    recoveredValue0 := composingRectangle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b440; bytecode file offset 0x96873c"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
markedGOs
    | recoveredValue0 |
    recoveredValue0 := markedGOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082fd4; bytecode file offset 0x97f888"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
capturedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    capturedGO := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beaa0; bytecode file offset 0x9bc0b4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
currentState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1478; bytecode file offset 0x9bdf14"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
capturedPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    capturedPoint := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1adc; bytecode file offset 0x9beac8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
composingRectangle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    composingRectangle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2a60; bytecode file offset 0x9bf474"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
markedGOs: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    markedGOs := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cb59c; bytecode file offset 0x9c7e5c"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
defaultState
    (self) unmarkMarkedGOs.
    (self) currentState: ('normal').
    ^self
! !

"ASDBase.ic method 0x20139714; bytecode file offset 0xa35fe0"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    (self) currentState: ('normal').
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) markedGOs: (recoveredValue1).
    (self) initComposingRectangle.
    ^self
! !

"ASDBase.ic method 0x2017cb94; bytecode file offset 0xa79460"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
addMarkedGOs: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) markedGOs.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addAll: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) addSelectedGOsTo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (self) selectElementsInOutline: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20189fb8; bytecode file offset 0xa86880"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
removeSelectedGOs
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeMarkedGOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) graphicsModified.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c654; bytecode file offset 0xa88f18"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button3DownLC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAMarkedGOPointed: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) unmarkMarkedGOs.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bdbf0; bytecode file offset 0xaba4b8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
menuForPoint: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) capturedPoint: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMenuForObject: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d1e1c; bytecode file offset 0xace6e4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
selectElementsInOutline: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) selectElementsInList: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dec78; bytecode file offset 0xadb544"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
changeToComposingWith: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectToActiveState: (recoveredStack1) display: (recoveredStack2).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
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

"ASDBase.ic method 0x2020f930; bytecode file offset 0xb0c1f4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
isAMarkedGOPointed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) markedGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) graphObject.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) getPointedGOFor: (recoveredBlock5Value2).
    recoveredBlock5Value4 := (recoveredBlock5Value3) notNil.
    recoveredBlock5Value4
].
    recoveredValue2 := [
    ^false
].
    (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^true
! !

"ASDBase.ic method 0x2021cb7c; bytecode file offset 0xb19444"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
addSelectedGOsTo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) graphObject.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) element.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) graphObject.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) element.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) add: (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2022b6ec; bytecode file offset 0xb27fc0"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
unmarkMarkedGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) markedGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) controller.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) changeObjectFromActiveState: (recoveredBlock5Value1) display: (false).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) markedGOs.
    (self) redrawGOs: (recoveredValue2).
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    (self) markedGOs: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20236270; bytecode file offset 0xb32b48"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
initComposingRectangle
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := RBRectangleGO1.
    recoveredValue1 := RBLineStyle.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := RBAreaStyle.
    recoveredValue4 := (recoveredValue3) createDefault.
    recoveredValue5 := (recoveredValue0) createAt: (nil) xAxis: (0) yAxis: (0) lineStyle: (recoveredValue2) areaStyle: (recoveredValue4) manager: (nil).
    recoveredValue6 := (self) wrapGOForBuilding: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) graphObject.
    (recoveredValue8) setIncludeInferiorsMode.
    recoveredValue9 := recoveredLocal1.
    (self) composingRectangle: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x2024fee4; bytecode file offset 0xb4c7b4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
removeMarkedGO: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) markedGOs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectFromActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) setSelectStateWithGO: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b3244; bytecode file offset 0xbafb1c"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
selectedGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
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
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c7000; bytecode file offset 0xbc38d8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
addGO: recoveredArg1 display: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) addGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) unmarkMarkedGOs.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) addGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) graphicsModified.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d55dc; bytecode file offset 0xbd1eb0"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
cancelMoveDeltaPos: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := (self) capturedGO.
    recoveredValue1 := (recoveredValue0) giveRedisplayRects.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) capturedGO.
    recoveredValue3 := (self) capturedGO.
    recoveredValue4 := (recoveredValue3) originalPosition.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue4) + (recoveredValue5).
    (recoveredValue2) moveTo: (recoveredValue6).
    recoveredValue7 := (self) capturedGO.
    recoveredValue8 := (self) capturedGO.
    recoveredValue9 := (recoveredValue8) originalPosition.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue9) + (recoveredValue10).
    (recoveredValue7) moveTo: (recoveredValue11).
    recoveredValue12 := (self) capturedGO.
    recoveredValue13 := (self) capturedGO.
    recoveredValue14 := (recoveredValue13) originalPosition.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue14) + (recoveredValue15).
    (recoveredValue12) release: (recoveredValue16).
    recoveredValue17 := (self) capturedGO.
    recoveredValue18 := (recoveredValue17) giveRedisplayRects.
    recoveredLocal1 := recoveredValue18.
    recoveredValue19 := (self) controller.
    recoveredValue20 := recoveredLocal2.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue20) , (recoveredValue21).
    (recoveredValue19) displayRects: (recoveredValue22).
    ^self
! !

"ASDBase.ic method 0x202dfbf0; bytecode file offset 0xbdc4c4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
markGOsIncludedIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (recoveredValue0) graphicObjects.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getGOsIncludedIn: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
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
            recoveredBlock10Stack2 := self.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) controller.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Arg1.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack4 := false.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) changeObjectToActiveState: (recoveredBlock10Stack3) display: (recoveredBlock10Stack4).
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack3 := recoveredBlock10Stack2.
            recoveredBlock10PC := 24.
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack3.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            (recoveredBlock10Stack2 == nil) ifTrue: [recoveredBlock10PC := 39] ifFalse: [recoveredBlock10PC := 30].
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := self.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) markedGOs.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack2 := recoveredLocal2.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) markedGOs.
    (self) redrawGOs: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20328a30; bytecode file offset 0xc25310"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
composeMarkedGOs
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) markedGOs.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := recoveredLocal2.
    recoveredBlock17Value1 := (self) controller.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := (recoveredBlock17Value1) changeObjectFromActiveState: (recoveredBlock17Value2) display: (false).
    recoveredBlock17Value4 := (recoveredBlock17Value0) add: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) markedGOs.
    (self) redrawGOs: (recoveredValue6).
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    (self) markedGOs: (recoveredValue8).
    recoveredValue9 := (self) controller.
    recoveredValue10 := (recoveredValue9) graphicObjects.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := (recoveredValue10) composeGOs: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20445a9c; bytecode file offset 0xd42388"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
drawLastObjectAgainForScrolling
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 95] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'nCaptured'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 43].
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
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) drawLastObjectAgainForScrolling.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'cCaptured'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) drawLastObjectAgainForScrolling.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) drawLastObjectAgainForScrolling.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 109].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) composingRectangle.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) drawLastObjectAgainForScrolling.
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

"ASDBase.ic method 0x20449c44; bytecode file offset 0xd46530"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
moveForScrolling: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'nCaptured'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
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
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) moveForScrolling: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'cCaptured'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) moveForScrolling: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveForScrolling: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) composingRectangle.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) moveForScrolling: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20449cf4; bytecode file offset 0xd465e4"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button1MoveLC: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMoveable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'nCaptured'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 44].
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
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'cCaptured'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) capturedGO.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) capturedPoint.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) wrapGOForChange: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) moveTo: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) composingRectangle.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) checkBuildingPoint: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20451e38; bytecode file offset 0xd4e734"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button1DownShiftLC: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1DownShiftLC: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObjects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) capturedPoint: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) capture: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectFromActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) removeMarkedGO: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectToActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20451efc; bytecode file offset 0xd4e7f8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button1DownControlLC: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1DownShiftLC: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObjects.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) capturedPoint: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) capture: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
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
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectFromActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) removeMarkedGO: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectToActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20483110; bytecode file offset 0xd7fa1c"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button1DownLC: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObjects.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) capturedPoint: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) capture: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'nCaptured'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) composingRectangle.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) rememberBuildingPoint: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAMarkedGOPointed: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) composeMarkedGOs.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := 'call_84704'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            capturedGO := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) capturedPoint: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) capture: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'cCaptured'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) unmarkMarkedGOs.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'normal'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) currentState: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) button1DownLC: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ba070; bytecode file offset 0xeb69d8"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
keyPressed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := XKRight.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := XKLeft.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := XKDown.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := XKUp.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedGOs.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedGOs.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := [:block281175b0Arg1 | 
    | block281175b0Value0 block281175b0Value1 block281175b0Value2 |
    block281175b0Value0 := block281175b0Arg1.
    block281175b0Value1 := (block281175b0Value0) basicGraphObject.
    block281175b0Value2 := (block281175b0Value1) isConnectionGO.
    block281175b0Value2
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedGOs.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := [:block281175d4Arg1 | 
    | block281175d4Value0 block281175d4Value1 block281175d4Value2 block281175d4Value3 |
    block281175d4Value0 := block281175d4Arg1.
    block281175d4Value1 := (block281175d4Value0) basicGraphObject.
    block281175d4Value2 := (block281175d4Value1) isConnectionGO.
    block281175d4Value3 := (block281175d4Value2) not.
    block281175d4Value3
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Stack0 recoveredBlock119Stack1 recoveredBlock119Stack2 recoveredBlock119Stack3 recoveredBlock119Stack4 recoveredBlock119PC recoveredBlock119Step recoveredBlock119Done recoveredBlock119Result |
    recoveredBlock119Stack0 := self.
    recoveredBlock119PC := 126.
    recoveredBlock119Done := false.
    [recoveredBlock119Done not] whileTrue: [
        recoveredBlock119Step := recoveredBlock119PC.
        recoveredBlock119Step = 126 ifTrue: [
            recoveredBlock119Stack1 := nil.
            recoveredBlock119PC := 127.
        ].
        recoveredBlock119Step = 127 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 128.
        ].
        recoveredBlock119Step = 128 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) isMoveable.
            recoveredBlock119PC := 130.
        ].
        recoveredBlock119Step = 130 ifTrue: [
            (recoveredBlock119Stack2) ifTrue: [recoveredBlock119PC := 134] ifFalse: [recoveredBlock119PC := 227].
        ].
        recoveredBlock119Step = 134 ifTrue: [
            recoveredBlock119PC := 135.
        ].
        recoveredBlock119Step = 135 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 136.
        ].
        recoveredBlock119Step = 136 ifTrue: [
            (recoveredBlock119Stack1) changeStarted.
            recoveredBlock119PC := 138.
        ].
        recoveredBlock119Step = 138 ifTrue: [
            recoveredBlock119Stack1 := recoveredBlock119Arg1.
            recoveredBlock119PC := 139.
        ].
        recoveredBlock119Step = 139 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) visibleFrame.
            recoveredBlock119PC := 141.
        ].
        recoveredBlock119Step = 141 ifTrue: [
            recoveredLocal7 := recoveredBlock119Stack1.
            recoveredBlock119PC := 144.
        ].
        recoveredBlock119Step = 144 ifTrue: [
            recoveredBlock119Stack1 := self.
            recoveredBlock119PC := 145.
        ].
        recoveredBlock119Step = 145 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal8.
            recoveredBlock119PC := 148.
        ].
        recoveredBlock119Step = 148 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) getMoveVectorFor: (recoveredBlock119Stack2).
            recoveredBlock119PC := 150.
        ].
        recoveredBlock119Step = 150 ifTrue: [
            recoveredLocal6 := recoveredBlock119Stack1.
            recoveredBlock119PC := 153.
        ].
        recoveredBlock119Step = 153 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal7.
            recoveredBlock119PC := 156.
        ].
        recoveredBlock119Step = 156 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) origin.
            recoveredBlock119PC := 158.
        ].
        recoveredBlock119Step = 158 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal6.
            recoveredBlock119PC := 161.
        ].
        recoveredBlock119Step = 161 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) + (recoveredBlock119Stack2).
            recoveredBlock119PC := 162.
        ].
        recoveredBlock119Step = 162 ifTrue: [
            recoveredLocal5 := recoveredBlock119Stack1.
            recoveredBlock119PC := 165.
        ].
        recoveredBlock119Step = 165 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal7.
            recoveredBlock119PC := 168.
        ].
        recoveredBlock119Step = 168 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal5.
            recoveredBlock119PC := 171.
        ].
        recoveredBlock119Step = 171 ifTrue: [
            (recoveredBlock119Stack1) moveTo: (recoveredBlock119Stack2).
            recoveredBlock119PC := 173.
        ].
        recoveredBlock119Step = 173 ifTrue: [
            recoveredBlock119Stack1 := 'Kli'.
            recoveredBlock119PC := 175.
        ].
        recoveredBlock119Step = 175 ifTrue: [
            recoveredBlock119Stack2 := 'Call_73976'.
            recoveredBlock119PC := 177.
        ].
        recoveredBlock119Step = 177 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) == (recoveredBlock119Stack2).
            recoveredBlock119PC := 178.
        ].
        recoveredBlock119Step = 178 ifTrue: [
            recoveredBlock119PC := 179.
        ].
        recoveredBlock119Step = 179 ifTrue: [
            recoveredBlock119Stack1 := self.
            recoveredBlock119PC := 180.
        ].
        recoveredBlock119Step = 180 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) controller.
            recoveredBlock119PC := 182.
        ].
        recoveredBlock119Step = 182 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) widget.
            recoveredBlock119PC := 184.
        ].
        recoveredBlock119Step = 184 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) dimensionRect.
            recoveredBlock119PC := 186.
        ].
        recoveredBlock119Step = 186 ifTrue: [
            recoveredBlock119Stack2 := 100.
            recoveredBlock119PC := 190.
        ].
        recoveredBlock119Step = 190 ifTrue: [
            recoveredBlock119Stack3 := self.
            recoveredBlock119PC := 191.
        ].
        recoveredBlock119Step = 191 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) controller.
            recoveredBlock119PC := 193.
        ].
        recoveredBlock119Step = 193 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) widget.
            recoveredBlock119PC := 195.
        ].
        recoveredBlock119Step = 195 ifTrue: [
            recoveredBlock119Stack3 := (recoveredBlock119Stack3) zoomingFactor.
            recoveredBlock119PC := 197.
        ].
        recoveredBlock119Step = 197 ifTrue: [
            recoveredBlock119Stack2 := (recoveredBlock119Stack2) / (recoveredBlock119Stack3).
            recoveredBlock119PC := 199.
        ].
        recoveredBlock119Step = 199 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) scaleBy: (recoveredBlock119Stack2).
            recoveredBlock119PC := 201.
        ].
        recoveredBlock119Step = 201 ifTrue: [
            recoveredBlock119Stack2 := recoveredLocal7.
            recoveredBlock119PC := 204.
        ].
        recoveredBlock119Step = 204 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) containsRectangle: (recoveredBlock119Stack2).
            recoveredBlock119PC := 206.
        ].
        recoveredBlock119Step = 206 ifTrue: [
            (recoveredBlock119Stack1) ifTrue: [recoveredBlock119PC := 210] ifFalse: [recoveredBlock119PC := 222].
        ].
        recoveredBlock119Step = 210 ifTrue: [
            recoveredBlock119Stack1 := recoveredLocal2.
            recoveredBlock119PC := 213.
        ].
        recoveredBlock119Step = 213 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Arg1.
            recoveredBlock119PC := 214.
        ].
        recoveredBlock119Step = 214 ifTrue: [
            recoveredBlock119Stack3 := recoveredLocal6.
            recoveredBlock119PC := 217.
        ].
        recoveredBlock119Step = 217 ifTrue: [
            recoveredBlock119Stack1 := (recoveredBlock119Stack1) at: (recoveredBlock119Stack2) put: (recoveredBlock119Stack3).
            recoveredBlock119PC := 219.
        ].
        recoveredBlock119Step = 219 ifTrue: [
            recoveredBlock119PC := 227.
        ].
        recoveredBlock119Step = 222 ifTrue: [
            recoveredBlock119Stack1 := true.
            recoveredBlock119PC := 223.
        ].
        recoveredBlock119Step = 223 ifTrue: [
            recoveredBlock119Stack2 := recoveredBlock119Stack1.
            recoveredBlock119PC := 224.
        ].
        recoveredBlock119Step = 224 ifTrue: [
            recoveredLocal1 := recoveredBlock119Stack2.
            recoveredBlock119PC := 227.
        ].
        recoveredBlock119Step = 227 ifTrue: [
            recoveredBlock119Result := recoveredBlock119Stack1.
            recoveredBlock119Done := true.
        ].
    ].
    recoveredBlock119Result
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 279] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := [:recoveredBlock239Arg1 | 
    | recoveredBlock239Value0 recoveredBlock239Value1 recoveredBlock239Value2 recoveredBlock239Value3 recoveredBlock239Value4 recoveredBlock239Value5 recoveredBlock239Value6 recoveredBlock239Value7 recoveredBlock239Value8 recoveredBlock239Value9 recoveredBlock239Value10 recoveredBlock239Value11 recoveredBlock239Value12 recoveredBlock239Value13 recoveredBlock239Value14 |
    recoveredBlock239Value0 := recoveredBlock239Arg1.
    recoveredBlock239Value1 := (recoveredBlock239Value0) key.
    recoveredBlock239Value2 := recoveredBlock239Arg1.
    recoveredBlock239Value3 := (recoveredBlock239Value2) value.
    (recoveredBlock239Value1) moveDeltaByKey: (recoveredBlock239Value3).
    recoveredBlock239Value4 := recoveredBlock239Arg1.
    recoveredBlock239Value5 := (recoveredBlock239Value4) key.
    recoveredBlock239Value6 := (recoveredBlock239Value5) graphObject.
    recoveredBlock239Value7 := recoveredBlock239Arg1.
    recoveredBlock239Value8 := (recoveredBlock239Value7) key.
    recoveredBlock239Value9 := (recoveredBlock239Value8) graphObject.
    (recoveredBlock239Value6) updateWhileMoving: (recoveredBlock239Value9).
    recoveredBlock239Value10 := recoveredLocal4.
    recoveredBlock239Value11 := recoveredBlock239Arg1.
    recoveredBlock239Value12 := (recoveredBlock239Value11) key.
    recoveredBlock239Value13 := (recoveredBlock239Value12) giveRedisplayRects.
    recoveredBlock239Value14 := (recoveredBlock239Value10) addAll: (recoveredBlock239Value13).
    recoveredBlock239Value14
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) displayRects: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            (recoveredStack1) graphicsModified: (recoveredStack2).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            super keyPressed: (recoveredStack2).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20653434; bytecode file offset 0xf4fdfc"
!RBMoveAndSelectionMode methodsFor: 'recovered'!
button1UpLC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'nCaptured'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectToActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) release: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 68].
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
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) selectedGO: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isComposingGO.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) element.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := 'nChanging'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 524].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 224] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := VkShift.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) getKeyState: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := VkControl.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) getKeyState: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) deltaFromPosition.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := 'call_2008402865'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeCopiedByControl.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 216].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := (recoveredStack4) capturedGO.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := (recoveredStack4) graphObject.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyChangingObjectsDelta: (recoveredStack1) point: (recoveredStack2) copyObjects: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) cancelMoveDeltaPos: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) release: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConnected.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := (recoveredStack4) graphObject.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyChangingObjectsDelta: (recoveredStack1) point: (recoveredStack2) copyObjects: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) cancelMoveDeltaPos: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) disconnectLineReconnect: (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) graphObject: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := 'call_80029'.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedConnectionGOsFor: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 394] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 394].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInsertableInLine.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 394].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceGO: (recoveredStack1) insertInLine: (recoveredStack2) onConnections: (recoveredStack3) pointedPosition: (recoveredStack4).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 380].
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack0) cancelMoveDeltaPos: (recoveredStack1).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredPC := 492.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack1 := 'call_2008402865'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedBlockGOFor: (recoveredStack1) ignoreGO: (recoveredStack2).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 474] ifFalse: [recoveredPC := 420].
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUnconnected.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 474].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReplaceableWith: (recoveredStack1).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 474].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceGO: (recoveredStack1) replaceBlock: (recoveredStack2) onGO: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 464].
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack0) cancelMoveDeltaPos: (recoveredStack1).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredPC := 488.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedBlockGOFor: (recoveredStack1) ignoreGO: (recoveredStack2).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack0) graphicsModified.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack1 := 'cChanging'.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 532] ifFalse: [recoveredPC := 635].
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := (recoveredStack0) deltaFromPosition.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObject.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphObjects.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := 'call_79660'.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack0) release: (recoveredStack1).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            (recoveredStack0) decomposeGO: (recoveredStack1).
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            (recoveredStack0) graphicsModified.
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := [:recoveredBlock586Arg1 | 
    | recoveredBlock586Stack0 recoveredBlock586Stack1 recoveredBlock586Stack2 recoveredBlock586Stack3 recoveredBlock586Stack4 recoveredBlock586Stack5 recoveredBlock586PC recoveredBlock586Step recoveredBlock586Done recoveredBlock586Result |
    recoveredBlock586Stack0 := self.
    recoveredBlock586PC := 592.
    recoveredBlock586Done := false.
    [recoveredBlock586Done not] whileTrue: [
        recoveredBlock586Step := recoveredBlock586PC.
        recoveredBlock586Step = 592 ifTrue: [
            recoveredBlock586Stack1 := nil.
            recoveredBlock586PC := 593.
        ].
        recoveredBlock586Step = 593 ifTrue: [
            recoveredBlock586Stack2 := self.
            recoveredBlock586PC := 594.
        ].
        recoveredBlock586Step = 594 ifTrue: [
            recoveredBlock586Stack2 := (recoveredBlock586Stack2) controller.
            recoveredBlock586PC := 596.
        ].
        recoveredBlock586Step = 596 ifTrue: [
            recoveredBlock586Stack3 := recoveredBlock586Arg1.
            recoveredBlock586PC := 597.
        ].
        recoveredBlock586Step = 597 ifTrue: [
            recoveredBlock586Stack4 := false.
            recoveredBlock586PC := 598.
        ].
        recoveredBlock586Step = 598 ifTrue: [
            recoveredBlock586Stack2 := (recoveredBlock586Stack2) changeObjectToActiveState: (recoveredBlock586Stack3) display: (recoveredBlock586Stack4).
            recoveredBlock586PC := 600.
        ].
        recoveredBlock586Step = 600 ifTrue: [
            recoveredBlock586Stack3 := recoveredBlock586Stack2.
            recoveredBlock586PC := 601.
        ].
        recoveredBlock586Step = 601 ifTrue: [
            recoveredLocal10 := recoveredBlock586Stack3.
            recoveredBlock586PC := 604.
        ].
        recoveredBlock586Step = 604 ifTrue: [
            (recoveredBlock586Stack2 == nil) ifTrue: [recoveredBlock586PC := 617] ifFalse: [recoveredBlock586PC := 608].
        ].
        recoveredBlock586Step = 608 ifTrue: [
            recoveredBlock586PC := 609.
        ].
        recoveredBlock586Step = 609 ifTrue: [
            recoveredBlock586Stack1 := self.
            recoveredBlock586PC := 610.
        ].
        recoveredBlock586Step = 610 ifTrue: [
            recoveredBlock586Stack1 := (recoveredBlock586Stack1) markedGOs.
            recoveredBlock586PC := 612.
        ].
        recoveredBlock586Step = 612 ifTrue: [
            recoveredBlock586Stack2 := recoveredLocal10.
            recoveredBlock586PC := 615.
        ].
        recoveredBlock586Step = 615 ifTrue: [
            recoveredBlock586Stack1 := (recoveredBlock586Stack1) add: (recoveredBlock586Stack2).
            recoveredBlock586PC := 617.
        ].
        recoveredBlock586Step = 617 ifTrue: [
            recoveredBlock586Result := recoveredBlock586Stack1.
            recoveredBlock586Done := true.
        ].
    ].
    recoveredBlock586Result
].
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) markedGOs.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack0) redrawGOs: (recoveredStack1).
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := 'compRect'.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 644] ifFalse: [recoveredPC := 763].
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := (recoveredStack0) composingRectangle.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack0) rememberBuildingPoint: (recoveredStack1).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            (recoveredStack0) undefineCursor.
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            recoveredStack1 := (recoveredStack1) composingRectangle.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            (recoveredStack0) markGOsIncludedIn: (recoveredStack1).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 700] ifFalse: [recoveredPC := 708].
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredPC := 757.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 718] ifFalse: [recoveredPC := 752].
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack0 := (recoveredStack0) markedGOs.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            (recoveredStack0) selectedGO: (recoveredStack1).
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredPC := 757.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            (recoveredStack0) initComposingRectangle.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := 'cCaptured'.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 772] ifFalse: [recoveredPC := 807].
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 807] ifFalse: [recoveredPC := 778].
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedGO.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            (recoveredStack0) release: (recoveredStack1).
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack1 := (recoveredStack1) capturedGO.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            (recoveredStack0) decomposeGO: (recoveredStack1).
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            (recoveredStack0) capturedGO: (recoveredStack1).
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            (recoveredStack0) currentState: (recoveredStack1).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentState.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack1 := 'composing'.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 816] ifFalse: [recoveredPC := 816].
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 820.
        ].
        recoveredStep = 820 ifTrue: [
            (recoveredStack0) addSelectedGOsTo: (recoveredStack1).
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            (recoveredStack0) selectElementsInOutline: (recoveredStack1).
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

