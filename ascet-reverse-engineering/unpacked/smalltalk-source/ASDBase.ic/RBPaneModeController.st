"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009128; bytecode file offset 0x908be4"
!RBPaneModeController methodsFor: 'recovered'!
getHierarchyWrapper
    | recoveredValue0 |
    recoveredValue0 := (self) actualHierarchy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002e0c4; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
selectedGOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (recoveredValue0) selectedGOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034c64; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
capturedPoint
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (recoveredValue0) capturedPoint.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034cf4; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
rasterSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := (recoveredValue0) rasterSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035604; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
focus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (recoveredValue0) focus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200358c4; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
getAllGOs
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := (recoveredValue0) getAllGOs.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035db4; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
losingFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (recoveredValue0) losingFocus.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037754; bytecode file offset 0x934580"
!RBPaneModeController methodsFor: 'recovered'!
printingSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := (recoveredValue0) printingSize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20039360; bytecode file offset 0x935c54"
!RBPaneModeController methodsFor: 'recovered'!
getMenuForObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getMenu.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005628c; bytecode file offset 0x952c58"
!RBPaneModeController methodsFor: 'recovered'!
doubleClickOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) doubleClickAction.
    ^self
! !

"ASDBase.ic method 0x200579e8; bytecode file offset 0x956284"
!RBPaneModeController methodsFor: 'recovered'!
moveDelta: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) moveDelta: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058118; bytecode file offset 0x956284"
!RBPaneModeController methodsFor: 'recovered'!
printZoomFactor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) printZoomFactor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20059358; bytecode file offset 0x956284"
!RBPaneModeController methodsFor: 'recovered'!
menuForPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) menuForPoint: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b99c; bytecode file offset 0x958548"
!RBPaneModeController methodsFor: 'recovered'!
initializeBuildModeController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBBuildMode.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b9bc; bytecode file offset 0x958548"
!RBPaneModeController methodsFor: 'recovered'!
initializeNormalModeController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBMoveAndSelectionMode.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bbcc; bytecode file offset 0x958548"
!RBPaneModeController methodsFor: 'recovered'!
initializeSelectedModeController
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBSelectedMode.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064c54; bytecode file offset 0x961970"
!RBPaneModeController methodsFor: 'recovered'!
removeSelectedGOs
    | recoveredValue0 |
    recoveredValue0 := (self) currentMode.
    (recoveredValue0) removeSelectedGOsWithoutGraphicsModified.
    ^self
! !

"ASDBase.ic method 0x2006a1e8; bytecode file offset 0x966bdc"
!RBPaneModeController methodsFor: 'recovered'!
currentMode
    | recoveredValue0 |
    recoveredValue0 := currentMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aae4; bytecode file offset 0x967a18"
!RBPaneModeController methodsFor: 'recovered'!
modeDictionary
    | recoveredValue0 |
    recoveredValue0 := modeDictionary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c554; bytecode file offset 0x9692b0"
!RBPaneModeController methodsFor: 'recovered'!
raster
    | recoveredValue0 |
    recoveredValue0 := raster.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d218; bytecode file offset 0x969c04"
!RBPaneModeController methodsFor: 'recovered'!
printerServer
    | recoveredValue0 |
    recoveredValue0 := printerServer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e684; bytecode file offset 0x96af48"
!RBPaneModeController methodsFor: 'recovered'!
actualHierarchy
    | recoveredValue0 |
    recoveredValue0 := actualHierarchy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077554; bytecode file offset 0x9757c8"
!RBPaneModeController methodsFor: 'recovered'!
isPaneModeController
    ^true
! !

"ASDBase.ic method 0x20087140; bytecode file offset 0x9839fc"
!RBPaneModeController methodsFor: 'recovered'!
undoRedo: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := (self) currentMode.
    (recoveredValue0) defaultState.
    ^self
! !

"ASDBase.ic method 0x20087724; bytecode file offset 0x983fe0"
!RBPaneModeController methodsFor: 'recovered'!
drawLastObjectAgainForScrolling
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := (self) currentMode.
    (recoveredValue0) drawLastObjectAgainForScrolling.
    ^self
! !

"ASDBase.ic method 0x200978f4; bytecode file offset 0x995850"
!RBPaneModeController methodsFor: 'recovered'!
printOnPrinter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) printOnPrinter: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098f44; bytecode file offset 0x995850"
!RBPaneModeController methodsFor: 'recovered'!
keyReleased: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) keyReleased: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200999a0; bytecode file offset 0x996258"
!RBPaneModeController methodsFor: 'recovered'!
changeObjectToActiveState: recoveredArg1 display: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) changeToActiveState: (recoveredValue1) display: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b4168; bytecode file offset 0x9b0a2c"
!RBPaneModeController methodsFor: 'recovered'!
isBuildMode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentMode.
    recoveredValue1 := (self) modeDictionary.
    recoveredValue2 := (recoveredValue1) at: ('build').
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c17b4; bytecode file offset 0x9beac8"
!RBPaneModeController methodsFor: 'recovered'!
modeDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modeDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c34ec; bytecode file offset 0x9bfde0"
!RBPaneModeController methodsFor: 'recovered'!
raster: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    raster := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3980; bytecode file offset 0x9c058c"
!RBPaneModeController methodsFor: 'recovered'!
printerServer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printerServer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c400c; bytecode file offset 0x9c0bf0"
!RBPaneModeController methodsFor: 'recovered'!
printSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    printSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4640; bytecode file offset 0x9c11bc"
!RBPaneModeController methodsFor: 'recovered'!
numberOfPages: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numberOfPages := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2a54; bytecode file offset 0x9cf360"
!RBPaneModeController methodsFor: 'recovered'!
buildMode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) modeDictionary.
    recoveredValue1 := (recoveredValue0) at: ('build').
    (self) currentMode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200df9f8; bytecode file offset 0x9dc2b8"
