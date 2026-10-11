"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002770; bytecode file offset 0x8ffcfc"
!SGDummyDrawingWindow methodsFor: 'recovered'!
getBDEController
    ^self
! !

"ASDBase.ic method 0x200029a0; bytecode file offset 0x8ffcfc"
!SGDummyDrawingWindow methodsFor: 'recovered'!
owner
    ^self
! !

"ASDBase.ic method 0x2000d024; bytecode file offset 0x909ab8"
!SGDummyDrawingWindow methodsFor: 'recovered'!
dataConfigForElement: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2004403c; bytecode file offset 0x9451f8"
!SGDummyDrawingWindow methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('scrolledDrawingArea').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fd70; bytecode file offset 0x96c6ac"
!SGDummyDrawingWindow methodsFor: 'recovered'!
imageFile
    | recoveredValue0 |
    recoveredValue0 := imageFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070088; bytecode file offset 0x96cb7c"
!SGDummyDrawingWindow methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070768; bytecode file offset 0x96d06c"
!SGDummyDrawingWindow methodsFor: 'recovered'!
selectedCategory
    | recoveredValue0 |
    recoveredValue0 := selectedCategory.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073598; bytecode file offset 0x970b34"
!SGDummyDrawingWindow methodsFor: 'recovered'!
diagramStyleProvider
    ^nil
! !

"ASDBase.ic method 0x20073ca0; bytecode file offset 0x970b34"
!SGDummyDrawingWindow methodsFor: 'recovered'!
getCurrentImplementation
    ^nil
! !

"ASDBase.ic method 0x20073ee0; bytecode file offset 0x970b34"
!SGDummyDrawingWindow methodsFor: 'recovered'!
datamodelManager
    ^nil
! !

"ASDBase.ic method 0x20079f44; bytecode file offset 0x97c330"
!SGDummyDrawingWindow methodsFor: 'recovered'!
itemIsModifiable
    ^false
! !

"ASDBase.ic method 0x2007c6cc; bytecode file offset 0x97c330"
!SGDummyDrawingWindow methodsFor: 'recovered'!
isDisplayFrame
    ^false
! !

"ASDBase.ic method 0x2008bd70; bytecode file offset 0x98863c"
!SGDummyDrawingWindow methodsFor: 'recovered'!
printGIF
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := paneCtrl.
    recoveredValue1 := (self) imageFile.
    recoveredValue2 := (recoveredValue0) printGIFIntoFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008bd80; bytecode file offset 0x98863c"
!SGDummyDrawingWindow methodsFor: 'recovered'!
printBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := paneCtrl.
    recoveredValue1 := (self) imageFile.
    recoveredValue2 := (recoveredValue0) printBitmapIntoFile: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c62e8; bytecode file offset 0x9c2bec"
!SGDummyDrawingWindow methodsFor: 'recovered'!
imageFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    imageFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c66b0; bytecode file offset 0x9c3164"
!SGDummyDrawingWindow methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6c30; bytecode file offset 0x9c36ec"
!SGDummyDrawingWindow methodsFor: 'recovered'!
selectedCategory: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedCategory := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8680; bytecode file offset 0x9d4f3c"
!SGDummyDrawingWindow methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) contents.
    (recoveredValue2) controller: (self).
    ^self
! !

"ASDBase.ic method 0x200e17dc; bytecode file offset 0x9de130"
!SGDummyDrawingWindow methodsFor: 'recovered'!
raster
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_82122').
    recoveredValue1 := SGDefaultPaneCtrl.
    recoveredValue2 := (recoveredValue1) ascetDefaultRaster.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eb46c; bytecode file offset 0x9e7d28"
!SGDummyDrawingWindow methodsFor: 'recovered'!
printRTFWithSurroundingRectangle: recoveredArg1 diagramFrame: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := paneCtrl.
    recoveredValue1 := (self) imageFile.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) printRTFIntoFile: (recoveredValue1) withSurroundingRectangle: (recoveredValue2) diagramFrame: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20165ddc; bytecode file offset 0xa62698"
