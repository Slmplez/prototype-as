"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200011d0; bytecode file offset 0x8ffcfc"
!SGPaneBlockController methodsFor: 'recovered'!
drawLastObjectAgainForScrolling
    ^self
! !

"ASDBase.ic method 0x200018f0; bytecode file offset 0x8ffcfc"
!SGPaneBlockController methodsFor: 'recovered'!
setModified
    ^self
! !

"ASDBase.ic method 0x20004528; bytecode file offset 0x90206c"
!SGPaneBlockController methodsFor: 'recovered'!
graphicsModified: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004730; bytecode file offset 0x90206c"
!SGPaneBlockController methodsFor: 'recovered'!
moveForScrolling: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ba0; bytecode file offset 0x90206c"
!SGPaneBlockController methodsFor: 'recovered'!
displayContentsWithoutCurrentGOIn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000a1b4; bytecode file offset 0x908be4"
!SGPaneBlockController methodsFor: 'recovered'!
deselect
    | recoveredValue0 |
    recoveredValue0 := (self) deselectActiveGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005d288; bytecode file offset 0x959d74"
!SGPaneBlockController methodsFor: 'recovered'!
determineBlockLayoutDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := (recoveredValue1) determineBlockLayoutDictionary.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d2f8; bytecode file offset 0x959d74"
!SGPaneBlockController methodsFor: 'recovered'!
symbolGO
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := (recoveredValue1) symbolGO.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d328; bytecode file offset 0x959d74"
!SGPaneBlockController methodsFor: 'recovered'!
actualNameGO
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := (recoveredValue1) actualNameGO.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d570; bytecode file offset 0x959e64"
!SGPaneBlockController methodsFor: 'recovered'!
zoom100
    | recoveredValue0 |
    recoveredValue0 := widget.
    (recoveredValue0) unzoomAndUnscroll.
    ^self
! !

"ASDBase.ic method 0x20066564; bytecode file offset 0x963428"
!SGPaneBlockController methodsFor: 'recovered'!
getBDEController
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5a4; bytecode file offset 0x967a18"
!SGPaneBlockController methodsFor: 'recovered'!
graphicObjects
    | recoveredValue0 |
    recoveredValue0 := graphicObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e0c8; bytecode file offset 0x96a9dc"
!SGPaneBlockController methodsFor: 'recovered'!
capturedPoint
    | recoveredValue0 |
    recoveredValue0 := capturedPoint.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e184; bytecode file offset 0x96af48"
!SGPaneBlockController methodsFor: 'recovered'!
raster
    | recoveredValue0 |
    recoveredValue0 := raster.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008ab60; bytecode file offset 0x987434"
!SGPaneBlockController methodsFor: 'recovered'!
frameRect
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := (recoveredValue1) frameGO.
    recoveredValue3 := (recoveredValue2) logicFrame.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200925f8; bytecode file offset 0x98ef64"
!SGPaneBlockController methodsFor: 'recovered'!
editProcedure: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := owner.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) editProcedure: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200afd34; bytecode file offset 0x9ac5f4"
!SGPaneBlockController methodsFor: 'recovered'!
print
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBPrinterServer.
    recoveredValue1 := graphicObjects.
    recoveredValue2 := (recoveredValue0) createFor: (recoveredValue1).
    (recoveredValue2) print.
    ^self
! !

"ASDBase.ic method 0x200c4818; bytecode file offset 0x9c11bc"
!SGPaneBlockController methodsFor: 'recovered'!
capturedPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    capturedPoint := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e7388; bytecode file offset 0x9e3c48"
!SGPaneBlockController methodsFor: 'recovered'!
updateBlockLayoutOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) updateBlockLayoutOn: (recoveredValue2).
    (self) redraw.
    ^self
! !

"ASDBase.ic method 0x200f08f4; bytecode file offset 0x9ed1b0"
!SGPaneBlockController methodsFor: 'recovered'!
redraw
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDestroyed.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) redraw.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010cf4c; bytecode file offset 0xa0980c"
!SGPaneBlockController methodsFor: 'recovered'!
getPointedGOAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := selectableGraphicObjects.
    recoveredValue3 := (self) getPointedGOFor: (recoveredValue1) rootObject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2010cf70; bytecode file offset 0xa09830"
!SGPaneBlockController methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('hw') == ('call_92964').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := selectedObject.
    recoveredValue3 := (self) getPointedGOFor: (recoveredValue1) rootObject: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20116428; bytecode file offset 0xa12ce0"
!SGPaneBlockController methodsFor: 'recovered'!
display
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := raster.
    recoveredValue1 := widget.
    (recoveredValue0) displayOn: (recoveredValue1).
    recoveredValue2 := graphicObjects.
    recoveredValue3 := widget.
    (recoveredValue2) displayOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20130420; bytecode file offset 0xa2cce4"
