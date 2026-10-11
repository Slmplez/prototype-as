"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200046a8; bytecode file offset 0x90206c"
!SGStateJunctionGO methodsFor: 'recovered'!
movePartGOs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005dd0; bytecode file offset 0x902744"
!SGStateJunctionGO methodsFor: 'recovered'!
defineInterface: recoveredArg1 withPositions: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200086e4; bytecode file offset 0x908be4"
!SGStateJunctionGO methodsFor: 'recovered'!
surfaceSize
    | recoveredValue0 |
    recoveredValue0 := (self) size.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d364; bytecode file offset 0x909e08"
!SGStateJunctionGO methodsFor: 'recovered'!
connectionAllowedWith: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2001af54; bytecode file offset 0x92209c"
!SGStateJunctionGO methodsFor: 'recovered'!
statePortName
    ^'Dynamic State Port'
! !

"ASDBase.ic method 0x2002b124; bytecode file offset 0x934580"
!SGStateJunctionGO methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) frameSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035434; bytecode file offset 0x934580"
!SGStateJunctionGO methodsFor: 'recovered'!
areaStyle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) areaStyle.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062a00; bytecode file offset 0x95f8b0"
!SGStateJunctionGO methodsFor: 'recovered'!
copyLayout
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) basicGraphObject.
    recoveredValue2 := (recoveredValue0) copyLayoutGO: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062ff0; bytecode file offset 0x95f8b0"
!SGStateJunctionGO methodsFor: 'recovered'!
pasteLayout
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) basicGraphObject.
    recoveredValue2 := (recoveredValue0) pasteLayoutGO: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20076884; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
supportsAction1
    ^true
! !

"ASDBase.ic method 0x20076cbc; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
supportsAction2
    ^true
! !

"ASDBase.ic method 0x20076cc4; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
supportsAction3
    ^true
! !

"ASDBase.ic method 0x200773bc; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
actionForTransitionPossible
    ^true
! !

"ASDBase.ic method 0x2007850c; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
defaultTriggerDesired
    ^true
! !

"ASDBase.ic method 0x20078a1c; bytecode file offset 0x9757c8"
!SGStateJunctionGO methodsFor: 'recovered'!
isStateOrJunction
    ^true
! !

"ASDBase.ic method 0x2007f8ec; bytecode file offset 0x97c330"
!SGStateJunctionGO methodsFor: 'recovered'!
keepSelection
    ^false
! !

"ASDBase.ic method 0x20096fa0; bytecode file offset 0x99385c"
!SGStateJunctionGO methodsFor: 'recovered'!
replaceContentsFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) frameGO.
    (recoveredValue0) setManager: (self).
    ^self
! !

"ASDBase.ic method 0x200bb4e8; bytecode file offset 0x9b7da8"
!SGStateJunctionGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getPosition.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    (self) moveTo: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d7950; bytecode file offset 0x9d424c"
!SGStateJunctionGO methodsFor: 'recovered'!
markContainedAsIntersected: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_2008402926').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) isSGHierarchyGO.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200fb884; bytecode file offset 0x9f8148"
!SGStateJunctionGO methodsFor: 'recovered'!
initSpecial: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGStatePortGO.
    recoveredValue1 := (self) statePortName.
    recoveredValue2 := (recoveredValue0) create: (recoveredValue1) for: (self).
    (self) addPort: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010e338; bytecode file offset 0xa0ac24"
!SGStateJunctionGO methodsFor: 'recovered'!
size: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) frameSize: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201254d8; bytecode file offset 0xa21dac"
!SGStateJunctionGO methodsFor: 'recovered'!
color
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) areaStyle.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) color.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20138da8; bytecode file offset 0xa35668"
!SGStateJunctionGO methodsFor: 'recovered'!
color: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) areaStyle.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) color: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014af94; bytecode file offset 0xa47858"
!SGStateJunctionGO methodsFor: 'recovered'!
getAllowedNodePosition: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) lastMousePoint.
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersectionPointFor: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201511dc; bytecode file offset 0xa4daa4"
!SGStateJunctionGO methodsFor: 'recovered'!
lastChangeDone
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionGraphicsCompatibilityMode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) updateDynamicStateConnectors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super lastChangeDone.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015abf0; bytecode file offset 0xa574b4"
!SGStateJunctionGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getPosition.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    super moveTo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) - (recoveredValue3).
    (self) movePartGOs: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20172a0c; bytecode file offset 0xa6f2d8"