!SGDummyDrawingWindow methodsFor: 'recovered'!
elementAliasName: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) item.
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
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementAliasName: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b4564; bytecode file offset 0xab0e60"
!SGDummyDrawingWindow methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) item.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := ('Item: ') , (recoveredValue4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204616ac; bytecode file offset 0xd5dfcc"
!SGDummyDrawingWindow methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := source.
    recoveredBlock4Value1 := (recoveredBlock4Value0) notNil.
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'source is not allowed to be nil'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) hide.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := SGPaneController.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithOwner: (recoveredStack1) widget: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            paneCtrl := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := CgRGBColor.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) white.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) backgroundColor: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := paneCtrl.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) actualHierarchy: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := paneCtrl.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) coordinateRect.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := Rectangle.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := ASDBlockDiagramEditorOptions.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionDrawingAreaSize.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin: (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsPoint: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := ASDBlockDiagramEditorOptions.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) matchingDrawingAreaSize: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e7c90; bytecode file offset 0xee4630"
!SGDummyDrawingWindow methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 recoveredBlock24Value16 recoveredBlock24Value17 recoveredBlock24Value18 recoveredBlock24Value19 recoveredBlock24Value20 recoveredBlock24Value21 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    (recoveredBlock24Value1) title: ('Window').
    recoveredBlock24Value2 := recoveredBlock24Value0.
    recoveredBlock24Value3 := MWMDECORALL.
    recoveredBlock24Value4 := MWMDECORRESIZEH.
    recoveredBlock24Value5 := (recoveredBlock24Value3) | (recoveredBlock24Value4).
    recoveredBlock24Value6 := MWMDECORTITLE.
    recoveredBlock24Value7 := (recoveredBlock24Value5) | (recoveredBlock24Value6).
    recoveredBlock24Value8 := MWMDECORMENU.
    recoveredBlock24Value9 := (recoveredBlock24Value7) | (recoveredBlock24Value8).
    recoveredBlock24Value10 := MWMDECORMINIMIZE.
    recoveredBlock24Value11 := (recoveredBlock24Value9) | (recoveredBlock24Value10).
    recoveredBlock24Value12 := MWMDECORMAXIMIZE.
    recoveredBlock24Value13 := (recoveredBlock24Value11) | (recoveredBlock24Value12).
    (recoveredBlock24Value2) mwmDecorations: (recoveredBlock24Value13).
    recoveredBlock24Value14 := recoveredBlock24Value0.
    recoveredBlock24Value15 := recoveredLocal7.
    recoveredBlock24Value16 := (25) * (recoveredBlock24Value15).
    recoveredBlock24Value17 := (recoveredBlock24Value16) rounded.
    (recoveredBlock24Value14) height: (recoveredBlock24Value17).
    recoveredBlock24Value18 := recoveredLocal8.
    recoveredBlock24Value19 := (106) * (recoveredBlock24Value18).
    recoveredBlock24Value20 := (recoveredBlock24Value19) rounded.
    recoveredBlock24Value21 := (recoveredBlock24Value0) width: (recoveredBlock24Value20).
    recoveredBlock24Value21
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'topShell'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Value0 recoveredBlock151Value1 recoveredBlock151Value2 recoveredBlock151Value3 recoveredBlock151Value4 recoveredBlock151Value5 recoveredBlock151Value6 recoveredBlock151Value7 recoveredBlock151Value8 recoveredBlock151Value9 recoveredBlock151Value10 recoveredBlock151Value11 recoveredBlock151Value12 |
    recoveredBlock151Value0 := recoveredBlock151Arg1.
    recoveredBlock151Value1 := recoveredBlock151Value0.
    recoveredBlock151Value2 := XmAUTOMATIC.
    (recoveredBlock151Value1) scrollingPolicy: (recoveredBlock151Value2).
    recoveredBlock151Value3 := recoveredBlock151Value0.
    recoveredBlock151Value4 := XmASNEEDED.
    (recoveredBlock151Value3) scrollBarDisplayPolicy: (recoveredBlock151Value4).
    recoveredBlock151Value5 := recoveredBlock151Value0.
    recoveredBlock151Value6 := recoveredLocal7.
    recoveredBlock151Value7 := (327) * (recoveredBlock151Value6).
    recoveredBlock151Value8 := (recoveredBlock151Value7) rounded.
    (recoveredBlock151Value5) height: (recoveredBlock151Value8).
    recoveredBlock151Value9 := recoveredLocal8.
    recoveredBlock151Value10 := (432) * (recoveredBlock151Value9).
    recoveredBlock151Value11 := (recoveredBlock151Value10) rounded.
    recoveredBlock151Value12 := (recoveredBlock151Value0) width: (recoveredBlock151Value11).
    recoveredBlock151Value12
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := 'scrolledWindow'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := 'scrolledDrawingArea'.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := [:block2811aec8Arg1 | 
    | block2811aec8Value0 block2811aec8Value1 block2811aec8Value2 block2811aec8Value3 block2811aec8Value4 block2811aec8Value5 block2811aec8Value6 block2811aec8Value7 block2811aec8Value8 block2811aec8Value9 block2811aec8Value10 block2811aec8Value11 |
    block2811aec8Value0 := block2811aec8Arg1.
    block2811aec8Value1 := block2811aec8Value0.
    (block2811aec8Value1) borderWidth: (1).
    block2811aec8Value2 := block2811aec8Value0.
    block2811aec8Value3 := ASDBlockDiagramEditorOptions.
    block2811aec8Value4 := (block2811aec8Value3) instance.
    block2811aec8Value5 := (block2811aec8Value4) optionDrawingAreaSize.
    block2811aec8Value6 := (block2811aec8Value5) y.
    (block2811aec8Value2) height: (block2811aec8Value6).
    block2811aec8Value7 := ASDBlockDiagramEditorOptions.
    block2811aec8Value8 := (block2811aec8Value7) instance.
    block2811aec8Value9 := (block2811aec8Value8) optionDrawingAreaSize.
    block2811aec8Value10 := (block2811aec8Value9) x.
    block2811aec8Value11 := (block2811aec8Value0) width: (block2811aec8Value10).
    block2811aec8Value11
].
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBScrolledDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'scrolledDrawingArea'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 'label'.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := [:recoveredBlock272Arg1 | 
    | recoveredBlock272Value0 recoveredBlock272Value1 recoveredBlock272Value2 recoveredBlock272Value3 recoveredBlock272Value4 recoveredBlock272Value5 recoveredBlock272Value6 recoveredBlock272Value7 recoveredBlock272Value8 recoveredBlock272Value9 |
    recoveredBlock272Value0 := recoveredBlock272Arg1.
    recoveredBlock272Value1 := recoveredBlock272Value0.
    (recoveredBlock272Value1) labelString: ('Operation in Progress').
    recoveredBlock272Value2 := recoveredBlock272Value0.
    recoveredBlock272Value3 := recoveredLocal7.
    recoveredBlock272Value4 := (25) * (recoveredBlock272Value3).
    recoveredBlock272Value5 := (recoveredBlock272Value4) rounded.
    (recoveredBlock272Value2) height: (recoveredBlock272Value5).
    recoveredBlock272Value6 := recoveredLocal8.
    recoveredBlock272Value7 := (100) * (recoveredBlock272Value6).
    recoveredBlock272Value8 := (recoveredBlock272Value7) rounded.
    recoveredBlock272Value9 := (recoveredBlock272Value0) width: (recoveredBlock272Value8).
    recoveredBlock272Value9
].
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := 'label'.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := [:recoveredBlock327Arg1 | 
    | recoveredBlock327Value0 recoveredBlock327Value1 recoveredBlock327Value2 |
    recoveredBlock327Value0 := recoveredBlock327Arg1.
    recoveredBlock327Value1 := recoveredLocal4.
    recoveredBlock327Value2 := (recoveredBlock327Value0) workWindow: (recoveredBlock327Value1).
    recoveredBlock327Value2
].
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := [:block2811aeecArg1 | 
    | block2811aeecValue0 block2811aeecValue1 block2811aeecValue2 block2811aeecValue3 block2811aeecValue4 block2811aeecValue5 block2811aeecValue6 block2811aeecValue7 block2811aeecValue8 |
    block2811aeecValue0 := block2811aeecArg1.
    block2811aeecValue1 := block2811aeecValue0.
    block2811aeecValue2 := XmATTACHFORM.
    (block2811aeecValue1) bottomAttachment: (block2811aeecValue2).
    block2811aeecValue3 := block2811aeecValue0.
    block2811aeecValue4 := XmATTACHFORM.
    (block2811aeecValue3) topAttachment: (block2811aeecValue4).
    block2811aeecValue5 := block2811aeecValue0.
    block2811aeecValue6 := XmATTACHFORM.
    (block2811aeecValue5) leftAttachment: (block2811aeecValue6).
    block2811aeecValue7 := XmATTACHFORM.
    block2811aeecValue8 := (block2811aeecValue0) rightAttachment: (block2811aeecValue7).
    block2811aeecValue8
].
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

