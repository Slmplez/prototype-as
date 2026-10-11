"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000e88; bytecode file offset 0x8ffcfc"
!SGJunctionGO methodsFor: 'recovered'!
resetDynamic
    ^self
! !

"ASDBase.ic method 0x200238e8; bytecode file offset 0x92209c"
!SGJunctionGO methodsFor: 'recovered'!
visualCallBackImage
    ^'GraphicsJunction'
! !

"ASDBase.ic method 0x2004ea38; bytecode file offset 0x94d048"
!SGJunctionGO methodsFor: 'recovered'!
updateConnectorPosition
    (self) updateDynamicStateConnectors.
    ^self
! !

"ASDBase.ic method 0x20053424; bytecode file offset 0x9505d0"
!SGJunctionGO methodsFor: 'recovered'!
doubleClicked: recoveredArg1
    (self) editJunctionColor.
    ^self
! !

"ASDBase.ic method 0x200787ac; bytecode file offset 0x9757c8"
!SGJunctionGO methodsFor: 'recovered'!
isJunctionGO
    ^true
! !

"ASDBase.ic method 0x2007a1ec; bytecode file offset 0x97c330"
!SGJunctionGO methodsFor: 'recovered'!
actionForTransitionPossible
    ^false
! !

"ASDBase.ic method 0x2007eddc; bytecode file offset 0x97c330"
!SGJunctionGO methodsFor: 'recovered'!
defaultTriggerDesired
    ^false
! !

"ASDBase.ic method 0x20086b18; bytecode file offset 0x98376c"
!SGJunctionGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) buildLogicBasic: (recoveredValue0) for: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087a04; bytecode file offset 0x9842f0"
!SGJunctionGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := PinDistance.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20134c24; bytecode file offset 0xa314ec"
!SGJunctionGO methodsFor: 'recovered'!
buildLogicBasic: recoveredArg1 for: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier.
    recoveredValue2 := (self) logicFrame.
    recoveredValue3 := (recoveredValue2) origin.
    recoveredValue4 := (self) logicFrame.
    recoveredValue5 := (recoveredValue4) corner.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue0) blockIdJunction: (recoveredValue1) origin: (recoveredValue3) corner: (recoveredValue5) hierarchy: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2014039c; bytecode file offset 0xa3cc68"
!SGJunctionGO methodsFor: 'recovered'!
getMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super getMenu.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addSingleLine.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) add: ('editJunctionColor') label: ('Edit C~olor').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2025e4b8; bytecode file offset 0xb5ad98"
!SGJunctionGO methodsFor: 'recovered'!
createDefaultFrameGO
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := RBEllipseGO.
    recoveredValue1 := DefaultGraphObjectPositionBlock.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (self) defaultSize.
    recoveredValue4 := (recoveredValue3) * (1).
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := (self) defaultSize.
    recoveredValue7 := (recoveredValue6) * (1).
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := DefaultLineStyle.
    recoveredValue10 := (recoveredValue9) deepCopy.
    recoveredValue11 := DefinedBlockAreaStyle.
    recoveredValue12 := (recoveredValue11) deepCopy.
    recoveredValue13 := (recoveredValue0) createAt: (recoveredValue2) xAxis: (recoveredValue5) yAxis: (recoveredValue8) lineStyle: (recoveredValue10) areaStyle: (recoveredValue12) manager: (self).
    (self) frameGO: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x203b7c40; bytecode file offset 0xcb454c"
!SGJunctionGO methodsFor: 'recovered'!
storageObject
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_63666'.
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
            recoveredStack1 := SGJunctionGODB.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) identifier.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) iD: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) position: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) size: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) lineStyle.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) lineStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) frameGO.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) areaStyle.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) areaStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) dynamicConnectorDescription.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) dynamicConnectors: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributedViewNames.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) attributedViewNames: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Call_63666'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) customerDataInfo.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLookupTable.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) setCustomerDataInfo: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20413e84; bytecode file offset 0xd10780"
!SGJunctionGO methodsFor: 'recovered'!
editJunctionColor
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := CgWindow.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := ReturnParameter.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := ReturnParameter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) null.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := ReturnParameter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := ReturnParameter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := (recoveredStack6) new.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack7 := ReturnParameter.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := (recoveredStack7) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack8 := recoveredStack7.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack8.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := ReturnParameter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack8 := (recoveredStack8) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack9.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := ReturnParameter.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack9 := (recoveredStack9) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) queryPointer: (recoveredStack2) rootReturn: (recoveredStack3) childReturn: (recoveredStack4) rootXReturn: (recoveredStack5) rootYReturn: (recoveredStack6) winXReturn: (recoveredStack7) winYReturn: (recoveredStack8) maskReturn: (recoveredStack9).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := RBColorSelectionDialog.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) color.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := CgIndexedPalette.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) default.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) createAt: (recoveredStack2) color: (recoveredStack3) palette: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) color: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) frame.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) displayOneRectSetModified: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