!SGPaneBlockController methodsFor: 'recovered'!
editRaster: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGDefaultPaneCtrl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) raster.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) editRaster: (recoveredStack2) parentUI: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) redraw.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133814; bytecode file offset 0xa300d8"
!SGPaneBlockController methodsFor: 'recovered'!
displayContentsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := (self) widget.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) displayOn: (recoveredValue1) rects: (recoveredValue2).
    recoveredValue3 := graphicObjects.
    recoveredValue4 := widget.
    (recoveredValue3) displayOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20140714; bytecode file offset 0xa3cfdc"
!SGPaneBlockController methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SGDefaultPaneCtrl.
    recoveredValue1 := (recoveredValue0) ascetDefaultRaster.
    raster := recoveredValue1.
    state := 'normal'.
    ^self
! !

"ASDBase.ic method 0x2014ce40; bytecode file offset 0xa49708"
!SGPaneBlockController methodsFor: 'recovered'!
showDefaultBlockDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    (recoveredValue1) setDefaultBlockDisplay.
    recoveredValue2 := owner.
    (recoveredValue2) setModified.
    (self) redraw.
    (self) deselect.
    ^self
! !

"ASDBase.ic method 0x2014d3ac; bytecode file offset 0xa49c80"
!SGPaneBlockController methodsFor: 'recovered'!
isMethodInterfacePortSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SGMethodInterfacePortGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014d3c0; bytecode file offset 0xa49c80"
!SGPaneBlockController methodsFor: 'recovered'!
isBlockInterfaceElementSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := SGBlockInterfaceElementGO.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a1d00; bytecode file offset 0xa9e5d0"
!SGPaneBlockController methodsFor: 'recovered'!
getFont
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMethodInterfacePortSelected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := selectedObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getConnectorNameGO.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFont.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := widget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) font.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c7718; bytecode file offset 0xac3fdc"
!SGPaneBlockController methodsFor: 'recovered'!
isRectSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) isFrameSelected.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := RBSymbolGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d55ac; bytecode file offset 0xad1e7c"
!SGPaneBlockController methodsFor: 'recovered'!
initializeOnFirstExpose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) graphicObject.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := widget.
    recoveredValue4 := (recoveredValue3) extent.
    recoveredValue5 := (recoveredValue4) // (2).
    recoveredValue6 := PinDistance.
    recoveredValue7 := PinDistance.
    recoveredValue8 := (recoveredValue6) @ (recoveredValue7).
    recoveredValue9 := (recoveredValue5) roundTo: (recoveredValue8).
    (recoveredValue2) moveTo: (recoveredValue9).
    recoveredValue10 := raster.
    (recoveredValue1) fitToRaster: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20222bdc; bytecode file offset 0xb1f4a8"
!SGPaneBlockController methodsFor: 'recovered'!
ensureConstraintsForScaling
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := capturedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := owner.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphicObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) frameGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphicObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) frameGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) minSize: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202243bc; bytecode file offset 0xb20c84"
!SGPaneBlockController methodsFor: 'recovered'!
isFrameSelected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := selectedObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) graphicObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) frameGO.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := SGBlockGO.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20234114; bytecode file offset 0xb309d8"
!SGPaneBlockController methodsFor: 'recovered'!
characterInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := state.
    recoveredBlock4Value0
].
    recoveredValue1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := selectedObject.
    recoveredBlock15Value1 := recoveredArg1.
    recoveredBlock15Value2 := (recoveredBlock15Value0) characterInput: (recoveredBlock15Value1).
    recoveredBlock15Value2
].
    recoveredValue2 := [].
    (recoveredValue0) case: ('selected') do: (recoveredValue1) others: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20269c78; bytecode file offset 0xb6653c"
!SGPaneBlockController methodsFor: 'recovered'!
deselectActiveGO
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRectSelected.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := graphicObjects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := selectedObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) changeFromSelectedGO: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := widget.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) displayOn: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            selectedObject := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e6f9c; bytecode file offset 0xbe3874"
!SGPaneBlockController methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1 rootObject: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_92964'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := SGBlockInterfaceElementGO.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) manager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := SGMethodInterfacePortGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOForBlockEditor: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030c330; bytecode file offset 0xc08c14"
!SGPaneBlockController methodsFor: 'recovered'!
updateForGraphicObject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    (self) deselect.
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) setManager: (self).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) classRBSymbolGO.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) classRBSymbolGO.
    recoveredValue5 := (recoveredValue4) lineStyle.
    recoveredValue6 := (recoveredValue5) deepCopy.
    (recoveredValue2) setRBLineStyle: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) actualNameGO.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) actualNameGO.
    recoveredValue11 := (recoveredValue10) lineStyle.
    recoveredValue12 := (recoveredValue11) deepCopy.
    (recoveredValue8) setRBLineStyle: (recoveredValue12).
    recoveredValue13 := RBGraphicObjectCollection.
    recoveredValue14 := (recoveredValue13) new.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) getDisplayedGraphObjectsForBlockEditor.
    recoveredValue17 := (recoveredValue14) initFor: (self) children: (recoveredValue16).
    graphicObjects := recoveredValue17.
    recoveredValue18 := RBGraphicObjectCollection.
    recoveredValue19 := (recoveredValue18) new.
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue20) getSelectableGraphObjectsForBlockEditor.
    recoveredValue22 := (recoveredValue19) initFor: (self) children: (recoveredValue21).
    selectableGraphicObjects := recoveredValue22.
    ^self
