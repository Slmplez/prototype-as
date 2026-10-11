"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e758; bytecode file offset 0x96b41c"
!RBAxisGraphObject methodsFor: 'recovered'!
getLogAxis
    | recoveredValue0 |
    recoveredValue0 := logAxis.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f520; bytecode file offset 0x96bf7c"
!RBAxisGraphObject methodsFor: 'recovered'!
displayedObjects
    | recoveredValue0 |
    recoveredValue0 := displayedObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fa38; bytecode file offset 0x96c42c"
!RBAxisGraphObject methodsFor: 'recovered'!
font
    | recoveredValue0 |
    recoveredValue0 := font.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fc40; bytecode file offset 0x96c6ac"
!RBAxisGraphObject methodsFor: 'recovered'!
getDisplayType
    | recoveredValue0 |
    recoveredValue0 := displayType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007cf04; bytecode file offset 0x97c330"
!RBAxisGraphObject methodsFor: 'recovered'!
isMoveable
    ^false
! !

"ASDBase.ic method 0x200a8cd0; bytecode file offset 0x9a5588"
!RBAxisGraphObject methodsFor: 'recovered'!
setDisplayType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayType := recoveredValue0.
    (self) updateDisplayedObjects.
    ^self
! !

"ASDBase.ic method 0x200c5628; bytecode file offset 0x9c1f64"
!RBAxisGraphObject methodsFor: 'recovered'!
p1: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    p1 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5814; bytecode file offset 0x9c22c8"
!RBAxisGraphObject methodsFor: 'recovered'!
p2: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    p2 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c00; bytecode file offset 0x9c25bc"
!RBAxisGraphObject methodsFor: 'recovered'!
setDisplayedObjects: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayedObjects := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6104; bytecode file offset 0x9c29e8"
!RBAxisGraphObject methodsFor: 'recovered'!
font: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    font := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201a97b8; bytecode file offset 0xaa607c"
!RBAxisGraphObject methodsFor: 'recovered'!
initFrom: recoveredArg1 to: recoveredArg2 logAxis: recoveredArg3 manager: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) p1: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) p2: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    logAxis := recoveredValue2.
    recoveredValue3 := recoveredArg4.
    manager := recoveredValue3.
    (self) initialize.
    (self) updateDisplayedObjects.
    ^self
! !

"ASDBase.ic method 0x201ae950; bytecode file offset 0xaab210"
!RBAxisGraphObject methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := p1.
    recoveredValue1 := (recoveredValue0) x.
    recoveredValue2 := p2.
    recoveredValue3 := (recoveredValue2) x.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (recoveredValue4) // (2).
    recoveredValue6 := p1.
    recoveredValue7 := (recoveredValue6) y.
    recoveredValue8 := p2.
    recoveredValue9 := (recoveredValue8) y.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    recoveredValue11 := (recoveredValue10) // (2).
    recoveredValue12 := (recoveredValue5) @ (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x201bdb84; bytecode file offset 0xaba44c"
!RBAxisGraphObject methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLogAxis.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := p1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := p2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 30.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) expandBy: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e0a90; bytecode file offset 0xadd358"
!RBAxisGraphObject methodsFor: 'recovered'!
createNameUnitText
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) unit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ' ['.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := ']'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
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
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e22c4; bytecode file offset 0xadeb88"
!RBAxisGraphObject methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := font.
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
            recoveredStack1 := font.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := CgDisplay.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultFont.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := font.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) unloadFont.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6474; bytecode file offset 0xaf2d34"
!RBAxisGraphObject methodsFor: 'recovered'!
mixingRule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super mixingRule: (recoveredValue0).
    recoveredValue1 := displayedObjects.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) mixingRule: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2023b690; bytecode file offset 0xb37f58"
!RBAxisGraphObject methodsFor: 'recovered'!
updateDisplayedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'full'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) createDispObjectsFull.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := displayType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'valuesOnly'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) createDispObjectsValuesOnly.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) createDispObjectsMinimal.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024c1b0; bytecode file offset 0xb48a74"
!RBAxisGraphObject methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) gc.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := logAxis.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getActive.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := displayedObjects.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := recoveredArg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) displayOn: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030e1b0; bytecode file offset 0xc0aa9c"
!RBAxisGraphObject methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            displayedObjects := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            super initialize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := RBLineStyle.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            lineStyle := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := CgDisplay.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := '-microsoft-arial-medium-r-normal-sans serif-*-540-96-96-p-0-iso8859-1'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadQueryFont: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFont.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) font.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) font: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 'full'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            displayType := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033f6b4; bytecode file offset 0xc3bf90"
!RBAxisGraphObject methodsFor: 'recovered'!
fullCopy
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := super fullCopy.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := p1.
    recoveredValue4 := (recoveredValue3) deepCopy.
    (recoveredValue2) p1: (recoveredValue4).
    recoveredValue5 := p2.
    recoveredValue6 := (recoveredValue5) deepCopy.
    (recoveredValue1) p2: (recoveredValue6).
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := displayedObjects.
    recoveredValue10 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredLocal1.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) fullCopy.
    recoveredBlock34Value3 := (recoveredBlock34Value0) add: (recoveredBlock34Value2).
    recoveredBlock34Value3
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    (recoveredValue11) setDisplayedObjects: (recoveredValue12).
    recoveredValue13 := recoveredLocal2.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20355188; bytecode file offset 0xc51a68"
!RBAxisGraphObject methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := p1.
    recoveredValue1 := p2.
    recoveredValue2 := (recoveredValue0) corner: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := displayedObjects.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) frame.
    recoveredBlock14Value3 := (recoveredBlock14Value0) merge: (recoveredBlock14Value2).
    recoveredBlock14Value4 := recoveredBlock14Value3.
    recoveredLocal1 := recoveredBlock14Value4.
    recoveredBlock14Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) origin.
    recoveredValue7 := (self) widget.
    recoveredValue8 := (recoveredValue7) logicalOrigin.
    recoveredValue9 := (recoveredValue8) x.
    (recoveredValue6) x: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) corner.
    recoveredValue12 := (self) widget.
    recoveredValue13 := (recoveredValue12) logicalCorner.
    recoveredValue14 := (recoveredValue13) x.
    (recoveredValue11) x: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

