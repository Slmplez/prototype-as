"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200087b0; bytecode file offset 0x908be4"
!RBEditableSignalGraph methodsFor: 'recovered'!
determineCompQuantWPPointCollection
    | recoveredValue0 |
    recoveredValue0 := (self) wpMarkerRingBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200357e4; bytecode file offset 0x934580"
!RBEditableSignalGraph methodsFor: 'recovered'!
compQuantityBufferSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) compQuantityBufferSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200421b8; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
wEditable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) wEditable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200421dc; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
wIncrementable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) wIncrementable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200421f4; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
xEditable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) xEditable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042200; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
writeProtection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) writeProtection.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042224; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
wBlockSelectionAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) wBlockSelectionAllowed.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042254; bytecode file offset 0x93eb24"
!RBEditableSignalGraph methodsFor: 'recovered'!
xIncrementable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := channel.
    recoveredValue1 := (recoveredValue0) xIncrementable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048b44; bytecode file offset 0x9453f8"
!RBEditableSignalGraph methodsFor: 'recovered'!
changeStarted
    lastChange := false.
    ^self
! !

"ASDBase.ic method 0x2006f4f0; bytecode file offset 0x96bf7c"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPoints
    | recoveredValue0 |
    recoveredValue0 := pointColl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f8c8; bytecode file offset 0x96c1f4"
!RBEditableSignalGraph methodsFor: 'recovered'!
isLastChange
    | recoveredValue0 |
    recoveredValue0 := lastChange.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd40; bytecode file offset 0x96c6ac"
!RBEditableSignalGraph methodsFor: 'recovered'!
wpMarkerRingBuffer
    | recoveredValue0 |
    recoveredValue0 := wpMarkerRingBuffer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200755e4; bytecode file offset 0x9757c8"
!RBEditableSignalGraph methodsFor: 'recovered'!
hasActiveState
    ^true
! !

"ASDBase.ic method 0x2008259c; bytecode file offset 0x97ee90"
!RBEditableSignalGraph methodsFor: 'recovered'!
positionOfValues: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) positionOfValues: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200825cc; bytecode file offset 0x97ee90"
!RBEditableSignalGraph methodsFor: 'recovered'!
valuesOfPosition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) valuesOfPosition: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009b418; bytecode file offset 0x997cd4"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPointObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) editPoints.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) editPointObjects: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c43c; bytecode file offset 0x998d48"
!RBEditableSignalGraph methodsFor: 'recovered'!
defaultWPMarkerColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgScreen.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) lookupColor: ('red').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d3454; bytecode file offset 0x9cfd10"
!RBEditableSignalGraph methodsFor: 'recovered'!
lastChange
    | recoveredValue0 |
    lastChange := true.
    recoveredValue0 := (self) getController.
    (recoveredValue0) displayEditPosition: (nil).
    ^self
! !

"ASDBase.ic method 0x200df87c; bytecode file offset 0x9dc13c"
!RBEditableSignalGraph methodsFor: 'recovered'!
getValueAtIndex: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) editPoints.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := channel.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue3) realValueOfPosition: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012aa10; bytecode file offset 0xa272c8"
!RBEditableSignalGraph methodsFor: 'recovered'!
stopDisplayingWP
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := wpMarker.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) displayWPMarker: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            wpMarker := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20153340; bytecode file offset 0xa4fbfc"
!RBEditableSignalGraph methodsFor: 'recovered'!
displayWPMarker: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := wpMarker.
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
            recoveredStack1 := wpMarker.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := manager.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017bf50; bytecode file offset 0xa78834"
!RBEditableSignalGraph methodsFor: 'recovered'!
incrementW: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) incrementWIndex: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := pointColl.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := pointColl.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) x.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) @ (recoveredValue9).
    recoveredValue11 := (recoveredValue3) at: (recoveredValue4) put: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x2017bf6c; bytecode file offset 0xa78834"
!RBEditableSignalGraph methodsFor: 'recovered'!
decrementW: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) decrementWIndex: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := pointColl.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := pointColl.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue5) at: (recoveredValue6).
    recoveredValue8 := (recoveredValue7) x.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) @ (recoveredValue9).
    recoveredValue11 := (recoveredValue3) at: (recoveredValue4) put: (recoveredValue10).
    ^recoveredValue11
! !

"ASDBase.ic method 0x20183564; bytecode file offset 0xa7fe30"
!RBEditableSignalGraph methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    lastChange := true.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) compQuantityBufferSize.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    wpMarkerRingBuffer := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2019bc24; bytecode file offset 0xa984e8"
!RBEditableSignalGraph methodsFor: 'recovered'!
changeToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBEditSignalObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
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
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
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
            recoveredStack2 := self.
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
            (recoveredStack1) graphObject: (recoveredStack2) changeToSensitivePointWrapper: (recoveredStack3) display: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2019bfc4; bytecode file offset 0xa988c4"