!RBPaneModeController methodsFor: 'recovered'!
printBitmapIntoFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := (recoveredValue0) surroundingRectangle.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) unloadRect: (recoveredValue2) intoFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20103920; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1DownAltLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1DownAltLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103938; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1DownControlLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1DownControlLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103950; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
moveForScrolling: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) moveForScrolling: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103968; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button2DoubleClickLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button2DoubleClickLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103980; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
mouseMoveLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) mouseMoveLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103998; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1UpLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1UpLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201039b0; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1DownShiftLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1DownShiftLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201039c8; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1MoveLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1MoveLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201039e0; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button2DownLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button2DownLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201039f8; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button3DownLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button3DownLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20103a10; bytecode file offset 0xa002d4"
!RBPaneModeController methodsFor: 'recovered'!
button1DownLC: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) raster.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) currentMode.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) button1DownLC: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20104eac; bytecode file offset 0xa01790"
!RBPaneModeController methodsFor: 'recovered'!
print
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBPrinterServer.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    (self) printerServer: (recoveredValue1).
    recoveredValue2 := (self) printerServer.
    (recoveredValue2) print.
    ^self
! !

"ASDBase.ic method 0x20104ec8; bytecode file offset 0xa01790"
!RBPaneModeController methodsFor: 'recovered'!
printPane
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBPrinterServer.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    (self) printerServer: (recoveredValue1).
    recoveredValue2 := (self) printerServer.
    (recoveredValue2) printPane.
    ^self
! !

"ASDBase.ic method 0x2011dd64; bytecode file offset 0xa1a648"
!RBPaneModeController methodsFor: 'recovered'!
printOnRect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBPrinterServer.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    (self) printerServer: (recoveredValue1).
    recoveredValue2 := (self) printerServer.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOnRect: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011dd80; bytecode file offset 0xa1a648"
!RBPaneModeController methodsFor: 'recovered'!
printScale: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBPrinterServer.
    recoveredValue1 := (recoveredValue0) createFor: (self).
    (self) printerServer: (recoveredValue1).
    recoveredValue2 := (self) printerServer.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printScale: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012a1e0; bytecode file offset 0xa26acc"
!RBPaneModeController methodsFor: 'recovered'!
printSettings
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := printSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            printSettings := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := printSettings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20141584; bytecode file offset 0xa3df70"
!RBPaneModeController methodsFor: 'recovered'!
graphicObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) actualHierarchy.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) contents.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20142984; bytecode file offset 0xa3f250"
!RBPaneModeController methodsFor: 'recovered'!
multipleSelectedGOs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) modeDictionary.
    recoveredValue1 := (recoveredValue0) at: ('normal').
    (self) currentMode: (recoveredValue1).
    recoveredValue2 := (self) currentMode.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) changeToComposingWith: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014ae8c; bytecode file offset 0xa47754"
!RBPaneModeController methodsFor: 'recovered'!
selectedGO: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) modeDictionary.
    recoveredValue1 := (recoveredValue0) at: ('select').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) selectedGO: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) currentMode: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2015e660; bytecode file offset 0xa5af1c"
!RBPaneModeController methodsFor: 'recovered'!
isGraphicModified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_60792'.
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
            recoveredStack1 := modifyFlag.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := modifyFlag.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201654b4; bytecode file offset 0xa61d7c"
!RBPaneModeController methodsFor: 'recovered'!
actualHierarchy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    actualHierarchy := recoveredValue0.
    recoveredValue1 := ('Kli') == ('Call_65141').
    recoveredValue2 := (self) owner.
    recoveredValue3 := (self) owner.
    recoveredValue4 := (recoveredValue3) selectedCategory.
    (recoveredValue2) selectedCategory: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20174ee0; bytecode file offset 0xa717a0"
!RBPaneModeController methodsFor: 'recovered'!
graphicsModified: recoveredArg1
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
            modifyFlag := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'call_90687'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) changed.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201784e0; bytecode file offset 0xa74da0"
!RBPaneModeController methodsFor: 'recovered'!
changeObjectFromActiveState: recoveredArg1 display: recoveredArg2
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
            recoveredStack2 := 'wb_sifting'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeFromActiveState: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018fef8; bytecode file offset 0xa8c7c0"
!RBPaneModeController methodsFor: 'recovered'!
normalMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) modeDictionary.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'normal'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) modeDictionary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'normal'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) currentMode: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201de8b0; bytecode file offset 0xadb178"
!RBPaneModeController methodsFor: 'recovered'!
selectAll
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) normalMode.
    recoveredValue0 := (self) graphicObjects.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) children.
    recoveredBlock8Value2 := (self) setSelectStateWithGOs: (recoveredBlock8Value1).
    recoveredBlock8Value3 := recoveredBlock8Value2.
    recoveredLocal1 := recoveredBlock8Value3.
    recoveredBlock8Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201f5c20; bytecode file offset 0xaf24e0"
!RBPaneModeController methodsFor: 'recovered'!
currentMode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) defaultState.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            currentMode := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) changed.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226f58; bytecode file offset 0xb23834"
!RBPaneModeController methodsFor: 'recovered'!
buildGO: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) modeDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'build'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) currentMode: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) buildGO: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280dc704Arg1 | 
    | block280dc704Value0 block280dc704Value1 |
    block280dc704Value0 := block280dc704Arg1.
    block280dc704Value1 := (block280dc704Value0) setInputFocus.
    block280dc704Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"ASDBase.ic method 0x20261fac; bytecode file offset 0xb5e880"
!RBPaneModeController methodsFor: 'recovered'!
displayContentsWithoutCurrentGOIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1) rects: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedGOs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1) without: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c930; bytecode file offset 0xb6920c"
!RBPaneModeController methodsFor: 'recovered'!
keyPressed: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := XKTab.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
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
            recoveredStack2 := (recoveredStack2) state.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := ShiftMask.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := ShiftMask.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) not.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) controlTabKeyInputForward: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMode.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) keyPressed: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) setInputFocus.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029e618; bytecode file offset 0xb9aedc"
!RBPaneModeController methodsFor: 'recovered'!
goIsSelected: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) graphObject.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) graphObject.
    recoveredBlock5Value4 := (recoveredBlock5Value1) = (recoveredBlock5Value3).
    recoveredBlock5Value4
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ae63c; bytecode file offset 0xbaaf08"
!RBPaneModeController methodsFor: 'recovered'!
setSelectStateWithGO: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) normalMode.
    recoveredValue0 := (self) currentMode.
    (recoveredValue0) unmarkMarkedGOs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack4 := true.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) changeObjectToActiveState: (recoveredBlock13Stack3) display: (recoveredBlock13Stack4).
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 41] ifFalse: [recoveredBlock13PC := 34].
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) selectedGO: (recoveredBlock13Stack2).
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x202c61b4; bytecode file offset 0xbc2a88"
!RBPaneModeController methodsFor: 'recovered'!
displayContentsIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) displayOn: (recoveredStack1) rects: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (self) widget.
    recoveredBlock25Value2 := (recoveredBlock25Value0) displayOn: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) displayContentsIn: (recoveredStack1).
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