! !

"ASDBase.ic method 0x203b3a98; bytecode file offset 0xcb037c"
!SGPaneBlockController methodsFor: 'recovered'!
moveBlockInterfaceElementTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) frameRect.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := raster.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPos: (recoveredStack1) forGO: (recoveredStack2) delta: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) nearestPointOnRect: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := capturedObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) deltaFromPosition.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := capturedObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicGraphObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectorPort.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSGCallGO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefaultPositionForPort: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := capturedObject.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) capturedPositionMovedTo: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectorPort.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) repositionSequenceCall.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f8bc4; bytecode file offset 0xcf5490"
!SGPaneBlockController methodsFor: 'recovered'!
button2DownLC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := state.
    recoveredBlock4Value0
].
    recoveredValue1 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            (recoveredBlock15Stack0) selectObject: (recoveredBlock15Stack1).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack1 := state.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack2 := 'toChange'.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 36] ifFalse: [recoveredBlock15PC := 42].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack0 := 'selected'.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            state := recoveredBlock15Stack1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    recoveredValue2 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            (recoveredBlock45Stack0) selectObject: (recoveredBlock45Stack1).
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack0 := nil.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack1 := state.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack2 := 'toChange'.
            recoveredBlock45PC := 62.
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) = (recoveredBlock45Stack2).
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 66] ifFalse: [recoveredBlock45PC := 72].
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            recoveredBlock45Stack0 := 'selected'.
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 70.
        ].
        recoveredBlock45Step = 70 ifTrue: [
            state := recoveredBlock45Stack1.
            recoveredBlock45PC := 72.
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
    recoveredValue3 := [
    | recoveredBlock73Value0 |
    recoveredBlock73Value0 := (self) deselect.
    recoveredBlock73Value0
].
    (recoveredValue0) case: ('normal') do: (recoveredValue1) case: ('selected') do: (recoveredValue2) others: (recoveredValue3).
    capturedPoint := nil.
    capturedObject := nil.
    ^self
! !

"ASDBase.ic method 0x20466b98; bytecode file offset 0xd63470"
!SGPaneBlockController methodsFor: 'recovered'!
button1DownLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := state.
    recoveredBlock13Value0
].
    recoveredValue4 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := 'hw'.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Stack2 := 'call_82031'.
            recoveredBlock25PC := 36.
        ].
        recoveredBlock25Step = 36 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) == (recoveredBlock25Stack2).
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25PC := 38.
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := self.
            recoveredBlock25PC := 40.
        ].
        recoveredBlock25Step = 40 ifTrue: [
            recoveredBlock25Stack3 := recoveredArg1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) selectObject: (recoveredBlock25Stack3).
            recoveredBlock25PC := 45.
        ].
        recoveredBlock25Step = 45 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 62] ifFalse: [recoveredBlock25PC := 48].
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack1 := self.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            (recoveredBlock25Stack1) ensureConstraintsForScaling.
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            capturedPoint := recoveredBlock25Stack1.
            recoveredBlock25PC := 57.
        ].
        recoveredBlock25Step = 57 ifTrue: [
            recoveredBlock25Stack1 := 'toChange'.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            state := recoveredBlock25Stack2.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    recoveredValue5 := [
    | recoveredBlock65Stack0 recoveredBlock65Stack1 recoveredBlock65Stack2 recoveredBlock65Stack3 recoveredBlock65Stack4 recoveredBlock65PC recoveredBlock65Step recoveredBlock65Done recoveredBlock65Result |
    recoveredBlock65Stack0 := self.
    recoveredBlock65PC := 72.
    recoveredBlock65Done := false.
    [recoveredBlock65Done not] whileTrue: [
        recoveredBlock65Step := recoveredBlock65PC.
        recoveredBlock65Step = 72 ifTrue: [
            recoveredBlock65Stack1 := nil.
            recoveredBlock65PC := 73.
        ].
        recoveredBlock65Step = 73 ifTrue: [
            recoveredBlock65Stack2 := self.
            recoveredBlock65PC := 74.
        ].
        recoveredBlock65Step = 74 ifTrue: [
            recoveredBlock65Stack3 := recoveredLocal1.
            recoveredBlock65PC := 77.
        ].
        recoveredBlock65Step = 77 ifTrue: [
            recoveredBlock65Stack2 := (recoveredBlock65Stack2) selectObject: (recoveredBlock65Stack3).
            recoveredBlock65PC := 79.
        ].
        recoveredBlock65Step = 79 ifTrue: [
            (recoveredBlock65Stack2 == nil) ifTrue: [recoveredBlock65PC := 96] ifFalse: [recoveredBlock65PC := 82].
        ].
        recoveredBlock65Step = 82 ifTrue: [
            recoveredBlock65PC := 83.
        ].
        recoveredBlock65Step = 83 ifTrue: [
            recoveredBlock65Stack1 := self.
            recoveredBlock65PC := 84.
        ].
        recoveredBlock65Step = 84 ifTrue: [
            (recoveredBlock65Stack1) ensureConstraintsForScaling.
            recoveredBlock65PC := 86.
        ].
        recoveredBlock65Step = 86 ifTrue: [
            recoveredBlock65Stack1 := recoveredLocal1.
            recoveredBlock65PC := 89.
        ].
        recoveredBlock65Step = 89 ifTrue: [
            capturedPoint := recoveredBlock65Stack1.
            recoveredBlock65PC := 91.
        ].
        recoveredBlock65Step = 91 ifTrue: [
            recoveredBlock65Stack1 := 'toChange'.
            recoveredBlock65PC := 93.
        ].
        recoveredBlock65Step = 93 ifTrue: [
            recoveredBlock65Stack2 := recoveredBlock65Stack1.
            recoveredBlock65PC := 94.
        ].
        recoveredBlock65Step = 94 ifTrue: [
            state := recoveredBlock65Stack2.
            recoveredBlock65PC := 96.
        ].
        recoveredBlock65Step = 96 ifTrue: [
            recoveredBlock65Result := recoveredBlock65Stack1.
            recoveredBlock65Done := true.
        ].
    ].
    recoveredBlock65Result
].
    recoveredValue6 := [
    capturedPoint := nil.
    selectedObject := nil.
    state := 'normal'.
    'normal'
].
    (recoveredValue3) case: ('normal') do: (recoveredValue4) case: ('selected') do: (recoveredValue5) others: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x204b893c; bytecode file offset 0xdb522c"
!SGPaneBlockController methodsFor: 'recovered'!
selectObject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'selected'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getPointedGOFor: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicGraphObject.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) capture: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            capturedPoint := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 'toChange'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            state := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            capturedObject := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) deselectActiveGO.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOAt: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            capturedObject := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := capturedObject.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) capture: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            capturedPoint := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 'selected'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            state := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := graphicObjects.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := capturedObject.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := graphicObjects.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := capturedObject.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := capturedObject.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            selectedObject := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRectSelected.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := RBFixPointWrapper.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWith: (recoveredStack1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := graphicObjects.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := selectedObject.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) graphObject: (recoveredStack1) changeToSensitivePointWrapper: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            selectedObject := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 136.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := selectedObject.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := widget.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := selectedObject.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            capturedObject := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205324ec; bytecode file offset 0xe2ee04"
!SGPaneBlockController methodsFor: 'recovered'!
button1UpLC: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := raster.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) rasterPoint: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := state.
    recoveredBlock13Value0
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'toChange'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := capturedObject.
    recoveredBlock25Value1 := (recoveredBlock25Value0) = (nil).
    state := 'selected'.
    'selected'
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'changing'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := owner.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            (recoveredBlock45Stack1) setModified.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isFrameSelected.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 62] ifFalse: [recoveredBlock45PC := 110].
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45Stack0 := raster.
            recoveredBlock45PC := 64.
        ].
        recoveredBlock45Step = 64 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg1.
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) rasterPoint: (recoveredBlock45Stack1).
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 71.
        ].
        recoveredBlock45Step = 71 ifTrue: [
            recoveredBlock45Stack0 := owner.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) graphicObject.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Stack1 := oldRect.
            recoveredBlock45PC := 77.
        ].
        recoveredBlock45Step = 77 ifTrue: [
            recoveredBlock45Stack2 := selectedObject.
            recoveredBlock45PC := 79.
        ].
        recoveredBlock45Step = 79 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) basicGraphObject.
            recoveredBlock45PC := 81.
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) logicFrame.
            recoveredBlock45PC := 83.
        ].
        recoveredBlock45Step = 83 ifTrue: [
            (recoveredBlock45Stack0) scaleFromFrame: (recoveredBlock45Stack1) to: (recoveredBlock45Stack2).
            recoveredBlock45PC := 85.
        ].
        recoveredBlock45Step = 85 ifTrue: [
            recoveredBlock45Stack0 := owner.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) graphicObject.
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45Stack1 := raster.
            recoveredBlock45PC := 91.
        ].
        recoveredBlock45Step = 91 ifTrue: [
            (recoveredBlock45Stack0) fitToRaster: (recoveredBlock45Stack1).
            recoveredBlock45PC := 93.
        ].
        recoveredBlock45Step = 93 ifTrue: [
            recoveredBlock45Stack0 := owner.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) graphicObject.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) interfaceElementGOs.
            recoveredBlock45PC := 99.
        ].
        recoveredBlock45Step = 99 ifTrue: [
            recoveredBlock45Stack1 := [:block2810d680Arg1 | 
    | block2810d680Value0 block2810d680Value1 |
    block2810d680Value0 := block2810d680Arg1.
    block2810d680Value1 := (block2810d680Value0) repositionConnectorNameGO.
    block2810d680Value1
].
            recoveredBlock45PC := 101.
        ].
        recoveredBlock45Step = 101 ifTrue: [
            recoveredBlock45PC := 108.
        ].
        recoveredBlock45Step = 108 ifTrue: [
            (recoveredBlock45Stack0) do: (recoveredBlock45Stack1).
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 111.
        ].
        recoveredBlock45Step = 111 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isBlockInterfaceElementSelected.
            recoveredBlock45PC := 113.
        ].
        recoveredBlock45Step = 113 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 116] ifFalse: [recoveredBlock45PC := 128].
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 117.
        ].
        recoveredBlock45Step = 117 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 120.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) moveBlockInterfaceElementTo: (recoveredBlock45Stack1).
            recoveredBlock45PC := 122.
        ].
        recoveredBlock45Step = 122 ifTrue: [
            recoveredLocal1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            recoveredBlock45Stack0 := capturedObject.
            recoveredBlock45PC := 130.
        ].
        recoveredBlock45Step = 130 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 133.
        ].
        recoveredBlock45Step = 133 ifTrue: [
            (recoveredBlock45Stack0) moveTo: (recoveredBlock45Stack1).
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Stack0 := capturedObject.
            recoveredBlock45PC := 137.
        ].
        recoveredBlock45Step = 137 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 140.
        ].
        recoveredBlock45Step = 140 ifTrue: [
            (recoveredBlock45Stack0) release: (recoveredBlock45Stack1).
            recoveredBlock45PC := 142.
        ].
        recoveredBlock45Step = 142 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 143 ifTrue: [
            recoveredBlock45Stack1 := capturedObject.
            recoveredBlock45PC := 145.
        ].
        recoveredBlock45Step = 145 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) unwrapGOAfterChange: (recoveredBlock45Stack1).
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            capturedObject := recoveredBlock45Stack0.
            recoveredBlock45PC := 149.
        ].
        recoveredBlock45Step = 149 ifTrue: [
            recoveredBlock45Stack0 := capturedObject.
            recoveredBlock45PC := 151.
        ].
        recoveredBlock45Step = 151 ifTrue: [
            selectedObject := recoveredBlock45Stack0.
            recoveredBlock45PC := 153.
        ].
        recoveredBlock45Step = 153 ifTrue: [
            recoveredBlock45Stack0 := capturedObject.
            recoveredBlock45PC := 155.
        ].
        recoveredBlock45Step = 155 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 156.
        ].
        recoveredBlock45Step = 156 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) = (recoveredBlock45Stack1).
            recoveredBlock45PC := 157.
        ].
        recoveredBlock45Step = 157 ifTrue: [
            recoveredBlock45PC := 158.
        ].
        recoveredBlock45Step = 158 ifTrue: [
            recoveredBlock45Stack0 := 'selected'.
            recoveredBlock45PC := 160.
        ].
        recoveredBlock45Step = 160 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Stack0.
            recoveredBlock45PC := 161.
        ].
        recoveredBlock45Step = 161 ifTrue: [
            state := recoveredBlock45Stack1.
            recoveredBlock45PC := 163.
        ].
        recoveredBlock45Step = 163 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack6 := 'selected'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack7 := [].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack8 := [
    (self) deselectActiveGO.
    state := 'normal'.
    'normal'
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) case: (recoveredStack2) do: (recoveredStack3) case: (recoveredStack4) do: (recoveredStack5) case: (recoveredStack6) do: (recoveredStack7) others: (recoveredStack8).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFrameSelected.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 199].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := oldRect.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) redraw.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20595dc8; bytecode file offset 0xe926d0"
!SGPaneBlockController methodsFor: 'recovered'!
button1MoveLC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [
    | recoveredBlock13Value0 |
    recoveredBlock13Value0 := state.
    recoveredBlock13Value0
].
    recoveredValue4 := [
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := capturedPoint.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            (recoveredBlock25Stack1 ~~ nil) ifTrue: [recoveredBlock25PC := 43] ifFalse: [recoveredBlock25PC := 38].
        ].
        recoveredBlock25Step = 38 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            capturedPoint := recoveredBlock25Stack1.
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isRectSelected.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 48] ifFalse: [recoveredBlock25PC := 84].
        ].
        recoveredBlock25Step = 48 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 49.
        ].
        recoveredBlock25Step = 49 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isFrameSelected.
            recoveredBlock25PC := 50.
        ].
        recoveredBlock25Step = 50 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 54] ifFalse: [recoveredBlock25PC := 64].
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack0 := selectedObject.
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) basicGraphObject.
            recoveredBlock25PC := 58.
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) logicFrame.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) deepCopy.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            oldRect := recoveredBlock25Stack0.
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            recoveredBlock25Stack0 := 'selected'.
            recoveredBlock25PC := 66.
        ].
        recoveredBlock25Step = 66 ifTrue: [
            state := recoveredBlock25Stack0.
            recoveredBlock25PC := 68.
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 69.
        ].
        recoveredBlock25Step = 69 ifTrue: [
            recoveredBlock25Stack1 := capturedPoint.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            (recoveredBlock25Stack0) selectObject: (recoveredBlock25Stack1).
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack0 := selectedObject.
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            (recoveredBlock25Stack0 ~~ nil) ifTrue: [recoveredBlock25PC := 80] ifFalse: [recoveredBlock25PC := 78].
        ].
        recoveredBlock25Step = 78 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 79.
        ].
        recoveredBlock25Step = 79 ifTrue: [
            ^recoveredBlock25Stack0
        ].
        recoveredBlock25Step = 80 ifTrue: [
            recoveredBlock25Stack0 := 'toChange'.
            recoveredBlock25PC := 82.
        ].
        recoveredBlock25Step = 82 ifTrue: [
            state := recoveredBlock25Stack0.
            recoveredBlock25PC := 84.
        ].
        recoveredBlock25Step = 84 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 85.
        ].
        recoveredBlock25Step = 85 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isRectSelected.
            recoveredBlock25PC := 86.
        ].
        recoveredBlock25Step = 86 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 90] ifFalse: [recoveredBlock25PC := 106].
        ].
        recoveredBlock25Step = 90 ifTrue: [
            recoveredBlock25Stack0 := selectedObject.
            recoveredBlock25PC := 92.
        ].
        recoveredBlock25Step = 92 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isMoving.
            recoveredBlock25PC := 94.
        ].
        recoveredBlock25Step = 94 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 98] ifFalse: [recoveredBlock25PC := 106].
        ].
        recoveredBlock25Step = 98 ifTrue: [
            recoveredBlock25Stack0 := 'selected'.
            recoveredBlock25PC := 100.
        ].
        recoveredBlock25Step = 100 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 101.
        ].
        recoveredBlock25Step = 101 ifTrue: [
            state := recoveredBlock25Stack1.
            recoveredBlock25PC := 103.
        ].
        recoveredBlock25Step = 103 ifTrue: [
            recoveredBlock25PC := 200.
        ].
        recoveredBlock25Step = 106 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 107.
        ].
        recoveredBlock25Step = 107 ifTrue: [
            recoveredBlock25Stack1 := capturedObject.
            recoveredBlock25PC := 109.
        ].
        recoveredBlock25Step = 109 ifTrue: [
            recoveredBlock25Stack2 := capturedObject.
            recoveredBlock25PC := 111.
        ].
        recoveredBlock25Step = 111 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) capturedPosition.
            recoveredBlock25PC := 113.
        ].
        recoveredBlock25Step = 113 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) wrapGOForChange: (recoveredBlock25Stack1) at: (recoveredBlock25Stack2).
            recoveredBlock25PC := 115.
        ].
        recoveredBlock25Step = 115 ifTrue: [
            capturedObject := recoveredBlock25Stack0.
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 118.
        ].
        recoveredBlock25Step = 118 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isBlockInterfaceElementSelected.
            recoveredBlock25PC := 120.
        ].
        recoveredBlock25Step = 120 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 124] ifFalse: [recoveredBlock25PC := 134].
        ].
        recoveredBlock25Step = 124 ifTrue: [
            recoveredBlock25Stack0 := self.
            recoveredBlock25PC := 125.
        ].
        recoveredBlock25Step = 125 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 128.
        ].
        recoveredBlock25Step = 128 ifTrue: [
            (recoveredBlock25Stack0) moveBlockInterfaceElementTo: (recoveredBlock25Stack1).
            recoveredBlock25PC := 130.
        ].
        recoveredBlock25Step = 130 ifTrue: [
            recoveredBlock25PC := 167.
        ].
        recoveredBlock25Step = 134 ifTrue: [
            recoveredBlock25Stack0 := capturedObject.
            recoveredBlock25PC := 136.
        ].
        recoveredBlock25Step = 136 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) basicGraphObject.
            recoveredBlock25PC := 138.
        ].
        recoveredBlock25Step = 138 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 139.
        ].
        recoveredBlock25Step = 139 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) isTextGO.
            recoveredBlock25PC := 144.
        ].
        recoveredBlock25Step = 144 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 148] ifFalse: [recoveredBlock25PC := 160].
        ].
        recoveredBlock25Step = 148 ifTrue: [
            recoveredBlock25Stack0 := capturedObject.
            recoveredBlock25PC := 150.
        ].
        recoveredBlock25Step = 150 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) manager.
            recoveredBlock25PC := 152.
        ].
        recoveredBlock25Step = 152 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal1.
            recoveredBlock25PC := 155.
        ].
        recoveredBlock25Step = 155 ifTrue: [
            recoveredBlock25Stack0 := (recoveredBlock25Stack0) textNotMovable: (recoveredBlock25Stack1).
            recoveredBlock25PC := 157.
        ].
        recoveredBlock25Step = 157 ifTrue: [
            (recoveredBlock25Stack0) ifTrue: [recoveredBlock25PC := 167] ifFalse: [recoveredBlock25PC := 160].
        ].
        recoveredBlock25Step = 160 ifTrue: [
            recoveredBlock25Stack0 := capturedObject.
            recoveredBlock25PC := 162.
        ].
        recoveredBlock25Step = 162 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 165.
        ].
        recoveredBlock25Step = 165 ifTrue: [
            (recoveredBlock25Stack0) moveTo: (recoveredBlock25Stack1).
            recoveredBlock25PC := 167.
        ].
        recoveredBlock25Step = 167 ifTrue: [
            recoveredBlock25Stack0 := nil.
            recoveredBlock25PC := 168.
        ].
        recoveredBlock25Step = 168 ifTrue: [
            recoveredBlock25Stack1 := capturedObject.
            recoveredBlock25PC := 170.
        ].
        recoveredBlock25Step = 170 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) basicGraphObject.
            recoveredBlock25PC := 172.
        ].
        recoveredBlock25Step = 172 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Stack1.
            recoveredBlock25PC := 173.
        ].
        recoveredBlock25Step = 173 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack2.
            recoveredBlock25PC := 176.
        ].
        recoveredBlock25Step = 176 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) isTextGO.
            recoveredBlock25PC := 178.
        ].
        recoveredBlock25Step = 178 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 182] ifFalse: [recoveredBlock25PC := 194].
        ].
        recoveredBlock25Step = 182 ifTrue: [
            recoveredBlock25Stack1 := capturedObject.
            recoveredBlock25PC := 184.
        ].
        recoveredBlock25Step = 184 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) manager.
            recoveredBlock25PC := 186.
        ].
        recoveredBlock25Step = 186 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 189.
        ].
        recoveredBlock25Step = 189 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) textNotMovable: (recoveredBlock25Stack2).
            recoveredBlock25PC := 191.
        ].
        recoveredBlock25Step = 191 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 200] ifFalse: [recoveredBlock25PC := 194].
        ].
        recoveredBlock25Step = 194 ifTrue: [
            recoveredBlock25PC := 195.
        ].
        recoveredBlock25Step = 195 ifTrue: [
            recoveredBlock25Stack0 := 'changing'.
            recoveredBlock25PC := 197.
        ].
        recoveredBlock25Step = 197 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Stack0.
            recoveredBlock25PC := 198.
        ].
        recoveredBlock25Step = 198 ifTrue: [
            state := recoveredBlock25Stack1.
            recoveredBlock25PC := 200.
        ].
        recoveredBlock25Step = 200 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack0.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    recoveredValue5 := [
    | recoveredBlock203Stack0 recoveredBlock203Stack1 recoveredBlock203Stack2 recoveredBlock203Stack3 recoveredBlock203PC recoveredBlock203Step recoveredBlock203Done recoveredBlock203Result |
    recoveredBlock203Stack0 := self.
    recoveredBlock203PC := 210.
    recoveredBlock203Done := false.
    [recoveredBlock203Done not] whileTrue: [
        recoveredBlock203Step := recoveredBlock203PC.
        recoveredBlock203Step = 210 ifTrue: [
            recoveredBlock203Stack0 := (recoveredBlock203Stack0) isBlockInterfaceElementSelected.
            recoveredBlock203PC := 212.
        ].
        recoveredBlock203Step = 212 ifTrue: [
            (recoveredBlock203Stack0) ifTrue: [recoveredBlock203PC := 216] ifFalse: [recoveredBlock203PC := 226].
        ].
        recoveredBlock203Step = 216 ifTrue: [
            recoveredBlock203Stack0 := self.
            recoveredBlock203PC := 217.
        ].
        recoveredBlock203Step = 217 ifTrue: [
            recoveredBlock203Stack1 := recoveredLocal2.
            recoveredBlock203PC := 220.
        ].
        recoveredBlock203Step = 220 ifTrue: [
            recoveredBlock203Stack0 := (recoveredBlock203Stack0) moveBlockInterfaceElementTo: (recoveredBlock203Stack1).
            recoveredBlock203PC := 222.
        ].
        recoveredBlock203Step = 222 ifTrue: [
            recoveredBlock203PC := 276.
        ].
        recoveredBlock203Step = 226 ifTrue: [
            recoveredBlock203Stack0 := self.
            recoveredBlock203PC := 227.
        ].
        recoveredBlock203Step = 227 ifTrue: [
            recoveredBlock203Stack0 := (recoveredBlock203Stack0) isFrameSelected.
            recoveredBlock203PC := 228.
        ].
        recoveredBlock203Step = 228 ifTrue: [
            (recoveredBlock203Stack0) ifTrue: [recoveredBlock203PC := 232] ifFalse: [recoveredBlock203PC := 241].
        ].
        recoveredBlock203Step = 232 ifTrue: [
            recoveredBlock203Stack0 := raster.
            recoveredBlock203PC := 234.
        ].
        recoveredBlock203Step = 234 ifTrue: [
            recoveredBlock203Stack1 := recoveredArg1.
            recoveredBlock203PC := 237.
        ].
        recoveredBlock203Step = 237 ifTrue: [
            recoveredBlock203Stack0 := (recoveredBlock203Stack0) rasterPoint: (recoveredBlock203Stack1).
            recoveredBlock203PC := 238.
        ].
        recoveredBlock203Step = 238 ifTrue: [
            recoveredLocal2 := recoveredBlock203Stack0.
            recoveredBlock203PC := 241.
        ].
        recoveredBlock203Step = 241 ifTrue: [
            recoveredBlock203Stack0 := nil.
            recoveredBlock203PC := 242.
        ].
        recoveredBlock203Step = 242 ifTrue: [
            recoveredBlock203Stack1 := capturedObject.
            recoveredBlock203PC := 244.
        ].
        recoveredBlock203Step = 244 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) basicGraphObject.
            recoveredBlock203PC := 246.
        ].
        recoveredBlock203Step = 246 ifTrue: [
            recoveredBlock203Stack2 := recoveredBlock203Stack1.
            recoveredBlock203PC := 247.
        ].
        recoveredBlock203Step = 247 ifTrue: [
            recoveredLocal1 := recoveredBlock203Stack2.
            recoveredBlock203PC := 250.
        ].
        recoveredBlock203Step = 250 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) isTextGO.
            recoveredBlock203PC := 252.
        ].
        recoveredBlock203Step = 252 ifTrue: [
            (recoveredBlock203Stack1) ifTrue: [recoveredBlock203PC := 256] ifFalse: [recoveredBlock203PC := 268].
        ].
        recoveredBlock203Step = 256 ifTrue: [
            recoveredBlock203Stack1 := capturedObject.
            recoveredBlock203PC := 258.
        ].
        recoveredBlock203Step = 258 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) manager.
            recoveredBlock203PC := 260.
        ].
        recoveredBlock203Step = 260 ifTrue: [
            recoveredBlock203Stack2 := recoveredLocal1.
            recoveredBlock203PC := 263.
        ].
        recoveredBlock203Step = 263 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) textNotMovable: (recoveredBlock203Stack2).
            recoveredBlock203PC := 265.
        ].
        recoveredBlock203Step = 265 ifTrue: [
            (recoveredBlock203Stack1) ifTrue: [recoveredBlock203PC := 276] ifFalse: [recoveredBlock203PC := 268].
        ].
        recoveredBlock203Step = 268 ifTrue: [
            recoveredBlock203PC := 269.
        ].
        recoveredBlock203Step = 269 ifTrue: [
            recoveredBlock203Stack0 := capturedObject.
            recoveredBlock203PC := 271.
        ].
        recoveredBlock203Step = 271 ifTrue: [
            recoveredBlock203Stack1 := recoveredLocal2.
            recoveredBlock203PC := 274.
        ].
        recoveredBlock203Step = 274 ifTrue: [
            recoveredBlock203Stack0 := (recoveredBlock203Stack0) moveTo: (recoveredBlock203Stack1).
            recoveredBlock203PC := 276.
        ].
        recoveredBlock203Step = 276 ifTrue: [
            recoveredBlock203Result := recoveredBlock203Stack0.
            recoveredBlock203Done := true.
        ].
    ].
    recoveredBlock203Result
].
    recoveredValue6 := [].
    (recoveredValue3) case: ('toChange') do: (recoveredValue4) case: ('changing') do: (recoveredValue5) others: (recoveredValue6).
    ^self
! !