!RBEditableSignalGraph methodsFor: 'recovered'!
multWFactor: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) multWFactor: (recoveredValue1) index: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := pointColl.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := pointColl.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) x.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) @ (recoveredValue10).
    recoveredValue12 := (recoveredValue4) at: (recoveredValue5) put: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2019bfe0; bytecode file offset 0xa988c4"
!RBEditableSignalGraph methodsFor: 'recovered'!
fillWWithValue: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) fillWWithValue: (recoveredValue1) index: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := pointColl.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := pointColl.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) x.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) @ (recoveredValue10).
    recoveredValue12 := (recoveredValue4) at: (recoveredValue5) put: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x2019bffc; bytecode file offset 0xa988c4"
!RBEditableSignalGraph methodsFor: 'recovered'!
addWOffset: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := channel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) addWOffset: (recoveredValue1) index: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := pointColl.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := pointColl.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) at: (recoveredValue7).
    recoveredValue9 := (recoveredValue8) x.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue9) @ (recoveredValue10).
    recoveredValue12 := (recoveredValue4) at: (recoveredValue5) put: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20202638; bytecode file offset 0xafef00"
!RBEditableSignalGraph methodsFor: 'recovered'!
displayOn: recoveredArg1
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
            super displayOn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := wpMarker.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := wpMarker.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := GXcopy.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) setMixingRule: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := GXhighlight.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) setMixingRule: (recoveredStack1).
            recoveredPC := 29.
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

"ASDBase.ic method 0x20204834; bytecode file offset 0xb01100"
!RBEditableSignalGraph methodsFor: 'recovered'!
decrementWFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := channel.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) decrementWFrom: (recoveredBlock4Value1) to: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) doBlockOperation: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20204844; bytecode file offset 0xb01100"
!RBEditableSignalGraph methodsFor: 'recovered'!
incrementWFrom: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := channel.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := (recoveredBlock4Value0) incrementWFrom: (recoveredBlock4Value1) to: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) doBlockOperation: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022c54c; bytecode file offset 0xb28e20"
!RBEditableSignalGraph methodsFor: 'recovered'!
displayWorkingPointAtPosition: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) handleWPMarkerRingBuffer.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) updateWPMarkerRingBuffer: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
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
            recoveredStack0 := (recoveredStack0) createComparisonQuantityWPMarkerAtPosition: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            wpMarker := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
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
            recoveredStack0 := (recoveredStack0) getController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20235c74; bytecode file offset 0xb32550"
!RBEditableSignalGraph methodsFor: 'recovered'!
addWOffset: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := channel.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := recoveredArg3.
    recoveredBlock4Value4 := (recoveredBlock4Value0) addWOffset: (recoveredBlock4Value1) from: (recoveredBlock4Value2) to: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) doBlockOperation: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20235c84; bytecode file offset 0xb32550"
!RBEditableSignalGraph methodsFor: 'recovered'!
fillWWithValue: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := channel.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := recoveredArg3.
    recoveredBlock4Value4 := (recoveredBlock4Value0) fillWWithValue: (recoveredBlock4Value1) from: (recoveredBlock4Value2) to: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) doBlockOperation: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20235c94; bytecode file offset 0xb32550"
!RBEditableSignalGraph methodsFor: 'recovered'!
multWFactor: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := channel.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := recoveredArg2.
    recoveredBlock4Value3 := recoveredArg3.
    recoveredBlock4Value4 := (recoveredBlock4Value0) multWFactor: (recoveredBlock4Value1) from: (recoveredBlock4Value2) to: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) doBlockOperation: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20238f7c; bytecode file offset 0xb35844"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPoint: recoveredArg1 moveWTo: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) moveWIndex: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := pointColl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b75d8; bytecode file offset 0xbb3ea4"
!RBEditableSignalGraph methodsFor: 'recovered'!
decrementX: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) decrementXIndex: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := pointColl.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d66fc; bytecode file offset 0xbd2fec"
!RBEditableSignalGraph methodsFor: 'recovered'!
createComparisonQuantityWPMarkerAtPosition: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) determineCompQuantWPPointCollection.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := RBLineStyle.
    recoveredValue2 := (recoveredValue1) createDefault.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := LineSolid.
    (recoveredValue3) type: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) defaultWPMarkerColor.
    (recoveredValue5) color: (recoveredValue6).
    recoveredValue7 := (recoveredValue2) width: (0).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := RBCompQuantWPGO.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := RBAreaStyle.
    recoveredValue12 := (recoveredValue11) createDefault.
    recoveredValue13 := RBColorManager.
    recoveredValue14 := (recoveredValue13) namedColor: ('blue').
    recoveredValue15 := (recoveredValue12) color: (recoveredValue14).
    recoveredValue16 := (self) manager.
    recoveredValue17 := (recoveredValue8) createWithPointColl: (recoveredValue9) lineStyle: (recoveredValue10) areaStyle: (recoveredValue15) manager: (recoveredValue16).
    recoveredLocal3 := recoveredValue17.
    recoveredValue18 := recoveredLocal3.
    ^recoveredValue18