"ASDBase.ic method 0x2037c3a0; bytecode file offset 0xc78c98"
!RBPaneModeController methodsFor: 'recovered'!
unloadRect: recoveredArg1 intoFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) window.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) corner.
    recoveredValue5 := (recoveredValue4) x.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) corner.
    recoveredValue8 := (recoveredValue7) y.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := (recoveredValue9) depth.
    recoveredValue11 := (recoveredValue2) createPixmap: (recoveredValue5) height: (recoveredValue8) depth: (recoveredValue10).
    recoveredLocal3 := recoveredValue11.
    recoveredValue12 := (self) widget.
    recoveredValue13 := (recoveredValue12) primaryWidget.
    recoveredValue14 := recoveredLocal3.
    (recoveredValue13) window: (recoveredValue14).
    recoveredValue15 := (self) widget.
    (recoveredValue15) displayBeforeContentIsDisplayed.
    recoveredValue16 := (self) graphicObjects.
    recoveredValue17 := (self) widget.
    (recoveredValue16) displayOn: (recoveredValue17).
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue18) getDeviceIndependentImage: (recoveredValue19).
    recoveredLocal4 := recoveredValue20.
    recoveredValue21 := recoveredLocal3.
    (recoveredValue21) freePixmap.
    recoveredValue22 := (self) widget.
    recoveredValue23 := (recoveredValue22) primaryWidget.
    recoveredValue24 := recoveredLocal2.
    (recoveredValue23) window: (recoveredValue24).
    recoveredValue25 := CgWinBMPFileFormat.
    recoveredValue26 := (recoveredValue25) new.
    recoveredLocal1 := recoveredValue26.
    recoveredValue27 := recoveredLocal1.
    recoveredValue28 := recoveredLocal4.
    recoveredValue29 := recoveredArg2.
    recoveredValue30 := (recoveredValue27) unload: (recoveredValue28) intoFile: (recoveredValue29).
    ^recoveredValue30
! !

"ASDBase.ic method 0x203da800; bytecode file offset 0xcd7114"
!RBPaneModeController methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) widgetController: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'call_84367'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 'normal'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := (recoveredStack5) initializeNormalModeController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'select'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := (recoveredStack5) initializeSelectedModeController.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := 'build'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) initializeBuildModeController.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack3) at: (recoveredStack4) put: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) modeDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) modeDictionary.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'normal'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) currentMode: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) graphicsModified: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := RBRaster.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) rasterSize.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithSize: (recoveredStack2) rasterRate: (recoveredStack3) activate: (recoveredStack4) display: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) raster: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f1b08; bytecode file offset 0xcee3f0"
!RBPaneModeController methodsFor: 'recovered'!
setSelectStateWithGOs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setSelectStateWithGO: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) multipleSelectedGOs: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeObjectToActiveState: (recoveredStack2) display: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 44] ifFalse: [recoveredLocal1 := nil. recoveredPC := 76]] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) redrawGOs: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) addMarkedGOs: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20464dc0; bytecode file offset 0xd616b0"
!RBPaneModeController methodsFor: 'recovered'!
button1DoubleClickLC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) raster.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) rasterPoint: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) button1DoubleClickLC: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) modeDictionary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'select'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentMode.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedGO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) changeObjectFromActiveState: (recoveredStack1) display: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Arg1.
            recoveredBlock67PC := 75.
        ].
        recoveredBlock67Step = 75 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack3 := true.
            recoveredBlock67PC := 77.
        ].
        recoveredBlock67Step = 77 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) changeToEditState: (recoveredBlock67Stack2) display: (recoveredBlock67Stack3).
            recoveredBlock67PC := 79.
        ].
        recoveredBlock67Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock67Stack1.
            recoveredBlock67PC := 82.
        ].
        recoveredBlock67Step = 82 ifTrue: [
            recoveredBlock67Stack1 := recoveredLocal1.
            recoveredBlock67PC := 85.
        ].
        recoveredBlock67Step = 85 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 86.
        ].
        recoveredBlock67Step = 86 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) ~= (recoveredBlock67Stack2).
            recoveredBlock67PC := 87.
        ].
        recoveredBlock67Step = 87 ifTrue: [
            (recoveredBlock67Stack1) ifTrue: [recoveredBlock67PC := 90] ifFalse: [recoveredBlock67PC := 100].
        ].
        recoveredBlock67Step = 90 ifTrue: [
            recoveredBlock67Stack1 := self.
            recoveredBlock67PC := 91.
        ].
        recoveredBlock67Step = 91 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal1.
            recoveredBlock67PC := 94.
        ].
        recoveredBlock67Step = 94 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) selectedGO: (recoveredBlock67Stack2).
            recoveredBlock67PC := 96.
        ].
        recoveredBlock67Step = 96 ifTrue: [
            recoveredBlock67PC := 114.
        ].
        recoveredBlock67Step = 100 ifTrue: [
            recoveredBlock67Stack1 := self.
            recoveredBlock67PC := 101.
        ].
        recoveredBlock67Step = 101 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Arg1.
            recoveredBlock67PC := 102.
        ].
        recoveredBlock67Step = 102 ifTrue: [
            recoveredBlock67Stack3 := true.
            recoveredBlock67PC := 103.
        ].
        recoveredBlock67Step = 103 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) changeObjectToActiveState: (recoveredBlock67Stack2) display: (recoveredBlock67Stack3).
            recoveredBlock67PC := 105.
        ].
        recoveredBlock67Step = 105 ifTrue: [
            recoveredLocal1 := recoveredBlock67Stack1.
            recoveredBlock67PC := 108.
        ].
        recoveredBlock67Step = 108 ifTrue: [
            recoveredBlock67Stack1 := self.
            recoveredBlock67PC := 109.
        ].
        recoveredBlock67Step = 109 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal1.
            recoveredBlock67PC := 112.
        ].
        recoveredBlock67Step = 112 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) selectedGO: (recoveredBlock67Stack2).
            recoveredBlock67PC := 114.
        ].
        recoveredBlock67Step = 114 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack1.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048ccd4; bytecode file offset 0xd895b4"