!SGStateJunctionGO methodsFor: 'recovered'!
getMenu
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super getMenu.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addSingleLine.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) addSubMenu: ('subMenuStateLayout') label: ('State ~Layout') enable: (true) for: (self).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20182488; bytecode file offset 0xa7edc0"
!SGStateJunctionGO methodsFor: 'recovered'!
statePort
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) interfaceGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) methodName.
    recoveredBlock5Value2 := (self) statePortName.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019babc; bytecode file offset 0xa983a0"
!SGStateJunctionGO methodsFor: 'recovered'!
canBeScaledSmallerDown: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) position.
    recoveredValue2 := (recoveredValue1) y.
    recoveredValue3 := (self) frameGO.
    recoveredValue4 := (recoveredValue3) b.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    recoveredValue9 := (self) minSize.
    recoveredValue10 := (recoveredValue9) y.
    recoveredValue11 := (recoveredValue10) * (2).
    recoveredValue12 := (recoveredValue8) >= (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2019bad8; bytecode file offset 0xa983a0"
!SGStateJunctionGO methodsFor: 'recovered'!
canBeScaledSmallerLeft: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) position.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := (self) frameGO.
    recoveredValue4 := (recoveredValue3) a.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    recoveredValue9 := (self) minSize.
    recoveredValue10 := (recoveredValue9) x.
    recoveredValue11 := (recoveredValue10) * (2).
    recoveredValue12 := (recoveredValue8) >= (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2019bb0c; bytecode file offset 0xa983d4"
!SGStateJunctionGO methodsFor: 'recovered'!
canBeScaledSmallerUp: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) position.
    recoveredValue2 := (recoveredValue1) y.
    recoveredValue3 := (self) frameGO.
    recoveredValue4 := (recoveredValue3) b.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    recoveredValue9 := (self) minSize.
    recoveredValue10 := (recoveredValue9) y.
    recoveredValue11 := (recoveredValue10) * (2).
    recoveredValue12 := (recoveredValue8) >= (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2019bd4c; bytecode file offset 0xa98670"
!SGStateJunctionGO methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBMoveAndScaleWrapper.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWith: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject: (recoveredStack2) changeToSensitivePointWrapper: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bdc68; bytecode file offset 0xaba534"
!SGStateJunctionGO methodsFor: 'recovered'!
canBeScaledSmallerRight: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := (recoveredValue0) position.
    recoveredValue2 := (recoveredValue1) x.
    recoveredValue3 := (self) frameGO.
    recoveredValue4 := (recoveredValue3) a.
    recoveredValue5 := (recoveredValue2) - (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue6) - (recoveredValue7).
    recoveredValue9 := (recoveredValue8) abs.
    recoveredValue10 := (self) minSize.
    recoveredValue11 := (recoveredValue10) x.
    recoveredValue12 := (recoveredValue11) * (2).
    recoveredValue13 := (recoveredValue9) >= (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x20203730; bytecode file offset 0xaffff8"
!SGStateJunctionGO methodsFor: 'recovered'!
scaleBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) frameGO.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) scale: (recoveredValue1).
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (self) getPosition.
    recoveredBlock12Value3 := (recoveredBlock12Value0) scale: (recoveredBlock12Value1) to: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20231514; bytecode file offset 0xb2ddec"
!SGStateJunctionGO methodsFor: 'recovered'!
dynamicStateConnectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) statePort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'call_81856'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) statePort.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:block280dd220Arg1 | 
    | block280dd220Value0 block280dd220Value1 block280dd220Value2 |
    block280dd220Value0 := block280dd220Arg1.
    block280dd220Value1 := (block280dd220Value0) externalConnectorGO.
    block280dd220Value2 := (block280dd220Value1) basicGraphObject.
    block280dd220Value2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20266b5c; bytecode file offset 0xb63438"
!SGStateJunctionGO methodsFor: 'recovered'!
removeGO: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteAllIntersections.
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
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:block280dff8cArg1 | 
    | block280dff8cValue0 block280dff8cValue1 |
    block280dff8cValue0 := block280dff8cArg1.
    block280dff8cValue1 := (block280dff8cValue0) frame.
    block280dff8cValue1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            super removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20291de0; bytecode file offset 0xb8e6b4"