! !

"ASDBase.ic method 0x202dc980; bytecode file offset 0xbd9250"
!RBEditableSignalGraph methodsFor: 'recovered'!
incrementX: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) incrementXIndex: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := pointColl.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202e9e44; bytecode file offset 0xbe671c"
!RBEditableSignalGraph methodsFor: 'recovered'!
handleWPMarkerRingBuffer
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := wpMarker.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getController.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) update.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := wpMarker.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) removeGO: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := wpMarker.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicFrame.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := wpMarker.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) deleteFrame.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) getController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202fe1b4; bytecode file offset 0xbfaa78"
!RBEditableSignalGraph methodsFor: 'recovered'!
checkUpdatePaneOnFirstPoint: recoveredArg1 secondPoint: recoveredArg2
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := wpMarker.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := wpMarker.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) deleteWidth.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := wpMarker.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) deleteWidth.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032a3a4; bytecode file offset 0xc26c9c"
!RBEditableSignalGraph methodsFor: 'recovered'!
createWPMarkerAt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) frame.
    recoveredValue2 := (recoveredValue1) origin.
    recoveredValue3 := (recoveredValue2) y.
    recoveredValue4 := (recoveredValue0) @ (recoveredValue3).
    recoveredLocal4 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) frame.
    recoveredValue7 := (recoveredValue6) corner.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := (recoveredValue5) @ (recoveredValue8).
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := RBLineStyle.
    recoveredValue11 := (recoveredValue10) createDefault.
    recoveredValue12 := recoveredValue11.
    recoveredValue13 := LineSolid.
    (recoveredValue12) type: (recoveredValue13).
    recoveredValue14 := recoveredValue11.
    recoveredValue15 := (self) defaultWPMarkerColor.
    (recoveredValue14) color: (recoveredValue15).
    recoveredValue16 := (recoveredValue11) width: (5).
    recoveredLocal2 := recoveredValue16.
    recoveredValue17 := RBWorkingPointMarker.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := (self) manager.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := recoveredLocal3.
    recoveredValue22 := (recoveredValue17) createWithLineStyle: (recoveredValue18) manager: (recoveredValue19) pointA: (recoveredValue20) pointB: (recoveredValue21).
    recoveredValue23 := GXhighlight.
    recoveredValue24 := (recoveredValue22) mixingRule: (recoveredValue23).
    recoveredLocal1 := recoveredValue24.
    recoveredValue25 := recoveredLocal1.
    ^recoveredValue25
! !

"ASDBase.ic method 0x203505e0; bytecode file offset 0xc4cea8"
!RBEditableSignalGraph methodsFor: 'recovered'!
doBlockOperation: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack1 := channel.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) updatePoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := coordRect.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 61]] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b2554; bytecode file offset 0xcaee24"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPoint: recoveredArg1 moveXTo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) moveXIndex: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := pointColl.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b9460; bytecode file offset 0xcb5d30"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPointsFrom: recoveredArg1 to: recoveredArg2 moveWFor: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := channel.
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
            recoveredStack4 := pointColl.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) moveWIndexFrom: (recoveredStack2) to: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := pointColl.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) x.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) y.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack6 := (recoveredStack6) y.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) @ (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 36] ifFalse: [recoveredLocal2 := nil. recoveredPC := 71]] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) updatePoints.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203dd94c; bytecode file offset 0xcda24c"