!RBPaneModeController methodsFor: 'recovered'!
numberOfPages
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numberOfPages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) zoomingFactor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) widget.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) widget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) zoomingFactor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) rounded.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := #[102 102 102 102 102 102 14 64].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := widget.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) pageSize.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) y.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) rounded.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 recoveredBlock65Value6 recoveredBlock65Value7 |
    recoveredBlock65Value0 := recoveredLocal3.
    recoveredBlock65Value1 := widget.
    recoveredBlock65Value2 := (recoveredBlock65Value1) pageSize.
    recoveredBlock65Value3 := (recoveredBlock65Value2) x.
    recoveredBlock65Value4 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock65Value3).
    recoveredBlock65Value5 := (recoveredBlock65Value4) rounded.
    recoveredBlock65Value6 := [:recoveredBlock65Block88Arg1 | 
    | recoveredBlock65Block88Value0 recoveredBlock65Block88Value1 recoveredBlock65Block88Value2 |
    recoveredBlock65Block88Value0 := recoveredLocal1.
    recoveredBlock65Block88Value1 := (recoveredBlock65Block88Value0) + (1).
    recoveredBlock65Block88Value2 := recoveredBlock65Block88Value1.
    recoveredLocal1 := recoveredBlock65Block88Value2.
    recoveredBlock65Block88Value1
].
    recoveredBlock65Value7 := (0) to: (recoveredBlock65Value0) by: (recoveredBlock65Value5) do: (recoveredBlock65Value6).
    recoveredBlock65Value7
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) to: (recoveredStack2) by: (recoveredStack3) do: (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            numberOfPages := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := numberOfPages.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20498474; bytecode file offset 0xd94d6c"
!RBPaneModeController methodsFor: 'recovered'!
printOnPrinter: recoveredArg1 inRect: recoveredArg2 pageNumber: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'all'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'pages'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'scale'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) printPage: (recoveredStack1) onPrinter: (recoveredStack2) inRect: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'user'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'pages'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) printSettings.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'pages'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) printPage: (recoveredStack1) onPrinter: (recoveredStack2) inRect: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) printSettings.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := 'pages'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) numberOfPages: (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) printOnPrinter: (recoveredStack1) inRect: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f38d8; bytecode file offset 0xdf01cc"
!RBPaneModeController methodsFor: 'recovered'!
printPage: recoveredArg1 onPrinter: recoveredArg2 inRect: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) width.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) zoomingFactor.
    recoveredValue4 := (100) / (recoveredValue3).
    recoveredValue5 := (recoveredValue1) * (recoveredValue4).
    recoveredValue6 := (recoveredValue5) rounded.
    recoveredLocal3 := recoveredValue6.
    recoveredValue7 := (self) widget.
    recoveredValue8 := (recoveredValue7) height.
    recoveredValue9 := (self) widget.
    recoveredValue10 := (recoveredValue9) zoomingFactor.
    recoveredValue11 := (100) / (recoveredValue10).
    recoveredValue12 := (recoveredValue8) * (recoveredValue11).
    recoveredValue13 := (recoveredValue12) rounded.
    recoveredLocal2 := recoveredValue13.
    recoveredLocal1 := 1.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := widget.
    recoveredValue16 := (recoveredValue15) pageSize.
    recoveredValue17 := (recoveredValue16) y.
    recoveredValue18 := (#[102 102 102 102 102 102 14 64]) * (recoveredValue17).
    recoveredValue19 := (recoveredValue18) rounded.
    recoveredValue20 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 |
    recoveredBlock59Value0 := recoveredLocal3.
    recoveredBlock59Value1 := widget.
    recoveredBlock59Value2 := (recoveredBlock59Value1) pageSize.
    recoveredBlock59Value3 := (recoveredBlock59Value2) x.
    recoveredBlock59Value4 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock59Value3).
    recoveredBlock59Value5 := (recoveredBlock59Value4) rounded.
    recoveredBlock59Value6 := [:recoveredBlock59Block82Arg1 | 
    | recoveredBlock59Block82Local1 recoveredBlock59Block82Stack0 recoveredBlock59Block82Stack1 recoveredBlock59Block82Stack2 recoveredBlock59Block82Stack3 recoveredBlock59Block82Stack4 recoveredBlock59Block82Stack5 recoveredBlock59Block82Stack6 recoveredBlock59Block82Stack7 recoveredBlock59Block82Stack8 recoveredBlock59Block82PC recoveredBlock59Block82Step recoveredBlock59Block82Done recoveredBlock59Block82Result |
    recoveredBlock59Block82Stack0 := self.
    recoveredBlock59Block82PC := 88.
    recoveredBlock59Block82Done := false.
    [recoveredBlock59Block82Done not] whileTrue: [
        recoveredBlock59Block82Step := recoveredBlock59Block82PC.
        recoveredBlock59Block82Step = 88 ifTrue: [
            recoveredBlock59Block82Stack1 := recoveredLocal1.
            recoveredBlock59Block82PC := 91.
        ].
        recoveredBlock59Block82Step = 91 ifTrue: [
            recoveredBlock59Block82Stack2 := recoveredArg1.
            recoveredBlock59Block82PC := 94.
        ].
        recoveredBlock59Block82Step = 94 ifTrue: [
            recoveredBlock59Block82Stack1 := (recoveredBlock59Block82Stack1) = (recoveredBlock59Block82Stack2).
            recoveredBlock59Block82PC := 95.
        ].
        recoveredBlock59Block82Step = 95 ifTrue: [
            (recoveredBlock59Block82Stack1) ifTrue: [recoveredBlock59Block82PC := 98] ifFalse: [recoveredBlock59Block82PC := 152].
        ].
        recoveredBlock59Block82Step = 98 ifTrue: [
            recoveredBlock59Block82Stack1 := self.
            recoveredBlock59Block82PC := 99.
        ].
        recoveredBlock59Block82Step = 99 ifTrue: [
            recoveredBlock59Block82Stack1 := (recoveredBlock59Block82Stack1) graphicObjects.
            recoveredBlock59Block82PC := 101.
        ].
        recoveredBlock59Block82Step = 101 ifTrue: [
            recoveredBlock59Block82Stack2 := Rectangle.
            recoveredBlock59Block82PC := 103.
        ].
        recoveredBlock59Block82Step = 103 ifTrue: [
            recoveredBlock59Block82Stack3 := recoveredBlock59Block82Arg1.
            recoveredBlock59Block82PC := 104.
        ].
        recoveredBlock59Block82Step = 104 ifTrue: [
            recoveredBlock59Block82Stack4 := recoveredBlock59Arg1.
            recoveredBlock59Block82PC := 107.
        ].
        recoveredBlock59Block82Step = 107 ifTrue: [
            recoveredBlock59Block82Stack3 := (recoveredBlock59Block82Stack3) @ (recoveredBlock59Block82Stack4).
            recoveredBlock59Block82PC := 109.
        ].
        recoveredBlock59Block82Step = 109 ifTrue: [
            recoveredBlock59Block82Stack4 := recoveredBlock59Block82Arg1.
            recoveredBlock59Block82PC := 110.
        ].
        recoveredBlock59Block82Step = 110 ifTrue: [
            recoveredBlock59Block82Stack5 := #[102 102 102 102 102 102 14 64].
            recoveredBlock59Block82PC := 112.
        ].
        recoveredBlock59Block82Step = 112 ifTrue: [
            recoveredBlock59Block82Stack6 := widget.
            recoveredBlock59Block82PC := 114.
        ].
        recoveredBlock59Block82Step = 114 ifTrue: [
            recoveredBlock59Block82Stack6 := (recoveredBlock59Block82Stack6) pageSize.
            recoveredBlock59Block82PC := 116.
        ].
        recoveredBlock59Block82Step = 116 ifTrue: [
            recoveredBlock59Block82Stack6 := (recoveredBlock59Block82Stack6) x.
            recoveredBlock59Block82PC := 118.
        ].
        recoveredBlock59Block82Step = 118 ifTrue: [
            recoveredBlock59Block82Stack5 := (recoveredBlock59Block82Stack5) * (recoveredBlock59Block82Stack6).
            recoveredBlock59Block82PC := 119.
        ].
        recoveredBlock59Block82Step = 119 ifTrue: [
            recoveredBlock59Block82Stack5 := (recoveredBlock59Block82Stack5) rounded.
            recoveredBlock59Block82PC := 121.
        ].
        recoveredBlock59Block82Step = 121 ifTrue: [
            recoveredBlock59Block82Stack4 := (recoveredBlock59Block82Stack4) + (recoveredBlock59Block82Stack5).
            recoveredBlock59Block82PC := 122.
        ].
        recoveredBlock59Block82Step = 122 ifTrue: [
            recoveredBlock59Block82Stack5 := recoveredBlock59Arg1.
            recoveredBlock59Block82PC := 125.
        ].
        recoveredBlock59Block82Step = 125 ifTrue: [
            recoveredBlock59Block82Stack6 := #[102 102 102 102 102 102 14 64].
            recoveredBlock59Block82PC := 127.
        ].
        recoveredBlock59Block82Step = 127 ifTrue: [
            recoveredBlock59Block82Stack7 := widget.
            recoveredBlock59Block82PC := 129.
        ].
        recoveredBlock59Block82Step = 129 ifTrue: [
            recoveredBlock59Block82Stack7 := (recoveredBlock59Block82Stack7) pageSize.
            recoveredBlock59Block82PC := 131.
        ].
        recoveredBlock59Block82Step = 131 ifTrue: [
            recoveredBlock59Block82Stack7 := (recoveredBlock59Block82Stack7) y.
            recoveredBlock59Block82PC := 133.
        ].
        recoveredBlock59Block82Step = 133 ifTrue: [
            recoveredBlock59Block82Stack6 := (recoveredBlock59Block82Stack6) * (recoveredBlock59Block82Stack7).
            recoveredBlock59Block82PC := 134.
        ].
        recoveredBlock59Block82Step = 134 ifTrue: [
            recoveredBlock59Block82Stack6 := (recoveredBlock59Block82Stack6) rounded.
            recoveredBlock59Block82PC := 136.
        ].
        recoveredBlock59Block82Step = 136 ifTrue: [
            recoveredBlock59Block82Stack5 := (recoveredBlock59Block82Stack5) + (recoveredBlock59Block82Stack6).
            recoveredBlock59Block82PC := 137.
        ].
        recoveredBlock59Block82Step = 137 ifTrue: [
            recoveredBlock59Block82Stack4 := (recoveredBlock59Block82Stack4) @ (recoveredBlock59Block82Stack5).
            recoveredBlock59Block82PC := 139.
        ].
        recoveredBlock59Block82Step = 139 ifTrue: [
            recoveredBlock59Block82Stack2 := (recoveredBlock59Block82Stack2) origin: (recoveredBlock59Block82Stack3) corner: (recoveredBlock59Block82Stack4).
            recoveredBlock59Block82PC := 141.
        ].
        recoveredBlock59Block82Step = 141 ifTrue: [
            recoveredBlock59Block82Stack3 := recoveredArg2.
            recoveredBlock59Block82PC := 144.
        ].
        recoveredBlock59Block82Step = 144 ifTrue: [
            recoveredBlock59Block82Stack4 := recoveredArg3.
            recoveredBlock59Block82PC := 147.
        ].
        recoveredBlock59Block82Step = 147 ifTrue: [
            (recoveredBlock59Block82Stack1) printRegion: (recoveredBlock59Block82Stack2) onPrinter: (recoveredBlock59Block82Stack3) inRect: (recoveredBlock59Block82Stack4).
            recoveredBlock59Block82PC := 150.
        ].
        recoveredBlock59Block82Step = 150 ifTrue: [
            recoveredBlock59Block82Stack1 := true.
            recoveredBlock59Block82PC := 151.
        ].
        recoveredBlock59Block82Step = 151 ifTrue: [
            ^recoveredBlock59Block82Stack1
        ].
        recoveredBlock59Block82Step = 152 ifTrue: [
            recoveredBlock59Block82Stack1 := recoveredLocal1.
            recoveredBlock59Block82PC := 155.
        ].
        recoveredBlock59Block82Step = 155 ifTrue: [
            recoveredBlock59Block82Stack1 := (recoveredBlock59Block82Stack1) + (1).
            recoveredBlock59Block82PC := 156.
        ].
        recoveredBlock59Block82Step = 156 ifTrue: [
            recoveredBlock59Block82Stack2 := recoveredBlock59Block82Stack1.
            recoveredBlock59Block82PC := 157.
        ].
        recoveredBlock59Block82Step = 157 ifTrue: [
            recoveredLocal1 := recoveredBlock59Block82Stack2.
            recoveredBlock59Block82PC := 160.
        ].
        recoveredBlock59Block82Step = 160 ifTrue: [
            recoveredBlock59Block82Result := recoveredBlock59Block82Stack1.
            recoveredBlock59Block82Done := true.
        ].
    ].
    recoveredBlock59Block82Result
].
    recoveredBlock59Value7 := (0) to: (recoveredBlock59Value0) by: (recoveredBlock59Value5) do: (recoveredBlock59Value6).
    recoveredBlock59Value7
].
    (0) to: (recoveredValue14) by: (recoveredValue19) do: (recoveredValue20).
    ^false