!SGStateJunctionGO methodsFor: 'recovered'!
dynamicConnectorDescription
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) dynamicStateConnectors.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isConnected.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 24] ifFalse: [recoveredBlock11PC := 36].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) identifier.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) getPosition.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20295a8c; bytecode file offset 0xb9236c"
!SGStateJunctionGO methodsFor: 'recovered'!
subMenuStateLayout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'copyLayout'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := '~Copy Layout'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'pasteLayout'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := '~Paste Layout'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := (self) controller.
    recoveredBlock27Value1 := (recoveredBlock27Value0) layoutBuffer.
    recoveredBlock27Value2 := (recoveredBlock27Value1) notNil.
    recoveredBlock27Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e22f0; bytecode file offset 0xbdebbc"
!SGStateJunctionGO methodsFor: 'recovered'!
isReplaceableWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_2008402926'.
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
            recoveredStack1 := 'hw'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'call_84169'.
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
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) logicFrame.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) containsRectangle: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) logicFrame.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) logicFrame.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) containsRectangle: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e3730; bytecode file offset 0xbe0010"
!SGStateJunctionGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_2008402718').
    recoveredValue1 := recoveredArg1.
    super displayOn: (recoveredValue1).
    recoveredValue2 := (self) dynamicStateConnectors.
    recoveredValue3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) getPosition.
    recoveredBlock20Value3 := recoveredArg1.
    (recoveredBlock20Value0) displayDebuggingPoint: (recoveredBlock20Value2) on: (recoveredBlock20Value3).
    recoveredBlock20Value4 := recoveredBlock20Arg1.
    recoveredBlock20Value5 := recoveredBlock20Arg1.
    recoveredBlock20Value6 := (recoveredBlock20Value5) identifier.
    recoveredBlock20Value7 := (recoveredBlock20Value6) asString.
    recoveredBlock20Value8 := recoveredArg1.
    recoveredBlock20Value9 := (recoveredBlock20Value4) displayDebuggingText: (recoveredBlock20Value7) on: (recoveredBlock20Value8).
    recoveredBlock20Value9
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202f2630; bytecode file offset 0xbeef0c"
!SGStateJunctionGO methodsFor: 'recovered'!
updateDynamicStateConnectors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dynamicStateConnectors.
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
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isConnected.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 47].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) connectedGOs.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) first.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) frameGO.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) getPosition.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) intersectionPointFor: (recoveredBlock5Stack2).
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredLocal2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack2 := recoveredLocal2.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            (recoveredBlock5Stack1) moveTo: (recoveredBlock5Stack2).
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := recoveredLocal1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) updatePriorityGOPosition.
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203296e8; bytecode file offset 0xc25fc0"
!SGStateJunctionGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'call_84169'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) startBlock.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionAllowedWith: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
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
            recoveredStack0 := (recoveredStack0) getAllowedNodePosition: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameGO.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) intersectionPointFor: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) addConnectorAt: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f784; bytecode file offset 0xc3c080"