!RBEditableSignalGraph methodsFor: 'recovered'!
editPointObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := RBLineStyle.
    recoveredValue3 := (recoveredValue2) createDefault.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := lineStyle.
    recoveredValue6 := (recoveredValue5) color.
    (recoveredValue4) color: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    (recoveredValue7) width: (0).
    recoveredValue8 := LineSolid.
    recoveredValue9 := (recoveredValue3) type: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 recoveredBlock35Value12 recoveredBlock35Value13 recoveredBlock35Value14 |
    recoveredBlock35Value0 := RBAreaStyle.
    recoveredBlock35Value1 := (recoveredBlock35Value0) createDefault.
    recoveredBlock35Value2 := CgScreen.
    recoveredBlock35Value3 := (recoveredBlock35Value2) default.
    recoveredBlock35Value4 := (recoveredBlock35Value3) lookupColor: ('white').
    recoveredBlock35Value5 := (recoveredBlock35Value1) color: (recoveredBlock35Value4).
    recoveredBlock35Local1 := recoveredBlock35Value5.
    recoveredBlock35Value6 := recoveredLocal2.
    recoveredBlock35Value7 := RBRectangleGO.
    recoveredBlock35Value8 := recoveredBlock35Arg1.
    recoveredBlock35Value9 := recoveredLocal1.
    recoveredBlock35Value10 := recoveredBlock35Local1.
    recoveredBlock35Value11 := manager.
    recoveredBlock35Value12 := (recoveredBlock35Value7) createAt: (recoveredBlock35Value8) xAxis: (30) yAxis: (30) lineStyle: (recoveredBlock35Value9) areaStyle: (recoveredBlock35Value10) manager: (recoveredBlock35Value11).
    recoveredBlock35Value13 := (recoveredBlock35Value12) includesFlag: (true).
    recoveredBlock35Value14 := (recoveredBlock35Value6) add: (recoveredBlock35Value13).
    recoveredBlock35Value14
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := recoveredLocal2.
    ^recoveredValue12
! !

"ASDBase.ic method 0x204024f0; bytecode file offset 0xcfeddc"
!RBEditableSignalGraph methodsFor: 'recovered'!
displayXWorkingPointAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CwAppContext.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := coordRect.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) origin.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) x.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) < (recoveredBlock7Stack2).
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack3 := coordRect.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) corner.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) x.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) > (recoveredBlock7Stack3).
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) | (recoveredBlock7Stack2).
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 50].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack2 := wpMarker.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            (recoveredBlock7Stack2 == nil) ifTrue: [recoveredBlock7PC := 46] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) stopDisplayingWP.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := wpMarker.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 68] ifFalse: [recoveredBlock7PC := 56].
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 60.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) createWPMarkerAt: (recoveredBlock7Stack2).
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            wpMarker := recoveredBlock7Stack1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack2 := false.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            (recoveredBlock7Stack1) displayWPMarker: (recoveredBlock7Stack2).
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := wpMarker.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            recoveredBlock7Stack3 := wpMarker.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) getPosition.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) y.
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) @ (recoveredBlock7Stack3).
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            (recoveredBlock7Stack1) moveTo: (recoveredBlock7Stack2).
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 88.
        ].
        recoveredBlock7Step = 88 ifTrue: [
            recoveredBlock7Stack2 := true.
            recoveredBlock7PC := 89.
        ].
        recoveredBlock7Step = 89 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) displayWPMarker: (recoveredBlock7Stack2).
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) syncExecInUI: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20450604; bytecode file offset 0xd4cedc"
!RBEditableSignalGraph methodsFor: 'recovered'!
updateWPMarkerRingBuffer: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) compQuantityBufferSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) wpMarkerRingBuffer.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) wpMarkerRingBuffer.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) wpMarkerRingBuffer.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepCopy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkUpdatePaneOnFirstPoint: (recoveredStack1) secondPoint: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkUpdatePaneOnFirstPoint: (recoveredStack1) secondPoint: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) wpMarkerRingBuffer.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) wpMarkerRingBuffer.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 76] ifFalse: [recoveredLocal1 := nil. recoveredPC := 100]] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            wpMarkerRingBuffer := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f1810; bytecode file offset 0xdee104"
!RBEditableSignalGraph methodsFor: 'recovered'!
scaleIfNecessaryForPos: recoveredArg1 redraw: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) valuesOfPosition: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) ceiling.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := channel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLogXAxis.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) getExtent.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) getController.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := channel.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) setXOffset: (recoveredStack2) channel: (recoveredStack3) update: (recoveredStack4) redraw: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) origin.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) valuesOfPosition: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) floor.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) getController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := channel.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) setXOffset: (recoveredStack2) channel: (recoveredStack3) update: (recoveredStack4) redraw: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) corner.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) valuesOfPosition: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) ceiling.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := channel.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLogWAxis.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) getOffset.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) getController.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := channel.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) setWExtent: (recoveredStack2) channel: (recoveredStack3) update: (recoveredStack4) redraw: (recoveredStack5).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := coordRect.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) origin.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) valuesOfPosition: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) floor.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := channel.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLogWAxis.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMax.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := manager.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) getController.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := channel.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) setWOffset: (recoveredStack2) extent: (recoveredStack3) channel: (recoveredStack4) update: (recoveredStack5) redraw: (recoveredStack6).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