! !

"ASDBase.ic method 0x205167d4; bytecode file offset 0xe130bc"
!RBPaneModeController methodsFor: 'recovered'!
controlTabKeyInputForward: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getActualTabOrder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (self) goIsSelected: (recoveredBlock41Value0).
    recoveredBlock41Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) normalMode.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) graphObject.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) setSelectStateWithGO: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052e4b8; bytecode file offset 0xe2adc0"
!RBPaneModeController methodsFor: 'recovered'!
printOnPrinter: recoveredArg1 inRect: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) printSettings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'all'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) zoomingFactor.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) widget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 100.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) widget.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) zoomingFactor.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) rounded.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := #[102 102 102 102 102 102 14 64].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := widget.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) pageSize.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) y.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) rounded.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 recoveredBlock84Value4 recoveredBlock84Value5 recoveredBlock84Value6 recoveredBlock84Value7 recoveredBlock84Value8 recoveredBlock84Value9 |
    recoveredBlock84Value0 := recoveredLocal3.
    recoveredBlock84Value1 := widget.
    recoveredBlock84Value2 := (recoveredBlock84Value1) pageSize.
    recoveredBlock84Value3 := (recoveredBlock84Value2) x.
    recoveredBlock84Value4 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock84Value3).
    recoveredBlock84Value5 := (recoveredBlock84Value4) rounded.
    recoveredBlock84Value6 := [:recoveredBlock84Block106Arg1 | 
    | recoveredBlock84Block106Local1 recoveredBlock84Block106Value0 recoveredBlock84Block106Value1 recoveredBlock84Block106Value2 recoveredBlock84Block106Value3 recoveredBlock84Block106Value4 recoveredBlock84Block106Value5 recoveredBlock84Block106Value6 recoveredBlock84Block106Value7 recoveredBlock84Block106Value8 recoveredBlock84Block106Value9 recoveredBlock84Block106Value10 recoveredBlock84Block106Value11 recoveredBlock84Block106Value12 recoveredBlock84Block106Value13 recoveredBlock84Block106Value14 recoveredBlock84Block106Value15 recoveredBlock84Block106Value16 recoveredBlock84Block106Value17 recoveredBlock84Block106Value18 recoveredBlock84Block106Value19 |
    recoveredBlock84Block106Value0 := (self) graphicObjects.
    recoveredBlock84Block106Value1 := Rectangle.
    recoveredBlock84Block106Value2 := recoveredBlock84Block106Arg1.
    recoveredBlock84Block106Value3 := recoveredBlock84Arg1.
    recoveredBlock84Block106Value4 := (recoveredBlock84Block106Value2) @ (recoveredBlock84Block106Value3).
    recoveredBlock84Block106Value5 := widget.
    recoveredBlock84Block106Value6 := (recoveredBlock84Block106Value5) pageSize.
    recoveredBlock84Block106Value7 := (recoveredBlock84Block106Value6) x.
    recoveredBlock84Block106Value8 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock84Block106Value7).
    recoveredBlock84Block106Value9 := (recoveredBlock84Block106Value8) rounded.
    recoveredBlock84Block106Value10 := widget.
    recoveredBlock84Block106Value11 := (recoveredBlock84Block106Value10) pageSize.
    recoveredBlock84Block106Value12 := (recoveredBlock84Block106Value11) y.
    recoveredBlock84Block106Value13 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock84Block106Value12).
    recoveredBlock84Block106Value14 := (recoveredBlock84Block106Value13) rounded.
    recoveredBlock84Block106Value15 := (recoveredBlock84Block106Value9) @ (recoveredBlock84Block106Value14).
    recoveredBlock84Block106Value16 := (recoveredBlock84Block106Value1) origin: (recoveredBlock84Block106Value4) corner: (recoveredBlock84Block106Value15).
    recoveredBlock84Block106Value17 := recoveredArg1.
    recoveredBlock84Block106Value18 := recoveredArg2.
    recoveredBlock84Block106Value19 := (recoveredBlock84Block106Value0) printRegion: (recoveredBlock84Block106Value16) onPrinter: (recoveredBlock84Block106Value17) inRect: (recoveredBlock84Block106Value18).
    recoveredBlock84Block106Value19
].
    (0) to: (recoveredBlock84Value0) by: (recoveredBlock84Value5) do: (recoveredBlock84Value6).
    recoveredBlock84Value7 := recoveredLocal1.
    recoveredBlock84Value8 := (recoveredBlock84Value7) + (1).
    recoveredBlock84Value9 := recoveredBlock84Value8.
    recoveredLocal1 := recoveredBlock84Value9.
    recoveredBlock84Value8
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) graphicObjects.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) printOnPrinter: (recoveredStack1) inRect: (recoveredStack2).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20542df8; bytecode file offset 0xe3f718"
!RBPaneModeController methodsFor: 'recovered'!
printablePages
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := (recoveredValue0) width.
    recoveredValue2 := (self) widget.
    recoveredValue3 := (recoveredValue2) zoomingFactor.
    recoveredValue4 := (100) / (recoveredValue3).
    recoveredValue5 := (recoveredValue1) * (recoveredValue4).
    recoveredValue6 := (recoveredValue5) rounded.
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := (self) widget.
    recoveredValue8 := (recoveredValue7) height.
    recoveredValue9 := (self) widget.
    recoveredValue10 := (recoveredValue9) zoomingFactor.
    recoveredValue11 := (100) / (recoveredValue10).
    recoveredValue12 := (recoveredValue8) * (recoveredValue11).
    recoveredValue13 := (recoveredValue12) rounded.
    recoveredLocal3 := recoveredValue13.
    recoveredLocal2 := 1.
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    recoveredLocal1 := recoveredValue15.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := widget.
    recoveredValue18 := (recoveredValue17) pageSize.
    recoveredValue19 := (recoveredValue18) y.
    recoveredValue20 := (#[102 102 102 102 102 102 14 64]) * (recoveredValue19).
    recoveredValue21 := (recoveredValue20) rounded.
    recoveredValue22 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 |
    recoveredBlock66Value0 := recoveredLocal4.
    recoveredBlock66Value1 := widget.
    recoveredBlock66Value2 := (recoveredBlock66Value1) pageSize.
    recoveredBlock66Value3 := (recoveredBlock66Value2) x.
    recoveredBlock66Value4 := (#[102 102 102 102 102 102 14 64]) * (recoveredBlock66Value3).
    recoveredBlock66Value5 := (recoveredBlock66Value4) rounded.
    recoveredBlock66Value6 := [:recoveredBlock66Block88Arg1 | 
    | recoveredBlock66Block88Local1 recoveredBlock66Block88Local2 recoveredBlock66Block88Stack0 recoveredBlock66Block88Stack1 recoveredBlock66Block88Stack2 recoveredBlock66Block88Stack3 recoveredBlock66Block88Stack4 recoveredBlock66Block88Stack5 recoveredBlock66Block88Stack6 recoveredBlock66Block88Stack7 recoveredBlock66Block88PC recoveredBlock66Block88Step recoveredBlock66Block88Done recoveredBlock66Block88Result |
    recoveredBlock66Block88Stack0 := self.
    recoveredBlock66Block88PC := 94.
    recoveredBlock66Block88Done := false.
    [recoveredBlock66Block88Done not] whileTrue: [
        recoveredBlock66Block88Step := recoveredBlock66Block88PC.
        recoveredBlock66Block88Step = 94 ifTrue: [
            recoveredBlock66Block88Stack1 := Rectangle.
            recoveredBlock66Block88PC := 96.
        ].
        recoveredBlock66Block88Step = 96 ifTrue: [
            recoveredBlock66Block88Stack2 := recoveredBlock66Block88Arg1.
            recoveredBlock66Block88PC := 99.
        ].
        recoveredBlock66Block88Step = 99 ifTrue: [
            recoveredBlock66Block88Stack3 := recoveredBlock66Arg1.
            recoveredBlock66Block88PC := 102.
        ].
        recoveredBlock66Block88Step = 102 ifTrue: [
            recoveredBlock66Block88Stack2 := (recoveredBlock66Block88Stack2) @ (recoveredBlock66Block88Stack3).
            recoveredBlock66Block88PC := 104.
        ].
        recoveredBlock66Block88Step = 104 ifTrue: [
            recoveredBlock66Block88Stack3 := recoveredBlock66Block88Arg1.
            recoveredBlock66Block88PC := 107.
        ].
        recoveredBlock66Block88Step = 107 ifTrue: [
            recoveredBlock66Block88Stack4 := #[102 102 102 102 102 102 14 64].
            recoveredBlock66Block88PC := 109.
        ].
        recoveredBlock66Block88Step = 109 ifTrue: [
            recoveredBlock66Block88Stack5 := widget.
            recoveredBlock66Block88PC := 111.
        ].
        recoveredBlock66Block88Step = 111 ifTrue: [
            recoveredBlock66Block88Stack5 := (recoveredBlock66Block88Stack5) pageSize.
            recoveredBlock66Block88PC := 113.
        ].
        recoveredBlock66Block88Step = 113 ifTrue: [
            recoveredBlock66Block88Stack5 := (recoveredBlock66Block88Stack5) x.
            recoveredBlock66Block88PC := 115.
        ].
        recoveredBlock66Block88Step = 115 ifTrue: [
            recoveredBlock66Block88Stack4 := (recoveredBlock66Block88Stack4) * (recoveredBlock66Block88Stack5).
            recoveredBlock66Block88PC := 116.
        ].
        recoveredBlock66Block88Step = 116 ifTrue: [
            recoveredBlock66Block88Stack4 := (recoveredBlock66Block88Stack4) rounded.
            recoveredBlock66Block88PC := 118.
        ].
        recoveredBlock66Block88Step = 118 ifTrue: [
            recoveredBlock66Block88Stack3 := (recoveredBlock66Block88Stack3) + (recoveredBlock66Block88Stack4).
            recoveredBlock66Block88PC := 119.
        ].
        recoveredBlock66Block88Step = 119 ifTrue: [
            recoveredBlock66Block88Stack4 := recoveredBlock66Arg1.
            recoveredBlock66Block88PC := 122.
        ].
        recoveredBlock66Block88Step = 122 ifTrue: [
            recoveredBlock66Block88Stack5 := #[102 102 102 102 102 102 14 64].
            recoveredBlock66Block88PC := 124.
        ].
        recoveredBlock66Block88Step = 124 ifTrue: [
            recoveredBlock66Block88Stack6 := widget.
            recoveredBlock66Block88PC := 126.
        ].
        recoveredBlock66Block88Step = 126 ifTrue: [
            recoveredBlock66Block88Stack6 := (recoveredBlock66Block88Stack6) pageSize.
            recoveredBlock66Block88PC := 128.
        ].
        recoveredBlock66Block88Step = 128 ifTrue: [
            recoveredBlock66Block88Stack6 := (recoveredBlock66Block88Stack6) y.
            recoveredBlock66Block88PC := 130.
        ].
        recoveredBlock66Block88Step = 130 ifTrue: [
            recoveredBlock66Block88Stack5 := (recoveredBlock66Block88Stack5) * (recoveredBlock66Block88Stack6).
            recoveredBlock66Block88PC := 131.
        ].
        recoveredBlock66Block88Step = 131 ifTrue: [
            recoveredBlock66Block88Stack5 := (recoveredBlock66Block88Stack5) rounded.
            recoveredBlock66Block88PC := 133.
        ].
        recoveredBlock66Block88Step = 133 ifTrue: [
            recoveredBlock66Block88Stack4 := (recoveredBlock66Block88Stack4) + (recoveredBlock66Block88Stack5).
            recoveredBlock66Block88PC := 134.
        ].
        recoveredBlock66Block88Step = 134 ifTrue: [
            recoveredBlock66Block88Stack3 := (recoveredBlock66Block88Stack3) @ (recoveredBlock66Block88Stack4).
            recoveredBlock66Block88PC := 136.
        ].
        recoveredBlock66Block88Step = 136 ifTrue: [
            recoveredBlock66Block88Stack1 := (recoveredBlock66Block88Stack1) origin: (recoveredBlock66Block88Stack2) corner: (recoveredBlock66Block88Stack3).
            recoveredBlock66Block88PC := 138.
        ].
        recoveredBlock66Block88Step = 138 ifTrue: [
            recoveredBlock66Block88Local1 := recoveredBlock66Block88Stack1.
            recoveredBlock66Block88PC := 141.
        ].
        recoveredBlock66Block88Step = 141 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) printSettings.
            recoveredBlock66Block88PC := 143.
        ].
        recoveredBlock66Block88Step = 143 ifTrue: [
            recoveredBlock66Block88Stack1 := 'printEmpty'.
            recoveredBlock66Block88PC := 145.
        ].
        recoveredBlock66Block88Step = 145 ifTrue: [
            recoveredBlock66Block88Stack2 := [
    true
].
            recoveredBlock66Block88PC := 147.
        ].
        recoveredBlock66Block88Step = 147 ifTrue: [
            recoveredBlock66Block88PC := 152.
        ].
        recoveredBlock66Block88Step = 152 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) at: (recoveredBlock66Block88Stack1) ifAbsent: (recoveredBlock66Block88Stack2).
            recoveredBlock66Block88PC := 154.
        ].
        recoveredBlock66Block88Step = 154 ifTrue: [
            (recoveredBlock66Block88Stack0) ifTrue: [recoveredBlock66Block88PC := 186] ifFalse: [recoveredBlock66Block88PC := 158].
        ].
        recoveredBlock66Block88Step = 158 ifTrue: [
            recoveredBlock66Block88Stack0 := self.
            recoveredBlock66Block88PC := 159.
        ].
        recoveredBlock66Block88Step = 159 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) graphicObjects.
            recoveredBlock66Block88PC := 161.
        ].
        recoveredBlock66Block88Step = 161 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) children.
            recoveredBlock66Block88PC := 163.
        ].
        recoveredBlock66Block88Step = 163 ifTrue: [
            recoveredBlock66Block88Stack1 := [:recoveredBlock66Block88Block163Arg1 | 
    | recoveredBlock66Block88Block163Value0 recoveredBlock66Block88Block163Value1 recoveredBlock66Block88Block163Value2 recoveredBlock66Block88Block163Value3 |
    recoveredBlock66Block88Block163Value0 := recoveredBlock66Block88Local1.
    recoveredBlock66Block88Block163Value1 := recoveredBlock66Block88Block163Arg1.
    recoveredBlock66Block88Block163Value2 := (recoveredBlock66Block88Block163Value1) giveRedisplayRect.
    recoveredBlock66Block88Block163Value3 := (recoveredBlock66Block88Block163Value0) containsRectangle: (recoveredBlock66Block88Block163Value2).
    recoveredBlock66Block88Block163Value3
].
            recoveredBlock66Block88PC := 179.
        ].
        recoveredBlock66Block88Step = 179 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) select: (recoveredBlock66Block88Stack1).
            recoveredBlock66Block88PC := 181.
        ].
        recoveredBlock66Block88Step = 181 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) notEmpty.
            recoveredBlock66Block88PC := 183.
        ].
        recoveredBlock66Block88Step = 183 ifTrue: [
            (recoveredBlock66Block88Stack0) ifTrue: [recoveredBlock66Block88PC := 186] ifFalse: [recoveredBlock66Block88PC := 194].
        ].
        recoveredBlock66Block88Step = 186 ifTrue: [
            recoveredBlock66Block88Stack0 := recoveredLocal1.
            recoveredBlock66Block88PC := 189.
        ].
        recoveredBlock66Block88Step = 189 ifTrue: [
            recoveredBlock66Block88Stack1 := recoveredLocal2.
            recoveredBlock66Block88PC := 192.
        ].
        recoveredBlock66Block88Step = 192 ifTrue: [
            (recoveredBlock66Block88Stack0) add: (recoveredBlock66Block88Stack1).
            recoveredBlock66Block88PC := 194.
        ].
        recoveredBlock66Block88Step = 194 ifTrue: [
            recoveredBlock66Block88Stack0 := recoveredLocal2.
            recoveredBlock66Block88PC := 197.
        ].
        recoveredBlock66Block88Step = 197 ifTrue: [
            recoveredBlock66Block88Stack0 := (recoveredBlock66Block88Stack0) + (1).
            recoveredBlock66Block88PC := 198.
        ].
        recoveredBlock66Block88Step = 198 ifTrue: [
            recoveredBlock66Block88Stack1 := recoveredBlock66Block88Stack0.
            recoveredBlock66Block88PC := 199.
        ].
        recoveredBlock66Block88Step = 199 ifTrue: [
            recoveredLocal2 := recoveredBlock66Block88Stack1.
            recoveredBlock66Block88PC := 202.
        ].
        recoveredBlock66Block88Step = 202 ifTrue: [
            recoveredBlock66Block88Result := recoveredBlock66Block88Stack0.
            recoveredBlock66Block88Done := true.
        ].
    ].
    recoveredBlock66Block88Result
].
    recoveredBlock66Value7 := (0) to: (recoveredBlock66Value0) by: (recoveredBlock66Value5) do: (recoveredBlock66Value6).
    recoveredBlock66Value7
].
    (0) to: (recoveredValue16) by: (recoveredValue21) do: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    ^recoveredValue23
! !