!SGStateJunctionGO methodsFor: 'recovered'!
addConnectorAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGStateConnectorGO.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'down'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := PinLength.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := ConnectionLineStyle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) initAt: (recoveredStack2) direction: (recoveredStack3) length: (recoveredStack4) lineStyle: (recoveredStack5) manager: (recoveredStack6).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := SGBlockInterfaceElementGO.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := DefaultLineStyle.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) statePort.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithLineStyle: (recoveredStack2) manager: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'dyn'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) setConnectorNameGO: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) setExternalConnectorGO: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setManager: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) statePort.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) statePort.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) addInterfaceGO: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionPoint.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a29f4; bytecode file offset 0xd9f2f4"
!SGStateJunctionGO methodsFor: 'recovered'!
moveTo: recoveredArg1 andScale: recoveredArg2 fixPoint: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:block2810477cArg1 | 
    | block2810477cStack0 block2810477cStack1 block2810477cStack2 block2810477cStack3 block2810477cPC block2810477cStep block2810477cDone block2810477cResult |
    block2810477cStack0 := self.
    block2810477cPC := 4.
    block2810477cDone := false.
    [block2810477cDone not] whileTrue: [
        block2810477cStep := block2810477cPC.
        block2810477cStep = 4 ifTrue: [
            block2810477cStack1 := false.
            block2810477cPC := 5.
        ].
        block2810477cStep = 5 ifTrue: [
            block2810477cStack2 := block2810477cArg1.
            block2810477cPC := 6.
        ].
        block2810477cStep = 6 ifTrue: [
            block2810477cStack2 := (block2810477cStack2) getSGCallGO.
            block2810477cPC := 8.
        ].
        block2810477cStep = 8 ifTrue: [
            (block2810477cStack2 == nil) ifTrue: [block2810477cPC := 18] ifFalse: [block2810477cPC := 12].
        ].
        block2810477cStep = 12 ifTrue: [
            block2810477cPC := 13.
        ].
        block2810477cStep = 13 ifTrue: [
            block2810477cStack1 := block2810477cArg1.
            block2810477cPC := 14.
        ].
        block2810477cStep = 14 ifTrue: [
            block2810477cStack1 := (block2810477cStack1) interfaceGOs.
            block2810477cPC := 16.
        ].
        block2810477cStep = 16 ifTrue: [
            block2810477cStack1 := (block2810477cStack1) notEmpty.
            block2810477cPC := 18.
        ].
        block2810477cStep = 18 ifTrue: [
            block2810477cResult := block2810477cStack1.
            block2810477cDone := true.
        ].
    ].
    block2810477cResult
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 |
    recoveredBlock53Value0 := recoveredLocal2.
    recoveredBlock53Value1 := recoveredBlock53Arg1.
    recoveredBlock53Value2 := recoveredBlock53Arg1.
    recoveredBlock53Value3 := (recoveredBlock53Value2) getSGCallGO.
    recoveredBlock53Value4 := (recoveredBlock53Value3) getPosition.
    recoveredBlock53Value5 := recoveredBlock53Arg1.
    recoveredBlock53Value6 := (recoveredBlock53Value5) interfaceGOs.
    recoveredBlock53Value7 := (recoveredBlock53Value6) first.
    recoveredBlock53Value8 := (recoveredBlock53Value7) getPosition.
    recoveredBlock53Value9 := (recoveredBlock53Value4) - (recoveredBlock53Value8).
    recoveredBlock53Value10 := (recoveredBlock53Value0) at: (recoveredBlock53Value1) put: (recoveredBlock53Value9).
    recoveredBlock53Value10
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) moveTo: (recoveredStack1) andScale: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 recoveredBlock94Value3 recoveredBlock94Value4 recoveredBlock94Value5 recoveredBlock94Value6 recoveredBlock94Value7 recoveredBlock94Value8 recoveredBlock94Value9 recoveredBlock94Value10 |
    recoveredBlock94Value0 := recoveredBlock94Arg1.
    recoveredBlock94Value1 := (recoveredBlock94Value0) getSGCallGO.
    recoveredBlock94Value2 := recoveredBlock94Arg1.
    recoveredBlock94Value3 := (recoveredBlock94Value2) interfaceGOs.
    recoveredBlock94Value4 := (recoveredBlock94Value3) first.
    recoveredBlock94Value5 := (recoveredBlock94Value4) getPosition.
    recoveredBlock94Value6 := recoveredLocal2.
    recoveredBlock94Value7 := recoveredBlock94Arg1.
    recoveredBlock94Value8 := (recoveredBlock94Value6) at: (recoveredBlock94Value7).
    recoveredBlock94Value9 := (recoveredBlock94Value5) + (recoveredBlock94Value8).
    recoveredBlock94Value10 := (recoveredBlock94Value1) moveTo: (recoveredBlock94Value9).
    recoveredBlock94Value10
].
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
            recoveredStack0 := (recoveredStack0) interfaceElementGOs.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := [:block281047a0Arg1 | 
    | block281047a0Value0 block281047a0Value1 |
    block281047a0Value0 := block281047a0Arg1.
    block281047a0Value1 := (block281047a0Value0) repositionConnectorNameGO.
    block281047a0Value1
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d439c; bytecode file offset 0xdd0c9c"
!SGStateJunctionGO methodsFor: 'recovered'!
connectStartPoint: recoveredArg1 endPoint: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ASDStatemachineEditorOptions.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) optionBDETransitionType.
    recoveredBlock10Value1
].
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) roundedOrthogonalTransitionType.
    recoveredValue5 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 recoveredBlock25Value7 recoveredBlock25Value8 recoveredBlock25Value9 recoveredBlock25Value10 recoveredBlock25Value11 recoveredBlock25Value12 recoveredBlock25Value13 recoveredBlock25Value14 |
    recoveredBlock25Value0 := ASDStateTransitionInfoWrapperGO.
    recoveredBlock25Value1 := SGRoundedOrthogonalLineGO.
    recoveredBlock25Value2 := ConnectionLineStyle.
    recoveredBlock25Value3 := (recoveredBlock25Value2) deepCopy.
    recoveredBlock25Value4 := (recoveredBlock25Value1) createWithLineStyle: (recoveredBlock25Value3) manager: (nil).
    recoveredBlock25Value5 := recoveredBlock25Value4.
    recoveredBlock25Value6 := Array.
    recoveredBlock25Value7 := recoveredArg1.
    recoveredBlock25Value8 := (recoveredBlock25Value7) position.
    recoveredBlock25Value9 := recoveredArg2.
    recoveredBlock25Value10 := (recoveredBlock25Value9) position.
    recoveredBlock25Value11 := (recoveredBlock25Value6) with: (recoveredBlock25Value8) with: (recoveredBlock25Value10).
    (recoveredBlock25Value5) cornerPoints: (recoveredBlock25Value11).
    recoveredBlock25Value12 := recoveredArg1.
    recoveredBlock25Value13 := recoveredArg2.
    recoveredBlock25Value14 := (recoveredBlock25Value0) createWith: (recoveredBlock25Value4) startPoint: (recoveredBlock25Value12) endPoint: (recoveredBlock25Value13).
    ^recoveredBlock25Value14
].
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) bezierTransitionType52.
    recoveredValue8 := [
    | recoveredBlock75Value0 recoveredBlock75Value1 recoveredBlock75Value2 recoveredBlock75Value3 recoveredBlock75Value4 recoveredBlock75Value5 recoveredBlock75Value6 recoveredBlock75Value7 recoveredBlock75Value8 recoveredBlock75Value9 recoveredBlock75Value10 recoveredBlock75Value11 |
    recoveredBlock75Value0 := ASDStateTransitionInfoWrapperGO.
    recoveredBlock75Value1 := ASDBezier52GO.
    recoveredBlock75Value2 := ConnectionLineStyle.
    recoveredBlock75Value3 := (recoveredBlock75Value2) deepCopy.
    recoveredBlock75Value4 := recoveredArg1.
    recoveredBlock75Value5 := (recoveredBlock75Value4) position.
    recoveredBlock75Value6 := recoveredArg2.
    recoveredBlock75Value7 := (recoveredBlock75Value6) position.
    recoveredBlock75Value8 := (recoveredBlock75Value1) createWithLineStyle: (recoveredBlock75Value3) manager: (nil) startPoint: (recoveredBlock75Value5) endPoint: (recoveredBlock75Value7).
    recoveredBlock75Value9 := recoveredArg1.
    recoveredBlock75Value10 := recoveredArg2.
    recoveredBlock75Value11 := (recoveredBlock75Value0) createWith: (recoveredBlock75Value8) startPoint: (recoveredBlock75Value9) endPoint: (recoveredBlock75Value10).
    ^recoveredBlock75Value11
].
    recoveredValue9 := [
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 recoveredBlock114Value4 recoveredBlock114Value5 recoveredBlock114Value6 recoveredBlock114Value7 recoveredBlock114Value8 recoveredBlock114Value9 recoveredBlock114Value10 recoveredBlock114Value11 |
    recoveredBlock114Value0 := ASDStateTransitionInfoWrapperGO.
    recoveredBlock114Value1 := ASDBezier60GO.
    recoveredBlock114Value2 := ConnectionLineStyle.
    recoveredBlock114Value3 := (recoveredBlock114Value2) deepCopy.
    recoveredBlock114Value4 := recoveredArg1.
    recoveredBlock114Value5 := (recoveredBlock114Value4) position.
    recoveredBlock114Value6 := recoveredArg2.
    recoveredBlock114Value7 := (recoveredBlock114Value6) position.
    recoveredBlock114Value8 := (recoveredBlock114Value1) createWithLineStyle: (recoveredBlock114Value3) manager: (nil) startPoint: (recoveredBlock114Value5) endPoint: (recoveredBlock114Value7).
    recoveredBlock114Value9 := recoveredArg1.
    recoveredBlock114Value10 := recoveredArg2.
    recoveredBlock114Value11 := (recoveredBlock114Value0) createWith: (recoveredBlock114Value8) startPoint: (recoveredBlock114Value9) endPoint: (recoveredBlock114Value10).
    ^recoveredBlock114Value11
].
    (recoveredValue2) case: (recoveredValue4) do: (recoveredValue5) case: (recoveredValue7) do: (recoveredValue8) others: (recoveredValue9).
    ^nil
! !

